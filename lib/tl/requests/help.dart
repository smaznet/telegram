import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_request.dart';

class GetConfig extends BaseRequest {
  static const CONSTRUCTOR_ID = 3304659051;
  static const SUBCLASS_OF_ID = 3542493770;
  final classType = "request";
  final ID = 3304659051;

  GetConfig();

  static GetConfig fromReader(BinaryReader reader) {
    var len;
    return GetConfig();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3304659051, 4),
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
    return 'GetConfig{ID: $ID, }';
  }
}

class GetNearestDc extends BaseRequest {
  static const CONSTRUCTOR_ID = 531836966;
  static const SUBCLASS_OF_ID = 947323999;
  final classType = "request";
  final ID = 531836966;

  GetNearestDc();

  static GetNearestDc fromReader(BinaryReader reader) {
    var len;
    return GetNearestDc();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(531836966, 4),
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
    return 'GetNearestDc{ID: $ID, }';
  }
}

class GetAppUpdate extends BaseRequest {
  static const CONSTRUCTOR_ID = 1378703997;
  static const SUBCLASS_OF_ID = 1486292638;
  final classType = "request";
  final ID = 1378703997;
  String source;

  GetAppUpdate({required this.source});

  static GetAppUpdate fromReader(BinaryReader reader) {
    var len;
    var source = reader.tgReadString();
    return GetAppUpdate(source: source);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1378703997, 4),
      serializeBytes(this.source),
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
    return 'GetAppUpdate{ID: $ID, source: $source}';
  }
}

class GetInviteText extends BaseRequest {
  static const CONSTRUCTOR_ID = 1295590211;
  static const SUBCLASS_OF_ID = 3480267317;
  final classType = "request";
  final ID = 1295590211;

  GetInviteText();

  static GetInviteText fromReader(BinaryReader reader) {
    var len;
    return GetInviteText();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1295590211, 4),
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
    return 'GetInviteText{ID: $ID, }';
  }
}

class GetSupport extends BaseRequest {
  static const CONSTRUCTOR_ID = 2631862477;
  static const SUBCLASS_OF_ID = 1901706475;
  final classType = "request";
  final ID = 2631862477;

  GetSupport();

  static GetSupport fromReader(BinaryReader reader) {
    var len;
    return GetSupport();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2631862477, 4),
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
    return 'GetSupport{ID: $ID, }';
  }
}

class GetAppChangelog extends BaseRequest {
  static const CONSTRUCTOR_ID = 2417028975;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 2417028975;
  String prevAppVersion;

  GetAppChangelog({required this.prevAppVersion});

  static GetAppChangelog fromReader(BinaryReader reader) {
    var len;
    var prevAppVersion = reader.tgReadString();
    return GetAppChangelog(prevAppVersion: prevAppVersion);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2417028975, 4),
      serializeBytes(this.prevAppVersion),
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
    return 'GetAppChangelog{ID: $ID, prevAppVersion: $prevAppVersion}';
  }
}

class SetBotUpdatesStatus extends BaseRequest {
  static const CONSTRUCTOR_ID = 3961704397;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3961704397;
  int pendingUpdatesCount;
  String message;

  SetBotUpdatesStatus(
      {required this.pendingUpdatesCount, required this.message});

  static SetBotUpdatesStatus fromReader(BinaryReader reader) {
    var len;
    var pendingUpdatesCount = reader.readInt();
    var message = reader.tgReadString();
    return SetBotUpdatesStatus(
        pendingUpdatesCount: pendingUpdatesCount, message: message);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3961704397, 4),
      readBufferFromBigInt(this.pendingUpdatesCount, 4,
          little: true, signed: true),
      serializeBytes(this.message),
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
    return 'SetBotUpdatesStatus{ID: $ID, pendingUpdatesCount: $pendingUpdatesCount, message: $message}';
  }
}

class GetCdnConfig extends BaseRequest {
  static const CONSTRUCTOR_ID = 1375900482;
  static const SUBCLASS_OF_ID = 3973724540;
  final classType = "request";
  final ID = 1375900482;

  GetCdnConfig();

  static GetCdnConfig fromReader(BinaryReader reader) {
    var len;
    return GetCdnConfig();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1375900482, 4),
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
    return 'GetCdnConfig{ID: $ID, }';
  }
}

