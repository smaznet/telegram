// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_contructor.dart';
import '../constructors/constructors.dart';
import '../constructors/updates.dart' as updates_ns;

abstract class DialogsBase extends BaseConstructor {}

class Dialogs extends DialogsBase {
  static const CONSTRUCTOR_ID = 364538944;
  static const SUBCLASS_OF_ID = 236671726;
  final classType = "constructor";
  final ID = 364538944;
  List<DialogBase> dialogs;
  List<MessageBase> messages;
  List<ChatBase> chats;
  List<UserBase> users;

  Dialogs(
      {required this.dialogs,
      required this.messages,
      required this.chats,
      required this.users});

  static Dialogs fromReader(BinaryReader reader) {
    var len;
    var _vectordialogs = reader.readInt();
    if (_vectordialogs != 481674261) throw Exception('Wrong vectorId');
    List<DialogBase> dialogs = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      dialogs.add(reader.tgReadObject());
    }
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
    return Dialogs(
        dialogs: dialogs, messages: messages, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(364538944, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.dialogs.length, 4, little: true, signed: true),
      this
          .dialogs.map((x) => x.getBytes())
          .expand((element) => element),
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
    return 'Dialogs{ID: $ID, dialogs: $dialogs, messages: $messages, chats: $chats, users: $users}';
  }
}

class DialogsSlice extends DialogsBase {
  static const CONSTRUCTOR_ID = 1910543603;
  static const SUBCLASS_OF_ID = 236671726;
  final classType = "constructor";
  final ID = 1910543603;
  int count;
  List<DialogBase> dialogs;
  List<MessageBase> messages;
  List<ChatBase> chats;
  List<UserBase> users;

  DialogsSlice(
      {required this.count,
      required this.dialogs,
      required this.messages,
      required this.chats,
      required this.users});

  static DialogsSlice fromReader(BinaryReader reader) {
    var len;
    var count = reader.readInt();
    var _vectordialogs = reader.readInt();
    if (_vectordialogs != 481674261) throw Exception('Wrong vectorId');
    List<DialogBase> dialogs = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      dialogs.add(reader.tgReadObject());
    }
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
    return DialogsSlice(
        count: count,
        dialogs: dialogs,
        messages: messages,
        chats: chats,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1910543603, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.dialogs.length, 4, little: true, signed: true),
      this
          .dialogs.map((x) => x.getBytes())
          .expand((element) => element),
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
    return 'DialogsSlice{ID: $ID, count: $count, dialogs: $dialogs, messages: $messages, chats: $chats, users: $users}';
  }
}

class DialogsNotModified extends DialogsBase {
  static const CONSTRUCTOR_ID = 4041467286;
  static const SUBCLASS_OF_ID = 236671726;
  final classType = "constructor";
  final ID = 4041467286;
  int count;

  DialogsNotModified({required this.count});

  static DialogsNotModified fromReader(BinaryReader reader) {
    var count = reader.readInt();
    return DialogsNotModified(count: count);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4041467286, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
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
    return 'DialogsNotModified{ID: $ID, count: $count}';
  }
}

abstract class MessagesBase extends BaseConstructor {}

class Messages extends MessagesBase {
  static const CONSTRUCTOR_ID = 2356252295;
  static const SUBCLASS_OF_ID = 3568569182;
  final classType = "constructor";
  final ID = 2356252295;
  List<MessageBase> messages;
  List<ChatBase> chats;
  List<UserBase> users;

  Messages({required this.messages, required this.chats, required this.users});

  static Messages fromReader(BinaryReader reader) {
    var len;
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
    return Messages(messages: messages, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2356252295, 4),
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
    return 'Messages{ID: $ID, messages: $messages, chats: $chats, users: $users}';
  }
}

class MessagesSlice extends MessagesBase {
  static const CONSTRUCTOR_ID = 978610270;
  static const SUBCLASS_OF_ID = 3568569182;
  final classType = "constructor";
  final ID = 978610270;
  bool? inexact;
  int count;
  int? nextRate;
  int? offsetIdOffset;
  List<MessageBase> messages;
  List<ChatBase> chats;
  List<UserBase> users;

  MessagesSlice(
      {this.inexact,
      required this.count,
      this.nextRate,
      this.offsetIdOffset,
      required this.messages,
      required this.chats,
      required this.users});

  static MessagesSlice fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final inexact = (flags & 2) == 2;
    var count = reader.readInt();
    var nextRate;
    if ((flags & 1) == 1) {
      nextRate = reader.readInt();
    } else {
      nextRate = null;
    }
    var offsetIdOffset;
    if ((flags & 4) == 4) {
      offsetIdOffset = reader.readInt();
    } else {
      offsetIdOffset = null;
    }
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
    return MessagesSlice(
        inexact: inexact,
        count: count,
        nextRate: nextRate,
        offsetIdOffset: offsetIdOffset,
        messages: messages,
        chats: chats,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(978610270, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      (this.nextRate == null || this.nextRate == false)
          ? List<int>.empty()
          : [readBufferFromBigInt(this.nextRate, 4, little: true, signed: true)]
              .expand((element) => element)
              .toList(),
      (this.offsetIdOffset == null || this.offsetIdOffset == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.offsetIdOffset, 4,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
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
    return 'MessagesSlice{ID: $ID, inexact: $inexact, count: $count, nextRate: $nextRate, offsetIdOffset: $offsetIdOffset, messages: $messages, chats: $chats, users: $users}';
  }
}

class ChannelMessages extends MessagesBase {
  static const CONSTRUCTOR_ID = 1682413576;
  static const SUBCLASS_OF_ID = 3568569182;
  final classType = "constructor";
  final ID = 1682413576;
  bool? inexact;
  int pts;
  int count;
  int? offsetIdOffset;
  List<MessageBase> messages;
  List<ChatBase> chats;
  List<UserBase> users;

  ChannelMessages(
      {this.inexact,
      required this.pts,
      required this.count,
      this.offsetIdOffset,
      required this.messages,
      required this.chats,
      required this.users});

  static ChannelMessages fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final inexact = (flags & 2) == 2;
    var pts = reader.readInt();
    var count = reader.readInt();
    var offsetIdOffset;
    if ((flags & 4) == 4) {
      offsetIdOffset = reader.readInt();
    } else {
      offsetIdOffset = null;
    }
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
    return ChannelMessages(
        inexact: inexact,
        pts: pts,
        count: count,
        offsetIdOffset: offsetIdOffset,
        messages: messages,
        chats: chats,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1682413576, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.pts, 4, little: true, signed: true),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      (this.offsetIdOffset == null || this.offsetIdOffset == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.offsetIdOffset, 4,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
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
    return 'ChannelMessages{ID: $ID, inexact: $inexact, pts: $pts, count: $count, offsetIdOffset: $offsetIdOffset, messages: $messages, chats: $chats, users: $users}';
  }
}

class MessagesNotModified extends MessagesBase {
  static const CONSTRUCTOR_ID = 1951620897;
  static const SUBCLASS_OF_ID = 3568569182;
  final classType = "constructor";
  final ID = 1951620897;
  int count;

  MessagesNotModified({required this.count});

  static MessagesNotModified fromReader(BinaryReader reader) {
    var count = reader.readInt();
    return MessagesNotModified(count: count);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1951620897, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
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
    return 'MessagesNotModified{ID: $ID, count: $count}';
  }
}

abstract class ChatsBase extends BaseConstructor {}

class Chats extends ChatsBase {
  static const CONSTRUCTOR_ID = 1694474197;
  static const SUBCLASS_OF_ID = 2580925204;
  final classType = "constructor";
  final ID = 1694474197;
  List<ChatBase> chats;

  Chats({required this.chats});

  static Chats fromReader(BinaryReader reader) {
    var len;
    var _vectorchats = reader.readInt();
    if (_vectorchats != 481674261) throw Exception('Wrong vectorId');
    List<ChatBase> chats = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      chats.add(reader.tgReadObject());
    }
    return Chats(chats: chats);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1694474197, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.chats.length, 4, little: true, signed: true),
      this
          .chats.map((x) => x.getBytes())
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
    return 'Chats{ID: $ID, chats: $chats}';
  }
}

