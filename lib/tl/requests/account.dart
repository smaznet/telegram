// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_request.dart';
import '../constructors/constructors.dart';
import '../constructors/account.dart' as account_ns;
import '../constructors/auth.dart' as auth_ns;

class RegisterDevice extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3968205178;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3968205178;
  bool? noMuted;
  int tokenType;
  String token;
  bool appSandbox;
  List<int> secret;
  List<BigInt> otherUids;

  RegisterDevice(
      {this.noMuted,
      required this.tokenType,
      required this.token,
      required this.appSandbox,
      required this.secret,
      required this.otherUids});

  static RegisterDevice fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final noMuted = (flags & 1) == 1;
    var tokenType = reader.readInt();
    var token = reader.tgReadString();
    var appSandbox = reader.tgReadBool();
    var secret = reader.tgReadBytes();
    var _vectorotherUids = reader.readInt();
    if (_vectorotherUids != 481674261) throw Exception('Wrong vectorId');
    List<BigInt> otherUids = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      otherUids.add(reader.readLong());
    }
    return RegisterDevice(
        noMuted: noMuted,
        tokenType: tokenType,
        token: token,
        appSandbox: appSandbox,
        secret: secret,
        otherUids: otherUids);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3968205178, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.tokenType, 4, little: true, signed: true),
      serializeBytes(this.token),
      [this.appSandbox == true ? 0xb5757299 : 0x379779bc],
      serializeBytes(this.secret),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.otherUids.length, 4,
          little: true, signed: true),
      this
          .otherUids.map((x) => readBufferFromBigInt(x, 8, little: true, signed: true))
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'RegisterDevice{ID: $ID, noMuted: $noMuted, tokenType: $tokenType, token: $token, appSandbox: $appSandbox, secret: $secret, otherUids: $otherUids}';
  }
}

class UnregisterDevice extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1779249670;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1779249670;
  int tokenType;
  String token;
  List<BigInt> otherUids;

  UnregisterDevice(
      {required this.tokenType, required this.token, required this.otherUids});

  static UnregisterDevice fromReader(BinaryReader reader) {
    var len;
    var tokenType = reader.readInt();
    var token = reader.tgReadString();
    var _vectorotherUids = reader.readInt();
    if (_vectorotherUids != 481674261) throw Exception('Wrong vectorId');
    List<BigInt> otherUids = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      otherUids.add(reader.readLong());
    }
    return UnregisterDevice(
        tokenType: tokenType, token: token, otherUids: otherUids);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1779249670, 4),
      readBufferFromBigInt(this.tokenType, 4, little: true, signed: true),
      serializeBytes(this.token),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.otherUids.length, 4,
          little: true, signed: true),
      this
          .otherUids.map((x) => readBufferFromBigInt(x, 8, little: true, signed: true))
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'UnregisterDevice{ID: $ID, tokenType: $tokenType, token: $token, otherUids: $otherUids}';
  }
}

class UpdateNotifySettings extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 2227067795;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2227067795;
  InputNotifyPeerBase peer;
  InputPeerNotifySettings settings;

  UpdateNotifySettings({required this.peer, required this.settings});

  static UpdateNotifySettings fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    var settings = reader.tgReadObject();
    return UpdateNotifySettings(peer: peer, settings: settings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2227067795, 4),
      (this.peer.getBytes()),
      (this.settings.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'UpdateNotifySettings{ID: $ID, peer: $peer, settings: $settings}';
  }
}

class GetNotifySettings extends BaseRequest<PeerNotifySettings, dynamic> {
  static const CONSTRUCTOR_ID = 313765169;
  static const SUBCLASS_OF_ID = 3475030132;
  final classType = "request";
  final ID = 313765169;
  InputNotifyPeerBase peer;

  GetNotifySettings({required this.peer});

  static GetNotifySettings fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    return GetNotifySettings(peer: peer);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(313765169, 4),
      (this.peer.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<PeerNotifySettings, dynamic>();
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
    return 'GetNotifySettings{ID: $ID, peer: $peer}';
  }
}

class ResetNotifySettings extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3682473799;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3682473799;

  ResetNotifySettings();

  static ResetNotifySettings fromReader(BinaryReader reader) {
    return ResetNotifySettings();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3682473799, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'ResetNotifySettings{ID: $ID, }';
  }
}

class UpdateProfile extends BaseRequest<UserBase, dynamic> {
  static const CONSTRUCTOR_ID = 2018596725;
  static const SUBCLASS_OF_ID = 765557111;
  final classType = "request";
  final ID = 2018596725;
  String? firstName;
  String? lastName;
  String? about;

  UpdateProfile({this.firstName, this.lastName, this.about});

  static UpdateProfile fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var firstName;
    if ((flags & 1) == 1) {
      firstName = reader.tgReadString();
    } else {
      firstName = null;
    }
    var lastName;
    if ((flags & 2) == 2) {
      lastName = reader.tgReadString();
    } else {
      lastName = null;
    }
    var about;
    if ((flags & 4) == 4) {
      about = reader.tgReadString();
    } else {
      about = null;
    }
    return UpdateProfile(
        firstName: firstName, lastName: lastName, about: about);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2018596725, 4),
      [0, 0, 0, 0],
      (this.firstName == null || this.firstName == false)
          ? List<int>.empty()
          : [serializeBytes(this.firstName)]
              .expand((element) => element)
              .toList(),
      (this.lastName == null || this.lastName == false)
          ? List<int>.empty()
          : [serializeBytes(this.lastName)]
              .expand((element) => element)
              .toList(),
      (this.about == null || this.about == false)
          ? List<int>.empty()
          : [serializeBytes(this.about)].expand((element) => element).toList(),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<UserBase, dynamic>();
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
    return 'UpdateProfile{ID: $ID, firstName: $firstName, lastName: $lastName, about: $about}';
  }
}

class UpdateStatus extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1713919532;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1713919532;
  bool offline;

  UpdateStatus({required this.offline});

  static UpdateStatus fromReader(BinaryReader reader) {
    var offline = reader.tgReadBool();
    return UpdateStatus(offline: offline);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1713919532, 4),
      [this.offline == true ? 0xb5757299 : 0x379779bc],
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'UpdateStatus{ID: $ID, offline: $offline}';
  }
}

class GetWallPapers extends BaseRequest<account_ns.WallPapersBase, dynamic> {
  static const CONSTRUCTOR_ID = 127302966;
  static const SUBCLASS_OF_ID = 2730838269;
  final classType = "request";
  final ID = 127302966;
  BigInt hash;

  GetWallPapers({required this.hash});

  static GetWallPapers fromReader(BinaryReader reader) {
    var hash = reader.readLong();
    return GetWallPapers(hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(127302966, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.WallPapersBase, dynamic>();
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
    return 'GetWallPapers{ID: $ID, hash: $hash}';
  }
}

class ReportPeer extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3317316998;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3317316998;
  InputPeerBase peer;
  ReportReasonBase reason;
  String message;

  ReportPeer({required this.peer, required this.reason, required this.message});

  static ReportPeer fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    var reason = reader.tgReadObject();
    var message = reader.tgReadString();
    return ReportPeer(peer: peer, reason: reason, message: message);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3317316998, 4),
      (this.peer.getBytes()),
      (this.reason.getBytes()),
      serializeBytes(this.message),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'ReportPeer{ID: $ID, peer: $peer, reason: $reason, message: $message}';
  }
}

