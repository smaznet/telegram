import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_request.dart';

class SendCode extends BaseRequest {
  static const CONSTRUCTOR_ID = 2792825935;
  static const SUBCLASS_OF_ID = 1827172481;
  final classType = "request";
  final ID = 2792825935;
  String phoneNumber;
  int apiId;
  String apiHash;
  var settings;

  SendCode(
      {required this.phoneNumber,
      required this.apiId,
      required this.apiHash,
      required this.settings});

  static SendCode fromReader(BinaryReader reader) {
    var len;
    var phoneNumber = reader.tgReadString();
    var apiId = reader.readInt();
    var apiHash = reader.tgReadString();
    var settings = reader.tgReadObject();
    return SendCode(
        phoneNumber: phoneNumber,
        apiId: apiId,
        apiHash: apiHash,
        settings: settings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2792825935, 4),
      serializeBytes(this.phoneNumber),
      readBufferFromBigInt(this.apiId, 4, little: true, signed: true),
      serializeBytes(this.apiHash),
      (this.settings.getBytes() as List<int>),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'SendCode{ID: $ID, phoneNumber: $phoneNumber, apiId: $apiId, apiHash: $apiHash, settings: $settings}';
  }
}

class SignUp extends BaseRequest {
  static const CONSTRUCTOR_ID = 2163139623;
  static const SUBCLASS_OF_ID = 3118485049;
  final classType = "request";
  final ID = 2163139623;
  String phoneNumber;
  String phoneCodeHash;
  String firstName;
  String lastName;

  SignUp(
      {required this.phoneNumber,
      required this.phoneCodeHash,
      required this.firstName,
      required this.lastName});

  static SignUp fromReader(BinaryReader reader) {
    var len;
    var phoneNumber = reader.tgReadString();
    var phoneCodeHash = reader.tgReadString();
    var firstName = reader.tgReadString();
    var lastName = reader.tgReadString();
    return SignUp(
        phoneNumber: phoneNumber,
        phoneCodeHash: phoneCodeHash,
        firstName: firstName,
        lastName: lastName);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2163139623, 4),
      serializeBytes(this.phoneNumber),
      serializeBytes(this.phoneCodeHash),
      serializeBytes(this.firstName),
      serializeBytes(this.lastName),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'SignUp{ID: $ID, phoneNumber: $phoneNumber, phoneCodeHash: $phoneCodeHash, firstName: $firstName, lastName: $lastName}';
  }
}

class SignIn extends BaseRequest {
  static const CONSTRUCTOR_ID = 3168081281;
  static const SUBCLASS_OF_ID = 3118485049;
  final classType = "request";
  final ID = 3168081281;
  String phoneNumber;
  String phoneCodeHash;
  String phoneCode;

  SignIn(
      {required this.phoneNumber,
      required this.phoneCodeHash,
      required this.phoneCode});

  static SignIn fromReader(BinaryReader reader) {
    var len;
    var phoneNumber = reader.tgReadString();
    var phoneCodeHash = reader.tgReadString();
    var phoneCode = reader.tgReadString();
    return SignIn(
        phoneNumber: phoneNumber,
        phoneCodeHash: phoneCodeHash,
        phoneCode: phoneCode);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3168081281, 4),
      serializeBytes(this.phoneNumber),
      serializeBytes(this.phoneCodeHash),
      serializeBytes(this.phoneCode),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'SignIn{ID: $ID, phoneNumber: $phoneNumber, phoneCodeHash: $phoneCodeHash, phoneCode: $phoneCode}';
  }
}

class LogOut extends BaseRequest {
  static const CONSTRUCTOR_ID = 1047706137;
  static const SUBCLASS_OF_ID = 176177941;
  final classType = "request";
  final ID = 1047706137;

  LogOut();

  static LogOut fromReader(BinaryReader reader) {
    var len;
    return LogOut();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1047706137, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'LogOut{ID: $ID, }';
  }
}