class ChatsSlice extends ChatsBase {
  static const CONSTRUCTOR_ID = 2631405892;
  static const SUBCLASS_OF_ID = 2580925204;
  final classType = "constructor";
  final ID = 2631405892;
  int count;
  List<ChatBase> chats;

  ChatsSlice({required this.count, required this.chats});

  static ChatsSlice fromReader(BinaryReader reader) {
    var len;
    var count = reader.readInt();
    var _vectorchats = reader.readInt();
    if (_vectorchats != 481674261) throw Exception('Wrong vectorId');
    List<ChatBase> chats = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      chats.add(reader.tgReadObject());
    }
    return ChatsSlice(count: count, chats: chats);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2631405892, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.chats.length, 4, little: true, signed: true),
      this
          .chats.map((x) => x.getBytes())
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
    return 'ChatsSlice{ID: $ID, count: $count, chats: $chats}';
  }
}

class ChatFull extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3856126364;
  static const SUBCLASS_OF_ID = 576344329;
  final classType = "constructor";
  final ID = 3856126364;
  ChatFullBase fullChat;
  List<ChatBase> chats;
  List<UserBase> users;

  ChatFull({required this.fullChat, required this.chats, required this.users});

  static ChatFull fromReader(BinaryReader reader) {
    var len;
    var fullChat = reader.tgReadObject();
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
    return ChatFull(fullChat: fullChat, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3856126364, 4),
      (this.fullChat.getBytes()),
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
    return 'ChatFull{ID: $ID, fullChat: $fullChat, chats: $chats, users: $users}';
  }
}

class AffectedHistory extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3025955281;
  static const SUBCLASS_OF_ID = 743031062;
  final classType = "constructor";
  final ID = 3025955281;
  int pts;
  int ptsCount;
  int offset;

  AffectedHistory(
      {required this.pts, required this.ptsCount, required this.offset});

  static AffectedHistory fromReader(BinaryReader reader) {
    var pts = reader.readInt();
    var ptsCount = reader.readInt();
    var offset = reader.readInt();
    return AffectedHistory(pts: pts, ptsCount: ptsCount, offset: offset);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3025955281, 4),
      readBufferFromBigInt(this.pts, 4, little: true, signed: true),
      readBufferFromBigInt(this.ptsCount, 4, little: true, signed: true),
      readBufferFromBigInt(this.offset, 4, little: true, signed: true),
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
    return 'AffectedHistory{ID: $ID, pts: $pts, ptsCount: $ptsCount, offset: $offset}';
  }
}

abstract class DhConfigBase extends BaseConstructor {}

class DhConfigNotModified extends DhConfigBase {
  static const CONSTRUCTOR_ID = 3236054581;
  static const SUBCLASS_OF_ID = 3834178955;
  final classType = "constructor";
  final ID = 3236054581;
  List<int> random;

  DhConfigNotModified({required this.random});

  static DhConfigNotModified fromReader(BinaryReader reader) {
    var random = reader.tgReadBytes();
    return DhConfigNotModified(random: random);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3236054581, 4),
      serializeBytes(this.random),
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
    return 'DhConfigNotModified{ID: $ID, random: ${random.sublist(0, 5)}<...${random.length}>}';
  }
}

class DhConfig extends DhConfigBase {
  static const CONSTRUCTOR_ID = 740433629;
  static const SUBCLASS_OF_ID = 3834178955;
  final classType = "constructor";
  final ID = 740433629;
  int g;
  List<int> p;
  int version;
  List<int> random;

  DhConfig(
      {required this.g,
      required this.p,
      required this.version,
      required this.random});

  static DhConfig fromReader(BinaryReader reader) {
    var g = reader.readInt();
    var p = reader.tgReadBytes();
    var version = reader.readInt();
    var random = reader.tgReadBytes();
    return DhConfig(g: g, p: p, version: version, random: random);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(740433629, 4),
      readBufferFromBigInt(this.g, 4, little: true, signed: true),
      serializeBytes(this.p),
      readBufferFromBigInt(this.version, 4, little: true, signed: true),
      serializeBytes(this.random),
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
    return 'DhConfig{ID: $ID, g: $g, p: ${p.sublist(0, 5)}<...${p.length}>, version: $version, random: ${random.sublist(0, 5)}<...${random.length}>}';
  }
}

abstract class SentEncryptedMessageBase extends BaseConstructor {}

class SentEncryptedMessage extends SentEncryptedMessageBase {
  static const CONSTRUCTOR_ID = 1443858741;
  static const SUBCLASS_OF_ID = 3382591056;
  final classType = "constructor";
  final ID = 1443858741;
  int date;

  SentEncryptedMessage({required this.date});

  static SentEncryptedMessage fromReader(BinaryReader reader) {
    var date = reader.readInt();
    return SentEncryptedMessage(date: date);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1443858741, 4),
      readBufferFromBigInt(this.date, 4, little: true, signed: true),
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
    return 'SentEncryptedMessage{ID: $ID, date: $date}';
  }
}

class SentEncryptedFile extends SentEncryptedMessageBase {
  static const CONSTRUCTOR_ID = 2492727090;
  static const SUBCLASS_OF_ID = 3382591056;
  final classType = "constructor";
  final ID = 2492727090;
  int date;
  EncryptedFileBase file;

  SentEncryptedFile({required this.date, required this.file});

  static SentEncryptedFile fromReader(BinaryReader reader) {
    var date = reader.readInt();
    var file = reader.tgReadObject();
    return SentEncryptedFile(date: date, file: file);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2492727090, 4),
      readBufferFromBigInt(this.date, 4, little: true, signed: true),
      (this.file.getBytes()),
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
    return 'SentEncryptedFile{ID: $ID, date: $date, file: $file}';
  }
}

abstract class StickersBase extends BaseConstructor {}

class StickersNotModified extends StickersBase {
  static const CONSTRUCTOR_ID = 4050950690;
  static const SUBCLASS_OF_ID = 3611015646;
  final classType = "constructor";
  final ID = 4050950690;

  StickersNotModified();

  static StickersNotModified fromReader(BinaryReader reader) {
    return StickersNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4050950690, 4),
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
    return 'StickersNotModified{ID: $ID, }';
  }
}

class Stickers extends StickersBase {
  static const CONSTRUCTOR_ID = 816245886;
  static const SUBCLASS_OF_ID = 3611015646;
  final classType = "constructor";
  final ID = 816245886;
  BigInt hash;
  List<DocumentBase> stickers;

  Stickers({required this.hash, required this.stickers});

  static Stickers fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readLong();
    var _vectorstickers = reader.readInt();
    if (_vectorstickers != 481674261) throw Exception('Wrong vectorId');
    List<DocumentBase> stickers = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      stickers.add(reader.tgReadObject());
    }
    return Stickers(hash: hash, stickers: stickers);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(816245886, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.stickers.length, 4,
          little: true, signed: true),
      this
          .stickers.map((x) => x.getBytes())
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
    return 'Stickers{ID: $ID, hash: $hash, stickers: $stickers}';
  }
}

