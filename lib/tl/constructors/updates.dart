// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_contructor.dart';
import '../constructors/constructors.dart';
import '../constructors/updates.dart' as updates_ns;

class State extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2775329342;
  static const SUBCLASS_OF_ID = 601823745;
  final classType = "constructor";
  final ID = 2775329342;
  int pts;
  int qts;
  int date;
  int seq;
  int unreadCount;

  State(
      {required this.pts,
      required this.qts,
      required this.date,
      required this.seq,
      required this.unreadCount});

  static State fromReader(BinaryReader reader) {
    var pts = reader.readInt();
    var qts = reader.readInt();
    var date = reader.readInt();
    var seq = reader.readInt();
    var unreadCount = reader.readInt();
    return State(
        pts: pts, qts: qts, date: date, seq: seq, unreadCount: unreadCount);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2775329342, 4),
      readBufferFromBigInt(this.pts, 4, little: true, signed: true),
      readBufferFromBigInt(this.qts, 4, little: true, signed: true),
      readBufferFromBigInt(this.date, 4, little: true, signed: true),
      readBufferFromBigInt(this.seq, 4, little: true, signed: true),
      readBufferFromBigInt(this.unreadCount, 4, little: true, signed: true),
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
    return 'State{ID: $ID, pts: $pts, qts: $qts, date: $date, seq: $seq, unreadCount: $unreadCount}';
  }
}

abstract class DifferenceBase extends BaseConstructor {}

class DifferenceEmpty extends DifferenceBase {
  static const CONSTRUCTOR_ID = 1567990072;
  static const SUBCLASS_OF_ID = 541599860;
  final classType = "constructor";
  final ID = 1567990072;
  int date;
  int seq;

  DifferenceEmpty({required this.date, required this.seq});

  static DifferenceEmpty fromReader(BinaryReader reader) {
    var date = reader.readInt();
    var seq = reader.readInt();
    return DifferenceEmpty(date: date, seq: seq);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1567990072, 4),
      readBufferFromBigInt(this.date, 4, little: true, signed: true),
      readBufferFromBigInt(this.seq, 4, little: true, signed: true),
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
    return 'DifferenceEmpty{ID: $ID, date: $date, seq: $seq}';
  }
}

class Difference extends DifferenceBase {
  static const CONSTRUCTOR_ID = 16030880;
  static const SUBCLASS_OF_ID = 541599860;
  final classType = "constructor";
  final ID = 16030880;
  List<MessageBase> newMessages;
  List<EncryptedMessageBase> newEncryptedMessages;
  List<UpdateBase> otherUpdates;
  List<ChatBase> chats;
  List<UserBase> users;
  updates_ns.State state;

  Difference(
      {required this.newMessages,
      required this.newEncryptedMessages,
      required this.otherUpdates,
      required this.chats,
      required this.users,
      required this.state});

  static Difference fromReader(BinaryReader reader) {
    var len;
    var _vectornewMessages = reader.readInt();
    if (_vectornewMessages != 481674261) throw Exception('Wrong vectorId');
    List<MessageBase> newMessages = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      newMessages.add(reader.tgReadObject());
    }
    var _vectornewEncryptedMessages = reader.readInt();
    if (_vectornewEncryptedMessages != 481674261)
      throw Exception('Wrong vectorId');
    List<EncryptedMessageBase> newEncryptedMessages = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      newEncryptedMessages.add(reader.tgReadObject());
    }
    var _vectorotherUpdates = reader.readInt();
    if (_vectorotherUpdates != 481674261) throw Exception('Wrong vectorId');
    List<UpdateBase> otherUpdates = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      otherUpdates.add(reader.tgReadObject());
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
    var state = reader.tgReadObject();
    return Difference(
        newMessages: newMessages,
        newEncryptedMessages: newEncryptedMessages,
        otherUpdates: otherUpdates,
        chats: chats,
        users: users,
        state: state);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(16030880, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.newMessages.length, 4,
          little: true, signed: true),
      this
          .newMessages.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.newEncryptedMessages.length, 4,
          little: true, signed: true),
      this
          .newEncryptedMessages.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.otherUpdates.length, 4,
          little: true, signed: true),
      this
          .otherUpdates.map((x) => x.getBytes())
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
      (this.state.getBytes()),
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
    return 'Difference{ID: $ID, newMessages: $newMessages, newEncryptedMessages: $newEncryptedMessages, otherUpdates: $otherUpdates, chats: $chats, users: $users, state: $state}';
  }
}

