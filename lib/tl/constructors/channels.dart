// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_contructor.dart';
import '../constructors/constructors.dart';

abstract class ChannelParticipantsBase extends BaseConstructor {}

class ChannelParticipants extends ChannelParticipantsBase {
  static const CONSTRUCTOR_ID = 2595290799;
  static const SUBCLASS_OF_ID = 3859443300;
  final classType = "constructor";
  final ID = 2595290799;
  int count;
  List<ChannelParticipantBase> participants;
  List<ChatBase> chats;
  List<UserBase> users;

  ChannelParticipants(
      {required this.count,
      required this.participants,
      required this.chats,
      required this.users});

  static ChannelParticipants fromReader(BinaryReader reader) {
    var len;
    var count = reader.readInt();
    var _vectorparticipants = reader.readInt();
    if (_vectorparticipants != 481674261) throw Exception('Wrong vectorId');
    List<ChannelParticipantBase> participants = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      participants.add(reader.tgReadObject());
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
    return ChannelParticipants(
        count: count, participants: participants, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2595290799, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.participants.length, 4,
          little: true, signed: true),
      this
          .participants.map((x) => x.getBytes())
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
    return 'ChannelParticipants{ID: $ID, count: $count, participants: $participants, chats: $chats, users: $users}';
  }
}

class ChannelParticipantsNotModified extends ChannelParticipantsBase {
  static const CONSTRUCTOR_ID = 4028055529;
  static const SUBCLASS_OF_ID = 3859443300;
  final classType = "constructor";
  final ID = 4028055529;

  ChannelParticipantsNotModified();

  static ChannelParticipantsNotModified fromReader(BinaryReader reader) {
    return ChannelParticipantsNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4028055529, 4),
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
    return 'ChannelParticipantsNotModified{ID: $ID, }';
  }
}

class ChannelParticipant extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3753378583;
  static const SUBCLASS_OF_ID = 1717048602;
  final classType = "constructor";
  final ID = 3753378583;
  ChannelParticipantBase participant;
  List<ChatBase> chats;
  List<UserBase> users;

  ChannelParticipant(
      {required this.participant, required this.chats, required this.users});

  static ChannelParticipant fromReader(BinaryReader reader) {
    var len;
    var participant = reader.tgReadObject();
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
    return ChannelParticipant(
        participant: participant, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3753378583, 4),
      (this.participant.getBytes()),
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
    return 'ChannelParticipant{ID: $ID, participant: $participant, chats: $chats, users: $users}';
  }
}

class AdminLogResults extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3985307469;
  static const SUBCLASS_OF_ID = 1374713532;
  final classType = "constructor";
  final ID = 3985307469;
  List<ChannelAdminLogEvent> events;
  List<ChatBase> chats;
  List<UserBase> users;

  AdminLogResults(
      {required this.events, required this.chats, required this.users});

  static AdminLogResults fromReader(BinaryReader reader) {
    var len;
    var _vectorevents = reader.readInt();
    if (_vectorevents != 481674261) throw Exception('Wrong vectorId');
    List<ChannelAdminLogEvent> events = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      events.add(reader.tgReadObject());
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
    return AdminLogResults(events: events, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3985307469, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.events.length, 4, little: true, signed: true),
      this
          .events.map((x) => x.getBytes())
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
    return 'AdminLogResults{ID: $ID, events: $events, chats: $chats, users: $users}';
  }
}

class SendAsPeers extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2203504041;
  static const SUBCLASS_OF_ID = 952864033;
  final classType = "constructor";
  final ID = 2203504041;
  List<PeerBase> peers;
  List<ChatBase> chats;
  List<UserBase> users;

  SendAsPeers({required this.peers, required this.chats, required this.users});

  static SendAsPeers fromReader(BinaryReader reader) {
    var len;
    var _vectorpeers = reader.readInt();
    if (_vectorpeers != 481674261) throw Exception('Wrong vectorId');
    List<PeerBase> peers = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      peers.add(reader.tgReadObject());
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
    return SendAsPeers(peers: peers, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2203504041, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.peers.length, 4, little: true, signed: true),
      this
          .peers.map((x) => x.getBytes())
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
    return 'SendAsPeers{ID: $ID, peers: $peers, chats: $chats, users: $users}';
  }
}