abstract class AllStickersBase extends BaseConstructor {}

class AllStickersNotModified extends AllStickersBase {
  static const CONSTRUCTOR_ID = 3898999491;
  static const SUBCLASS_OF_ID = 1166231593;
  final classType = "constructor";
  final ID = 3898999491;

  AllStickersNotModified();

  static AllStickersNotModified fromReader(BinaryReader reader) {
    return AllStickersNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3898999491, 4),
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
    return 'AllStickersNotModified{ID: $ID, }';
  }
}

class AllStickers extends AllStickersBase {
  static const CONSTRUCTOR_ID = 3451637435;
  static const SUBCLASS_OF_ID = 1166231593;
  final classType = "constructor";
  final ID = 3451637435;
  BigInt hash;
  List<StickerSet> sets;

  AllStickers({required this.hash, required this.sets});

  static AllStickers fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readLong();
    var _vectorsets = reader.readInt();
    if (_vectorsets != 481674261) throw Exception('Wrong vectorId');
    List<StickerSet> sets = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      sets.add(reader.tgReadObject());
    }
    return AllStickers(hash: hash, sets: sets);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3451637435, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.sets.length, 4, little: true, signed: true),
      this
          .sets.map((x) => x.getBytes())
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
    return 'AllStickers{ID: $ID, hash: $hash, sets: $sets}';
  }
}

class AffectedMessages extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2228326789;
  static const SUBCLASS_OF_ID = 3469983854;
  final classType = "constructor";
  final ID = 2228326789;
  int pts;
  int ptsCount;

  AffectedMessages({required this.pts, required this.ptsCount});

  static AffectedMessages fromReader(BinaryReader reader) {
    var pts = reader.readInt();
    var ptsCount = reader.readInt();
    return AffectedMessages(pts: pts, ptsCount: ptsCount);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2228326789, 4),
      readBufferFromBigInt(this.pts, 4, little: true, signed: true),
      readBufferFromBigInt(this.ptsCount, 4, little: true, signed: true),
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
    return 'AffectedMessages{ID: $ID, pts: $pts, ptsCount: $ptsCount}';
  }
}

abstract class StickerSetBase extends BaseConstructor {}

class StickerSet extends StickerSetBase {
  static const CONSTRUCTOR_ID = 3054118054;
  static const SUBCLASS_OF_ID = 2607827546;
  final classType = "constructor";
  final ID = 3054118054;
  StickerSet set;
  List<StickerPack> packs;
  List<DocumentBase> documents;

  StickerSet({required this.set, required this.packs, required this.documents});

  static StickerSet fromReader(BinaryReader reader) {
    var len;
    var set = reader.tgReadObject();
    var _vectorpacks = reader.readInt();
    if (_vectorpacks != 481674261) throw Exception('Wrong vectorId');
    List<StickerPack> packs = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      packs.add(reader.tgReadObject());
    }
    var _vectordocuments = reader.readInt();
    if (_vectordocuments != 481674261) throw Exception('Wrong vectorId');
    List<DocumentBase> documents = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      documents.add(reader.tgReadObject());
    }
    return StickerSet(set: set, packs: packs, documents: documents);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3054118054, 4),
      (this.set.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.packs.length, 4, little: true, signed: true),
      this
          .packs.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.documents.length, 4,
          little: true, signed: true),
      this
          .documents.map((x) => x.getBytes())
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
    return 'StickerSet{ID: $ID, set: $set, packs: $packs, documents: $documents}';
  }
}

class StickerSetNotModified extends StickerSetBase {
  static const CONSTRUCTOR_ID = 3556320491;
  static const SUBCLASS_OF_ID = 2607827546;
  final classType = "constructor";
  final ID = 3556320491;

  StickerSetNotModified();

  static StickerSetNotModified fromReader(BinaryReader reader) {
    return StickerSetNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3556320491, 4),
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
    return 'StickerSetNotModified{ID: $ID, }';
  }
}

abstract class SavedGifsBase extends BaseConstructor {}

class SavedGifsNotModified extends SavedGifsBase {
  static const CONSTRUCTOR_ID = 3892468898;
  static const SUBCLASS_OF_ID = 2794152437;
  final classType = "constructor";
  final ID = 3892468898;

  SavedGifsNotModified();

  static SavedGifsNotModified fromReader(BinaryReader reader) {
    return SavedGifsNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3892468898, 4),
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
    return 'SavedGifsNotModified{ID: $ID, }';
  }
}

class SavedGifs extends SavedGifsBase {
  static const CONSTRUCTOR_ID = 2225089037;
  static const SUBCLASS_OF_ID = 2794152437;
  final classType = "constructor";
  final ID = 2225089037;
  BigInt hash;
  List<DocumentBase> gifs;

  SavedGifs({required this.hash, required this.gifs});

  static SavedGifs fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readLong();
    var _vectorgifs = reader.readInt();
    if (_vectorgifs != 481674261) throw Exception('Wrong vectorId');
    List<DocumentBase> gifs = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      gifs.add(reader.tgReadObject());
    }
    return SavedGifs(hash: hash, gifs: gifs);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2225089037, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.gifs.length, 4, little: true, signed: true),
      this
          .gifs.map((x) => x.getBytes())
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
    return 'SavedGifs{ID: $ID, hash: $hash, gifs: $gifs}';
  }
}

class BotResults extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2491197512;
  static const SUBCLASS_OF_ID = 1054136777;
  final classType = "constructor";
  final ID = 2491197512;
  bool? gallery;
  BigInt queryId;
  String? nextOffset;
  InlineBotSwitchPM? switchPm;
  List<BotInlineResultBase> results;
  int cacheTime;
  List<UserBase> users;

  BotResults(
      {this.gallery,
      required this.queryId,
      this.nextOffset,
      this.switchPm,
      required this.results,
      required this.cacheTime,
      required this.users});

  static BotResults fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final gallery = (flags & 1) == 1;
    var queryId = reader.readLong();
    var nextOffset;
    if ((flags & 2) == 2) {
      nextOffset = reader.tgReadString();
    } else {
      nextOffset = null;
    }
    var switchPm;
    if ((flags & 4) == 4) {
      switchPm = reader.tgReadObject();
    } else {
      switchPm = null;
    }
    var _vectorresults = reader.readInt();
    if (_vectorresults != 481674261) throw Exception('Wrong vectorId');
    List<BotInlineResultBase> results = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      results.add(reader.tgReadObject());
    }
    var cacheTime = reader.readInt();
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return BotResults(
        gallery: gallery,
        queryId: queryId,
        nextOffset: nextOffset,
        switchPm: switchPm,
        results: results,
        cacheTime: cacheTime,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2491197512, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.queryId, 8, little: true, signed: true),
      (this.nextOffset == null || this.nextOffset == false)
          ? List<int>.empty()
          : [serializeBytes(this.nextOffset)]
              .expand((element) => element)
              .toList(),
      (this.switchPm == null || this.switchPm == false)
          ? List<int>.empty()
          : [(this.switchPm!.getBytes())]
              .expand((element) => element)
              .toList(),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.results.length, 4, little: true, signed: true),
      this
          .results.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(this.cacheTime, 4, little: true, signed: true),
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
    return 'BotResults{ID: $ID, gallery: $gallery, queryId: $queryId, nextOffset: $nextOffset, switchPm: $switchPm, results: $results, cacheTime: $cacheTime, users: $users}';
  }
}