class DifferenceSlice extends DifferenceBase {
  static const CONSTRUCTOR_ID = 2835028353;
  static const SUBCLASS_OF_ID = 541599860;
  final classType = "constructor";
  final ID = 2835028353;
  List<MessageBase> newMessages;
  List<EncryptedMessageBase> newEncryptedMessages;
  List<UpdateBase> otherUpdates;
  List<ChatBase> chats;
  List<UserBase> users;
  updates_ns.State intermediateState;

  DifferenceSlice(
      {required this.newMessages,
      required this.newEncryptedMessages,
      required this.otherUpdates,
      required this.chats,
      required this.users,
      required this.intermediateState});

  static DifferenceSlice fromReader(BinaryReader reader) {
    var len;
    var _vectornewMessages = reader.readInt();
    if (_vectornewMessages != 481674261) throw Exception('Wrong vectorId');
    List<MessageBase> newMessages = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      newMessages.add(reader.tgReadObject());
    }
    var _vectornewEncryptedMessages = reader.readInt();
    if (_vectornewEncryptedMessages != 481674261)
      throw Exception('Wrong vectorId');
    List<EncryptedMessageBase> newEncryptedMessages = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      newEncryptedMessages.add(reader.tgReadObject());
    }
    var _vectorotherUpdates = reader.readInt();
    if (_vectorotherUpdates != 481674261) throw Exception('Wrong vectorId');
    List<UpdateBase> otherUpdates = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      otherUpdates.add(reader.tgReadObject());
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
    var intermediateState = reader.tgReadObject();
    return DifferenceSlice(
        newMessages: newMessages,
        newEncryptedMessages: newEncryptedMessages,
        otherUpdates: otherUpdates,
        chats: chats,
        users: users,
        intermediateState: intermediateState);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2835028353, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.newMessages.length, 4,
          little: true, signed: true),
      this
          .newMessages.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.newEncryptedMessages.length, 4,
          little: true, signed: true),
      this
          .newEncryptedMessages.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.otherUpdates.length, 4,
          little: true, signed: true),
      this
          .otherUpdates.map((x) => x.getBytes())
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
      (this.intermediateState.getBytes()),
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
    return 'DifferenceSlice{ID: $ID, newMessages: $newMessages, newEncryptedMessages: $newEncryptedMessages, otherUpdates: $otherUpdates, chats: $chats, users: $users, intermediateState: $intermediateState}';
  }
}

class DifferenceTooLong extends DifferenceBase {
  static const CONSTRUCTOR_ID = 1258196845;
  static const SUBCLASS_OF_ID = 541599860;
  final classType = "constructor";
  final ID = 1258196845;
  int pts;

  DifferenceTooLong({required this.pts});

  static DifferenceTooLong fromReader(BinaryReader reader) {
    var pts = reader.readInt();
    return DifferenceTooLong(pts: pts);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1258196845, 4),
      readBufferFromBigInt(this.pts, 4, little: true, signed: true),
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
    return 'DifferenceTooLong{ID: $ID, pts: $pts}';
  }
}

abstract class ChannelDifferenceBase extends BaseConstructor {}

class ChannelDifferenceEmpty extends ChannelDifferenceBase {
  static const CONSTRUCTOR_ID = 1041346555;
  static const SUBCLASS_OF_ID = 696872797;
  final classType = "constructor";
  final ID = 1041346555;
  bool? finalVar;
  int pts;
  int? timeout;

  ChannelDifferenceEmpty({this.finalVar, required this.pts, this.timeout});

  static ChannelDifferenceEmpty fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final finalVar = (flags & 1) == 1;
    var pts = reader.readInt();
    var timeout;
    if ((flags & 2) == 2) {
      timeout = reader.readInt();
    } else {
      timeout = null;
    }
    return ChannelDifferenceEmpty(
        finalVar: finalVar, pts: pts, timeout: timeout);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1041346555, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.pts, 4, little: true, signed: true),
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
    return 'ChannelDifferenceEmpty{ID: $ID, finalVar: $finalVar, pts: $pts, timeout: $timeout}';
  }
}