class ResetAuthorizations extends BaseRequest {
  static const CONSTRUCTOR_ID = 2678787354;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2678787354;

  ResetAuthorizations();

  static ResetAuthorizations fromReader(BinaryReader reader) {
    var len;
    return ResetAuthorizations();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2678787354, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'ResetAuthorizations{ID: $ID, }';
  }
}

class ExportAuthorization extends BaseRequest {
  static const CONSTRUCTOR_ID = 3854565325;
  static const SUBCLASS_OF_ID = 1607593041;
  final classType = "request";
  final ID = 3854565325;
  int dcId;

  ExportAuthorization({required this.dcId});

  static ExportAuthorization fromReader(BinaryReader reader) {
    var len;
    var dcId = reader.readInt();
    return ExportAuthorization(dcId: dcId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3854565325, 4),
      readBufferFromBigInt(this.dcId, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'ExportAuthorization{ID: $ID, dcId: $dcId}';
  }
}

class ImportAuthorization extends BaseRequest {
  static const CONSTRUCTOR_ID = 2776268205;
  static const SUBCLASS_OF_ID = 3118485049;
  final classType = "request";
  final ID = 2776268205;
  BigInt id;
  List<int> bytes;

  ImportAuthorization({required this.id, required this.bytes});

  static ImportAuthorization fromReader(BinaryReader reader) {
    var len;
    var id = reader.readLong();
    var bytes = reader.tgReadBytes();
    return ImportAuthorization(id: id, bytes: bytes);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2776268205, 4),
      readBufferFromBigInt(this.id, 8, little: true, signed: true),
      serializeBytes(this.bytes),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'ImportAuthorization{ID: $ID, id: $id, bytes: $bytes}';
  }
}

class BindTempAuthKey extends BaseRequest {
  static const CONSTRUCTOR_ID = 3453233669;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3453233669;
  BigInt permAuthKeyId;
  BigInt nonce;
  int expiresAt;
  List<int> encryptedMessage;

  BindTempAuthKey(
      {required this.permAuthKeyId,
      required this.nonce,
      required this.expiresAt,
      required this.encryptedMessage});

  static BindTempAuthKey fromReader(BinaryReader reader) {
    var len;
    var permAuthKeyId = reader.readLong();
    var nonce = reader.readLong();
    var expiresAt = reader.readInt();
    var encryptedMessage = reader.tgReadBytes();
    return BindTempAuthKey(
        permAuthKeyId: permAuthKeyId,
        nonce: nonce,
        expiresAt: expiresAt,
        encryptedMessage: encryptedMessage);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3453233669, 4),
      readBufferFromBigInt(this.permAuthKeyId, 8, little: true, signed: true),
      readBufferFromBigInt(this.nonce, 8, little: true, signed: true),
      readBufferFromBigInt(this.expiresAt, 4, little: true, signed: true),
      serializeBytes(this.encryptedMessage),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'BindTempAuthKey{ID: $ID, permAuthKeyId: $permAuthKeyId, nonce: $nonce, expiresAt: $expiresAt, encryptedMessage: $encryptedMessage}';
  }
}

class ImportBotAuthorization extends BaseRequest {
  static const CONSTRUCTOR_ID = 1738800940;
  static const SUBCLASS_OF_ID = 3118485049;
  final classType = "request";
  final ID = 1738800940;
  int flags;
  int apiId;
  String apiHash;
  String botAuthToken;

  ImportBotAuthorization(
      {required this.flags,
      required this.apiId,
      required this.apiHash,
      required this.botAuthToken});

  static ImportBotAuthorization fromReader(BinaryReader reader) {
    var len;
    var flags = reader.readInt();
    var apiId = reader.readInt();
    var apiHash = reader.tgReadString();
    var botAuthToken = reader.tgReadString();
    return ImportBotAuthorization(
        flags: flags,
        apiId: apiId,
        apiHash: apiHash,
        botAuthToken: botAuthToken);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1738800940, 4),
      readBufferFromBigInt(this.flags, 4, little: true, signed: true),
      readBufferFromBigInt(this.apiId, 4, little: true, signed: true),
      serializeBytes(this.apiHash),
      serializeBytes(this.botAuthToken),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'ImportBotAuthorization{ID: $ID, flags: $flags, apiId: $apiId, apiHash: $apiHash, botAuthToken: $botAuthToken}';
  }
}