class BotCallbackAnswer extends BaseConstructor {
  static const CONSTRUCTOR_ID = 911761060;
  static const SUBCLASS_OF_ID = 1817039244;
  final classType = "constructor";
  final ID = 911761060;
  bool? alert;
  bool? hasUrl;
  bool? nativeUi;
  String? message;
  String? url;
  int cacheTime;

  BotCallbackAnswer(
      {this.alert,
      this.hasUrl,
      this.nativeUi,
      this.message,
      this.url,
      required this.cacheTime});

  static BotCallbackAnswer fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final alert = (flags & 2) == 2;
    final hasUrl = (flags & 8) == 8;
    final nativeUi = (flags & 16) == 16;
    var message;
    if ((flags & 1) == 1) {
      message = reader.tgReadString();
    } else {
      message = null;
    }
    var url;
    if ((flags & 4) == 4) {
      url = reader.tgReadString();
    } else {
      url = null;
    }
    var cacheTime = reader.readInt();
    return BotCallbackAnswer(
        alert: alert,
        hasUrl: hasUrl,
        nativeUi: nativeUi,
        message: message,
        url: url,
        cacheTime: cacheTime);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(911761060, 4),
      [0, 0, 0, 0],
      (this.message == null || this.message == false)
          ? List<int>.empty()
          : [serializeBytes(this.message)]
              .expand((element) => element)
              .toList(),
      (this.url == null || this.url == false)
          ? List<int>.empty()
          : [serializeBytes(this.url)].expand((element) => element).toList(),
      readBufferFromBigInt(this.cacheTime, 4, little: true, signed: true),
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
    return 'BotCallbackAnswer{ID: $ID, alert: $alert, hasUrl: $hasUrl, nativeUi: $nativeUi, message: $message, url: $url, cacheTime: $cacheTime}';
  }
}

class MessageEditData extends BaseConstructor {
  static const CONSTRUCTOR_ID = 649453030;
  static const SUBCLASS_OF_ID = 4215772317;
  final classType = "constructor";
  final ID = 649453030;
  bool? caption;

  MessageEditData({this.caption});

  static MessageEditData fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final caption = (flags & 1) == 1;
    return MessageEditData(caption: caption);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(649453030, 4),
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
    return 'MessageEditData{ID: $ID, caption: $caption}';
  }
}

class PeerDialogs extends BaseConstructor {
  static const CONSTRUCTOR_ID = 863093588;
  static const SUBCLASS_OF_ID = 986120498;
  final classType = "constructor";
  final ID = 863093588;
  List<DialogBase> dialogs;
  List<MessageBase> messages;
  List<ChatBase> chats;
  List<UserBase> users;
  updates_ns.State state;

  PeerDialogs(
      {required this.dialogs,
      required this.messages,
      required this.chats,
      required this.users,
      required this.state});

  static PeerDialogs fromReader(BinaryReader reader) {
    var len;
    var _vectordialogs = reader.readInt();
    if (_vectordialogs != 481674261) throw Exception('Wrong vectorId');
    List<DialogBase> dialogs = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      dialogs.add(reader.tgReadObject());
    }
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
    var state = reader.tgReadObject();
    return PeerDialogs(
        dialogs: dialogs,
        messages: messages,
        chats: chats,
        users: users,
        state: state);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(863093588, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.dialogs.length, 4, little: true, signed: true),
      this
          .dialogs.map((x) => x.getBytes())
          .expand((element) => element),
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
    return 'PeerDialogs{ID: $ID, dialogs: $dialogs, messages: $messages, chats: $chats, users: $users, state: $state}';
  }
}

abstract class FeaturedStickersBase extends BaseConstructor {}

class FeaturedStickersNotModified extends FeaturedStickersBase {
  static const CONSTRUCTOR_ID = 3336309862;
  static const SUBCLASS_OF_ID = 638891810;
  final classType = "constructor";
  final ID = 3336309862;
  int count;

  FeaturedStickersNotModified({required this.count});

  static FeaturedStickersNotModified fromReader(BinaryReader reader) {
    var count = reader.readInt();
    return FeaturedStickersNotModified(count: count);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3336309862, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
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
    return 'FeaturedStickersNotModified{ID: $ID, count: $count}';
  }
}

class FeaturedStickers extends FeaturedStickersBase {
  static const CONSTRUCTOR_ID = 2227184400;
  static const SUBCLASS_OF_ID = 638891810;
  final classType = "constructor";
  final ID = 2227184400;
  BigInt hash;
  int count;
  List<StickerSetCoveredBase> sets;
  List<BigInt> unread;

  FeaturedStickers(
      {required this.hash,
      required this.count,
      required this.sets,
      required this.unread});

  static FeaturedStickers fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readLong();
    var count = reader.readInt();
    var _vectorsets = reader.readInt();
    if (_vectorsets != 481674261) throw Exception('Wrong vectorId');
    List<StickerSetCoveredBase> sets = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      sets.add(reader.tgReadObject());
    }
    var _vectorunread = reader.readInt();
    if (_vectorunread != 481674261) throw Exception('Wrong vectorId');
    List<BigInt> unread = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      unread.add(reader.readLong());
    }
    return FeaturedStickers(
        hash: hash, count: count, sets: sets, unread: unread);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2227184400, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.sets.length, 4, little: true, signed: true),
      this
          .sets.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.unread.length, 4, little: true, signed: true),
      this
          .unread.map((x) => readBufferFromBigInt(x, 8, little: true, signed: true))
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
    return 'FeaturedStickers{ID: $ID, hash: $hash, count: $count, sets: $sets, unread: $unread}';
  }
}

abstract class RecentStickersBase extends BaseConstructor {}

class RecentStickersNotModified extends RecentStickersBase {
  static const CONSTRUCTOR_ID = 186120336;
  static const SUBCLASS_OF_ID = 4151281283;
  final classType = "constructor";
  final ID = 186120336;

  RecentStickersNotModified();

  static RecentStickersNotModified fromReader(BinaryReader reader) {
    return RecentStickersNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(186120336, 4),
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
    return 'RecentStickersNotModified{ID: $ID, }';
  }
}

class RecentStickers extends RecentStickersBase {
  static const CONSTRUCTOR_ID = 2295561302;
  static const SUBCLASS_OF_ID = 4151281283;
  final classType = "constructor";
  final ID = 2295561302;
  BigInt hash;
  List<StickerPack> packs;
  List<DocumentBase> stickers;
  List<int> dates;

  RecentStickers(
      {required this.hash,
      required this.packs,
      required this.stickers,
      required this.dates});

  static RecentStickers fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readLong();
    var _vectorpacks = reader.readInt();
    if (_vectorpacks != 481674261) throw Exception('Wrong vectorId');
    List<StickerPack> packs = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      packs.add(reader.tgReadObject());
    }
    var _vectorstickers = reader.readInt();
    if (_vectorstickers != 481674261) throw Exception('Wrong vectorId');
    List<DocumentBase> stickers = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      stickers.add(reader.tgReadObject());
    }
    var _vectordates = reader.readInt();
    if (_vectordates != 481674261) throw Exception('Wrong vectorId');
    List<int> dates = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      dates.add(reader.readInt());
    }
    return RecentStickers(
        hash: hash, packs: packs, stickers: stickers, dates: dates);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2295561302, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.packs.length, 4, little: true, signed: true),
      this
          .packs.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.stickers.length, 4,
          little: true, signed: true),
      this
          .stickers.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.dates.length, 4, little: true, signed: true),
      this
          .dates.map((x) => readBufferFromBigInt(x, 4, little: true, signed: true))
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
    return 'RecentStickers{ID: $ID, hash: $hash, packs: $packs, stickers: $stickers, dates: $dates}';
  }
}

