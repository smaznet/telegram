// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_contructor.dart';
import '../constructors/constructors.dart';

class PrivacyRules extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1352683077;
  static const SUBCLASS_OF_ID = 3042622082;
  final classType = "constructor";
  final ID = 1352683077;
  List<PrivacyRuleBase> rules;
  List<ChatBase> chats;
  List<UserBase> users;

  PrivacyRules({required this.rules, required this.chats, required this.users});

  static PrivacyRules fromReader(BinaryReader reader) {
    var len;
    var _vectorrules = reader.readInt();
    if (_vectorrules != 481674261) throw Exception('Wrong vectorId');
    List<PrivacyRuleBase> rules = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      rules.add(reader.tgReadObject());
    }
    var _vectorchats = reader.readInt();
    if (_vectorchats != 481674261) throw Exception('Wrong vectorId');
    List<ChatBase> chats = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      chats.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return PrivacyRules(rules: rules, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1352683077, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.rules.length, 4, little: true, signed: true),
      this
          .rules.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.chats.length, 4, little: true, signed: true),
      this
          .chats.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
          .expand((element) => element),
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
    return 'PrivacyRules{ID: $ID, rules: $rules, chats: $chats, users: $users}';
  }
}

class Authorizations extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1275039392;
  static const SUBCLASS_OF_ID = 200663295;
  final classType = "constructor";
  final ID = 1275039392;
  int authorizationTtlDays;
  List<Authorization> authorizations;

  Authorizations(
      {required this.authorizationTtlDays, required this.authorizations});

  static Authorizations fromReader(BinaryReader reader) {
    var len;
    var authorizationTtlDays = reader.readInt();
    var _vectorauthorizations = reader.readInt();
    if (_vectorauthorizations != 481674261) throw Exception('Wrong vectorId');
    List<Authorization> authorizations = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      authorizations.add(reader.tgReadObject());
    }
    return Authorizations(
        authorizationTtlDays: authorizationTtlDays,
        authorizations: authorizations);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1275039392, 4),
      readBufferFromBigInt(this.authorizationTtlDays, 4,
          little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.authorizations.length, 4,
          little: true, signed: true),
      this
          .authorizations.map((x) => x.getBytes())
          .expand((element) => element),
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
    return 'Authorizations{ID: $ID, authorizationTtlDays: $authorizationTtlDays, authorizations: $authorizations}';
  }
}

class Password extends BaseConstructor {
  static const CONSTRUCTOR_ID = 408623183;
  static const SUBCLASS_OF_ID = 1403130275;
  final classType = "constructor";
  final ID = 408623183;
  bool? hasRecovery;
  bool? hasSecureValues;
  bool? hasPassword;
  PasswordKdfAlgoBase? currentAlgo;
  List<int>? srp_B;
  BigInt? srpId;
  String? hint;
  String? emailUnconfirmedPattern;
  PasswordKdfAlgoBase newAlgo;
  SecurePasswordKdfAlgoBase newSecureAlgo;
  List<int> secureRandom;
  int? pendingResetDate;

  Password(
      {this.hasRecovery,
      this.hasSecureValues,
      this.hasPassword,
      this.currentAlgo,
      this.srp_B,
      this.srpId,
      this.hint,
      this.emailUnconfirmedPattern,
      required this.newAlgo,
      required this.newSecureAlgo,
      required this.secureRandom,
      this.pendingResetDate});