class CheckUsername extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 655677548;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 655677548;
  String username;

  CheckUsername({required this.username});

  static CheckUsername fromReader(BinaryReader reader) {
    var username = reader.tgReadString();
    return CheckUsername(username: username);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(655677548, 4),
      serializeBytes(this.username),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'CheckUsername{ID: $ID, username: $username}';
  }
}

class UpdateUsername extends BaseRequest<UserBase, dynamic> {
  static const CONSTRUCTOR_ID = 1040964988;
  static const SUBCLASS_OF_ID = 765557111;
  final classType = "request";
  final ID = 1040964988;
  String username;

  UpdateUsername({required this.username});

  static UpdateUsername fromReader(BinaryReader reader) {
    var username = reader.tgReadString();
    return UpdateUsername(username: username);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1040964988, 4),
      serializeBytes(this.username),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<UserBase, dynamic>();
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
    return 'UpdateUsername{ID: $ID, username: $username}';
  }
}

class GetPrivacy extends BaseRequest<account_ns.PrivacyRules, dynamic> {
  static const CONSTRUCTOR_ID = 3671837008;
  static const SUBCLASS_OF_ID = 3042622082;
  final classType = "request";
  final ID = 3671837008;
  InputPrivacyKeyBase key;

  GetPrivacy({required this.key});

  static GetPrivacy fromReader(BinaryReader reader) {
    var key = reader.tgReadObject();
    return GetPrivacy(key: key);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3671837008, 4),
      (this.key.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.PrivacyRules, dynamic>();
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
    return 'GetPrivacy{ID: $ID, key: $key}';
  }
}

class SetPrivacy extends BaseRequest<account_ns.PrivacyRules, dynamic> {
  static const CONSTRUCTOR_ID = 3388480744;
  static const SUBCLASS_OF_ID = 3042622082;
  final classType = "request";
  final ID = 3388480744;
  InputPrivacyKeyBase key;
  List<InputPrivacyRuleBase> rules;

  SetPrivacy({required this.key, required this.rules});

  static SetPrivacy fromReader(BinaryReader reader) {
    var len;
    var key = reader.tgReadObject();
    var _vectorrules = reader.readInt();
    if (_vectorrules != 481674261) throw Exception('Wrong vectorId');
    List<InputPrivacyRuleBase> rules = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      rules.add(reader.tgReadObject());
    }
    return SetPrivacy(key: key, rules: rules);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3388480744, 4),
      (this.key.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.rules.length, 4, little: true, signed: true),
      this
          .rules.map((x) => x.getBytes())
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.PrivacyRules, dynamic>();
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
    return 'SetPrivacy{ID: $ID, key: $key, rules: $rules}';
  }
}

class DeleteAccount extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1099779595;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1099779595;
  String reason;

  DeleteAccount({required this.reason});

  static DeleteAccount fromReader(BinaryReader reader) {
    var reason = reader.tgReadString();
    return DeleteAccount(reason: reason);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1099779595, 4),
      serializeBytes(this.reason),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'DeleteAccount{ID: $ID, reason: $reason}';
  }
}

class GetAccountTTL extends BaseRequest<AccountDaysTTL, dynamic> {
  static const CONSTRUCTOR_ID = 150761757;
  static const SUBCLASS_OF_ID = 3131284872;
  final classType = "request";
  final ID = 150761757;

  GetAccountTTL();

  static GetAccountTTL fromReader(BinaryReader reader) {
    return GetAccountTTL();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(150761757, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<AccountDaysTTL, dynamic>();
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
    return 'GetAccountTTL{ID: $ID, }';
  }
}

class SetAccountTTL extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 608323678;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 608323678;
  AccountDaysTTL ttl;

  SetAccountTTL({required this.ttl});

  static SetAccountTTL fromReader(BinaryReader reader) {
    var ttl = reader.tgReadObject();
    return SetAccountTTL(ttl: ttl);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(608323678, 4),
      (this.ttl.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'SetAccountTTL{ID: $ID, ttl: $ttl}';
  }
}

class SendChangePhoneCode extends BaseRequest<auth_ns.SentCode, dynamic> {
  static const CONSTRUCTOR_ID = 2186758885;
  static const SUBCLASS_OF_ID = 1827172481;
  final classType = "request";
  final ID = 2186758885;
  String phoneNumber;
  CodeSettings settings;

  SendChangePhoneCode({required this.phoneNumber, required this.settings});

  static SendChangePhoneCode fromReader(BinaryReader reader) {
    var phoneNumber = reader.tgReadString();
    var settings = reader.tgReadObject();
    return SendChangePhoneCode(phoneNumber: phoneNumber, settings: settings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2186758885, 4),
      serializeBytes(this.phoneNumber),
      (this.settings.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<auth_ns.SentCode, dynamic>();
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
    return 'SendChangePhoneCode{ID: $ID, phoneNumber: $phoneNumber, settings: $settings}';
  }
}

class ChangePhone extends BaseRequest<UserBase, dynamic> {
  static const CONSTRUCTOR_ID = 1891839707;
  static const SUBCLASS_OF_ID = 765557111;
  final classType = "request";
  final ID = 1891839707;
  String phoneNumber;
  String phoneCodeHash;
  String phoneCode;

  ChangePhone(
      {required this.phoneNumber,
      required this.phoneCodeHash,
      required this.phoneCode});

  static ChangePhone fromReader(BinaryReader reader) {
    var phoneNumber = reader.tgReadString();
    var phoneCodeHash = reader.tgReadString();
    var phoneCode = reader.tgReadString();
    return ChangePhone(
        phoneNumber: phoneNumber,
        phoneCodeHash: phoneCodeHash,
        phoneCode: phoneCode);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1891839707, 4),
      serializeBytes(this.phoneNumber),
      serializeBytes(this.phoneCodeHash),
      serializeBytes(this.phoneCode),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<UserBase, dynamic>();
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
    return 'ChangePhone{ID: $ID, phoneNumber: $phoneNumber, phoneCodeHash: $phoneCodeHash, phoneCode: $phoneCode}';
  }
}

class UpdateDeviceLocked extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 954152242;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 954152242;
  int period;

  UpdateDeviceLocked({required this.period});

  static UpdateDeviceLocked fromReader(BinaryReader reader) {
    var period = reader.readInt();
    return UpdateDeviceLocked(period: period);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(954152242, 4),
      readBufferFromBigInt(this.period, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'UpdateDeviceLocked{ID: $ID, period: $period}';
  }
}

class GetAuthorizations
    extends BaseRequest<account_ns.Authorizations, dynamic> {
  static const CONSTRUCTOR_ID = 3810574680;
  static const SUBCLASS_OF_ID = 200663295;
  final classType = "request";
  final ID = 3810574680;

  GetAuthorizations();

  static GetAuthorizations fromReader(BinaryReader reader) {
    return GetAuthorizations();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3810574680, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.Authorizations, dynamic>();
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
    return 'GetAuthorizations{ID: $ID, }';
  }
}

class ResetAuthorization extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3749180348;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3749180348;
  BigInt hash;

