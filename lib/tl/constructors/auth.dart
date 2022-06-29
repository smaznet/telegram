// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_contructor.dart';
import '../constructors/auth.dart' as auth_ns;
import '../constructors/constructors.dart';
import '../constructors/help.dart' as help_ns;

class SentCode extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1577067778;
  static const SUBCLASS_OF_ID = 1827172481;
  final classType = "constructor";
  final ID = 1577067778;
  auth_ns.SentCodeTypeBase type;
  String phoneCodeHash;
  auth_ns.CodeTypeBase? nextType;
  int? timeout;

  SentCode(
      {required this.type,
      required this.phoneCodeHash,
      this.nextType,
      this.timeout});

  static SentCode fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var type = reader.tgReadObject();
    var phoneCodeHash = reader.tgReadString();
    var nextType;
    if ((flags & 2) == 2) {
      nextType = reader.tgReadObject();
    } else {
      nextType = null;
    }
    var timeout;
    if ((flags & 4) == 4) {
      timeout = reader.readInt();
    } else {
      timeout = null;
    }
    return SentCode(
        type: type,
        phoneCodeHash: phoneCodeHash,
        nextType: nextType,
        timeout: timeout);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1577067778, 4),
      [0, 0, 0, 0],
      (this.type.getBytes()),
      serializeBytes(this.phoneCodeHash),
      (this.nextType == null || this.nextType == false)
          ? List<int>.empty()
          : [(this.nextType!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.timeout == null || this.timeout == false)
          ? List<int>.empty()
          : [readBufferFromBigInt(this.timeout, 4, little: true, signed: true)]
              .expand((element) => element)
              .toList(),
    ].expand((element) => element).toList();
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
    return 'SentCode{ID: $ID, type: $type, phoneCodeHash: $phoneCodeHash, nextType: $nextType, timeout: $timeout}';
  }
}

abstract class AuthorizationBase extends BaseConstructor {}

class Authorization extends AuthorizationBase {
  static const CONSTRUCTOR_ID = 872119224;
  static const SUBCLASS_OF_ID = 3118485049;
  final classType = "constructor";
  final ID = 872119224;
  bool? setupPasswordRequired;
  int? otherwiseReloginDays;
  int? tmpSessions;
  UserBase user;

  Authorization(
      {this.setupPasswordRequired,
      this.otherwiseReloginDays,
      this.tmpSessions,
      required this.user});

  static Authorization fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final setupPasswordRequired = (flags & 2) == 2;
    var otherwiseReloginDays;
    if ((flags & 2) == 2) {
      otherwiseReloginDays = reader.readInt();
    } else {
      otherwiseReloginDays = null;
    }
    var tmpSessions;
    if ((flags & 1) == 1) {
      tmpSessions = reader.readInt();
    } else {
      tmpSessions = null;
    }
    var user = reader.tgReadObject();
    return Authorization(
        setupPasswordRequired: setupPasswordRequired,
        otherwiseReloginDays: otherwiseReloginDays,
        tmpSessions: tmpSessions,
        user: user);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(872119224, 4),
      [0, 0, 0, 0],
      (this.otherwiseReloginDays == null || this.otherwiseReloginDays == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.otherwiseReloginDays, 4,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
      (this.tmpSessions == null || this.tmpSessions == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.tmpSessions, 4,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
      (this.user.getBytes()),
    ].expand((element) => element).toList();
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
    return 'Authorization{ID: $ID, setupPasswordRequired: $setupPasswordRequired, otherwiseReloginDays: $otherwiseReloginDays, tmpSessions: $tmpSessions, user: $user}';
  }
}

class AuthorizationSignUpRequired extends AuthorizationBase {
  static const CONSTRUCTOR_ID = 1148485274;
  static const SUBCLASS_OF_ID = 3118485049;
  final classType = "constructor";
  final ID = 1148485274;
  help_ns.TermsOfService? termsOfService;

  AuthorizationSignUpRequired({this.termsOfService});

  static AuthorizationSignUpRequired fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var termsOfService;
    if ((flags & 1) == 1) {
      termsOfService = reader.tgReadObject();
    } else {
      termsOfService = null;
    }
    return AuthorizationSignUpRequired(termsOfService: termsOfService);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1148485274, 4),
      [0, 0, 0, 0],
      (this.termsOfService == null || this.termsOfService == false)
          ? List<int>.empty()
          : [(this.termsOfService!.getBytes())]
              .expand((element) => element)
              .toList(),
    ].expand((element) => element).toList();
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
    return 'AuthorizationSignUpRequired{ID: $ID, termsOfService: $termsOfService}';
  }
}

class ExportedAuthorization extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3023364792;
  static const SUBCLASS_OF_ID = 1607593041;
  final classType = "constructor";
  final ID = 3023364792;
  BigInt id;
  List<int> bytes;

  ExportedAuthorization({required this.id, required this.bytes});

  static ExportedAuthorization fromReader(BinaryReader reader) {
    var id = reader.readLong();
    var bytes = reader.tgReadBytes();
    return ExportedAuthorization(id: id, bytes: bytes);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3023364792, 4),
      readBufferFromBigInt(this.id, 8, little: true, signed: true),
      serializeBytes(this.bytes),
    ].expand((element) => element).toList();
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
    return 'ExportedAuthorization{ID: $ID, id: $id, bytes: ${bytes.sublist(0, 5)}<...${bytes.length}>}';
  }
}