class CheckPassword extends BaseRequest {
  static const CONSTRUCTOR_ID = 3515567382;
  static const SUBCLASS_OF_ID = 3118485049;
  final classType = "request";
  final ID = 3515567382;
  var password;

  CheckPassword({required this.password});

  static CheckPassword fromReader(BinaryReader reader) {
    var len;
    var password = reader.tgReadObject();
    return CheckPassword(password: password);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3515567382, 4),
      (this.password.getBytes() as List<int>),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'CheckPassword{ID: $ID, password: $password}';
  }
}

class RequestPasswordRecovery extends BaseRequest {
  static const CONSTRUCTOR_ID = 3633822822;
  static const SUBCLASS_OF_ID = 4201829434;
  final classType = "request";
  final ID = 3633822822;

  RequestPasswordRecovery();

  static RequestPasswordRecovery fromReader(BinaryReader reader) {
    var len;
    return RequestPasswordRecovery();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3633822822, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'RequestPasswordRecovery{ID: $ID, }';
  }
}

class RecoverPassword extends BaseRequest {
  static const CONSTRUCTOR_ID = 923364464;
  static const SUBCLASS_OF_ID = 3118485049;
  final classType = "request";
  final ID = 923364464;
  String code;
  var newSettings;

  RecoverPassword({required this.code, required this.newSettings});

  static RecoverPassword fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var code = reader.tgReadString();
    var newSettings;
    if ((flags & 1) == 1) {
      newSettings = reader.tgReadObject();
    } else {
      newSettings = null;
    }
    return RecoverPassword(code: code, newSettings: newSettings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(923364464, 4),
      [0, 0, 0, 0],
      serializeBytes(this.code),
      (this.newSettings == null || this.newSettings == false)
          ? List<int>.empty()
          : [(this.newSettings.getBytes() as List<int>)]
              .expand((element) => element)
              .toList(),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'RecoverPassword{ID: $ID, code: $code, newSettings: $newSettings}';
  }
}

class ResendCode extends BaseRequest {
  static const CONSTRUCTOR_ID = 1056025023;
  static const SUBCLASS_OF_ID = 1827172481;
  final classType = "request";
  final ID = 1056025023;
  String phoneNumber;
  String phoneCodeHash;

  ResendCode({required this.phoneNumber, required this.phoneCodeHash});

  static ResendCode fromReader(BinaryReader reader) {
    var len;
    var phoneNumber = reader.tgReadString();
    var phoneCodeHash = reader.tgReadString();
    return ResendCode(phoneNumber: phoneNumber, phoneCodeHash: phoneCodeHash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1056025023, 4),
      serializeBytes(this.phoneNumber),
      serializeBytes(this.phoneCodeHash),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'ResendCode{ID: $ID, phoneNumber: $phoneNumber, phoneCodeHash: $phoneCodeHash}';
  }
}

class CancelCode extends BaseRequest {
  static const CONSTRUCTOR_ID = 520357240;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 520357240;
  String phoneNumber;
  String phoneCodeHash;

  CancelCode({required this.phoneNumber, required this.phoneCodeHash});

  static CancelCode fromReader(BinaryReader reader) {
    var len;
    var phoneNumber = reader.tgReadString();
    var phoneCodeHash = reader.tgReadString();
    return CancelCode(phoneNumber: phoneNumber, phoneCodeHash: phoneCodeHash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(520357240, 4),
      serializeBytes(this.phoneNumber),
      serializeBytes(this.phoneCodeHash),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'CancelCode{ID: $ID, phoneNumber: $phoneNumber, phoneCodeHash: $phoneCodeHash}';
  }
}

class DropTempAuthKeys extends BaseRequest {
  static const CONSTRUCTOR_ID = 2387124616;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2387124616;
  List<BigInt> exceptAuthKeys;