  static Password fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final hasRecovery = (flags & 1) == 1;
    final hasSecureValues = (flags & 2) == 2;
    final hasPassword = (flags & 4) == 4;
    var currentAlgo;
    if ((flags & 4) == 4) {
      currentAlgo = reader.tgReadObject();
    } else {
      currentAlgo = null;
    }
    var srp_B;
    if ((flags & 4) == 4) {
      srp_B = reader.tgReadBytes();
    } else {
      srp_B = null;
    }
    var srpId;
    if ((flags & 4) == 4) {
      srpId = reader.readLong();
    } else {
      srpId = null;
    }
    var hint;
    if ((flags & 8) == 8) {
      hint = reader.tgReadString();
    } else {
      hint = null;
    }
    var emailUnconfirmedPattern;
    if ((flags & 16) == 16) {
      emailUnconfirmedPattern = reader.tgReadString();
    } else {
      emailUnconfirmedPattern = null;
    }
    var newAlgo = reader.tgReadObject();
    var newSecureAlgo = reader.tgReadObject();
    var secureRandom = reader.tgReadBytes();
    var pendingResetDate;
    if ((flags & 32) == 32) {
      pendingResetDate = reader.readInt();
    } else {
      pendingResetDate = null;
    }
    return Password(
        hasRecovery: hasRecovery,
        hasSecureValues: hasSecureValues,
        hasPassword: hasPassword,
        currentAlgo: currentAlgo,
        srp_B: srp_B,
        srpId: srpId,
        hint: hint,
        emailUnconfirmedPattern: emailUnconfirmedPattern,
        newAlgo: newAlgo,
        newSecureAlgo: newSecureAlgo,
        secureRandom: secureRandom,
        pendingResetDate: pendingResetDate);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(408623183, 4),
      [0, 0, 0, 0],
      (this.currentAlgo == null || this.currentAlgo == false)
          ? List<int>.empty()
          : [(this.currentAlgo!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.srp_B == null || this.srp_B == false)
          ? List<int>.empty()
          : [serializeBytes(this.srp_B)].expand((element) => element).toList(),
      (this.srpId == null || this.srpId == false)
          ? List<int>.empty()
          : [readBufferFromBigInt(this.srpId, 8, little: true, signed: true)]
              .expand((element) => element)
              .toList(),
      (this.hint == null || this.hint == false)
          ? List<int>.empty()
          : [serializeBytes(this.hint)].expand((element) => element).toList(),
      (this.emailUnconfirmedPattern == null ||
              this.emailUnconfirmedPattern == false)
          ? List<int>.empty()
          : [serializeBytes(this.emailUnconfirmedPattern)]
              .expand((element) => element)
              .toList(),
      (this.newAlgo.getBytes()),
      (this.newSecureAlgo.getBytes()),
      serializeBytes(this.secureRandom),
      (this.pendingResetDate == null || this.pendingResetDate == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.pendingResetDate, 4,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
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
    return 'Password{ID: $ID, hasRecovery: $hasRecovery, hasSecureValues: $hasSecureValues, hasPassword: $hasPassword, currentAlgo: $currentAlgo, srp_B: ${srp_B?.sublist(0, 5)}<...${srp_B?.length}>, srpId: $srpId, hint: $hint, emailUnconfirmedPattern: $emailUnconfirmedPattern, newAlgo: $newAlgo, newSecureAlgo: $newSecureAlgo, secureRandom: ${secureRandom.sublist(0, 5)}<...${secureRandom.length}>, pendingResetDate: $pendingResetDate}';
  }
}

class PasswordSettings extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2589733861;
  static const SUBCLASS_OF_ID = 3527389304;
  final classType = "constructor";
  final ID = 2589733861;
  String? email;
  SecureSecretSettings? secureSettings;

  PasswordSettings({this.email, this.secureSettings});

  static PasswordSettings fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var email;
    if ((flags & 1) == 1) {
      email = reader.tgReadString();
    } else {
      email = null;
    }
    var secureSettings;
    if ((flags & 2) == 2) {
      secureSettings = reader.tgReadObject();
    } else {
      secureSettings = null;
    }
    return PasswordSettings(email: email, secureSettings: secureSettings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2589733861, 4),
      [0, 0, 0, 0],
      (this.email == null || this.email == false)
          ? List<int>.empty()
          : [serializeBytes(this.email)].expand((element) => element).toList(),
      (this.secureSettings == null || this.secureSettings == false)
          ? List<int>.empty()
          : [(this.secureSettings!.getBytes())]
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
    return 'PasswordSettings{ID: $ID, email: $email, secureSettings: $secureSettings}';
  }
}