class PasswordRecovery extends BaseConstructor {
  static const CONSTRUCTOR_ID = 326715557;
  static const SUBCLASS_OF_ID = 4201829434;
  final classType = "constructor";
  final ID = 326715557;
  String emailPattern;

  PasswordRecovery({required this.emailPattern});

  static PasswordRecovery fromReader(BinaryReader reader) {
    var emailPattern = reader.tgReadString();
    return PasswordRecovery(emailPattern: emailPattern);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(326715557, 4),
      serializeBytes(this.emailPattern),
    ].expand((element) => element).toList();
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
    return 'PasswordRecovery{ID: $ID, emailPattern: $emailPattern}';
  }
}

abstract class CodeTypeBase extends BaseConstructor {}

class CodeTypeSms extends CodeTypeBase {
  static const CONSTRUCTOR_ID = 1923290508;
  static const SUBCLASS_OF_ID = 3019105281;
  final classType = "constructor";
  final ID = 1923290508;

  CodeTypeSms();

  static CodeTypeSms fromReader(BinaryReader reader) {
    return CodeTypeSms();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1923290508, 4),
    ].expand((element) => element).toList();
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
    return 'CodeTypeSms{ID: $ID, }';
  }
}

class CodeTypeCall extends CodeTypeBase {
  static const CONSTRUCTOR_ID = 1948046307;
  static const SUBCLASS_OF_ID = 3019105281;
  final classType = "constructor";
  final ID = 1948046307;

  CodeTypeCall();

  static CodeTypeCall fromReader(BinaryReader reader) {
    return CodeTypeCall();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1948046307, 4),
    ].expand((element) => element).toList();
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
    return 'CodeTypeCall{ID: $ID, }';
  }
}

class CodeTypeFlashCall extends CodeTypeBase {
  static const CONSTRUCTOR_ID = 577556219;
  static const SUBCLASS_OF_ID = 3019105281;
  final classType = "constructor";
  final ID = 577556219;

  CodeTypeFlashCall();

  static CodeTypeFlashCall fromReader(BinaryReader reader) {
    return CodeTypeFlashCall();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(577556219, 4),
    ].expand((element) => element).toList();
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
    return 'CodeTypeFlashCall{ID: $ID, }';
  }
}

class CodeTypeMissedCall extends CodeTypeBase {
  static const CONSTRUCTOR_ID = 3592083182;
  static const SUBCLASS_OF_ID = 3019105281;
  final classType = "constructor";
  final ID = 3592083182;

  CodeTypeMissedCall();

  static CodeTypeMissedCall fromReader(BinaryReader reader) {
    return CodeTypeMissedCall();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3592083182, 4),
    ].expand((element) => element).toList();
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
    return 'CodeTypeMissedCall{ID: $ID, }';
  }
}

abstract class SentCodeTypeBase extends BaseConstructor {}

class SentCodeTypeApp extends SentCodeTypeBase {
  static const CONSTRUCTOR_ID = 1035688326;
  static const SUBCLASS_OF_ID = 4284159374;
  final classType = "constructor";
  final ID = 1035688326;
  int length;

  SentCodeTypeApp({required this.length});

  static SentCodeTypeApp fromReader(BinaryReader reader) {
    var length = reader.readInt();
    return SentCodeTypeApp(length: length);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1035688326, 4),
      readBufferFromBigInt(this.length, 4, little: true, signed: true),
    ].expand((element) => element).toList();
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
    return 'SentCodeTypeApp{ID: $ID, length: $length}';
  }
}

class SentCodeTypeSms extends SentCodeTypeBase {
  static const CONSTRUCTOR_ID = 3221273506;
  static const SUBCLASS_OF_ID = 4284159374;
  final classType = "constructor";
  final ID = 3221273506;
  int length;

  SentCodeTypeSms({required this.length});

  static SentCodeTypeSms fromReader(BinaryReader reader) {
    var length = reader.readInt();
    return SentCodeTypeSms(length: length);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3221273506, 4),
      readBufferFromBigInt(this.length, 4, little: true, signed: true),
    ].expand((element) => element).toList();
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
    return 'SentCodeTypeSms{ID: $ID, length: $length}';
  }
}

class SentCodeTypeCall extends SentCodeTypeBase {
  static const CONSTRUCTOR_ID = 1398007207;
  static const SUBCLASS_OF_ID = 4284159374;
  final classType = "constructor";
  final ID = 1398007207;
  int length;

  SentCodeTypeCall({required this.length});

  static SentCodeTypeCall fromReader(BinaryReader reader) {
    var length = reader.readInt();
    return SentCodeTypeCall(length: length);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1398007207, 4),
      readBufferFromBigInt(this.length, 4, little: true, signed: true),
    ].expand((element) => element).toList();
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
    return 'SentCodeTypeCall{ID: $ID, length: $length}';
  }
}