class ArchivedStickers extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1338747336;
  static const SUBCLASS_OF_ID = 1922488177;
  final classType = "constructor";
  final ID = 1338747336;
  int count;
  List<StickerSetCoveredBase> sets;

  ArchivedStickers({required this.count, required this.sets});

  static ArchivedStickers fromReader(BinaryReader reader) {
    var len;
    var count = reader.readInt();
    var _vectorsets = reader.readInt();
    if (_vectorsets != 481674261) throw Exception('Wrong vectorId');
    List<StickerSetCoveredBase> sets = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      sets.add(reader.tgReadObject());
    }
    return ArchivedStickers(count: count, sets: sets);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1338747336, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.sets.length, 4, little: true, signed: true),
      this
          .sets.map((x) => x.getBytes())
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
    return 'ArchivedStickers{ID: $ID, count: $count, sets: $sets}';
  }
}

abstract class StickerSetInstallResultBase extends BaseConstructor {}

class StickerSetInstallResultSuccess extends StickerSetInstallResultBase {
  static const CONSTRUCTOR_ID = 946083368;
  static const SUBCLASS_OF_ID = 1741373416;
  final classType = "constructor";
  final ID = 946083368;

  StickerSetInstallResultSuccess();

  static StickerSetInstallResultSuccess fromReader(BinaryReader reader) {
    return StickerSetInstallResultSuccess();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(946083368, 4),
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
    return 'StickerSetInstallResultSuccess{ID: $ID, }';
  }
}

class StickerSetInstallResultArchive extends StickerSetInstallResultBase {
  static const CONSTRUCTOR_ID = 904138920;
  static const SUBCLASS_OF_ID = 1741373416;
  final classType = "constructor";
  final ID = 904138920;
  List<StickerSetCoveredBase> sets;

  StickerSetInstallResultArchive({required this.sets});

  static StickerSetInstallResultArchive fromReader(BinaryReader reader) {
    var len;
    var _vectorsets = reader.readInt();
    if (_vectorsets != 481674261) throw Exception('Wrong vectorId');
    List<StickerSetCoveredBase> sets = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      sets.add(reader.tgReadObject());
    }
    return StickerSetInstallResultArchive(sets: sets);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(904138920, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.sets.length, 4, little: true, signed: true),
      this
          .sets.map((x) => x.getBytes())
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
    return 'StickerSetInstallResultArchive{ID: $ID, sets: $sets}';
  }
}

class HighScores extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2587622809;
  static const SUBCLASS_OF_ID = 1825412605;
  final classType = "constructor";
  final ID = 2587622809;
  List<HighScore> scores;
  List<UserBase> users;

  HighScores({required this.scores, required this.users});

  static HighScores fromReader(BinaryReader reader) {
    var len;
    var _vectorscores = reader.readInt();
    if (_vectorscores != 481674261) throw Exception('Wrong vectorId');
    List<HighScore> scores = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      scores.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return HighScores(scores: scores, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2587622809, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.scores.length, 4, little: true, signed: true),
      this
          .scores.map((x) => x.getBytes())
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
    return 'HighScores{ID: $ID, scores: $scores, users: $users}';
  }
}

abstract class FavedStickersBase extends BaseConstructor {}

class FavedStickersNotModified extends FavedStickersBase {
  static const CONSTRUCTOR_ID = 2660214483;
  static const SUBCLASS_OF_ID = 2389929913;
  final classType = "constructor";
  final ID = 2660214483;

  FavedStickersNotModified();

  static FavedStickersNotModified fromReader(BinaryReader reader) {
    return FavedStickersNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2660214483, 4),
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
    return 'FavedStickersNotModified{ID: $ID, }';
  }
}

class FavedStickers extends FavedStickersBase {
  static const CONSTRUCTOR_ID = 750063767;
  static const SUBCLASS_OF_ID = 2389929913;
  final classType = "constructor";
  final ID = 750063767;
  BigInt hash;
  List<StickerPack> packs;
  List<DocumentBase> stickers;

  FavedStickers(
      {required this.hash, required this.packs, required this.stickers});

  static FavedStickers fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readLong();
    var _vectorpacks = reader.readInt();
    if (_vectorpacks != 481674261) throw Exception('Wrong vectorId');
    List<StickerPack> packs = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      packs.add(reader.tgReadObject());
    }
    var _vectorstickers = reader.readInt();
    if (_vectorstickers != 481674261) throw Exception('Wrong vectorId');
    List<DocumentBase> stickers = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      stickers.add(reader.tgReadObject());
    }
    return FavedStickers(hash: hash, packs: packs, stickers: stickers);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(750063767, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.packs.length, 4, little: true, signed: true),
      this
          .packs.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.stickers.length, 4,
          little: true, signed: true),
      this
          .stickers.map((x) => x.getBytes())
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
    return 'FavedStickers{ID: $ID, hash: $hash, packs: $packs, stickers: $stickers}';
  }
}

abstract class FoundStickerSetsBase extends BaseConstructor {}

class FoundStickerSetsNotModified extends FoundStickerSetsBase {
  static const CONSTRUCTOR_ID = 223655517;
  static const SUBCLASS_OF_ID = 68023137;
  final classType = "constructor";
  final ID = 223655517;

  FoundStickerSetsNotModified();

  static FoundStickerSetsNotModified fromReader(BinaryReader reader) {
    return FoundStickerSetsNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(223655517, 4),
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
    return 'FoundStickerSetsNotModified{ID: $ID, }';
  }
}

class FoundStickerSets extends FoundStickerSetsBase {
  static const CONSTRUCTOR_ID = 2331024850;
  static const SUBCLASS_OF_ID = 68023137;
  final classType = "constructor";
  final ID = 2331024850;
  BigInt hash;
  List<StickerSetCoveredBase> sets;

  FoundStickerSets({required this.hash, required this.sets});

  static FoundStickerSets fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readLong();
    var _vectorsets = reader.readInt();
    if (_vectorsets != 481674261) throw Exception('Wrong vectorId');
    List<StickerSetCoveredBase> sets = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      sets.add(reader.tgReadObject());
    }
    return FoundStickerSets(hash: hash, sets: sets);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2331024850, 4),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.sets.length, 4, little: true, signed: true),
      this
          .sets.map((x) => x.getBytes())
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
    return 'FoundStickerSets{ID: $ID, hash: $hash, sets: $sets}';
  }
}

class SearchCounter extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3896830975;
  static const SUBCLASS_OF_ID = 3601317794;
  final classType = "constructor";
  final ID = 3896830975;
  bool? inexact;
  MessagesFilterBase filter;
  int count;

  SearchCounter({this.inexact, required this.filter, required this.count});

  static SearchCounter fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final inexact = (flags & 2) == 2;
    var filter = reader.tgReadObject();
    var count = reader.readInt();
    return SearchCounter(inexact: inexact, filter: filter, count: count);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3896830975, 4),
      [0, 0, 0, 0],
      (this.filter.getBytes()),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
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
    return 'SearchCounter{ID: $ID, inexact: $inexact, filter: $filter, count: $count}';
  }
}