class PasswordInputSettings extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3258394569;
  static const SUBCLASS_OF_ID = 205679782;
  final classType = "constructor";
  final ID = 3258394569;
  PasswordKdfAlgoBase? newAlgo;
  List<int>? newPasswordHash;
  String? hint;
  String? email;
  SecureSecretSettings? newSecureSettings;

  PasswordInputSettings(
      {this.newAlgo,
      this.newPasswordHash,
      this.hint,
      this.email,
      this.newSecureSettings});

  static PasswordInputSettings fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var newAlgo;
    if ((flags & 1) == 1) {
      newAlgo = reader.tgReadObject();
    } else {
      newAlgo = null;
    }
    var newPasswordHash;
    if ((flags & 1) == 1) {
      newPasswordHash = reader.tgReadBytes();
    } else {
      newPasswordHash = null;
    }
    var hint;
    if ((flags & 1) == 1) {
      hint = reader.tgReadString();
    } else {
      hint = null;
    }
    var email;
    if ((flags & 2) == 2) {
      email = reader.tgReadString();
    } else {
      email = null;
    }
    var newSecureSettings;
    if ((flags & 4) == 4) {
      newSecureSettings = reader.tgReadObject();
    } else {
      newSecureSettings = null;
    }
    return PasswordInputSettings(
        newAlgo: newAlgo,
        newPasswordHash: newPasswordHash,
        hint: hint,
        email: email,
        newSecureSettings: newSecureSettings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3258394569, 4),
      [0, 0, 0, 0],
      (this.newAlgo == null || this.newAlgo == false)
          ? List<int>.empty()
          : [(this.newAlgo!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.newPasswordHash == null || this.newPasswordHash == false)
          ? List<int>.empty()
          : [serializeBytes(this.newPasswordHash)]
              .expand((element) => element)
              .toList(),
      (this.hint == null || this.hint == false)
          ? List<int>.empty()
          : [serializeBytes(this.hint)].expand((element) => element).toList(),
      (this.email == null || this.email == false)
          ? List<int>.empty()
          : [serializeBytes(this.email)].expand((element) => element).toList(),
      (this.newSecureSettings == null || this.newSecureSettings == false)
          ? List<int>.empty()
          : [(this.newSecureSettings!.getBytes())]
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
    return 'PasswordInputSettings{ID: $ID, newAlgo: $newAlgo, newPasswordHash: ${newPasswordHash?.sublist(0, 5)}<...${newPasswordHash?.length}>, hint: $hint, email: $email, newSecureSettings: $newSecureSettings}';
  }
}

class TmpPassword extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3680828724;
  static const SUBCLASS_OF_ID = 2959382829;
  final classType = "constructor";
  final ID = 3680828724;
  List<int> tmpPassword;
  int validUntil;

  TmpPassword({required this.tmpPassword, required this.validUntil});

  static TmpPassword fromReader(BinaryReader reader) {
    var tmpPassword = reader.tgReadBytes();
    var validUntil = reader.readInt();
    return TmpPassword(tmpPassword: tmpPassword, validUntil: validUntil);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3680828724, 4),
      serializeBytes(this.tmpPassword),
      readBufferFromBigInt(this.validUntil, 4, little: true, signed: true),
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
    return 'TmpPassword{ID: $ID, tmpPassword: ${tmpPassword.sublist(0, 5)}<...${tmpPassword.length}>, validUntil: $validUntil}';
  }
}

class WebAuthorizations extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3981887996;
  static const SUBCLASS_OF_ID = 2587253554;
  final classType = "constructor";
  final ID = 3981887996;
  List<WebAuthorization> authorizations;
  List<UserBase> users;

  WebAuthorizations({required this.authorizations, required this.users});

  static WebAuthorizations fromReader(BinaryReader reader) {
    var len;
    var _vectorauthorizations = reader.readInt();
    if (_vectorauthorizations != 481674261) throw Exception('Wrong vectorId');
    List<WebAuthorization> authorizations = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      authorizations.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return WebAuthorizations(authorizations: authorizations, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3981887996, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.authorizations.length, 4,
          little: true, signed: true),
      this
          .authorizations.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
          .expand((element) => element),
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
    return 'WebAuthorizations{ID: $ID, authorizations: $authorizations, users: $users}';
  }
}

