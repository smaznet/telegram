import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_request.dart';

class GetContactIDs extends BaseRequest {
  static const CONSTRUCTOR_ID = 2061264541;
  static const SUBCLASS_OF_ID = 1344696591;
  final classType = "request";
  final ID = 2061264541;
  BigInt hash;

  GetContactIDs({required this.hash});

  static GetContactIDs fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readLong();
    return GetContactIDs(hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2061264541, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  List<int> readResult(BinaryReader reader) {
    reader.readInt();
    final range = reader.readInt();
    final List<int> result = [];
    for (int i = 0; i < range; i++) {
      result.add(reader.readInt());
    }
    return result;
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
    return 'GetContactIDs{ID: $ID, hash: $hash}';
  }
}

class GetStatuses extends BaseRequest {
  static const CONSTRUCTOR_ID = 3299038190;
  static const SUBCLASS_OF_ID = 3749797008;
  final classType = "request";
  final ID = 3299038190;

  GetStatuses();

  static GetStatuses fromReader(BinaryReader reader) {
    var len;
    return GetStatuses();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3299038190, 4),
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
    return 'GetStatuses{ID: $ID, }';
  }
}

class GetContacts extends BaseRequest {
  static const CONSTRUCTOR_ID = 1574346258;
  static const SUBCLASS_OF_ID = 951985654;
  final classType = "request";
  final ID = 1574346258;
  BigInt hash;

  GetContacts({required this.hash});

  static GetContacts fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readLong();
    return GetContacts(hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1574346258, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
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
    return 'GetContacts{ID: $ID, hash: $hash}';
  }
}

class ImportContacts extends BaseRequest {
  static const CONSTRUCTOR_ID = 746589157;
  static const SUBCLASS_OF_ID = 2171776403;
  final classType = "request";
  final ID = 746589157;
  List<dynamic> contacts;

  ImportContacts({required this.contacts});

  static ImportContacts fromReader(BinaryReader reader) {
    var len;
    var _vectorcontacts = reader.readInt();
    if (_vectorcontacts != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> contacts = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      contacts.add(reader.tgReadObject());
    }
    return ImportContacts(contacts: contacts);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(746589157, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.contacts!.length, 4,
          little: true, signed: true),
      this
          .contacts!
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
    return 'ImportContacts{ID: $ID, contacts: $contacts}';
  }
}

class DeleteContacts extends BaseRequest {
  static const CONSTRUCTOR_ID = 157945344;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 157945344;
  List<dynamic> id;

  DeleteContacts({required this.id});

  static DeleteContacts fromReader(BinaryReader reader) {
    var len;
    var _vectorid = reader.readInt();
    if (_vectorid != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> id = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      id.add(reader.tgReadObject());
    }
    return DeleteContacts(id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(157945344, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.id!.length, 4, little: true, signed: true),
      this
          .id!
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
    return 'DeleteContacts{ID: $ID, id: $id}';
  }
}

class DeleteByPhones extends BaseRequest {
  static const CONSTRUCTOR_ID = 269745566;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 269745566;
  List<String> phones;

  DeleteByPhones({required this.phones});

  static DeleteByPhones fromReader(BinaryReader reader) {
    var len;
    var _vectorphones = reader.readInt();
    if (_vectorphones != 481674261) throw Exception('Wrong vectorId');
    List<String> phones = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      phones.add(reader.tgReadString());
    }
    return DeleteByPhones(phones: phones);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(269745566, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.phones!.length, 4, little: true, signed: true),
      this.phones!.map((x) => serializeBytes(x)).expand((element) => element),
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
    return 'DeleteByPhones{ID: $ID, phones: $phones}';
  }
}

class Block extends BaseRequest {
  static const CONSTRUCTOR_ID = 1758204945;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1758204945;
  var id;

  Block({required this.id});

  static Block fromReader(BinaryReader reader) {
    var len;
    var id = reader.tgReadObject();
    return Block(id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1758204945, 4),
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
    return 'Block{ID: $ID, id: $id}';
  }
}

class Unblock extends BaseRequest {
  static const CONSTRUCTOR_ID = 3198573904;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3198573904;
  var id;

  Unblock({required this.id});

  static Unblock fromReader(BinaryReader reader) {
    var len;
    var id = reader.tgReadObject();
    return Unblock(id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3198573904, 4),
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
    return 'Unblock{ID: $ID, id: $id}';
  }
}

class GetBlocked extends BaseRequest {
  static const CONSTRUCTOR_ID = 4118557967;
  static const SUBCLASS_OF_ID = 4290400079;
  final classType = "request";
  final ID = 4118557967;
  int offset;
  int limit;