  ResetAuthorization({required this.hash});

  static ResetAuthorization fromReader(BinaryReader reader) {
    var hash = reader.readLong();
    return ResetAuthorization(hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3749180348, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'ResetAuthorization{ID: $ID, hash: $hash}';
  }
}

class GetPassword extends BaseRequest<account_ns.Password, dynamic> {
  static const CONSTRUCTOR_ID = 1418342645;
  static const SUBCLASS_OF_ID = 1403130275;
  final classType = "request";
  final ID = 1418342645;

  GetPassword();

  static GetPassword fromReader(BinaryReader reader) {
    return GetPassword();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1418342645, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.Password, dynamic>();
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
    return 'GetPassword{ID: $ID, }';
  }
}

class GetPasswordSettings
    extends BaseRequest<account_ns.PasswordSettings, dynamic> {
  static const CONSTRUCTOR_ID = 2631199481;
  static const SUBCLASS_OF_ID = 3527389304;
  final classType = "request";
  final ID = 2631199481;
  InputCheckPasswordSRPBase password;

  GetPasswordSettings({required this.password});

  static GetPasswordSettings fromReader(BinaryReader reader) {
    var password = reader.tgReadObject();
    return GetPasswordSettings(password: password);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2631199481, 4),
      (this.password.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.PasswordSettings, dynamic>();
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
    return 'GetPasswordSettings{ID: $ID, password: $password}';
  }
}

class UpdatePasswordSettings extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 2778402863;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2778402863;
  InputCheckPasswordSRPBase password;
  account_ns.PasswordInputSettings newSettings;

  UpdatePasswordSettings({required this.password, required this.newSettings});

  static UpdatePasswordSettings fromReader(BinaryReader reader) {
    var password = reader.tgReadObject();
    var newSettings = reader.tgReadObject();
    return UpdatePasswordSettings(password: password, newSettings: newSettings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2778402863, 4),
      (this.password.getBytes()),
      (this.newSettings.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'UpdatePasswordSettings{ID: $ID, password: $password, newSettings: $newSettings}';
  }
}

class SendConfirmPhoneCode extends BaseRequest<auth_ns.SentCode, dynamic> {
  static const CONSTRUCTOR_ID = 457157256;
  static const SUBCLASS_OF_ID = 1827172481;
  final classType = "request";
  final ID = 457157256;
  String hash;
  CodeSettings settings;

  SendConfirmPhoneCode({required this.hash, required this.settings});

  static SendConfirmPhoneCode fromReader(BinaryReader reader) {
    var hash = reader.tgReadString();
    var settings = reader.tgReadObject();
    return SendConfirmPhoneCode(hash: hash, settings: settings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(457157256, 4),
      serializeBytes(this.hash),
      (this.settings.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<auth_ns.SentCode, dynamic>();
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
    return 'SendConfirmPhoneCode{ID: $ID, hash: $hash, settings: $settings}';
  }
}

class ConfirmPhone extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1596029123;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1596029123;
  String phoneCodeHash;
  String phoneCode;

  ConfirmPhone({required this.phoneCodeHash, required this.phoneCode});

  static ConfirmPhone fromReader(BinaryReader reader) {
    var phoneCodeHash = reader.tgReadString();
    var phoneCode = reader.tgReadString();
    return ConfirmPhone(phoneCodeHash: phoneCodeHash, phoneCode: phoneCode);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1596029123, 4),
      serializeBytes(this.phoneCodeHash),
      serializeBytes(this.phoneCode),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'ConfirmPhone{ID: $ID, phoneCodeHash: $phoneCodeHash, phoneCode: $phoneCode}';
  }
}

class GetTmpPassword extends BaseRequest<account_ns.TmpPassword, dynamic> {
  static const CONSTRUCTOR_ID = 1151208273;
  static const SUBCLASS_OF_ID = 2959382829;
  final classType = "request";
  final ID = 1151208273;
  InputCheckPasswordSRPBase password;
  int period;

  GetTmpPassword({required this.password, required this.period});

  static GetTmpPassword fromReader(BinaryReader reader) {
    var password = reader.tgReadObject();
    var period = reader.readInt();
    return GetTmpPassword(password: password, period: period);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1151208273, 4),
      (this.password.getBytes()),
      readBufferFromBigInt(this.period, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.TmpPassword, dynamic>();
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
    return 'GetTmpPassword{ID: $ID, password: $password, period: $period}';
  }
}

class GetWebAuthorizations
    extends BaseRequest<account_ns.WebAuthorizations, dynamic> {
  static const CONSTRUCTOR_ID = 405695855;
  static const SUBCLASS_OF_ID = 2587253554;
  final classType = "request";
  final ID = 405695855;

  GetWebAuthorizations();

  static GetWebAuthorizations fromReader(BinaryReader reader) {
    return GetWebAuthorizations();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(405695855, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.WebAuthorizations, dynamic>();
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
    return 'GetWebAuthorizations{ID: $ID, }';
  }
}

class ResetWebAuthorization extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 755087855;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 755087855;
  BigInt hash;

  ResetWebAuthorization({required this.hash});

  static ResetWebAuthorization fromReader(BinaryReader reader) {
    var hash = reader.readLong();
    return ResetWebAuthorization(hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(755087855, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'ResetWebAuthorization{ID: $ID, hash: $hash}';
  }
}

class ResetWebAuthorizations extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1747789204;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1747789204;

  ResetWebAuthorizations();

  static ResetWebAuthorizations fromReader(BinaryReader reader) {
    return ResetWebAuthorizations();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1747789204, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'ResetWebAuthorizations{ID: $ID, }';
  }
}

class GetAllSecureValues extends BaseRequest<List<SecureValue>, SecureValue> {
  static const CONSTRUCTOR_ID = 2995305597;
  static const SUBCLASS_OF_ID = 3895345441;
  final classType = "request";
  final ID = 2995305597;

  GetAllSecureValues();

  static GetAllSecureValues fromReader(BinaryReader reader) {
    return GetAllSecureValues();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2995305597, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<List<SecureValue>, SecureValue>();
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
    return 'GetAllSecureValues{ID: $ID, }';
  }
}

class GetSecureValue extends BaseRequest<List<SecureValue>, SecureValue> {
  static const CONSTRUCTOR_ID = 1936088002;
  static const SUBCLASS_OF_ID = 3895345441;
  final classType = "request";
  final ID = 1936088002;
  List<SecureValueTypeBase> types;

  GetSecureValue({required this.types});

  static GetSecureValue fromReader(BinaryReader reader) {
    var len;
    var _vectortypes = reader.readInt();
    if (_vectortypes != 481674261) throw Exception('Wrong vectorId');
    List<SecureValueTypeBase> types = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      types.add(reader.tgReadObject());
    }
    return GetSecureValue(types: types);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1936088002, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.types.length, 4, little: true, signed: true),
      this
          .types.map((x) => x.getBytes())
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<List<SecureValue>, SecureValue>();
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
    return 'GetSecureValue{ID: $ID, types: $types}';
  }
}