class AuthorizationForm extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2905480408;
  static const SUBCLASS_OF_ID = 2013567636;
  final classType = "constructor";
  final ID = 2905480408;
  List<SecureRequiredTypeBase> requiredTypes;
  List<SecureValue> values;
  List<SecureValueErrorBase> errors;
  List<UserBase> users;
  String? privacyPolicyUrl;

  AuthorizationForm(
      {required this.requiredTypes,
      required this.values,
      required this.errors,
      required this.users,
      this.privacyPolicyUrl});

  static AuthorizationForm fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var _vectorrequiredTypes = reader.readInt();
    if (_vectorrequiredTypes != 481674261) throw Exception('Wrong vectorId');
    List<SecureRequiredTypeBase> requiredTypes = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      requiredTypes.add(reader.tgReadObject());
    }
    var _vectorvalues = reader.readInt();
    if (_vectorvalues != 481674261) throw Exception('Wrong vectorId');
    List<SecureValue> values = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      values.add(reader.tgReadObject());
    }
    var _vectorerrors = reader.readInt();
    if (_vectorerrors != 481674261) throw Exception('Wrong vectorId');
    List<SecureValueErrorBase> errors = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      errors.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    var privacyPolicyUrl;
    if ((flags & 1) == 1) {
      privacyPolicyUrl = reader.tgReadString();
    } else {
      privacyPolicyUrl = null;
    }
    return AuthorizationForm(
        requiredTypes: requiredTypes,
        values: values,
        errors: errors,
        users: users,
        privacyPolicyUrl: privacyPolicyUrl);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2905480408, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.requiredTypes.length, 4,
          little: true, signed: true),
      this
          .requiredTypes.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.values.length, 4, little: true, signed: true),
      this
          .values.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.errors.length, 4, little: true, signed: true),
      this
          .errors.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
          .expand((element) => element),
      (this.privacyPolicyUrl == null || this.privacyPolicyUrl == false)
          ? List<int>.empty()
          : [serializeBytes(this.privacyPolicyUrl)]
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
    return 'AuthorizationForm{ID: $ID, requiredTypes: $requiredTypes, values: $values, errors: $errors, users: $users, privacyPolicyUrl: $privacyPolicyUrl}';
  }
}

class SentEmailCode extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2166326607;
  static const SUBCLASS_OF_ID = 1777582190;
  final classType = "constructor";
  final ID = 2166326607;
  String emailPattern;
  int length;

  SentEmailCode({required this.emailPattern, required this.length});

  static SentEmailCode fromReader(BinaryReader reader) {
    var emailPattern = reader.tgReadString();
    var length = reader.readInt();
    return SentEmailCode(emailPattern: emailPattern, length: length);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2166326607, 4),
      serializeBytes(this.emailPattern),
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
    return 'SentEmailCode{ID: $ID, emailPattern: $emailPattern, length: $length}';
  }
}

class Takeout extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1304052993;
  static const SUBCLASS_OF_ID = 2218704517;
  final classType = "constructor";
  final ID = 1304052993;
  BigInt id;

  Takeout({required this.id});

  static Takeout fromReader(BinaryReader reader) {
    var id = reader.readLong();
    return Takeout(id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1304052993, 4),
      readBufferFromBigInt(this.id, 8, little: true, signed: true),
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
    return 'Takeout{ID: $ID, id: $id}';
  }
}

abstract class WallPapersBase extends BaseConstructor {}

class WallPapersNotModified extends WallPapersBase {
  static const CONSTRUCTOR_ID = 471437699;
  static const SUBCLASS_OF_ID = 2730838269;
  final classType = "constructor";
  final ID = 471437699;

  WallPapersNotModified();

  static WallPapersNotModified fromReader(BinaryReader reader) {
    return WallPapersNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(471437699, 4),
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
    return 'WallPapersNotModified{ID: $ID, }';
  }
}

class WallPapers extends WallPapersBase {
  static const CONSTRUCTOR_ID = 3452142988;
  static const SUBCLASS_OF_ID = 2730838269;
  final classType = "constructor";
  final ID = 3452142988;
  BigInt hash;
  List<WallPaperBase> wallpapers;

  WallPapers({required this.hash, required this.wallpapers});