  GetBlocked({required this.offset, required this.limit});

  static GetBlocked fromReader(BinaryReader reader) {
    var len;
    var offset = reader.readInt();
    var limit = reader.readInt();
    return GetBlocked(offset: offset, limit: limit);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4118557967, 4),
      readBufferFromBigInt(this.offset, 4, little: true, signed: true),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
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
    return 'GetBlocked{ID: $ID, offset: $offset, limit: $limit}';
  }
}

class Search extends BaseRequest {
  static const CONSTRUCTOR_ID = 301470424;
  static const SUBCLASS_OF_ID = 1132896995;
  final classType = "request";
  final ID = 301470424;
  String q;
  int limit;

  Search({required this.q, required this.limit});

  static Search fromReader(BinaryReader reader) {
    var len;
    var q = reader.tgReadString();
    var limit = reader.readInt();
    return Search(q: q, limit: limit);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(301470424, 4),
      serializeBytes(this.q),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
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
    return 'Search{ID: $ID, q: $q, limit: $limit}';
  }
}

class ResolveUsername extends BaseRequest {
  static const CONSTRUCTOR_ID = 4181511075;
  static const SUBCLASS_OF_ID = 4033196968;
  final classType = "request";
  final ID = 4181511075;
  String username;

  ResolveUsername({required this.username});

  static ResolveUsername fromReader(BinaryReader reader) {
    var len;
    var username = reader.tgReadString();
    return ResolveUsername(username: username);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4181511075, 4),
      serializeBytes(this.username),
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
    return 'ResolveUsername{ID: $ID, username: $username}';
  }
}

class GetTopPeers extends BaseRequest {
  static const CONSTRUCTOR_ID = 2536798390;
  static const SUBCLASS_OF_ID = 2666052488;
  final classType = "request";
  final ID = 2536798390;
  bool? correspondents;
  bool? botsPm;
  bool? botsInline;
  bool? phoneCalls;
  bool? forwardUsers;
  bool? forwardChats;
  bool? groups;
  bool? channels;
  int offset;
  int limit;
  BigInt hash;

  GetTopPeers(
      {required this.correspondents,
      required this.botsPm,
      required this.botsInline,
      required this.phoneCalls,
      required this.forwardUsers,
      required this.forwardChats,
      required this.groups,
      required this.channels,
      required this.offset,
      required this.limit,
      required this.hash});

  static GetTopPeers fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final correspondents = (flags & 1) == 1;
    final botsPm = (flags & 2) == 2;
    final botsInline = (flags & 4) == 4;
    final phoneCalls = (flags & 8) == 8;
    final forwardUsers = (flags & 16) == 16;
    final forwardChats = (flags & 32) == 32;
    final groups = (flags & 1024) == 1024;
    final channels = (flags & 32768) == 32768;
    var offset = reader.readInt();
    var limit = reader.readInt();
    var hash = reader.readLong();
    return GetTopPeers(
        correspondents: correspondents,
        botsPm: botsPm,
        botsInline: botsInline,
        phoneCalls: phoneCalls,
        forwardUsers: forwardUsers,
        forwardChats: forwardChats,
        groups: groups,
        channels: channels,
        offset: offset,
        limit: limit,
        hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2536798390, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.offset, 4, little: true, signed: true),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
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
    return 'GetTopPeers{ID: $ID, correspondents: $correspondents, botsPm: $botsPm, botsInline: $botsInline, phoneCalls: $phoneCalls, forwardUsers: $forwardUsers, forwardChats: $forwardChats, groups: $groups, channels: $channels, offset: $offset, limit: $limit, hash: $hash}';
  }
}

class ResetTopPeerRating extends BaseRequest {
  static const CONSTRUCTOR_ID = 451113900;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 451113900;
  var category;
  var peer;

  ResetTopPeerRating({required this.category, required this.peer});

  static ResetTopPeerRating fromReader(BinaryReader reader) {
    var len;
    var category = reader.tgReadObject();
    var peer = reader.tgReadObject();
    return ResetTopPeerRating(category: category, peer: peer);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(451113900, 4),
      (this.category.getBytes() as List<int>),
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
    return 'ResetTopPeerRating{ID: $ID, category: $category, peer: $peer}';
  }
}

class ResetSaved extends BaseRequest {
  static const CONSTRUCTOR_ID = 2274703345;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2274703345;

  ResetSaved();

  static ResetSaved fromReader(BinaryReader reader) {
    var len;
    return ResetSaved();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2274703345, 4),
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
    return 'ResetSaved{ID: $ID, }';
  }
}