class SaveSecureValue extends BaseRequest<SecureValue, dynamic> {
  static const CONSTRUCTOR_ID = 2308956957;
  static const SUBCLASS_OF_ID = 85014702;
  final classType = "request";
  final ID = 2308956957;
  InputSecureValue value;
  BigInt secureSecretId;

  SaveSecureValue({required this.value, required this.secureSecretId});

  static SaveSecureValue fromReader(BinaryReader reader) {
    var value = reader.tgReadObject();
    var secureSecretId = reader.readLong();
    return SaveSecureValue(value: value, secureSecretId: secureSecretId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2308956957, 4),
      (this.value.getBytes()),
      readBufferFromBigInt(this.secureSecretId, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<SecureValue, dynamic>();
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
    return 'SaveSecureValue{ID: $ID, value: $value, secureSecretId: $secureSecretId}';
  }
}

class DeleteSecureValue extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3095444555;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3095444555;
  List<SecureValueTypeBase> types;

  DeleteSecureValue({required this.types});

  static DeleteSecureValue fromReader(BinaryReader reader) {
    var len;
    var _vectortypes = reader.readInt();
    if (_vectortypes != 481674261) throw Exception('Wrong vectorId');
    List<SecureValueTypeBase> types = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      types.add(reader.tgReadObject());
    }
    return DeleteSecureValue(types: types);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3095444555, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.types.length, 4, little: true, signed: true),
      this
          .types.map((x) => x.getBytes())
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'DeleteSecureValue{ID: $ID, types: $types}';
  }
}

class GetAuthorizationForm
    extends BaseRequest<account_ns.AuthorizationForm, dynamic> {
  static const CONSTRUCTOR_ID = 2838059386;
  static const SUBCLASS_OF_ID = 2013567636;
  final classType = "request";
  final ID = 2838059386;
  BigInt botId;
  String scope;
  String publicKey;

  GetAuthorizationForm(
      {required this.botId, required this.scope, required this.publicKey});

  static GetAuthorizationForm fromReader(BinaryReader reader) {
    var botId = reader.readLong();
    var scope = reader.tgReadString();
    var publicKey = reader.tgReadString();
    return GetAuthorizationForm(
        botId: botId, scope: scope, publicKey: publicKey);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2838059386, 4),
      readBufferFromBigInt(this.botId, 8, little: true, signed: true),
      serializeBytes(this.scope),
      serializeBytes(this.publicKey),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.AuthorizationForm, dynamic>();
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
    return 'GetAuthorizationForm{ID: $ID, botId: $botId, scope: $scope, publicKey: $publicKey}';
  }
}

class AcceptAuthorization extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 4092415091;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 4092415091;
  BigInt botId;
  String scope;
  String publicKey;
  List<SecureValueHash> valueHashes;
  SecureCredentialsEncrypted credentials;

  AcceptAuthorization(
      {required this.botId,
      required this.scope,
      required this.publicKey,
      required this.valueHashes,
      required this.credentials});

  static AcceptAuthorization fromReader(BinaryReader reader) {
    var len;
    var botId = reader.readLong();
    var scope = reader.tgReadString();
    var publicKey = reader.tgReadString();
    var _vectorvalueHashes = reader.readInt();
    if (_vectorvalueHashes != 481674261) throw Exception('Wrong vectorId');
    List<SecureValueHash> valueHashes = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      valueHashes.add(reader.tgReadObject());
    }
    var credentials = reader.tgReadObject();
    return AcceptAuthorization(
        botId: botId,
        scope: scope,
        publicKey: publicKey,
        valueHashes: valueHashes,
        credentials: credentials);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4092415091, 4),
      readBufferFromBigInt(this.botId, 8, little: true, signed: true),
      serializeBytes(this.scope),
      serializeBytes(this.publicKey),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.valueHashes.length, 4,
          little: true, signed: true),
      this
          .valueHashes.map((x) => x.getBytes())
          .expand((element) => element),
      (this.credentials.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'AcceptAuthorization{ID: $ID, botId: $botId, scope: $scope, publicKey: $publicKey, valueHashes: $valueHashes, credentials: $credentials}';
  }
}

class SendVerifyPhoneCode extends BaseRequest<auth_ns.SentCode, dynamic> {
  static const CONSTRUCTOR_ID = 2778945273;
  static const SUBCLASS_OF_ID = 1827172481;
  final classType = "request";
  final ID = 2778945273;
  String phoneNumber;
  CodeSettings settings;

  SendVerifyPhoneCode({required this.phoneNumber, required this.settings});

  static SendVerifyPhoneCode fromReader(BinaryReader reader) {
    var phoneNumber = reader.tgReadString();
    var settings = reader.tgReadObject();
    return SendVerifyPhoneCode(phoneNumber: phoneNumber, settings: settings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2778945273, 4),
      serializeBytes(this.phoneNumber),
      (this.settings.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<auth_ns.SentCode, dynamic>();
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
    return 'SendVerifyPhoneCode{ID: $ID, phoneNumber: $phoneNumber, settings: $settings}';
  }
}

class VerifyPhone extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1305716726;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1305716726;
  String phoneNumber;
  String phoneCodeHash;
  String phoneCode;

  VerifyPhone(
      {required this.phoneNumber,
      required this.phoneCodeHash,
      required this.phoneCode});

  static VerifyPhone fromReader(BinaryReader reader) {
    var phoneNumber = reader.tgReadString();
    var phoneCodeHash = reader.tgReadString();
    var phoneCode = reader.tgReadString();
    return VerifyPhone(
        phoneNumber: phoneNumber,
        phoneCodeHash: phoneCodeHash,
        phoneCode: phoneCode);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1305716726, 4),
      serializeBytes(this.phoneNumber),
      serializeBytes(this.phoneCodeHash),
      serializeBytes(this.phoneCode),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'VerifyPhone{ID: $ID, phoneNumber: $phoneNumber, phoneCodeHash: $phoneCodeHash, phoneCode: $phoneCode}';
  }
}

class SendVerifyEmailCode
    extends BaseRequest<account_ns.SentEmailCode, dynamic> {
  static const CONSTRUCTOR_ID = 1880182943;
  static const SUBCLASS_OF_ID = 1777582190;
  final classType = "request";
  final ID = 1880182943;
  String email;

  SendVerifyEmailCode({required this.email});

  static SendVerifyEmailCode fromReader(BinaryReader reader) {
    var email = reader.tgReadString();
    return SendVerifyEmailCode(email: email);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1880182943, 4),
      serializeBytes(this.email),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.SentEmailCode, dynamic>();
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
    return 'SendVerifyEmailCode{ID: $ID, email: $email}';
  }
}

class VerifyEmail extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3971627483;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3971627483;
  String email;
  String code;

  VerifyEmail({required this.email, required this.code});

  static VerifyEmail fromReader(BinaryReader reader) {
    var email = reader.tgReadString();
    var code = reader.tgReadString();
    return VerifyEmail(email: email, code: code);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3971627483, 4),
      serializeBytes(this.email),
      serializeBytes(this.code),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'VerifyEmail{ID: $ID, email: $email, code: $code}';
  }
}