  static WallPapers fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readLong();
    var _vectorwallpapers = reader.readInt();
    if (_vectorwallpapers != 481674261) throw Exception('Wrong vectorId');
    List<WallPaperBase> wallpapers = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      wallpapers.add(reader.tgReadObject());
    }
    return WallPapers(hash: hash, wallpapers: wallpapers);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3452142988, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.wallpapers.length, 4,
          little: true, signed: true),
      this
          .wallpapers.map((x) => x.getBytes())
          .expand((element) => element),
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
    return 'WallPapers{ID: $ID, hash: $hash, wallpapers: $wallpapers}';
  }
}

class AutoDownloadSettings extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1674235686;
  static const SUBCLASS_OF_ID = 800610593;
  final classType = "constructor";
  final ID = 1674235686;
  AutoDownloadSettings low;
  AutoDownloadSettings medium;
  AutoDownloadSettings high;

  AutoDownloadSettings(
      {required this.low, required this.medium, required this.high});

  static AutoDownloadSettings fromReader(BinaryReader reader) {
    var low = reader.tgReadObject();
    var medium = reader.tgReadObject();
    var high = reader.tgReadObject();
    return AutoDownloadSettings(low: low, medium: medium, high: high);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1674235686, 4),
      (this.low.getBytes()),
      (this.medium.getBytes()),
      (this.high.getBytes()),
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
    return 'AutoDownloadSettings{ID: $ID, low: $low, medium: $medium, high: $high}';
  }
}

abstract class ThemesBase extends BaseConstructor {}

class ThemesNotModified extends ThemesBase {
  static const CONSTRUCTOR_ID = 4095653410;
  static const SUBCLASS_OF_ID = 2143625732;
  final classType = "constructor";
  final ID = 4095653410;

  ThemesNotModified();

  static ThemesNotModified fromReader(BinaryReader reader) {
    return ThemesNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4095653410, 4),
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
    return 'ThemesNotModified{ID: $ID, }';
  }
}

class Themes extends ThemesBase {
  static const CONSTRUCTOR_ID = 2587724909;
  static const SUBCLASS_OF_ID = 2143625732;
  final classType = "constructor";
  final ID = 2587724909;
  BigInt hash;
  List<Theme> themes;

  Themes({required this.hash, required this.themes});

  static Themes fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readLong();
    var _vectorthemes = reader.readInt();
    if (_vectorthemes != 481674261) throw Exception('Wrong vectorId');
    List<Theme> themes = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      themes.add(reader.tgReadObject());
    }
    return Themes(hash: hash, themes: themes);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2587724909, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.themes.length, 4, little: true, signed: true),
      this
          .themes.map((x) => x.getBytes())
          .expand((element) => element),
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
    return 'Themes{ID: $ID, hash: $hash, themes: $themes}';
  }
}

class ContentSettings extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1474462241;
  static const SUBCLASS_OF_ID = 2923427985;
  final classType = "constructor";
  final ID = 1474462241;
  bool? sensitiveEnabled;
  bool? sensitiveCanChange;

  ContentSettings({this.sensitiveEnabled, this.sensitiveCanChange});

  static ContentSettings fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final sensitiveEnabled = (flags & 1) == 1;
    final sensitiveCanChange = (flags & 2) == 2;
    return ContentSettings(
        sensitiveEnabled: sensitiveEnabled,
        sensitiveCanChange: sensitiveCanChange);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1474462241, 4),
      [0, 0, 0, 0],
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
    return 'ContentSettings{ID: $ID, sensitiveEnabled: $sensitiveEnabled, sensitiveCanChange: $sensitiveCanChange}';
  }
}

abstract class ResetPasswordResultBase extends BaseConstructor {}

class ResetPasswordFailedWait extends ResetPasswordResultBase {
  static const CONSTRUCTOR_ID = 3816265825;
  static const SUBCLASS_OF_ID = 1230009366;
  final classType = "constructor";
  final ID = 3816265825;
  int retryDate;

  ResetPasswordFailedWait({required this.retryDate});

