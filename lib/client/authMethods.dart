import 'dart:async';

import 'package:telegram/client/telegram_client.dart';
import 'package:telegram/tl/constructors/constructors.dart';
import 'package:telegram/tl/requests/account.dart';
import 'package:telegram/tl/requests/auth.dart';
import 'package:telegram/tl/requests/updates.dart';

import '../errors/rpc_base_error.dart';
import '../extensions/password.dart' as pass;
import '../tl/constructors/auth.dart' as auth;

abstract class SignInType {
  final Function(dynamic error)? onError;
  final FutureOr<String> Function(String? hint)? password;
  const SignInType({this.onError, this.password});
}

class BotLogin extends SignInType {
  final FutureOr<String> Function() botToken;
  const BotLogin({
    required this.botToken,
    Function(dynamic error)? onError,
  }) : super(onError: onError);
}

class UserQrCodeLogin extends SignInType {
  final Future<void> Function(List<int> buffer, int expires) qrCode;

  const UserQrCodeLogin({
    required this.qrCode,
    Function(dynamic error)? onError,
    FutureOr<String> Function(String? hint)? password,
  }) : super(onError: onError, password: password);
}

class UserLogin extends SignInType {
  final FutureOr<String> Function() phoneNumber;
  final FutureOr<String> Function() phoneCode;

  const UserLogin({
    required this.phoneNumber,
    required this.phoneCode,
    FutureOr<String> Function(String? hint)? password,
    Function(dynamic error)? onError,
  }) : super(onError: onError, password: password);
}

Future start(TelegramClient client, SignInType signInType) async {
  final isAuth = await checkAuthorization(client);
  if (isAuth) return;
  if (signInType is BotLogin) {
    await _botSignIn(client, signInType);
  } else if (signInType is UserLogin) {
    await _userSignIn(client, signInType);
  } else if (signInType is UserQrCodeLogin) {
    await _signInUserWithQrCode(client, signInType);
  } else {
    throw UnimplementedError(
        "login type ${signInType.runtimeType} isn't handled");
  }
}

Future<bool> checkAuthorization(TelegramClient client) async {
  try {
    await client.invoke(GetState());
    return true;
  } catch (err) {
    return false;
  }
}

Future _userSignIn(TelegramClient client, UserLogin signInType) async {
  String phoneNumber = await signInType.phoneNumber();
  final sentCode = await client.invoke(
    SendCode(
      phoneNumber: phoneNumber,
      apiId: client.apiId,
      apiHash: client.apiHash,
      settings: CodeSettings(),
    ),
  );
  await _checkCode(client, sentCode, signInType, phoneNumber);
}

Future _checkCode(TelegramClient client, auth.SentCode sentCode,
    UserLogin signInType, String phoneNumber) async {
  final phoneCodeHash = sentCode.phoneCodeHash;
  // final isCodeViaApp = sentCode.type is auth.SentCodeTypeApp;
  final phoneCode = await signInType.phoneCode();

  try {
    final result = await client.invoke(SignIn(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
      phoneCode: phoneCode,
    ));

    if (result is auth.AuthorizationSignUpRequired) {
      throw 'Sign up required';
    }
  } on RPCError catch (err) {
    if (err.message == "SESSION_PASSWORD_NEEDED") {
      await _signInWithPassword(client, signInType);
    }
  }
}

Future _signInWithPassword(TelegramClient client, SignInType signInType) async {
  final passwordSrpResult = await client.invoke(GetPassword());
  if (signInType.password == null) throw 'Password is required';
  final password = await signInType.password!(passwordSrpResult.hint);

  final passwordSrpCheck = pass.computeCheck(passwordSrpResult, password);
  await client.invoke(CheckPassword(password: passwordSrpCheck));
}

Future _botSignIn(TelegramClient client, BotLogin botLogin) async {
  await client.invoke(ImportBotAuthorization(
    flags: 0,
    apiId: client.apiId,
    apiHash: client.apiHash,
    botAuthToken: await botLogin.botToken(),
  ));
}

Future _signInUserWithQrCode(
    TelegramClient client, UserQrCodeLogin qrCodeLogin) async {
  final inputPromise = () async {
    final result = await client.invoke(ExportLoginToken(
        apiId: client.apiId, apiHash: client.apiHash, exceptIds: []));
    if (!(result is auth.LoginToken)) {
      throw UnimplementedError("Unsupported login token type");
    }
    final token = result.token;
    final expires = result.expires;

    final timeout = expires - DateTime.now().millisecondsSinceEpoch ~/ 1000;

    await Future.any([
      Future.delayed(Duration(seconds: timeout)),
      qrCodeLogin.qrCode(token, expires).then((value) => "1"),
    ]);
  };

  final updatePromise = () {
    final completer = Completer<dynamic>();
    void onUpdate(UpdateBase update, _) {
      if (update is UpdateLoginToken) {
        completer.complete("1");
      }
    }

    client.addEventListener(onUpdate);
    return completer.future;
  };

  while (true) {
    final result = await Future.any([inputPromise(), updatePromise()]);
    if (result is String && result == "1") {
      break;
    }
  }

  try {
    final result2 = await client.invoke(ExportLoginToken(
        apiId: client.apiId, apiHash: client.apiHash, exceptIds: []));
    if (result2 is auth.LoginTokenSuccess &&
        result2.authorization is auth.Authorization) {
      return (result2.authorization as auth.Authorization).user;
    } else if (result2 is auth.LoginTokenMigrateTo) {
      await client.switchDc(result2.dcId);
      final migrateResult =
          await client.invoke(ImportLoginToken(token: result2.token));
      if (migrateResult is auth.LoginTokenSuccess) {
        return (migrateResult.authorization as auth.Authorization).user;
      } else {
        throw UnimplementedError(
            "Received unknown result while scanning QR ${result2.runtimeType}");
      }
    }
  } on RPCError catch (e) {
    if (e.message == "SESSION_PASSWORD_NEEDED") {
      await _signInWithPassword(client, qrCodeLogin);
    }
  }
}