class GetRecentMeUrls extends BaseRequest {
  static const CONSTRUCTOR_ID = 1036054804;
  static const SUBCLASS_OF_ID = 4067017847;
  final classType = "request";
  final ID = 1036054804;
  String referer;

  GetRecentMeUrls({required this.referer});

  static GetRecentMeUrls fromReader(BinaryReader reader) {
    var len;
    var referer = reader.tgReadString();
    return GetRecentMeUrls(referer: referer);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1036054804, 4),
      serializeBytes(this.referer),
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
    return 'GetRecentMeUrls{ID: $ID, referer: $referer}';
  }
}

class GetTermsOfServiceUpdate extends BaseRequest {
  static const CONSTRUCTOR_ID = 749019089;
  static const SUBCLASS_OF_ID = 691808631;
  final classType = "request";
  final ID = 749019089;

  GetTermsOfServiceUpdate();

  static GetTermsOfServiceUpdate fromReader(BinaryReader reader) {
    var len;
    return GetTermsOfServiceUpdate();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(749019089, 4),
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
    return 'GetTermsOfServiceUpdate{ID: $ID, }';
  }
}

class AcceptTermsOfService extends BaseRequest {
  static const CONSTRUCTOR_ID = 4000511898;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 4000511898;
  var id;

  AcceptTermsOfService({required this.id});

  static AcceptTermsOfService fromReader(BinaryReader reader) {
    var len;
    var id = reader.tgReadObject();
    return AcceptTermsOfService(id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4000511898, 4),
      (this.id.getBytes() as List<int>),
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
    return 'AcceptTermsOfService{ID: $ID, id: $id}';
  }
}

class GetDeepLinkInfo extends BaseRequest {
  static const CONSTRUCTOR_ID = 1072547679;
  static const SUBCLASS_OF_ID = 2555030584;
  final classType = "request";
  final ID = 1072547679;
  String path;

  GetDeepLinkInfo({required this.path});

  static GetDeepLinkInfo fromReader(BinaryReader reader) {
    var len;
    var path = reader.tgReadString();
    return GetDeepLinkInfo(path: path);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1072547679, 4),
      serializeBytes(this.path),
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
    return 'GetDeepLinkInfo{ID: $ID, path: $path}';
  }
}

class GetAppConfig extends BaseRequest {
  static const CONSTRUCTOR_ID = 2559656208;
  static const SUBCLASS_OF_ID = 3952707507;
  final classType = "request";
  final ID = 2559656208;

  GetAppConfig();

  static GetAppConfig fromReader(BinaryReader reader) {
    var len;
    return GetAppConfig();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2559656208, 4),
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
    return 'GetAppConfig{ID: $ID, }';
  }
}

class SaveAppLog extends BaseRequest {
  static const CONSTRUCTOR_ID = 1862465352;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1862465352;
  List<dynamic> events;

  SaveAppLog({required this.events});

  static SaveAppLog fromReader(BinaryReader reader) {
    var len;
    var _vectorevents = reader.readInt();
    if (_vectorevents != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> events = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      events.add(reader.tgReadObject());
    }
    return SaveAppLog(events: events);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1862465352, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.events!.length, 4, little: true, signed: true),
      this
          .events!
          .map((x) => (x.getBytes() as List<int>))
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
    return 'SaveAppLog{ID: $ID, events: $events}';
  }
}

class GetPassportConfig extends BaseRequest {
  static const CONSTRUCTOR_ID = 3328290056;
  static const SUBCLASS_OF_ID = 3328622765;
  final classType = "request";
  final ID = 3328290056;
  int hash;

  GetPassportConfig({required this.hash});

  static GetPassportConfig fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readInt();
    return GetPassportConfig(hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3328290056, 4),
      readBufferFromBigInt(this.hash, 4, little: true, signed: true),
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
    return 'GetPassportConfig{ID: $ID, hash: $hash}';
  }
}

class GetSupportName extends BaseRequest {
  static const CONSTRUCTOR_ID = 3546343212;
  static const SUBCLASS_OF_ID = 2135996354;
  final classType = "request";
  final ID = 3546343212;