  static ResetPasswordFailedWait fromReader(BinaryReader reader) {
    var retryDate = reader.readInt();
    return ResetPasswordFailedWait(retryDate: retryDate);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3816265825, 4),
      readBufferFromBigInt(this.retryDate, 4, little: true, signed: true),
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
    return 'ResetPasswordFailedWait{ID: $ID, retryDate: $retryDate}';
  }
}

class ResetPasswordRequestedWait extends ResetPasswordResultBase {
  static const CONSTRUCTOR_ID = 3924819069;
  static const SUBCLASS_OF_ID = 1230009366;
  final classType = "constructor";
  final ID = 3924819069;
  int untilDate;

  ResetPasswordRequestedWait({required this.untilDate});

  static ResetPasswordRequestedWait fromReader(BinaryReader reader) {
    var untilDate = reader.readInt();
    return ResetPasswordRequestedWait(untilDate: untilDate);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3924819069, 4),
      readBufferFromBigInt(this.untilDate, 4, little: true, signed: true),
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
    return 'ResetPasswordRequestedWait{ID: $ID, untilDate: $untilDate}';
  }
}

class ResetPasswordOk extends ResetPasswordResultBase {
  static const CONSTRUCTOR_ID = 3911636542;
  static const SUBCLASS_OF_ID = 1230009366;
  final classType = "constructor";
  final ID = 3911636542;

  ResetPasswordOk();

  static ResetPasswordOk fromReader(BinaryReader reader) {
    return ResetPasswordOk();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3911636542, 4),
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
    return 'ResetPasswordOk{ID: $ID, }';
  }
}

abstract class SavedRingtonesBase extends BaseConstructor {}

class SavedRingtonesNotModified extends SavedRingtonesBase {
  static const CONSTRUCTOR_ID = 4227262641;
  static const SUBCLASS_OF_ID = 666683742;
  final classType = "constructor";
  final ID = 4227262641;

  SavedRingtonesNotModified();

  static SavedRingtonesNotModified fromReader(BinaryReader reader) {
    return SavedRingtonesNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4227262641, 4),
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
    return 'SavedRingtonesNotModified{ID: $ID, }';
  }
}

class SavedRingtones extends SavedRingtonesBase {
  static const CONSTRUCTOR_ID = 3253284037;
  static const SUBCLASS_OF_ID = 666683742;
  final classType = "constructor";
  final ID = 3253284037;
  BigInt hash;
  List<DocumentBase> ringtones;

  SavedRingtones({required this.hash, required this.ringtones});

  static SavedRingtones fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readLong();
    var _vectorringtones = reader.readInt();
    if (_vectorringtones != 481674261) throw Exception('Wrong vectorId');
    List<DocumentBase> ringtones = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      ringtones.add(reader.tgReadObject());
    }
    return SavedRingtones(hash: hash, ringtones: ringtones);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3253284037, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.ringtones.length, 4,
          little: true, signed: true),
      this
          .ringtones.map((x) => x.getBytes())
          .expand((element) => element),
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
    return 'SavedRingtones{ID: $ID, hash: $hash, ringtones: $ringtones}';
  }
}

abstract class SavedRingtoneBase extends BaseConstructor {}

class SavedRingtone extends SavedRingtoneBase {
  static const CONSTRUCTOR_ID = 3072737133;
  static const SUBCLASS_OF_ID = 2984412196;
  final classType = "constructor";
  final ID = 3072737133;

  SavedRingtone();

  static SavedRingtone fromReader(BinaryReader reader) {
    return SavedRingtone();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3072737133, 4),
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
    return 'SavedRingtone{ID: $ID, }';
  }
}

class SavedRingtoneConverted extends SavedRingtoneBase {
  static const CONSTRUCTOR_ID = 523271863;
  static const SUBCLASS_OF_ID = 2984412196;
  final classType = "constructor";
  final ID = 523271863;
  DocumentBase document;

  SavedRingtoneConverted({required this.document});

  static SavedRingtoneConverted fromReader(BinaryReader reader) {
    var document = reader.tgReadObject();
    return SavedRingtoneConverted(document: document);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(523271863, 4),
      (this.document.getBytes()),
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
    return 'SavedRingtoneConverted{ID: $ID, document: $document}';
  }
}