class InitTakeoutSession extends BaseRequest<account_ns.Takeout, dynamic> {
  static const CONSTRUCTOR_ID = 2398350000;
  static const SUBCLASS_OF_ID = 2218704517;
  final classType = "request";
  final ID = 2398350000;
  bool? contacts;
  bool? messageUsers;
  bool? messageChats;
  bool? messageMegagroups;
  bool? messageChannels;
  bool? files;
  BigInt? fileMaxSize;

  InitTakeoutSession(
      {this.contacts,
      this.messageUsers,
      this.messageChats,
      this.messageMegagroups,
      this.messageChannels,
      this.files,
      this.fileMaxSize});

  static InitTakeoutSession fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final contacts = (flags & 1) == 1;
    final messageUsers = (flags & 2) == 2;
    final messageChats = (flags & 4) == 4;
    final messageMegagroups = (flags & 8) == 8;
    final messageChannels = (flags & 16) == 16;
    final files = (flags & 32) == 32;
    var fileMaxSize;
    if ((flags & 32) == 32) {
      fileMaxSize = reader.readLong();
    } else {
      fileMaxSize = null;
    }
    return InitTakeoutSession(
        contacts: contacts,
        messageUsers: messageUsers,
        messageChats: messageChats,
        messageMegagroups: messageMegagroups,
        messageChannels: messageChannels,
        files: files,
        fileMaxSize: fileMaxSize);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2398350000, 4),
      [0, 0, 0, 0],
      (this.fileMaxSize == null || this.fileMaxSize == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.fileMaxSize, 8,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.Takeout, dynamic>();
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
    return 'InitTakeoutSession{ID: $ID, contacts: $contacts, messageUsers: $messageUsers, messageChats: $messageChats, messageMegagroups: $messageMegagroups, messageChannels: $messageChannels, files: $files, fileMaxSize: $fileMaxSize}';
  }
}

class FinishTakeoutSession extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 489050862;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 489050862;
  bool? success;

  FinishTakeoutSession({this.success});

  static FinishTakeoutSession fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final success = (flags & 1) == 1;
    return FinishTakeoutSession(success: success);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(489050862, 4),
      [0, 0, 0, 0],
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'FinishTakeoutSession{ID: $ID, success: $success}';
  }
}

class ConfirmPasswordEmail extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 2413762848;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2413762848;
  String code;

  ConfirmPasswordEmail({required this.code});

  static ConfirmPasswordEmail fromReader(BinaryReader reader) {
    var code = reader.tgReadString();
    return ConfirmPasswordEmail(code: code);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2413762848, 4),
      serializeBytes(this.code),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'ConfirmPasswordEmail{ID: $ID, code: $code}';
  }
}

class ResendPasswordEmail extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 2055154197;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2055154197;

  ResendPasswordEmail();

  static ResendPasswordEmail fromReader(BinaryReader reader) {
    return ResendPasswordEmail();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2055154197, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'ResendPasswordEmail{ID: $ID, }';
  }
}

class CancelPasswordEmail extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3251361206;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3251361206;

  CancelPasswordEmail();

  static CancelPasswordEmail fromReader(BinaryReader reader) {
    return CancelPasswordEmail();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3251361206, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'CancelPasswordEmail{ID: $ID, }';
  }
}

class GetContactSignUpNotification extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 2668087080;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2668087080;

  GetContactSignUpNotification();

  static GetContactSignUpNotification fromReader(BinaryReader reader) {
    return GetContactSignUpNotification();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2668087080, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'GetContactSignUpNotification{ID: $ID, }';
  }
}

class SetContactSignUpNotification extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3488890721;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3488890721;
  bool silent;

  SetContactSignUpNotification({required this.silent});

  static SetContactSignUpNotification fromReader(BinaryReader reader) {
    var silent = reader.tgReadBool();
    return SetContactSignUpNotification(silent: silent);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3488890721, 4),
      [this.silent == true ? 0xb5757299 : 0x379779bc],
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'SetContactSignUpNotification{ID: $ID, silent: $silent}';
  }
}

class GetNotifyExceptions extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 1398240377;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 1398240377;
  bool? compareSound;
  InputNotifyPeerBase? peer;

  GetNotifyExceptions({this.compareSound, this.peer});

  static GetNotifyExceptions fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final compareSound = (flags & 2) == 2;
    var peer;
    if ((flags & 1) == 1) {
      peer = reader.tgReadObject();
    } else {
      peer = null;
    }
    return GetNotifyExceptions(compareSound: compareSound, peer: peer);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1398240377, 4),
      [0, 0, 0, 0],
      (this.peer == null || this.peer == false)
          ? List<int>.empty()
          : [(this.peer!.getBytes())]
              .expand((element) => element)
              .toList(),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<UpdatesBase, dynamic>();
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
    return 'GetNotifyExceptions{ID: $ID, compareSound: $compareSound, peer: $peer}';
  }
}

class GetWallPaper extends BaseRequest<WallPaperBase, dynamic> {
  static const CONSTRUCTOR_ID = 4237155306;
  static const SUBCLASS_OF_ID = 2527250827;
  final classType = "request";
  final ID = 4237155306;
  InputWallPaperBase wallpaper;

  GetWallPaper({required this.wallpaper});

  static GetWallPaper fromReader(BinaryReader reader) {
    var wallpaper = reader.tgReadObject();
    return GetWallPaper(wallpaper: wallpaper);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4237155306, 4),
      (this.wallpaper.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<WallPaperBase, dynamic>();
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
    return 'GetWallPaper{ID: $ID, wallpaper: $wallpaper}';
  }
}

class UploadWallPaper extends BaseRequest<WallPaperBase, dynamic> {
  static const CONSTRUCTOR_ID = 3716494945;
  static const SUBCLASS_OF_ID = 2527250827;
  final classType = "request";
  final ID = 3716494945;
  InputFileBase file;
  String mimeType;
  WallPaperSettings settings;

  UploadWallPaper(
      {required this.file, required this.mimeType, required this.settings});

  static UploadWallPaper fromReader(BinaryReader reader) {
    var file = reader.tgReadObject();
    var mimeType = reader.tgReadString();
    var settings = reader.tgReadObject();
    return UploadWallPaper(file: file, mimeType: mimeType, settings: settings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3716494945, 4),
      (this.file.getBytes()),
      serializeBytes(this.mimeType),
      (this.settings.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<WallPaperBase, dynamic>();
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
    return 'UploadWallPaper{ID: $ID, file: $file, mimeType: $mimeType, settings: $settings}';
  }
}

class SaveWallPaper extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1817860919;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1817860919;
  InputWallPaperBase wallpaper;
  bool unsave;
  WallPaperSettings settings;

  SaveWallPaper(
      {required this.wallpaper, required this.unsave, required this.settings});

  static SaveWallPaper fromReader(BinaryReader reader) {
    var wallpaper = reader.tgReadObject();
    var unsave = reader.tgReadBool();
    var settings = reader.tgReadObject();
    return SaveWallPaper(
        wallpaper: wallpaper, unsave: unsave, settings: settings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1817860919, 4),
      (this.wallpaper.getBytes()),
      [this.unsave == true ? 0xb5757299 : 0x379779bc],
      (this.settings.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'SaveWallPaper{ID: $ID, wallpaper: $wallpaper, unsave: $unsave, settings: $settings}';
  }
}

class InstallWallPaper extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 4276967273;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 4276967273;
  InputWallPaperBase wallpaper;
  WallPaperSettings settings;