class InactiveChats extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2837970629;
  static const SUBCLASS_OF_ID = 2348013524;
  final classType = "constructor";
  final ID = 2837970629;
  List<int> dates;
  List<ChatBase> chats;
  List<UserBase> users;

  InactiveChats(
      {required this.dates, required this.chats, required this.users});

  static InactiveChats fromReader(BinaryReader reader) {
    var len;
    var _vectordates = reader.readInt();
    if (_vectordates != 481674261) throw Exception('Wrong vectorId');
    List<int> dates = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      dates.add(reader.readInt());
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
    return InactiveChats(dates: dates, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2837970629, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.dates.length, 4, little: true, signed: true),
      this
          .dates.map((x) => readBufferFromBigInt(x, 4, little: true, signed: true))
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
    return 'InactiveChats{ID: $ID, dates: $dates, chats: $chats, users: $users}';
  }
}

class VotesList extends BaseConstructor {
  static const CONSTRUCTOR_ID = 136574537;
  static const SUBCLASS_OF_ID = 3256457349;
  final classType = "constructor";
  final ID = 136574537;
  int count;
  List<MessageUserVoteBase> votes;
  List<UserBase> users;
  String? nextOffset;

  VotesList(
      {required this.count,
      required this.votes,
      required this.users,
      this.nextOffset});

  static VotesList fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var count = reader.readInt();
    var _vectorvotes = reader.readInt();
    if (_vectorvotes != 481674261) throw Exception('Wrong vectorId');
    List<MessageUserVoteBase> votes = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      votes.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    var nextOffset;
    if ((flags & 1) == 1) {
      nextOffset = reader.tgReadString();
    } else {
      nextOffset = null;
    }
    return VotesList(
        count: count, votes: votes, users: users, nextOffset: nextOffset);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(136574537, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.votes.length, 4, little: true, signed: true),
      this
          .votes.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
          .expand((element) => element),
      (this.nextOffset == null || this.nextOffset == false)
          ? List<int>.empty()
          : [serializeBytes(this.nextOffset)]
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
    return 'VotesList{ID: $ID, count: $count, votes: $votes, users: $users, nextOffset: $nextOffset}';
  }
}

class MessageViews extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3066361155;
  static const SUBCLASS_OF_ID = 2947935132;
  final classType = "constructor";
  final ID = 3066361155;
  List<MessageViews> views;
  List<ChatBase> chats;
  List<UserBase> users;

  MessageViews({required this.views, required this.chats, required this.users});

  static MessageViews fromReader(BinaryReader reader) {
    var len;
    var _vectorviews = reader.readInt();
    if (_vectorviews != 481674261) throw Exception('Wrong vectorId');
    List<MessageViews> views = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      views.add(reader.tgReadObject());
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
    return MessageViews(views: views, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3066361155, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.views.length, 4, little: true, signed: true),
      this
          .views.map((x) => x.getBytes())
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
    return 'MessageViews{ID: $ID, views: $views, chats: $chats, users: $users}';
  }
}

class DiscussionMessage extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2788431746;
  static const SUBCLASS_OF_ID = 1408820200;
  final classType = "constructor";
  final ID = 2788431746;
  List<MessageBase> messages;
  int? maxId;
  int? readInboxMaxId;
  int? readOutboxMaxId;
  int unreadCount;
  List<ChatBase> chats;
  List<UserBase> users;

  DiscussionMessage(
      {required this.messages,
      this.maxId,
      this.readInboxMaxId,
      this.readOutboxMaxId,
      required this.unreadCount,
      required this.chats,
      required this.users});

  static DiscussionMessage fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var _vectormessages = reader.readInt();
    if (_vectormessages != 481674261) throw Exception('Wrong vectorId');
    List<MessageBase> messages = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      messages.add(reader.tgReadObject());
    }
    var maxId;
    if ((flags & 1) == 1) {
      maxId = reader.readInt();
    } else {
      maxId = null;
    }
    var readInboxMaxId;
    if ((flags & 2) == 2) {
      readInboxMaxId = reader.readInt();
    } else {
      readInboxMaxId = null;
    }
    var readOutboxMaxId;
    if ((flags & 4) == 4) {
      readOutboxMaxId = reader.readInt();
    } else {
      readOutboxMaxId = null;
    }
    var unreadCount = reader.readInt();
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
    return DiscussionMessage(
        messages: messages,
        maxId: maxId,
        readInboxMaxId: readInboxMaxId,
        readOutboxMaxId: readOutboxMaxId,
        unreadCount: unreadCount,
        chats: chats,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2788431746, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.messages.length, 4,
          little: true, signed: true),
      this
          .messages.map((x) => x.getBytes())
          .expand((element) => element),
      (this.maxId == null || this.maxId == false)
          ? List<int>.empty()
          : [readBufferFromBigInt(this.maxId, 4, little: true, signed: true)]
              .expand((element) => element)
              .toList(),
      (this.readInboxMaxId == null || this.readInboxMaxId == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.readInboxMaxId, 4,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
      (this.readOutboxMaxId == null || this.readOutboxMaxId == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.readOutboxMaxId, 4,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
      readBufferFromBigInt(this.unreadCount, 4, little: true, signed: true),
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
    return 'DiscussionMessage{ID: $ID, messages: $messages, maxId: $maxId, readInboxMaxId: $readInboxMaxId, readOutboxMaxId: $readOutboxMaxId, unreadCount: $unreadCount, chats: $chats, users: $users}';
  }
}

class HistoryImport extends BaseConstructor {
  static const CONSTRUCTOR_ID = 375566091;
  static const SUBCLASS_OF_ID = 2978723082;
  final classType = "constructor";
  final ID = 375566091;
  BigInt id;

  HistoryImport({required this.id});

  static HistoryImport fromReader(BinaryReader reader) {
    var id = reader.readLong();
    return HistoryImport(id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(375566091, 4),
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
    return 'HistoryImport{ID: $ID, id: $id}';
  }
}

class HistoryImportParsed extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1578088377;
  static const SUBCLASS_OF_ID = 1538421259;
  final classType = "constructor";
  final ID = 1578088377;
  bool? pm;
  bool? group;
  String? title;

  HistoryImportParsed({this.pm, this.group, this.title});

  static HistoryImportParsed fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final pm = (flags & 1) == 1;
    final group = (flags & 2) == 2;
    var title;
    if ((flags & 4) == 4) {
      title = reader.tgReadString();
    } else {
      title = null;
    }
    return HistoryImportParsed(pm: pm, group: group, title: title);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1578088377, 4),
      [0, 0, 0, 0],
      (this.title == null || this.title == false)
          ? List<int>.empty()
          : [serializeBytes(this.title)].expand((element) => element).toList(),
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
    return 'HistoryImportParsed{ID: $ID, pm: $pm, group: $group, title: $title}';
  }
}

class AffectedFoundMessages extends BaseConstructor {
  static const CONSTRUCTOR_ID = 4019011180;
  static const SUBCLASS_OF_ID = 4162282798;
  final classType = "constructor";
  final ID = 4019011180;
  int pts;
  int ptsCount;
  int offset;
  List<int> messages;

  AffectedFoundMessages(
      {required this.pts,
      required this.ptsCount,
      required this.offset,
      required this.messages});