class SentCodeTypeFlashCall extends SentCodeTypeBase {
  static const CONSTRUCTOR_ID = 2869151449;
  static const SUBCLASS_OF_ID = 4284159374;
  final classType = "constructor";
  final ID = 2869151449;
  String pattern;

  SentCodeTypeFlashCall({required this.pattern});

  static SentCodeTypeFlashCall fromReader(BinaryReader reader) {
    var pattern = reader.tgReadString();
    return SentCodeTypeFlashCall(pattern: pattern);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2869151449, 4),
      serializeBytes(this.pattern),
    ].expand((element) => element).toList();
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
    return 'SentCodeTypeFlashCall{ID: $ID, pattern: $pattern}';
  }
}

class SentCodeTypeMissedCall extends SentCodeTypeBase {
  static const CONSTRUCTOR_ID = 2181063812;
  static const SUBCLASS_OF_ID = 4284159374;
  final classType = "constructor";
  final ID = 2181063812;
  String prefix;
  int length;

  SentCodeTypeMissedCall({required this.prefix, required this.length});

  static SentCodeTypeMissedCall fromReader(BinaryReader reader) {
    var prefix = reader.tgReadString();
    var length = reader.readInt();
    return SentCodeTypeMissedCall(prefix: prefix, length: length);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2181063812, 4),
      serializeBytes(this.prefix),
      readBufferFromBigInt(this.length, 4, little: true, signed: true),
    ].expand((element) => element).toList();
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
    return 'SentCodeTypeMissedCall{ID: $ID, prefix: $prefix, length: $length}';
  }
}

abstract class LoginTokenBase extends BaseConstructor {}

class LoginToken extends LoginTokenBase {
  static const CONSTRUCTOR_ID = 1654593920;
  static const SUBCLASS_OF_ID = 1800795702;
  final classType = "constructor";
  final ID = 1654593920;
  int expires;
  List<int> token;

  LoginToken({required this.expires, required this.token});

  static LoginToken fromReader(BinaryReader reader) {
    var expires = reader.readInt();
    var token = reader.tgReadBytes();
    return LoginToken(expires: expires, token: token);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1654593920, 4),
      readBufferFromBigInt(this.expires, 4, little: true, signed: true),
      serializeBytes(this.token),
    ].expand((element) => element).toList();
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
    return 'LoginToken{ID: $ID, expires: $expires, token: ${token.sublist(0, 5)}<...${token.length}>}';
  }
}

class LoginTokenMigrateTo extends LoginTokenBase {
  static const CONSTRUCTOR_ID = 110008598;
  static const SUBCLASS_OF_ID = 1800795702;
  final classType = "constructor";
  final ID = 110008598;
  int dcId;
  List<int> token;

  LoginTokenMigrateTo({required this.dcId, required this.token});

  static LoginTokenMigrateTo fromReader(BinaryReader reader) {
    var dcId = reader.readInt();
    var token = reader.tgReadBytes();
    return LoginTokenMigrateTo(dcId: dcId, token: token);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(110008598, 4),
      readBufferFromBigInt(this.dcId, 4, little: true, signed: true),
      serializeBytes(this.token),
    ].expand((element) => element).toList();
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
    return 'LoginTokenMigrateTo{ID: $ID, dcId: $dcId, token: ${token.sublist(0, 5)}<...${token.length}>}';
  }
}

class LoginTokenSuccess extends LoginTokenBase {
  static const CONSTRUCTOR_ID = 957176926;
  static const SUBCLASS_OF_ID = 1800795702;
  final classType = "constructor";
  final ID = 957176926;
  auth_ns.AuthorizationBase authorization;

  LoginTokenSuccess({required this.authorization});

  static LoginTokenSuccess fromReader(BinaryReader reader) {
    var authorization = reader.tgReadObject();
    return LoginTokenSuccess(authorization: authorization);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(957176926, 4),
      (this.authorization.getBytes()),
    ].expand((element) => element).toList();
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
    return 'LoginTokenSuccess{ID: $ID, authorization: $authorization}';
  }
}

class LoggedOut extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3282207583;
  static const SUBCLASS_OF_ID = 176177941;
  final classType = "constructor";
  final ID = 3282207583;
  List<int>? futureAuthToken;

  LoggedOut({this.futureAuthToken});

  static LoggedOut fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var futureAuthToken;
    if ((flags & 1) == 1) {
      futureAuthToken = reader.tgReadBytes();
    } else {
      futureAuthToken = null;
    }
    return LoggedOut(futureAuthToken: futureAuthToken);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3282207583, 4),
      [0, 0, 0, 0],
      (this.futureAuthToken == null || this.futureAuthToken == false)
          ? List<int>.empty()
          : [serializeBytes(this.futureAuthToken)]
              .expand((element) => element)
              .toList(),
    ].expand((element) => element).toList();
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
    return 'LoggedOut{ID: $ID, futureAuthToken: ${futureAuthToken?.sublist(0, 5)}<...${futureAuthToken?.length}>}';
  }
}