class GetSaved extends BaseRequest {
  static const CONSTRUCTOR_ID = 2196890527;
  static const SUBCLASS_OF_ID = 158718959;
  final classType = "request";
  final ID = 2196890527;

  GetSaved();

  static GetSaved fromReader(BinaryReader reader) {
    var len;
    return GetSaved();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2196890527, 4),
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
    return 'GetSaved{ID: $ID, }';
  }
}

class ToggleTopPeers extends BaseRequest {
  static const CONSTRUCTOR_ID = 2232729050;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2232729050;
  bool enabled;

  ToggleTopPeers({required this.enabled});

  static ToggleTopPeers fromReader(BinaryReader reader) {
    var len;
    var enabled = reader.tgReadBool();
    return ToggleTopPeers(enabled: enabled);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2232729050, 4),
      [this.enabled == true ? 0xb5757299 : 0x379779bc],
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
    return 'ToggleTopPeers{ID: $ID, enabled: $enabled}';
  }
}

class AddContact extends BaseRequest {
  static const CONSTRUCTOR_ID = 3908330448;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 3908330448;
  bool? addPhonePrivacyException;
  var id;
  String firstName;
  String lastName;
  String phone;

  AddContact(
      {required this.addPhonePrivacyException,
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.phone});

  static AddContact fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final addPhonePrivacyException = (flags & 1) == 1;
    var id = reader.tgReadObject();
    var firstName = reader.tgReadString();
    var lastName = reader.tgReadString();
    var phone = reader.tgReadString();
    return AddContact(
        addPhonePrivacyException: addPhonePrivacyException,
        id: id,
        firstName: firstName,
        lastName: lastName,
        phone: phone);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3908330448, 4),
      [0, 0, 0, 0],
      (this.id.getBytes() as List<int>),
      serializeBytes(this.firstName),
      serializeBytes(this.lastName),
      serializeBytes(this.phone),
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
    return 'AddContact{ID: $ID, addPhonePrivacyException: $addPhonePrivacyException, id: $id, firstName: $firstName, lastName: $lastName, phone: $phone}';
  }
}

class AcceptContact extends BaseRequest {
  static const CONSTRUCTOR_ID = 4164002319;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 4164002319;
  var id;

  AcceptContact({required this.id});

  static AcceptContact fromReader(BinaryReader reader) {
    var len;
    var id = reader.tgReadObject();
    return AcceptContact(id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4164002319, 4),
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
    return 'AcceptContact{ID: $ID, id: $id}';
  }
}

class GetLocated extends BaseRequest {
  static const CONSTRUCTOR_ID = 3544759364;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 3544759364;
  bool? background;
  var geoPoint;
  int? selfExpires;

  GetLocated(
      {required this.background,
      required this.geoPoint,
      required this.selfExpires});

  static GetLocated fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final background = (flags & 2) == 2;
    var geoPoint = reader.tgReadObject();
    var selfExpires;
    if ((flags & 1) == 1) {
      selfExpires = reader.readInt();
    } else {
      selfExpires = null;
    }
    return GetLocated(
        background: background, geoPoint: geoPoint, selfExpires: selfExpires);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3544759364, 4),
      [0, 0, 0, 0],
      (this.geoPoint.getBytes() as List<int>),
      (this.selfExpires == null || this.selfExpires == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.selfExpires, 4,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
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
    return 'GetLocated{ID: $ID, background: $background, geoPoint: $geoPoint, selfExpires: $selfExpires}';
  }
}

class BlockFromReplies extends BaseRequest {
  static const CONSTRUCTOR_ID = 698914348;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 698914348;
  bool? deleteMessage;
  bool? deleteHistory;
  bool? reportSpam;
  int msgId;

  BlockFromReplies(
      {required this.deleteMessage,
      required this.deleteHistory,
      required this.reportSpam,
      required this.msgId});

  static BlockFromReplies fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final deleteMessage = (flags & 1) == 1;
    final deleteHistory = (flags & 2) == 2;
    final reportSpam = (flags & 4) == 4;
    var msgId = reader.readInt();
    return BlockFromReplies(
        deleteMessage: deleteMessage,
        deleteHistory: deleteHistory,
        reportSpam: reportSpam,
        msgId: msgId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(698914348, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.msgId, 4, little: true, signed: true),
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
    return 'BlockFromReplies{ID: $ID, deleteMessage: $deleteMessage, deleteHistory: $deleteHistory, reportSpam: $reportSpam, msgId: $msgId}';
  }
}