  static AffectedFoundMessages fromReader(BinaryReader reader) {
    var len;
    var pts = reader.readInt();
    var ptsCount = reader.readInt();
    var offset = reader.readInt();
    var _vectormessages = reader.readInt();
    if (_vectormessages != 481674261) throw Exception('Wrong vectorId');
    List<int> messages = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      messages.add(reader.readInt());
    }
    return AffectedFoundMessages(
        pts: pts, ptsCount: ptsCount, offset: offset, messages: messages);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4019011180, 4),
      readBufferFromBigInt(this.pts, 4, little: true, signed: true),
      readBufferFromBigInt(this.ptsCount, 4, little: true, signed: true),
      readBufferFromBigInt(this.offset, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.messages.length, 4,
          little: true, signed: true),
      this
          .messages.map((x) => readBufferFromBigInt(x, 4, little: true, signed: true))
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
    return 'AffectedFoundMessages{ID: $ID, pts: $pts, ptsCount: $ptsCount, offset: $offset, messages: $messages}';
  }
}

class ExportedChatInvites extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3183881676;
  static const SUBCLASS_OF_ID = 1614624881;
  final classType = "constructor";
  final ID = 3183881676;
  int count;
  List<ExportedChatInviteBase> invites;
  List<UserBase> users;

  ExportedChatInvites(
      {required this.count, required this.invites, required this.users});

  static ExportedChatInvites fromReader(BinaryReader reader) {
    var len;
    var count = reader.readInt();
    var _vectorinvites = reader.readInt();
    if (_vectorinvites != 481674261) throw Exception('Wrong vectorId');
    List<ExportedChatInviteBase> invites = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      invites.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return ExportedChatInvites(count: count, invites: invites, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3183881676, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.invites.length, 4, little: true, signed: true),
      this
          .invites.map((x) => x.getBytes())
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
    return 'ExportedChatInvites{ID: $ID, count: $count, invites: $invites, users: $users}';
  }
}

abstract class ExportedChatInviteBase extends BaseConstructor {}

class ExportedChatInvite extends ExportedChatInviteBase {
  static const CONSTRUCTOR_ID = 410107472;
  static const SUBCLASS_OF_ID = 2195510474;
  final classType = "constructor";
  final ID = 410107472;
  ExportedChatInviteBase invite;
  List<UserBase> users;

  ExportedChatInvite({required this.invite, required this.users});

  static ExportedChatInvite fromReader(BinaryReader reader) {
    var len;
    var invite = reader.tgReadObject();
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return ExportedChatInvite(invite: invite, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(410107472, 4),
      (this.invite.getBytes()),
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
    return 'ExportedChatInvite{ID: $ID, invite: $invite, users: $users}';
  }
}

class ExportedChatInviteReplaced extends ExportedChatInviteBase {
  static const CONSTRUCTOR_ID = 572915951;
  static const SUBCLASS_OF_ID = 2195510474;
  final classType = "constructor";
  final ID = 572915951;
  ExportedChatInviteBase invite;
  ExportedChatInviteBase newInvite;
  List<UserBase> users;

  ExportedChatInviteReplaced(
      {required this.invite, required this.newInvite, required this.users});

  static ExportedChatInviteReplaced fromReader(BinaryReader reader) {
    var len;
    var invite = reader.tgReadObject();
    var newInvite = reader.tgReadObject();
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return ExportedChatInviteReplaced(
        invite: invite, newInvite: newInvite, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(572915951, 4),
      (this.invite.getBytes()),
      (this.newInvite.getBytes()),
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
    return 'ExportedChatInviteReplaced{ID: $ID, invite: $invite, newInvite: $newInvite, users: $users}';
  }
}

class ChatInviteImporters extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2176233482;
  static const SUBCLASS_OF_ID = 3653012134;
  final classType = "constructor";
  final ID = 2176233482;
  int count;
  List<ChatInviteImporter> importers;
  List<UserBase> users;

  ChatInviteImporters(
      {required this.count, required this.importers, required this.users});

  static ChatInviteImporters fromReader(BinaryReader reader) {
    var len;
    var count = reader.readInt();
    var _vectorimporters = reader.readInt();
    if (_vectorimporters != 481674261) throw Exception('Wrong vectorId');
    List<ChatInviteImporter> importers = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      importers.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return ChatInviteImporters(
        count: count, importers: importers, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2176233482, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.importers.length, 4,
          little: true, signed: true),
      this
          .importers.map((x) => x.getBytes())
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
    return 'ChatInviteImporters{ID: $ID, count: $count, importers: $importers, users: $users}';
  }
}

class ChatAdminsWithInvites extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3063640791;
  static const SUBCLASS_OF_ID = 2405149995;
  final classType = "constructor";
  final ID = 3063640791;
  List<ChatAdminWithInvites> admins;
  List<UserBase> users;

  ChatAdminsWithInvites({required this.admins, required this.users});

  static ChatAdminsWithInvites fromReader(BinaryReader reader) {
    var len;
    var _vectoradmins = reader.readInt();
    if (_vectoradmins != 481674261) throw Exception('Wrong vectorId');
    List<ChatAdminWithInvites> admins = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      admins.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return ChatAdminsWithInvites(admins: admins, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3063640791, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.admins.length, 4, little: true, signed: true),
      this
          .admins.map((x) => x.getBytes())
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
    return 'ChatAdminsWithInvites{ID: $ID, admins: $admins, users: $users}';
  }
}

class CheckedHistoryImportPeer extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2723014423;
  static const SUBCLASS_OF_ID = 3091968823;
  final classType = "constructor";
  final ID = 2723014423;
  String confirmText;

  CheckedHistoryImportPeer({required this.confirmText});

  static CheckedHistoryImportPeer fromReader(BinaryReader reader) {
    var confirmText = reader.tgReadString();
    return CheckedHistoryImportPeer(confirmText: confirmText);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2723014423, 4),
      serializeBytes(this.confirmText),
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
    return 'CheckedHistoryImportPeer{ID: $ID, confirmText: $confirmText}';
  }
}

class SponsoredMessages extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1705297877;
  static const SUBCLASS_OF_ID = 2134993376;
  final classType = "constructor";
  final ID = 1705297877;
  List<SponsoredMessage> messages;
  List<ChatBase> chats;
  List<UserBase> users;

  SponsoredMessages(
      {required this.messages, required this.chats, required this.users});

  static SponsoredMessages fromReader(BinaryReader reader) {
    var len;
    var _vectormessages = reader.readInt();
    if (_vectormessages != 481674261) throw Exception('Wrong vectorId');
    List<SponsoredMessage> messages = [];
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
    return SponsoredMessages(messages: messages, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1705297877, 4),
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
    return 'SponsoredMessages{ID: $ID, messages: $messages, chats: $chats, users: $users}';
  }
}

class SearchResultsCalendar extends BaseConstructor {
  static const CONSTRUCTOR_ID = 343859772;
  static const SUBCLASS_OF_ID = 2462409743;
  final classType = "constructor";
  final ID = 343859772;
  bool? inexact;
  int count;
  int minDate;
  int minMsgId;
  int? offsetIdOffset;
  List<SearchResultsCalendarPeriod> periods;
  List<MessageBase> messages;
  List<ChatBase> chats;
  List<UserBase> users;

  SearchResultsCalendar(
      {this.inexact,
      required this.count,
      required this.minDate,
      required this.minMsgId,
      this.offsetIdOffset,
      required this.periods,
      required this.messages,
      required this.chats,
      required this.users});