  InstallWallPaper({required this.wallpaper, required this.settings});

  static InstallWallPaper fromReader(BinaryReader reader) {
    var wallpaper = reader.tgReadObject();
    var settings = reader.tgReadObject();
    return InstallWallPaper(wallpaper: wallpaper, settings: settings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4276967273, 4),
      (this.wallpaper.getBytes()),
      (this.settings.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'InstallWallPaper{ID: $ID, wallpaper: $wallpaper, settings: $settings}';
  }
}

class ResetWallPapers extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3141244932;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3141244932;

  ResetWallPapers();

  static ResetWallPapers fromReader(BinaryReader reader) {
    return ResetWallPapers();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3141244932, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'ResetWallPapers{ID: $ID, }';
  }
}

class GetAutoDownloadSettings
    extends BaseRequest<account_ns.AutoDownloadSettings, dynamic> {
  static const CONSTRUCTOR_ID = 1457130303;
  static const SUBCLASS_OF_ID = 800610593;
  final classType = "request";
  final ID = 1457130303;

  GetAutoDownloadSettings();

  static GetAutoDownloadSettings fromReader(BinaryReader reader) {
    return GetAutoDownloadSettings();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1457130303, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.AutoDownloadSettings, dynamic>();
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
    return 'GetAutoDownloadSettings{ID: $ID, }';
  }
}

class SaveAutoDownloadSettings extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1995661875;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1995661875;
  bool? low;
  bool? high;
  AutoDownloadSettings settings;

  SaveAutoDownloadSettings({this.low, this.high, required this.settings});

  static SaveAutoDownloadSettings fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final low = (flags & 1) == 1;
    final high = (flags & 2) == 2;
    var settings = reader.tgReadObject();
    return SaveAutoDownloadSettings(low: low, high: high, settings: settings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1995661875, 4),
      [0, 0, 0, 0],
      (this.settings.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'SaveAutoDownloadSettings{ID: $ID, low: $low, high: $high, settings: $settings}';
  }
}

class UploadTheme extends BaseRequest<DocumentBase, dynamic> {
  static const CONSTRUCTOR_ID = 473805619;
  static const SUBCLASS_OF_ID = 555739168;
  final classType = "request";
  final ID = 473805619;
  InputFileBase file;
  InputFileBase? thumb;
  String fileName;
  String mimeType;

  UploadTheme(
      {required this.file,
      this.thumb,
      required this.fileName,
      required this.mimeType});

  static UploadTheme fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var file = reader.tgReadObject();
    var thumb;
    if ((flags & 1) == 1) {
      thumb = reader.tgReadObject();
    } else {
      thumb = null;
    }
    var fileName = reader.tgReadString();
    var mimeType = reader.tgReadString();
    return UploadTheme(
        file: file, thumb: thumb, fileName: fileName, mimeType: mimeType);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(473805619, 4),
      [0, 0, 0, 0],
      (this.file.getBytes()),
      (this.thumb == null || this.thumb == false)
          ? List<int>.empty()
          : [(this.thumb!.getBytes())]
              .expand((element) => element)
              .toList(),
      serializeBytes(this.fileName),
      serializeBytes(this.mimeType),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<DocumentBase, dynamic>();
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
    return 'UploadTheme{ID: $ID, file: $file, thumb: $thumb, fileName: $fileName, mimeType: $mimeType}';
  }
}

class CreateTheme extends BaseRequest<Theme, dynamic> {
  static const CONSTRUCTOR_ID = 1697530880;
  static const SUBCLASS_OF_ID = 1454688268;
  final classType = "request";
  final ID = 1697530880;
  String slug;
  String title;
  InputDocumentBase? document;
  List<InputThemeSettings>? settings;

  CreateTheme(
      {required this.slug, required this.title, this.document, this.settings});

  static CreateTheme fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var slug = reader.tgReadString();
    var title = reader.tgReadString();
    var document;
    if ((flags & 4) == 4) {
      document = reader.tgReadObject();
    } else {
      document = null;
    }
    var settings;
    if ((flags & 8) == 8) {
      var _vectorsettings = reader.readInt();
      if (_vectorsettings != 481674261) throw Exception('Wrong vectorId');
      List<InputThemeSettings> settings = [];
      len = reader.readInt();
      for (var i = 0; i < len; i++) {
        settings.add(reader.tgReadObject());
      }
    } else {
      settings = null;
    }
    return CreateTheme(
        slug: slug, title: title, document: document, settings: settings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1697530880, 4),
      [0, 0, 0, 0],
      serializeBytes(this.slug),
      serializeBytes(this.title),
      (this.document == null || this.document == false)
          ? List<int>.empty()
          : [(this.document!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.settings == null || this.settings == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
              readBufferFromBigInt(this.settings!.length, 4,
                  little: true, signed: true),
              this
                  .settings!
                  .map((x) => x.getBytes())
                  .expand((element) => element)
            ].expand((element) => element).toList(),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<Theme, dynamic>();
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
    return 'CreateTheme{ID: $ID, slug: $slug, title: $title, document: $document, settings: $settings}';
  }
}

class UpdateTheme extends BaseRequest<Theme, dynamic> {
  static const CONSTRUCTOR_ID = 737414348;
  static const SUBCLASS_OF_ID = 1454688268;
  final classType = "request";
  final ID = 737414348;
  String format;
  InputThemeBase theme;
  String? slug;
  String? title;
  InputDocumentBase? document;
  List<InputThemeSettings>? settings;

  UpdateTheme(
      {required this.format,
      required this.theme,
      this.slug,
      this.title,
      this.document,
      this.settings});

  static UpdateTheme fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var format = reader.tgReadString();
    var theme = reader.tgReadObject();
    var slug;
    if ((flags & 1) == 1) {
      slug = reader.tgReadString();
    } else {
      slug = null;
    }
    var title;
    if ((flags & 2) == 2) {
      title = reader.tgReadString();
    } else {
      title = null;
    }
    var document;
    if ((flags & 4) == 4) {
      document = reader.tgReadObject();
    } else {
      document = null;
    }
    var settings;
    if ((flags & 8) == 8) {
      var _vectorsettings = reader.readInt();
      if (_vectorsettings != 481674261) throw Exception('Wrong vectorId');
      List<InputThemeSettings> settings = [];
      len = reader.readInt();
      for (var i = 0; i < len; i++) {
        settings.add(reader.tgReadObject());
      }
    } else {
      settings = null;
    }
    return UpdateTheme(
        format: format,
        theme: theme,
        slug: slug,
        title: title,
        document: document,
        settings: settings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(737414348, 4),
      [0, 0, 0, 0],
      serializeBytes(this.format),
      (this.theme.getBytes()),
      (this.slug == null || this.slug == false)
          ? List<int>.empty()
          : [serializeBytes(this.slug)].expand((element) => element).toList(),
      (this.title == null || this.title == false)
          ? List<int>.empty()
          : [serializeBytes(this.title)].expand((element) => element).toList(),
      (this.document == null || this.document == false)
          ? List<int>.empty()
          : [(this.document!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.settings == null || this.settings == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
              readBufferFromBigInt(this.settings!.length, 4,
                  little: true, signed: true),
              this
                  .settings!
                  .map((x) => x.getBytes())
                  .expand((element) => element)
            ].expand((element) => element).toList(),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<Theme, dynamic>();
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
    return 'UpdateTheme{ID: $ID, format: $format, theme: $theme, slug: $slug, title: $title, document: $document, settings: $settings}';
  }
}

class SaveTheme extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 4065792108;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 4065792108;
  InputThemeBase theme;
  bool unsave;

