import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_contructor.dart';

class PhoneCall extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3968000320;
  static const SUBCLASS_OF_ID = 3565878863;
  final classType = "constructor";
  final ID = 3968000320;
  var phoneCall;
  List<dynamic> users;

  PhoneCall({required this.phoneCall, required this.users});

  static PhoneCall fromReader(BinaryReader reader) {
    var len;
    var phoneCall = reader.tgReadObject();
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return PhoneCall(phoneCall: phoneCall, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3968000320, 4),
      (this.phoneCall.getBytes() as List<int>),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users!.length, 4, little: true, signed: true),
      this
          .users!
          .map((x) => (x.getBytes() as List<int>))
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
    return 'PhoneCall{ID: $ID, phoneCall: $phoneCall, users: $users}';
  }
}

class GroupCall extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2658302637;
  static const SUBCLASS_OF_ID = 809572030;
  final classType = "constructor";
  final ID = 2658302637;
  var call;
  List<dynamic> participants;
  String participantsNextOffset;
  List<dynamic> chats;
  List<dynamic> users;

  GroupCall(
      {required this.call,
      required this.participants,
      required this.participantsNextOffset,
      required this.chats,
      required this.users});

  static GroupCall fromReader(BinaryReader reader) {
    var len;
    var call = reader.tgReadObject();
    var _vectorparticipants = reader.readInt();
    if (_vectorparticipants != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> participants = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      participants.add(reader.tgReadObject());
    }
    var participantsNextOffset = reader.tgReadString();
    var _vectorchats = reader.readInt();
    if (_vectorchats != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> chats = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      chats.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return GroupCall(
        call: call,
        participants: participants,
        participantsNextOffset: participantsNextOffset,
        chats: chats,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2658302637, 4),
      (this.call.getBytes() as List<int>),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.participants!.length, 4,
          little: true, signed: true),
      this
          .participants!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
      serializeBytes(this.participantsNextOffset),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.chats!.length, 4, little: true, signed: true),
      this
          .chats!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users!.length, 4, little: true, signed: true),
      this
          .users!
          .map((x) => (x.getBytes() as List<int>))
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
    return 'GroupCall{ID: $ID, call: $call, participants: $participants, participantsNextOffset: $participantsNextOffset, chats: $chats, users: $users}';
  }
}

class GroupParticipants extends BaseConstructor {
  static const CONSTRUCTOR_ID = 4101460406;
  static const SUBCLASS_OF_ID = 1926431988;
  final classType = "constructor";
  final ID = 4101460406;
  int count;
  List<dynamic> participants;
  String nextOffset;
  List<dynamic> chats;
  List<dynamic> users;
  int version;

  GroupParticipants(
      {required this.count,
      required this.participants,
      required this.nextOffset,
      required this.chats,
      required this.users,
      required this.version});

  static GroupParticipants fromReader(BinaryReader reader) {
    var len;
    var count = reader.readInt();
    var _vectorparticipants = reader.readInt();
    if (_vectorparticipants != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> participants = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      participants.add(reader.tgReadObject());
    }
    var nextOffset = reader.tgReadString();
    var _vectorchats = reader.readInt();
    if (_vectorchats != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> chats = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      chats.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    var version = reader.readInt();
    return GroupParticipants(
        count: count,
        participants: participants,
        nextOffset: nextOffset,
        chats: chats,
        users: users,
        version: version);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4101460406, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.participants!.length, 4,
          little: true, signed: true),
      this
          .participants!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
      serializeBytes(this.nextOffset),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.chats!.length, 4, little: true, signed: true),
      this
          .chats!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users!.length, 4, little: true, signed: true),
      this
          .users!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
      readBufferFromBigInt(this.version, 4, little: true, signed: true),
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
    return 'GroupParticipants{ID: $ID, count: $count, participants: $participants, nextOffset: $nextOffset, chats: $chats, users: $users, version: $version}';
  }
}

class JoinAsPeers extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2951045695;
  static const SUBCLASS_OF_ID = 3031920891;
  final classType = "constructor";
  final ID = 2951045695;
  List<dynamic> peers;
  List<dynamic> chats;
  List<dynamic> users;

  JoinAsPeers({required this.peers, required this.chats, required this.users});

  static JoinAsPeers fromReader(BinaryReader reader) {
    var len;
    var _vectorpeers = reader.readInt();
    if (_vectorpeers != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> peers = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      peers.add(reader.tgReadObject());
    }
    var _vectorchats = reader.readInt();
    if (_vectorchats != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> chats = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      chats.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return JoinAsPeers(peers: peers, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2951045695, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.peers!.length, 4, little: true, signed: true),
      this
          .peers!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.chats!.length, 4, little: true, signed: true),
      this
          .chats!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users!.length, 4, little: true, signed: true),
      this
          .users!
          .map((x) => (x.getBytes() as List<int>))
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
    return 'JoinAsPeers{ID: $ID, peers: $peers, chats: $chats, users: $users}';
  }
}

class ExportedGroupCallInvite extends BaseConstructor {
  static const CONSTRUCTOR_ID = 541839704;
  static const SUBCLASS_OF_ID = 993787535;
  final classType = "constructor";
  final ID = 541839704;
  String link;

  ExportedGroupCallInvite({required this.link});

  static ExportedGroupCallInvite fromReader(BinaryReader reader) {
    var len;
    var link = reader.tgReadString();
    return ExportedGroupCallInvite(link: link);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(541839704, 4),
      serializeBytes(this.link),
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
    return 'ExportedGroupCallInvite{ID: $ID, link: $link}';
  }
}

class GroupCallStreamChannels extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3504636594;
  static const SUBCLASS_OF_ID = 2438448612;
  final classType = "constructor";
  final ID = 3504636594;
  List<dynamic> channels;

  GroupCallStreamChannels({required this.channels});

  static GroupCallStreamChannels fromReader(BinaryReader reader) {
    var len;
    var _vectorchannels = reader.readInt();
    if (_vectorchannels != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> channels = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      channels.add(reader.tgReadObject());
    }
    return GroupCallStreamChannels(channels: channels);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3504636594, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.channels!.length, 4,
          little: true, signed: true),
      this
          .channels!
          .map((x) => (x.getBytes() as List<int>))
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
    return 'GroupCallStreamChannels{ID: $ID, channels: $channels}';
  }
}

class GroupCallStreamRtmpUrl extends BaseConstructor {
  static const CONSTRUCTOR_ID = 767505458;
  static const SUBCLASS_OF_ID = 3522500043;
  final classType = "constructor";
  final ID = 767505458;
  String url;
  String key;

  GroupCallStreamRtmpUrl({required this.url, required this.key});

  static GroupCallStreamRtmpUrl fromReader(BinaryReader reader) {
    var len;
    var url = reader.tgReadString();
    var key = reader.tgReadString();
    return GroupCallStreamRtmpUrl(url: url, key: key);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(767505458, 4),
      serializeBytes(this.url),
      serializeBytes(this.key),
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
    return 'GroupCallStreamRtmpUrl{ID: $ID, url: $url, key: $key}';
  }
}