  static SearchResultsCalendar fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final inexact = (flags & 1) == 1;
    var count = reader.readInt();
    var minDate = reader.readInt();
    var minMsgId = reader.readInt();
    var offsetIdOffset;
    if ((flags & 2) == 2) {
      offsetIdOffset = reader.readInt();
    } else {
      offsetIdOffset = null;
    }
    var _vectorperiods = reader.readInt();
    if (_vectorperiods != 481674261) throw Exception('Wrong vectorId');
    List<SearchResultsCalendarPeriod> periods = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      periods.add(reader.tgReadObject());
    }
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
    return SearchResultsCalendar(
        inexact: inexact,
        count: count,
        minDate: minDate,
        minMsgId: minMsgId,
        offsetIdOffset: offsetIdOffset,
        periods: periods,
        messages: messages,
        chats: chats,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(343859772, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(this.minDate, 4, little: true, signed: true),
      readBufferFromBigInt(this.minMsgId, 4, little: true, signed: true),
      (this.offsetIdOffset == null || this.offsetIdOffset == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.offsetIdOffset, 4,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.periods.length, 4, little: true, signed: true),
      this
          .periods.map((x) => x.getBytes())
          .expand((element) => element),
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
    return 'SearchResultsCalendar{ID: $ID, inexact: $inexact, count: $count, minDate: $minDate, minMsgId: $minMsgId, offsetIdOffset: $offsetIdOffset, periods: $periods, messages: $messages, chats: $chats, users: $users}';
  }
}

class SearchResultsPositions extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1404185519;
  static const SUBCLASS_OF_ID = 3647172749;
  final classType = "constructor";
  final ID = 1404185519;
  int count;
  List<SearchResultsPositionBase> positions;

  SearchResultsPositions({required this.count, required this.positions});

  static SearchResultsPositions fromReader(BinaryReader reader) {
    var len;
    var count = reader.readInt();
    var _vectorpositions = reader.readInt();
    if (_vectorpositions != 481674261) throw Exception('Wrong vectorId');
    List<SearchResultsPositionBase> positions = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      positions.add(reader.tgReadObject());
    }
    return SearchResultsPositions(count: count, positions: positions);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1404185519, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.positions.length, 4,
          little: true, signed: true),
      this
          .positions.map((x) => x.getBytes())
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
    return 'SearchResultsPositions{ID: $ID, count: $count, positions: $positions}';
  }
}

class PeerSettings extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1753266509;
  static const SUBCLASS_OF_ID = 1705179041;
  final classType = "constructor";
  final ID = 1753266509;
  PeerSettings settings;
  List<ChatBase> chats;
  List<UserBase> users;

  PeerSettings(
      {required this.settings, required this.chats, required this.users});

  static PeerSettings fromReader(BinaryReader reader) {
    var len;
    var settings = reader.tgReadObject();
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
    return PeerSettings(settings: settings, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1753266509, 4),
      (this.settings.getBytes()),
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
    return 'PeerSettings{ID: $ID, settings: $settings, chats: $chats, users: $users}';
  }
}

class MessageReactionsList extends BaseConstructor {
  static const CONSTRUCTOR_ID = 834488621;
  static const SUBCLASS_OF_ID = 1627186662;
  final classType = "constructor";
  final ID = 834488621;
  int count;
  List<MessagePeerReaction> reactions;
  List<ChatBase> chats;
  List<UserBase> users;
  String? nextOffset;

  MessageReactionsList(
      {required this.count,
      required this.reactions,
      required this.chats,
      required this.users,
      this.nextOffset});

  static MessageReactionsList fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var count = reader.readInt();
    var _vectorreactions = reader.readInt();
    if (_vectorreactions != 481674261) throw Exception('Wrong vectorId');
    List<MessagePeerReaction> reactions = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      reactions.add(reader.tgReadObject());
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
    var nextOffset;
    if ((flags & 1) == 1) {
      nextOffset = reader.tgReadString();
    } else {
      nextOffset = null;
    }
    return MessageReactionsList(
        count: count,
        reactions: reactions,
        chats: chats,
        users: users,
        nextOffset: nextOffset);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(834488621, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.reactions.length, 4,
          little: true, signed: true),
      this
          .reactions.map((x) => x.getBytes())
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
      (this.nextOffset == null || this.nextOffset == false)
          ? List<int>.empty()
          : [serializeBytes(this.nextOffset)]
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
    return 'MessageReactionsList{ID: $ID, count: $count, reactions: $reactions, chats: $chats, users: $users, nextOffset: $nextOffset}';
  }
}

abstract class AvailableReactionsBase extends BaseConstructor {}

class AvailableReactionsNotModified extends AvailableReactionsBase {
  static const CONSTRUCTOR_ID = 2668042583;
  static const SUBCLASS_OF_ID = 3827740034;
  final classType = "constructor";
  final ID = 2668042583;

  AvailableReactionsNotModified();

  static AvailableReactionsNotModified fromReader(BinaryReader reader) {
    return AvailableReactionsNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2668042583, 4),
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
    return 'AvailableReactionsNotModified{ID: $ID, }';
  }
}

class AvailableReactions extends AvailableReactionsBase {
  static const CONSTRUCTOR_ID = 1989032621;
  static const SUBCLASS_OF_ID = 3827740034;
  final classType = "constructor";
  final ID = 1989032621;
  int hash;
  List<AvailableReaction> reactions;

  AvailableReactions({required this.hash, required this.reactions});

  static AvailableReactions fromReader(BinaryReader reader) {
    var len;
    var hash = reader.readInt();
    var _vectorreactions = reader.readInt();
    if (_vectorreactions != 481674261) throw Exception('Wrong vectorId');
    List<AvailableReaction> reactions = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      reactions.add(reader.tgReadObject());
    }
    return AvailableReactions(hash: hash, reactions: reactions);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1989032621, 4),
      readBufferFromBigInt(this.hash, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.reactions.length, 4,
          little: true, signed: true),
      this
          .reactions.map((x) => x.getBytes())
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
    return 'AvailableReactions{ID: $ID, hash: $hash, reactions: $reactions}';
  }
}

abstract class TranslatedTextBase extends BaseConstructor {}

class TranslateNoResult extends TranslatedTextBase {
  static const CONSTRUCTOR_ID = 1741309751;
  static const SUBCLASS_OF_ID = 37897192;
  final classType = "constructor";
  final ID = 1741309751;

  TranslateNoResult();

  static TranslateNoResult fromReader(BinaryReader reader) {
    return TranslateNoResult();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1741309751, 4),
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
    return 'TranslateNoResult{ID: $ID, }';
  }
}

class TranslateResultText extends TranslatedTextBase {
  static const CONSTRUCTOR_ID = 2719283152;
  static const SUBCLASS_OF_ID = 37897192;
  final classType = "constructor";
  final ID = 2719283152;
  String text;

  TranslateResultText({required this.text});

  static TranslateResultText fromReader(BinaryReader reader) {
    var text = reader.tgReadString();
    return TranslateResultText(text: text);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2719283152, 4),
      serializeBytes(this.text),
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
    return 'TranslateResultText{ID: $ID, text: $text}';
  }
}

class TranscribedAudio extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2473929810;
  static const SUBCLASS_OF_ID = 565332278;
  final classType = "constructor";
  final ID = 2473929810;
  bool? pending;
  BigInt transcriptionId;
  String text;

  TranscribedAudio(
      {this.pending, required this.transcriptionId, required this.text});

  static TranscribedAudio fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final pending = (flags & 1) == 1;
    var transcriptionId = reader.readLong();
    var text = reader.tgReadString();
    return TranscribedAudio(
        pending: pending, transcriptionId: transcriptionId, text: text);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2473929810, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.transcriptionId, 8, little: true, signed: true),
      serializeBytes(this.text),
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
    return 'TranscribedAudio{ID: $ID, pending: $pending, transcriptionId: $transcriptionId, text: $text}';
  }
}