  SaveTheme({required this.theme, required this.unsave});

  static SaveTheme fromReader(BinaryReader reader) {
    var theme = reader.tgReadObject();
    var unsave = reader.tgReadBool();
    return SaveTheme(theme: theme, unsave: unsave);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4065792108, 4),
      (this.theme.getBytes()),
      [this.unsave == true ? 0xb5757299 : 0x379779bc],
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'SaveTheme{ID: $ID, theme: $theme, unsave: $unsave}';
  }
}

class InstallTheme extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3341269819;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3341269819;
  bool? dark;
  InputThemeBase? theme;
  String? format;
  BaseThemeBase? baseTheme;

  InstallTheme({this.dark, this.theme, this.format, this.baseTheme});

  static InstallTheme fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final dark = (flags & 1) == 1;
    var theme;
    if ((flags & 2) == 2) {
      theme = reader.tgReadObject();
    } else {
      theme = null;
    }
    var format;
    if ((flags & 4) == 4) {
      format = reader.tgReadString();
    } else {
      format = null;
    }
    var baseTheme;
    if ((flags & 8) == 8) {
      baseTheme = reader.tgReadObject();
    } else {
      baseTheme = null;
    }
    return InstallTheme(
        dark: dark, theme: theme, format: format, baseTheme: baseTheme);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3341269819, 4),
      [0, 0, 0, 0],
      (this.theme == null || this.theme == false)
          ? List<int>.empty()
          : [(this.theme!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.format == null || this.format == false)
          ? List<int>.empty()
          : [serializeBytes(this.format)].expand((element) => element).toList(),
      (this.baseTheme == null || this.baseTheme == false)
          ? List<int>.empty()
          : [(this.baseTheme!.getBytes())]
              .expand((element) => element)
              .toList(),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'InstallTheme{ID: $ID, dark: $dark, theme: $theme, format: $format, baseTheme: $baseTheme}';
  }
}

class GetTheme extends BaseRequest<Theme, dynamic> {
  static const CONSTRUCTOR_ID = 2375906347;
  static const SUBCLASS_OF_ID = 1454688268;
  final classType = "request";
  final ID = 2375906347;
  String format;
  InputThemeBase theme;
  BigInt documentId;

  GetTheme(
      {required this.format, required this.theme, required this.documentId});

  static GetTheme fromReader(BinaryReader reader) {
    var format = reader.tgReadString();
    var theme = reader.tgReadObject();
    var documentId = reader.readLong();
    return GetTheme(format: format, theme: theme, documentId: documentId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2375906347, 4),
      serializeBytes(this.format),
      (this.theme.getBytes()),
      readBufferFromBigInt(this.documentId, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<Theme, dynamic>();
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
    return 'GetTheme{ID: $ID, format: $format, theme: $theme, documentId: $documentId}';
  }
}

class GetThemes extends BaseRequest<account_ns.ThemesBase, dynamic> {
  static const CONSTRUCTOR_ID = 1913054296;
  static const SUBCLASS_OF_ID = 2143625732;
  final classType = "request";
  final ID = 1913054296;
  String format;
  BigInt hash;

  GetThemes({required this.format, required this.hash});

  static GetThemes fromReader(BinaryReader reader) {
    var format = reader.tgReadString();
    var hash = reader.readLong();
    return GetThemes(format: format, hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1913054296, 4),
      serializeBytes(this.format),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.ThemesBase, dynamic>();
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
    return 'GetThemes{ID: $ID, format: $format, hash: $hash}';
  }
}

class SetContentSettings extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3044323691;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3044323691;
  bool? sensitiveEnabled;

  SetContentSettings({this.sensitiveEnabled});

  static SetContentSettings fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final sensitiveEnabled = (flags & 1) == 1;
    return SetContentSettings(sensitiveEnabled: sensitiveEnabled);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3044323691, 4),
      [0, 0, 0, 0],
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'SetContentSettings{ID: $ID, sensitiveEnabled: $sensitiveEnabled}';
  }
}

class GetContentSettings
    extends BaseRequest<account_ns.ContentSettings, dynamic> {
  static const CONSTRUCTOR_ID = 2342210990;
  static const SUBCLASS_OF_ID = 2923427985;
  final classType = "request";
  final ID = 2342210990;

  GetContentSettings();

  static GetContentSettings fromReader(BinaryReader reader) {
    return GetContentSettings();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2342210990, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.ContentSettings, dynamic>();
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
    return 'GetContentSettings{ID: $ID, }';
  }
}

class GetMultiWallPapers
    extends BaseRequest<List<WallPaperBase>, WallPaperBase> {
  static const CONSTRUCTOR_ID = 1705865692;
  static const SUBCLASS_OF_ID = 2395165315;
  final classType = "request";
  final ID = 1705865692;
  List<InputWallPaperBase> wallpapers;

  GetMultiWallPapers({required this.wallpapers});

  static GetMultiWallPapers fromReader(BinaryReader reader) {
    var len;
    var _vectorwallpapers = reader.readInt();
    if (_vectorwallpapers != 481674261) throw Exception('Wrong vectorId');
    List<InputWallPaperBase> wallpapers = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      wallpapers.add(reader.tgReadObject());
    }
    return GetMultiWallPapers(wallpapers: wallpapers);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1705865692, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.wallpapers.length, 4,
          little: true, signed: true),
      this
          .wallpapers.map((x) => x.getBytes())
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<List<WallPaperBase>, WallPaperBase>();
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
    return 'GetMultiWallPapers{ID: $ID, wallpapers: $wallpapers}';
  }
}

class GetGlobalPrivacySettings
    extends BaseRequest<GlobalPrivacySettings, dynamic> {
  static const CONSTRUCTOR_ID = 3945483510;
  static const SUBCLASS_OF_ID = 3373160304;
  final classType = "request";
  final ID = 3945483510;

  GetGlobalPrivacySettings();

  static GetGlobalPrivacySettings fromReader(BinaryReader reader) {
    return GetGlobalPrivacySettings();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3945483510, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<GlobalPrivacySettings, dynamic>();
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
    return 'GetGlobalPrivacySettings{ID: $ID, }';
  }
}