  DropTempAuthKeys({required this.exceptAuthKeys});

  static DropTempAuthKeys fromReader(BinaryReader reader) {
    var len;
    var _vectorexceptAuthKeys = reader.readInt();
    if (_vectorexceptAuthKeys != 481674261) throw Exception('Wrong vectorId');
    List<BigInt> exceptAuthKeys = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      exceptAuthKeys.add(reader.readLong());
    }
    return DropTempAuthKeys(exceptAuthKeys: exceptAuthKeys);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2387124616, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.exceptAuthKeys!.length, 4,
          little: true, signed: true),
      this
          .exceptAuthKeys!
          .map((x) => readBufferFromBigInt(x, 8, little: true, signed: true))
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'DropTempAuthKeys{ID: $ID, exceptAuthKeys: $exceptAuthKeys}';
  }
}

class ExportLoginToken extends BaseRequest {
  static const CONSTRUCTOR_ID = 3084944894;
  static const SUBCLASS_OF_ID = 1800795702;
  final classType = "request";
  final ID = 3084944894;
  int apiId;
  String apiHash;
  List<BigInt> exceptIds;

  ExportLoginToken(
      {required this.apiId, required this.apiHash, required this.exceptIds});

  static ExportLoginToken fromReader(BinaryReader reader) {
    var len;
    var apiId = reader.readInt();
    var apiHash = reader.tgReadString();
    var _vectorexceptIds = reader.readInt();
    if (_vectorexceptIds != 481674261) throw Exception('Wrong vectorId');
    List<BigInt> exceptIds = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      exceptIds.add(reader.readLong());
    }
    return ExportLoginToken(
        apiId: apiId, apiHash: apiHash, exceptIds: exceptIds);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3084944894, 4),
      readBufferFromBigInt(this.apiId, 4, little: true, signed: true),
      serializeBytes(this.apiHash),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.exceptIds!.length, 4,
          little: true, signed: true),
      this
          .exceptIds!
          .map((x) => readBufferFromBigInt(x, 8, little: true, signed: true))
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'ExportLoginToken{ID: $ID, apiId: $apiId, apiHash: $apiHash, exceptIds: $exceptIds}';
  }
}

class ImportLoginToken extends BaseRequest {
  static const CONSTRUCTOR_ID = 2511101156;
  static const SUBCLASS_OF_ID = 1800795702;
  final classType = "request";
  final ID = 2511101156;
  List<int> token;

  ImportLoginToken({required this.token});

  static ImportLoginToken fromReader(BinaryReader reader) {
    var len;
    var token = reader.tgReadBytes();
    return ImportLoginToken(token: token);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2511101156, 4),
      serializeBytes(this.token),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'ImportLoginToken{ID: $ID, token: $token}';
  }
}

class AcceptLoginToken extends BaseRequest {
  static const CONSTRUCTOR_ID = 3902057805;
  static const SUBCLASS_OF_ID = 3373514778;
  final classType = "request";
  final ID = 3902057805;
  List<int> token;

  AcceptLoginToken({required this.token});

  static AcceptLoginToken fromReader(BinaryReader reader) {
    var len;
    var token = reader.tgReadBytes();
    return AcceptLoginToken(token: token);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3902057805, 4),
      serializeBytes(this.token),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'AcceptLoginToken{ID: $ID, token: $token}';
  }
}

class CheckRecoveryPassword extends BaseRequest {
  static const CONSTRUCTOR_ID = 221691769;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 221691769;
  String code;

  CheckRecoveryPassword({required this.code});

  static CheckRecoveryPassword fromReader(BinaryReader reader) {
    var len;
    var code = reader.tgReadString();
    return CheckRecoveryPassword(code: code);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(221691769, 4),
      serializeBytes(this.code),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'CheckRecoveryPassword{ID: $ID, code: $code}';
  }
}