  GetSupportName();

  static GetSupportName fromReader(BinaryReader reader) {
    var len;
    return GetSupportName();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3546343212, 4),
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
    return 'GetSupportName{ID: $ID, }';
  }
}

class GetUserInfo extends BaseRequest {
  static const CONSTRUCTOR_ID = 59377875;
  static const SUBCLASS_OF_ID = 1548998616;
  final classType = "request";
  final ID = 59377875;
  var userId;

  GetUserInfo({required this.userId});

  static GetUserInfo fromReader(BinaryReader reader) {
    var len;
    var userId = reader.tgReadObject();
    return GetUserInfo(userId: userId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(59377875, 4),
      (this.userId.getBytes() as List<int>),
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
    return 'GetUserInfo{ID: $ID, userId: $userId}';
  }
}

class EditUserInfo extends BaseRequest {
  static const CONSTRUCTOR_ID = 1723407216;
  static const SUBCLASS_OF_ID = 1548998616;
  final classType = "request";
  final ID = 1723407216;
  var userId;
  String message;
  List<dynamic> entities;

  EditUserInfo(
      {required this.userId, required this.message, required this.entities});

  static EditUserInfo fromReader(BinaryReader reader) {
    var len;
    var userId = reader.tgReadObject();
    var message = reader.tgReadString();
    var _vectorentities = reader.readInt();
    if (_vectorentities != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> entities = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      entities.add(reader.tgReadObject());
    }
    return EditUserInfo(userId: userId, message: message, entities: entities);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1723407216, 4),
      (this.userId.getBytes() as List<int>),
      serializeBytes(this.message),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.entities!.length, 4,
          little: true, signed: true),
      this
          .entities!
          .map((x) => (x.getBytes() as List<int>))
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
    return 'EditUserInfo{ID: $ID, userId: $userId, message: $message, entities: $entities}';
  }
}

class GetPromoData extends BaseRequest {
  static const CONSTRUCTOR_ID = 3231151137;
  static const SUBCLASS_OF_ID = 2639877442;
  final classType = "request";
  final ID = 3231151137;

  GetPromoData();

  static GetPromoData fromReader(BinaryReader reader) {
    var len;
    return GetPromoData();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3231151137, 4),
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
    return 'GetPromoData{ID: $ID, }';
  }
}

class HidePromoData extends BaseRequest {
  static const CONSTRUCTOR_ID = 505748629;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 505748629;
  var peer;

  HidePromoData({required this.peer});

  static HidePromoData fromReader(BinaryReader reader) {
    var len;
    var peer = reader.tgReadObject();
    return HidePromoData(peer: peer);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(505748629, 4),
      (this.peer.getBytes() as List<int>),
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
    return 'HidePromoData{ID: $ID, peer: $peer}';
  }
}

class DismissSuggestion extends BaseRequest {
  static const CONSTRUCTOR_ID = 4111317665;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 4111317665;
  var peer;
  String suggestion;

  DismissSuggestion({required this.peer, required this.suggestion});

  static DismissSuggestion fromReader(BinaryReader reader) {
    var len;
    var peer = reader.tgReadObject();
    var suggestion = reader.tgReadString();
    return DismissSuggestion(peer: peer, suggestion: suggestion);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4111317665, 4),
      (this.peer.getBytes() as List<int>),
      serializeBytes(this.suggestion),
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
    return 'DismissSuggestion{ID: $ID, peer: $peer, suggestion: $suggestion}';
  }
}

class GetCountriesList extends BaseRequest {
  static const CONSTRUCTOR_ID = 1935116200;
  static const SUBCLASS_OF_ID = 3929144968;
  final classType = "request";
  final ID = 1935116200;
  String langCode;
  int hash;

  GetCountriesList({required this.langCode, required this.hash});

  static GetCountriesList fromReader(BinaryReader reader) {
    var len;
    var langCode = reader.tgReadString();
    var hash = reader.readInt();
    return GetCountriesList(langCode: langCode, hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1935116200, 4),
      serializeBytes(this.langCode),
      readBufferFromBigInt(this.hash, 4, little: true, signed: true),
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
    return 'GetCountriesList{ID: $ID, langCode: $langCode, hash: $hash}';
  }
}