class ChannelDifferenceTooLong extends ChannelDifferenceBase {
  static const CONSTRUCTOR_ID = 2763835134;
  static const SUBCLASS_OF_ID = 696872797;
  final classType = "constructor";
  final ID = 2763835134;
  bool? finalVar;
  int? timeout;
  DialogBase dialog;
  List<MessageBase> messages;
  List<ChatBase> chats;
  List<UserBase> users;

  ChannelDifferenceTooLong(
      {this.finalVar,
      this.timeout,
      required this.dialog,
      required this.messages,
      required this.chats,
      required this.users});

  static ChannelDifferenceTooLong fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final finalVar = (flags & 1) == 1;
    var timeout;
    if ((flags & 2) == 2) {
      timeout = reader.readInt();
    } else {
      timeout = null;
    }
    var dialog = reader.tgReadObject();
    var _vectormessages = reader.readInt();
    if (_vectormessages != 481674261) throw Exception('Wrong vectorId');
    List<MessageBase> messages = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      messages.add(reader.tgReadObject());
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
    return ChannelDifferenceTooLong(
        finalVar: finalVar,
        timeout: timeout,
        dialog: dialog,
        messages: messages,
        chats: chats,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2763835134, 4),
      [0, 0, 0, 0],
      (this.timeout == null || this.timeout == false)
          ? List<int>.empty()
          : [readBufferFromBigInt(this.timeout, 4, little: true, signed: true)]
              .expand((element) => element)
              .toList(),
      (this.dialog.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.messages.length, 4,
          little: true, signed: true),
      this
          .messages.map((x) => x.getBytes())
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
    return 'ChannelDifferenceTooLong{ID: $ID, finalVar: $finalVar, timeout: $timeout, dialog: $dialog, messages: $messages, chats: $chats, users: $users}';
  }
}

class ChannelDifference extends ChannelDifferenceBase {
  static const CONSTRUCTOR_ID = 543450958;
  static const SUBCLASS_OF_ID = 696872797;
  final classType = "constructor";
  final ID = 543450958;
  bool? finalVar;
  int pts;
  int? timeout;
  List<MessageBase> newMessages;
  List<UpdateBase> otherUpdates;
  List<ChatBase> chats;
  List<UserBase> users;

  ChannelDifference(
      {this.finalVar,
      required this.pts,
      this.timeout,
      required this.newMessages,
      required this.otherUpdates,
      required this.chats,
      required this.users});

  static ChannelDifference fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final finalVar = (flags & 1) == 1;
    var pts = reader.readInt();
    var timeout;
    if ((flags & 2) == 2) {
      timeout = reader.readInt();
    } else {
      timeout = null;
    }
    var _vectornewMessages = reader.readInt();
    if (_vectornewMessages != 481674261) throw Exception('Wrong vectorId');
    List<MessageBase> newMessages = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      newMessages.add(reader.tgReadObject());
    }
    var _vectorotherUpdates = reader.readInt();
    if (_vectorotherUpdates != 481674261) throw Exception('Wrong vectorId');
    List<UpdateBase> otherUpdates = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      otherUpdates.add(reader.tgReadObject());
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
    return ChannelDifference(
        finalVar: finalVar,
        pts: pts,
        timeout: timeout,
        newMessages: newMessages,
        otherUpdates: otherUpdates,
        chats: chats,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(543450958, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.pts, 4, little: true, signed: true),
      (this.timeout == null || this.timeout == false)
          ? List<int>.empty()
          : [readBufferFromBigInt(this.timeout, 4, little: true, signed: true)]
              .expand((element) => element)
              .toList(),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.newMessages.length, 4,
          little: true, signed: true),
      this
          .newMessages.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.otherUpdates.length, 4,
          little: true, signed: true),
      this
          .otherUpdates.map((x) => x.getBytes())
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
    return 'ChannelDifference{ID: $ID, finalVar: $finalVar, pts: $pts, timeout: $timeout, newMessages: $newMessages, otherUpdates: $otherUpdates, chats: $chats, users: $users}';
  }
}