class SetGlobalPrivacySettings
    extends BaseRequest<GlobalPrivacySettings, dynamic> {
  static const CONSTRUCTOR_ID = 517647042;
  static const SUBCLASS_OF_ID = 3373160304;
  final classType = "request";
  final ID = 517647042;
  GlobalPrivacySettings settings;

  SetGlobalPrivacySettings({required this.settings});

  static SetGlobalPrivacySettings fromReader(BinaryReader reader) {
    var settings = reader.tgReadObject();
    return SetGlobalPrivacySettings(settings: settings);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(517647042, 4),
      (this.settings.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<GlobalPrivacySettings, dynamic>();
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
    return 'SetGlobalPrivacySettings{ID: $ID, settings: $settings}';
  }
}

class ReportProfilePhoto extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 4203529973;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 4203529973;
  InputPeerBase peer;
  InputPhotoBase photoId;
  ReportReasonBase reason;
  String message;

  ReportProfilePhoto(
      {required this.peer,
      required this.photoId,
      required this.reason,
      required this.message});

  static ReportProfilePhoto fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    var photoId = reader.tgReadObject();
    var reason = reader.tgReadObject();
    var message = reader.tgReadString();
    return ReportProfilePhoto(
        peer: peer, photoId: photoId, reason: reason, message: message);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4203529973, 4),
      (this.peer.getBytes()),
      (this.photoId.getBytes()),
      (this.reason.getBytes()),
      serializeBytes(this.message),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'ReportProfilePhoto{ID: $ID, peer: $peer, photoId: $photoId, reason: $reason, message: $message}';
  }
}

class ResetPassword
    extends BaseRequest<account_ns.ResetPasswordResultBase, dynamic> {
  static const CONSTRUCTOR_ID = 2466827803;
  static const SUBCLASS_OF_ID = 1230009366;
  final classType = "request";
  final ID = 2466827803;

  ResetPassword();

  static ResetPassword fromReader(BinaryReader reader) {
    return ResetPassword();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2466827803, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.ResetPasswordResultBase, dynamic>();
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
    return 'ResetPassword{ID: $ID, }';
  }
}

class DeclinePasswordReset extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1284770294;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1284770294;

  DeclinePasswordReset();

  static DeclinePasswordReset fromReader(BinaryReader reader) {
    return DeclinePasswordReset();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1284770294, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'DeclinePasswordReset{ID: $ID, }';
  }
}

class GetChatThemes extends BaseRequest<account_ns.ThemesBase, dynamic> {
  static const CONSTRUCTOR_ID = 3594051209;
  static const SUBCLASS_OF_ID = 2143625732;
  final classType = "request";
  final ID = 3594051209;
  BigInt hash;

  GetChatThemes({required this.hash});

  static GetChatThemes fromReader(BinaryReader reader) {
    var hash = reader.readLong();
    return GetChatThemes(hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3594051209, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.ThemesBase, dynamic>();
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
    return 'GetChatThemes{ID: $ID, hash: $hash}';
  }
}

class SetAuthorizationTTL extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3213466272;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3213466272;
  int authorizationTtlDays;

  SetAuthorizationTTL({required this.authorizationTtlDays});

  static SetAuthorizationTTL fromReader(BinaryReader reader) {
    var authorizationTtlDays = reader.readInt();
    return SetAuthorizationTTL(authorizationTtlDays: authorizationTtlDays);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3213466272, 4),
      readBufferFromBigInt(this.authorizationTtlDays, 4,
          little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'SetAuthorizationTTL{ID: $ID, authorizationTtlDays: $authorizationTtlDays}';
  }
}

class ChangeAuthorizationSettings extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1089766498;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1089766498;
  BigInt hash;
  bool? encryptedRequestsDisabled;
  bool? callRequestsDisabled;

  ChangeAuthorizationSettings(
      {required this.hash,
      this.encryptedRequestsDisabled,
      this.callRequestsDisabled});

  static ChangeAuthorizationSettings fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var hash = reader.readLong();
    var encryptedRequestsDisabled;
    if ((flags & 1) == 1) {
      encryptedRequestsDisabled = reader.tgReadBool();
    } else {
      encryptedRequestsDisabled = null;
    }
    var callRequestsDisabled;
    if ((flags & 2) == 2) {
      callRequestsDisabled = reader.tgReadBool();
    } else {
      callRequestsDisabled = null;
    }
    return ChangeAuthorizationSettings(
        hash: hash,
        encryptedRequestsDisabled: encryptedRequestsDisabled,
        callRequestsDisabled: callRequestsDisabled);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1089766498, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
      (this.encryptedRequestsDisabled == null ||
              this.encryptedRequestsDisabled == false)
          ? List<int>.empty()
          : [
              [this.encryptedRequestsDisabled == true ? 0xb5757299 : 0x379779bc]
            ].expand((element) => element).toList(),
      (this.callRequestsDisabled == null || this.callRequestsDisabled == false)
          ? List<int>.empty()
          : [
              [this.callRequestsDisabled == true ? 0xb5757299 : 0x379779bc]
            ].expand((element) => element).toList(),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'ChangeAuthorizationSettings{ID: $ID, hash: $hash, encryptedRequestsDisabled: $encryptedRequestsDisabled, callRequestsDisabled: $callRequestsDisabled}';
  }
}

class GetSavedRingtones
    extends BaseRequest<account_ns.SavedRingtonesBase, dynamic> {
  static const CONSTRUCTOR_ID = 3784319624;
  static const SUBCLASS_OF_ID = 666683742;
  final classType = "request";
  final ID = 3784319624;
  BigInt hash;

  GetSavedRingtones({required this.hash});

  static GetSavedRingtones fromReader(BinaryReader reader) {
    var hash = reader.readLong();
    return GetSavedRingtones(hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3784319624, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.SavedRingtonesBase, dynamic>();
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
    return 'GetSavedRingtones{ID: $ID, hash: $hash}';
  }
}

class SaveRingtone extends BaseRequest<account_ns.SavedRingtoneBase, dynamic> {
  static const CONSTRUCTOR_ID = 1038768899;
  static const SUBCLASS_OF_ID = 2984412196;
  final classType = "request";
  final ID = 1038768899;
  InputDocumentBase id;
  bool unsave;

  SaveRingtone({required this.id, required this.unsave});

  static SaveRingtone fromReader(BinaryReader reader) {
    var id = reader.tgReadObject();
    var unsave = reader.tgReadBool();
    return SaveRingtone(id: id, unsave: unsave);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1038768899, 4),
      (this.id.getBytes()),
      [this.unsave == true ? 0xb5757299 : 0x379779bc],
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<account_ns.SavedRingtoneBase, dynamic>();
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
    return 'SaveRingtone{ID: $ID, id: $id, unsave: $unsave}';
  }
}

class UploadRingtone extends BaseRequest<DocumentBase, dynamic> {
  static const CONSTRUCTOR_ID = 2199552930;
  static const SUBCLASS_OF_ID = 555739168;
  final classType = "request";
  final ID = 2199552930;
  InputFileBase file;
  String fileName;
  String mimeType;

  UploadRingtone(
      {required this.file, required this.fileName, required this.mimeType});

  static UploadRingtone fromReader(BinaryReader reader) {
    var file = reader.tgReadObject();
    var fileName = reader.tgReadString();
    var mimeType = reader.tgReadString();
    return UploadRingtone(file: file, fileName: fileName, mimeType: mimeType);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2199552930, 4),
      (this.file.getBytes()),
      serializeBytes(this.fileName),
      serializeBytes(this.mimeType),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<DocumentBase, dynamic>();
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
    return 'UploadRingtone{ID: $ID, file: $file, fileName: $fileName, mimeType: $mimeType}';
  }
}
