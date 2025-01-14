// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_request.dart';
import '../constructors/constructors.dart';
import '../constructors/messages.dart' as messages_ns;
import '../constructors/channels.dart' as channels_ns;

class ReadHistory extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3423619383;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3423619383;
  InputChannelBase channel;
  int maxId;

  ReadHistory({required this.channel, required this.maxId});

  static ReadHistory fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var maxId = reader.readInt();
    return ReadHistory(channel: channel, maxId: maxId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3423619383, 4),
      (this.channel.getBytes()),
      readBufferFromBigInt(this.maxId, 4, little: true, signed: true),
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
    return 'ReadHistory{ID: $ID, channel: $channel, maxId: $maxId}';
  }
}

class DeleteMessages
    extends BaseRequest<messages_ns.AffectedMessages, dynamic> {
  static const CONSTRUCTOR_ID = 2227305806;
  static const SUBCLASS_OF_ID = 3469983854;
  final classType = "request";
  final ID = 2227305806;
  InputChannelBase channel;
  List<int> id;

  DeleteMessages({required this.channel, required this.id});

  static DeleteMessages fromReader(BinaryReader reader) {
    var len;
    var channel = reader.tgReadObject();
    var _vectorid = reader.readInt();
    if (_vectorid != 481674261) throw Exception('Wrong vectorId');
    List<int> id = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      id.add(reader.readInt());
    }
    return DeleteMessages(channel: channel, id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2227305806, 4),
      (this.channel.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.id.length, 4, little: true, signed: true),
      this
          .id.map((x) => readBufferFromBigInt(x, 4, little: true, signed: true))
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.AffectedMessages, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'DeleteMessages{ID: $ID, channel: $channel, id: $id}';
  }
}

class ReportSpam extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 4098523925;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 4098523925;
  InputChannelBase channel;
  InputPeerBase participant;
  List<int> id;

  ReportSpam(
      {required this.channel, required this.participant, required this.id});

  static ReportSpam fromReader(BinaryReader reader) {
    var len;
    var channel = reader.tgReadObject();
    var participant = reader.tgReadObject();
    var _vectorid = reader.readInt();
    if (_vectorid != 481674261) throw Exception('Wrong vectorId');
    List<int> id = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      id.add(reader.readInt());
    }
    return ReportSpam(channel: channel, participant: participant, id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4098523925, 4),
      (this.channel.getBytes()),
      (this.participant.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.id.length, 4, little: true, signed: true),
      this
          .id.map((x) => readBufferFromBigInt(x, 4, little: true, signed: true))
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
    return 'ReportSpam{ID: $ID, channel: $channel, participant: $participant, id: $id}';
  }
}

class GetMessages extends BaseRequest<messages_ns.MessagesBase, dynamic> {
  static const CONSTRUCTOR_ID = 2911672867;
  static const SUBCLASS_OF_ID = 3568569182;
  final classType = "request";
  final ID = 2911672867;
  InputChannelBase channel;
  List<InputMessageBase> id;

  GetMessages({required this.channel, required this.id});

  static GetMessages fromReader(BinaryReader reader) {
    var len;
    var channel = reader.tgReadObject();
    var _vectorid = reader.readInt();
    if (_vectorid != 481674261) throw Exception('Wrong vectorId');
    List<InputMessageBase> id = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      id.add(reader.tgReadObject());
    }
    return GetMessages(channel: channel, id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2911672867, 4),
      (this.channel.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.id.length, 4, little: true, signed: true),
      this
          .id.map((x) => x.getBytes())
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.MessagesBase, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetMessages{ID: $ID, channel: $channel, id: $id}';
  }
}

class GetParticipants
    extends BaseRequest<channels_ns.ChannelParticipantsBase, dynamic> {
  static const CONSTRUCTOR_ID = 2010044880;
  static const SUBCLASS_OF_ID = 3859443300;
  final classType = "request";
  final ID = 2010044880;
  InputChannelBase channel;
  ChannelParticipantsFilterBase filter;
  int offset;
  int limit;
  BigInt hash;

  GetParticipants(
      {required this.channel,
      required this.filter,
      required this.offset,
      required this.limit,
      required this.hash});

  static GetParticipants fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var filter = reader.tgReadObject();
    var offset = reader.readInt();
    var limit = reader.readInt();
    var hash = reader.readLong();
    return GetParticipants(
        channel: channel,
        filter: filter,
        offset: offset,
        limit: limit,
        hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2010044880, 4),
      (this.channel.getBytes()),
      (this.filter.getBytes()),
      readBufferFromBigInt(this.offset, 4, little: true, signed: true),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
      readBufferFromBigInt(this.hash, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<channels_ns.ChannelParticipantsBase, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetParticipants{ID: $ID, channel: $channel, filter: $filter, offset: $offset, limit: $limit, hash: $hash}';
  }
}

class GetParticipant
    extends BaseRequest<channels_ns.ChannelParticipant, dynamic> {
  static const CONSTRUCTOR_ID = 2695589062;
  static const SUBCLASS_OF_ID = 1717048602;
  final classType = "request";
  final ID = 2695589062;
  InputChannelBase channel;
  InputPeerBase participant;

  GetParticipant({required this.channel, required this.participant});

  static GetParticipant fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var participant = reader.tgReadObject();
    return GetParticipant(channel: channel, participant: participant);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2695589062, 4),
      (this.channel.getBytes()),
      (this.participant.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<channels_ns.ChannelParticipant, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetParticipant{ID: $ID, channel: $channel, participant: $participant}';
  }
}

class GetChannels extends BaseRequest<messages_ns.ChatsBase, dynamic> {
  static const CONSTRUCTOR_ID = 176122811;
  static const SUBCLASS_OF_ID = 2580925204;
  final classType = "request";
  final ID = 176122811;
  List<InputChannelBase> id;

  GetChannels({required this.id});

  static GetChannels fromReader(BinaryReader reader) {
    var len;
    var _vectorid = reader.readInt();
    if (_vectorid != 481674261) throw Exception('Wrong vectorId');
    List<InputChannelBase> id = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      id.add(reader.tgReadObject());
    }
    return GetChannels(id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(176122811, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.id.length, 4, little: true, signed: true),
      this
          .id.map((x) => x.getBytes())
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.ChatsBase, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetChannels{ID: $ID, id: $id}';
  }
}

class GetFullChannel extends BaseRequest<messages_ns.ChatFull, dynamic> {
  static const CONSTRUCTOR_ID = 141781513;
  static const SUBCLASS_OF_ID = 576344329;
  final classType = "request";
  final ID = 141781513;
  InputChannelBase channel;

  GetFullChannel({required this.channel});

  static GetFullChannel fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    return GetFullChannel(channel: channel);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(141781513, 4),
      (this.channel.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.ChatFull, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetFullChannel{ID: $ID, channel: $channel}';
  }
}

class CreateChannel extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 1029681423;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 1029681423;
  bool? broadcast;
  bool? megagroup;
  bool? forImport;
  String title;
  String about;
  InputGeoPointBase? geoPoint;
  String? address;

  CreateChannel(
      {this.broadcast,
      this.megagroup,
      this.forImport,
      required this.title,
      required this.about,
      this.geoPoint,
      this.address});

  static CreateChannel fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final broadcast = (flags & 1) == 1;
    final megagroup = (flags & 2) == 2;
    final forImport = (flags & 8) == 8;
    var title = reader.tgReadString();
    var about = reader.tgReadString();
    var geoPoint;
    if ((flags & 4) == 4) {
      geoPoint = reader.tgReadObject();
    } else {
      geoPoint = null;
    }
    var address;
    if ((flags & 4) == 4) {
      address = reader.tgReadString();
    } else {
      address = null;
    }
    return CreateChannel(
        broadcast: broadcast,
        megagroup: megagroup,
        forImport: forImport,
        title: title,
        about: about,
        geoPoint: geoPoint,
        address: address);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1029681423, 4),
      [0, 0, 0, 0],
      serializeBytes(this.title),
      serializeBytes(this.about),
      (this.geoPoint == null || this.geoPoint == false)
          ? List<int>.empty()
          : [(this.geoPoint!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.address == null || this.address == false)
          ? List<int>.empty()
          : [serializeBytes(this.address)]
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
    return 'CreateChannel{ID: $ID, broadcast: $broadcast, megagroup: $megagroup, forImport: $forImport, title: $title, about: $about, geoPoint: $geoPoint, address: $address}';
  }
}

class EditAdmin extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 3543959810;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 3543959810;
  InputChannelBase channel;
  InputUserBase userId;
  ChatAdminRights adminRights;
  String rank;

  EditAdmin(
      {required this.channel,
      required this.userId,
      required this.adminRights,
      required this.rank});

  static EditAdmin fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var userId = reader.tgReadObject();
    var adminRights = reader.tgReadObject();
    var rank = reader.tgReadString();
    return EditAdmin(
        channel: channel, userId: userId, adminRights: adminRights, rank: rank);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3543959810, 4),
      (this.channel.getBytes()),
      (this.userId.getBytes()),
      (this.adminRights.getBytes()),
      serializeBytes(this.rank),
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
    return 'EditAdmin{ID: $ID, channel: $channel, userId: $userId, adminRights: $adminRights, rank: $rank}';
  }
}

class EditTitle extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 1450044624;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 1450044624;
  InputChannelBase channel;
  String title;

  EditTitle({required this.channel, required this.title});

  static EditTitle fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var title = reader.tgReadString();
    return EditTitle(channel: channel, title: title);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1450044624, 4),
      (this.channel.getBytes()),
      serializeBytes(this.title),
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
    return 'EditTitle{ID: $ID, channel: $channel, title: $title}';
  }
}

class EditPhoto extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 4046346185;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 4046346185;
  InputChannelBase channel;
  InputChatPhotoBase photo;

  EditPhoto({required this.channel, required this.photo});

  static EditPhoto fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var photo = reader.tgReadObject();
    return EditPhoto(channel: channel, photo: photo);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4046346185, 4),
      (this.channel.getBytes()),
      (this.photo.getBytes()),
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
    return 'EditPhoto{ID: $ID, channel: $channel, photo: $photo}';
  }
}

class CheckUsername extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 283557164;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 283557164;
  InputChannelBase channel;
  String username;

  CheckUsername({required this.channel, required this.username});

  static CheckUsername fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var username = reader.tgReadString();
    return CheckUsername(channel: channel, username: username);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(283557164, 4),
      (this.channel.getBytes()),
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
    return 'CheckUsername{ID: $ID, channel: $channel, username: $username}';
  }
}

class UpdateUsername extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 890549214;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 890549214;
  InputChannelBase channel;
  String username;

  UpdateUsername({required this.channel, required this.username});

  static UpdateUsername fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var username = reader.tgReadString();
    return UpdateUsername(channel: channel, username: username);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(890549214, 4),
      (this.channel.getBytes()),
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
    return 'UpdateUsername{ID: $ID, channel: $channel, username: $username}';
  }
}

class JoinChannel extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 615851205;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 615851205;
  InputChannelBase channel;

  JoinChannel({required this.channel});

  static JoinChannel fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    return JoinChannel(channel: channel);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(615851205, 4),
      (this.channel.getBytes()),
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
    return 'JoinChannel{ID: $ID, channel: $channel}';
  }
}

class LeaveChannel extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 4164332181;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 4164332181;
  InputChannelBase channel;

  LeaveChannel({required this.channel});

  static LeaveChannel fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    return LeaveChannel(channel: channel);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4164332181, 4),
      (this.channel.getBytes()),
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
    return 'LeaveChannel{ID: $ID, channel: $channel}';
  }
}

class InviteToChannel extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 429865580;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 429865580;
  InputChannelBase channel;
  List<InputUserBase> users;

  InviteToChannel({required this.channel, required this.users});

  static InviteToChannel fromReader(BinaryReader reader) {
    var len;
    var channel = reader.tgReadObject();
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<InputUserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return InviteToChannel(channel: channel, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(429865580, 4),
      (this.channel.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
          .expand((element) => element),
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
    return 'InviteToChannel{ID: $ID, channel: $channel, users: $users}';
  }
}

class DeleteChannel extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 3222347747;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 3222347747;
  InputChannelBase channel;

  DeleteChannel({required this.channel});

  static DeleteChannel fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    return DeleteChannel(channel: channel);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3222347747, 4),
      (this.channel.getBytes()),
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
    return 'DeleteChannel{ID: $ID, channel: $channel}';
  }
}

class ExportMessageLink extends BaseRequest<ExportedMessageLink, dynamic> {
  static const CONSTRUCTOR_ID = 3862932971;
  static const SUBCLASS_OF_ID = 3739632844;
  final classType = "request";
  final ID = 3862932971;
  bool? grouped;
  bool? thread;
  InputChannelBase channel;
  int id;

  ExportMessageLink(
      {this.grouped, this.thread, required this.channel, required this.id});

  static ExportMessageLink fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final grouped = (flags & 1) == 1;
    final thread = (flags & 2) == 2;
    var channel = reader.tgReadObject();
    var id = reader.readInt();
    return ExportMessageLink(
        grouped: grouped, thread: thread, channel: channel, id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3862932971, 4),
      [0, 0, 0, 0],
      (this.channel.getBytes()),
      readBufferFromBigInt(this.id, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<ExportedMessageLink, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'ExportMessageLink{ID: $ID, grouped: $grouped, thread: $thread, channel: $channel, id: $id}';
  }
}

class ToggleSignatures extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 527021574;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 527021574;
  InputChannelBase channel;
  bool enabled;

  ToggleSignatures({required this.channel, required this.enabled});

  static ToggleSignatures fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var enabled = reader.tgReadBool();
    return ToggleSignatures(channel: channel, enabled: enabled);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(527021574, 4),
      (this.channel.getBytes()),
      [this.enabled == true ? 0xb5757299 : 0x379779bc],
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
    return 'ToggleSignatures{ID: $ID, channel: $channel, enabled: $enabled}';
  }
}

class GetAdminedPublicChannels
    extends BaseRequest<messages_ns.ChatsBase, dynamic> {
  static const CONSTRUCTOR_ID = 4172297903;
  static const SUBCLASS_OF_ID = 2580925204;
  final classType = "request";
  final ID = 4172297903;
  bool? byLocation;
  bool? checkLimit;

  GetAdminedPublicChannels({this.byLocation, this.checkLimit});

  static GetAdminedPublicChannels fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final byLocation = (flags & 1) == 1;
    final checkLimit = (flags & 2) == 2;
    return GetAdminedPublicChannels(
        byLocation: byLocation, checkLimit: checkLimit);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4172297903, 4),
      [0, 0, 0, 0],
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.ChatsBase, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetAdminedPublicChannels{ID: $ID, byLocation: $byLocation, checkLimit: $checkLimit}';
  }
}

class EditBanned extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 2531708289;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 2531708289;
  InputChannelBase channel;
  InputPeerBase participant;
  ChatBannedRights bannedRights;

  EditBanned(
      {required this.channel,
      required this.participant,
      required this.bannedRights});

  static EditBanned fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var participant = reader.tgReadObject();
    var bannedRights = reader.tgReadObject();
    return EditBanned(
        channel: channel, participant: participant, bannedRights: bannedRights);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2531708289, 4),
      (this.channel.getBytes()),
      (this.participant.getBytes()),
      (this.bannedRights.getBytes()),
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
    return 'EditBanned{ID: $ID, channel: $channel, participant: $participant, bannedRights: $bannedRights}';
  }
}

class GetAdminLog extends BaseRequest<channels_ns.AdminLogResults, dynamic> {
  static const CONSTRUCTOR_ID = 870184064;
  static const SUBCLASS_OF_ID = 1374713532;
  final classType = "request";
  final ID = 870184064;
  InputChannelBase channel;
  String q;
  ChannelAdminLogEventsFilter? eventsFilter;
  List<InputUserBase>? admins;
  BigInt maxId;
  BigInt minId;
  int limit;

  GetAdminLog(
      {required this.channel,
      required this.q,
      this.eventsFilter,
      this.admins,
      required this.maxId,
      required this.minId,
      required this.limit});

  static GetAdminLog fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var channel = reader.tgReadObject();
    var q = reader.tgReadString();
    var eventsFilter;
    if ((flags & 1) == 1) {
      eventsFilter = reader.tgReadObject();
    } else {
      eventsFilter = null;
    }
    var admins;
    if ((flags & 2) == 2) {
      var _vectoradmins = reader.readInt();
      if (_vectoradmins != 481674261) throw Exception('Wrong vectorId');
      List<InputUserBase> admins = [];
      len = reader.readInt();
      for (var i = 0; i < len; i++) {
        admins.add(reader.tgReadObject());
      }
    } else {
      admins = null;
    }
    var maxId = reader.readLong();
    var minId = reader.readLong();
    var limit = reader.readInt();
    return GetAdminLog(
        channel: channel,
        q: q,
        eventsFilter: eventsFilter,
        admins: admins,
        maxId: maxId,
        minId: minId,
        limit: limit);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(870184064, 4),
      [0, 0, 0, 0],
      (this.channel.getBytes()),
      serializeBytes(this.q),
      (this.eventsFilter == null || this.eventsFilter == false)
          ? List<int>.empty()
          : [(this.eventsFilter!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.admins == null || this.admins == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
              readBufferFromBigInt(this.admins!.length, 4,
                  little: true, signed: true),
              this
                  .admins!
                  .map((x) => x.getBytes())
                  .expand((element) => element)
            ].expand((element) => element).toList(),
      readBufferFromBigInt(this.maxId, 8, little: true, signed: true),
      readBufferFromBigInt(this.minId, 8, little: true, signed: true),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<channels_ns.AdminLogResults, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetAdminLog{ID: $ID, channel: $channel, q: $q, eventsFilter: $eventsFilter, admins: $admins, maxId: $maxId, minId: $minId, limit: $limit}';
  }
}

class SetStickers extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3935085817;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3935085817;
  InputChannelBase channel;
  InputStickerSetBase stickerset;

  SetStickers({required this.channel, required this.stickerset});

  static SetStickers fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var stickerset = reader.tgReadObject();
    return SetStickers(channel: channel, stickerset: stickerset);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3935085817, 4),
      (this.channel.getBytes()),
      (this.stickerset.getBytes()),
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
    return 'SetStickers{ID: $ID, channel: $channel, stickerset: $stickerset}';
  }
}

class ReadMessageContents extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3937786936;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3937786936;
  InputChannelBase channel;
  List<int> id;

  ReadMessageContents({required this.channel, required this.id});

  static ReadMessageContents fromReader(BinaryReader reader) {
    var len;
    var channel = reader.tgReadObject();
    var _vectorid = reader.readInt();
    if (_vectorid != 481674261) throw Exception('Wrong vectorId');
    List<int> id = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      id.add(reader.readInt());
    }
    return ReadMessageContents(channel: channel, id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3937786936, 4),
      (this.channel.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.id.length, 4, little: true, signed: true),
      this
          .id.map((x) => readBufferFromBigInt(x, 4, little: true, signed: true))
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
    return 'ReadMessageContents{ID: $ID, channel: $channel, id: $id}';
  }
}

class DeleteHistory extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 2611648071;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 2611648071;
  bool? forEveryone;
  InputChannelBase channel;
  int maxId;

  DeleteHistory({this.forEveryone, required this.channel, required this.maxId});

  static DeleteHistory fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final forEveryone = (flags & 1) == 1;
    var channel = reader.tgReadObject();
    var maxId = reader.readInt();
    return DeleteHistory(
        forEveryone: forEveryone, channel: channel, maxId: maxId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2611648071, 4),
      [0, 0, 0, 0],
      (this.channel.getBytes()),
      readBufferFromBigInt(this.maxId, 4, little: true, signed: true),
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
    return 'DeleteHistory{ID: $ID, forEveryone: $forEveryone, channel: $channel, maxId: $maxId}';
  }
}

class TogglePreHistoryHidden extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 3938171212;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 3938171212;
  InputChannelBase channel;
  bool enabled;

  TogglePreHistoryHidden({required this.channel, required this.enabled});

  static TogglePreHistoryHidden fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var enabled = reader.tgReadBool();
    return TogglePreHistoryHidden(channel: channel, enabled: enabled);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3938171212, 4),
      (this.channel.getBytes()),
      [this.enabled == true ? 0xb5757299 : 0x379779bc],
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
    return 'TogglePreHistoryHidden{ID: $ID, channel: $channel, enabled: $enabled}';
  }
}

class GetLeftChannels extends BaseRequest<messages_ns.ChatsBase, dynamic> {
  static const CONSTRUCTOR_ID = 2202135744;
  static const SUBCLASS_OF_ID = 2580925204;
  final classType = "request";
  final ID = 2202135744;
  int offset;

  GetLeftChannels({required this.offset});

  static GetLeftChannels fromReader(BinaryReader reader) {
    var offset = reader.readInt();
    return GetLeftChannels(offset: offset);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2202135744, 4),
      readBufferFromBigInt(this.offset, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.ChatsBase, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetLeftChannels{ID: $ID, offset: $offset}';
  }
}

class GetGroupsForDiscussion
    extends BaseRequest<messages_ns.ChatsBase, dynamic> {
  static const CONSTRUCTOR_ID = 4124758904;
  static const SUBCLASS_OF_ID = 2580925204;
  final classType = "request";
  final ID = 4124758904;

  GetGroupsForDiscussion();

  static GetGroupsForDiscussion fromReader(BinaryReader reader) {
    return GetGroupsForDiscussion();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4124758904, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.ChatsBase, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetGroupsForDiscussion{ID: $ID, }';
  }
}

class SetDiscussionGroup extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1079520178;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1079520178;
  InputChannelBase broadcast;
  InputChannelBase group;

  SetDiscussionGroup({required this.broadcast, required this.group});

  static SetDiscussionGroup fromReader(BinaryReader reader) {
    var broadcast = reader.tgReadObject();
    var group = reader.tgReadObject();
    return SetDiscussionGroup(broadcast: broadcast, group: group);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1079520178, 4),
      (this.broadcast.getBytes()),
      (this.group.getBytes()),
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
    return 'SetDiscussionGroup{ID: $ID, broadcast: $broadcast, group: $group}';
  }
}

class EditCreator extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 2402864415;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 2402864415;
  InputChannelBase channel;
  InputUserBase userId;
  InputCheckPasswordSRPBase password;

  EditCreator(
      {required this.channel, required this.userId, required this.password});

  static EditCreator fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var userId = reader.tgReadObject();
    var password = reader.tgReadObject();
    return EditCreator(channel: channel, userId: userId, password: password);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2402864415, 4),
      (this.channel.getBytes()),
      (this.userId.getBytes()),
      (this.password.getBytes()),
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
    return 'EditCreator{ID: $ID, channel: $channel, userId: $userId, password: $password}';
  }
}

class EditLocation extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1491484525;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1491484525;
  InputChannelBase channel;
  InputGeoPointBase geoPoint;
  String address;

  EditLocation(
      {required this.channel, required this.geoPoint, required this.address});

  static EditLocation fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var geoPoint = reader.tgReadObject();
    var address = reader.tgReadString();
    return EditLocation(channel: channel, geoPoint: geoPoint, address: address);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1491484525, 4),
      (this.channel.getBytes()),
      (this.geoPoint.getBytes()),
      serializeBytes(this.address),
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
    return 'EditLocation{ID: $ID, channel: $channel, geoPoint: $geoPoint, address: $address}';
  }
}

class ToggleSlowMode extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 3990134512;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 3990134512;
  InputChannelBase channel;
  int seconds;

  ToggleSlowMode({required this.channel, required this.seconds});

  static ToggleSlowMode fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var seconds = reader.readInt();
    return ToggleSlowMode(channel: channel, seconds: seconds);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3990134512, 4),
      (this.channel.getBytes()),
      readBufferFromBigInt(this.seconds, 4, little: true, signed: true),
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
    return 'ToggleSlowMode{ID: $ID, channel: $channel, seconds: $seconds}';
  }
}

class GetInactiveChannels
    extends BaseRequest<messages_ns.InactiveChats, dynamic> {
  static const CONSTRUCTOR_ID = 300429806;
  static const SUBCLASS_OF_ID = 2348013524;
  final classType = "request";
  final ID = 300429806;

  GetInactiveChannels();

  static GetInactiveChannels fromReader(BinaryReader reader) {
    return GetInactiveChannels();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(300429806, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.InactiveChats, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetInactiveChannels{ID: $ID, }';
  }
}

class ConvertToGigagroup extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 187239529;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 187239529;
  InputChannelBase channel;

  ConvertToGigagroup({required this.channel});

  static ConvertToGigagroup fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    return ConvertToGigagroup(channel: channel);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(187239529, 4),
      (this.channel.getBytes()),
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
    return 'ConvertToGigagroup{ID: $ID, channel: $channel}';
  }
}

class ViewSponsoredMessage extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3199130516;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3199130516;
  InputChannelBase channel;
  List<int> randomId;

  ViewSponsoredMessage({required this.channel, required this.randomId});

  static ViewSponsoredMessage fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var randomId = reader.tgReadBytes();
    return ViewSponsoredMessage(channel: channel, randomId: randomId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3199130516, 4),
      (this.channel.getBytes()),
      serializeBytes(this.randomId),
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
    return 'ViewSponsoredMessage{ID: $ID, channel: $channel, randomId: ${randomId.sublist(0, 5)}<...${randomId.length}>}';
  }
}

class GetSponsoredMessages
    extends BaseRequest<messages_ns.SponsoredMessages, dynamic> {
  static const CONSTRUCTOR_ID = 3961589695;
  static const SUBCLASS_OF_ID = 2134993376;
  final classType = "request";
  final ID = 3961589695;
  InputChannelBase channel;

  GetSponsoredMessages({required this.channel});

  static GetSponsoredMessages fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    return GetSponsoredMessages(channel: channel);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3961589695, 4),
      (this.channel.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.SponsoredMessages, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetSponsoredMessages{ID: $ID, channel: $channel}';
  }
}

class GetSendAs extends BaseRequest<channels_ns.SendAsPeers, dynamic> {
  static const CONSTRUCTOR_ID = 231174382;
  static const SUBCLASS_OF_ID = 952864033;
  final classType = "request";
  final ID = 231174382;
  InputPeerBase peer;

  GetSendAs({required this.peer});

  static GetSendAs fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    return GetSendAs(peer: peer);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(231174382, 4),
      (this.peer.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<channels_ns.SendAsPeers, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetSendAs{ID: $ID, peer: $peer}';
  }
}

class DeleteParticipantHistory
    extends BaseRequest<messages_ns.AffectedHistory, dynamic> {
  static const CONSTRUCTOR_ID = 913655003;
  static const SUBCLASS_OF_ID = 743031062;
  final classType = "request";
  final ID = 913655003;
  InputChannelBase channel;
  InputPeerBase participant;

  DeleteParticipantHistory({required this.channel, required this.participant});

  static DeleteParticipantHistory fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var participant = reader.tgReadObject();
    return DeleteParticipantHistory(channel: channel, participant: participant);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(913655003, 4),
      (this.channel.getBytes()),
      (this.participant.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.AffectedHistory, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'DeleteParticipantHistory{ID: $ID, channel: $channel, participant: $participant}';
  }
}

class ToggleJoinToSend extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 3838547328;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 3838547328;
  InputChannelBase channel;
  bool enabled;

  ToggleJoinToSend({required this.channel, required this.enabled});

  static ToggleJoinToSend fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var enabled = reader.tgReadBool();
    return ToggleJoinToSend(channel: channel, enabled: enabled);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3838547328, 4),
      (this.channel.getBytes()),
      [this.enabled == true ? 0xb5757299 : 0x379779bc],
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
    return 'ToggleJoinToSend{ID: $ID, channel: $channel, enabled: $enabled}';
  }
}

class ToggleJoinRequest extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 1277789622;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 1277789622;
  InputChannelBase channel;
  bool enabled;

  ToggleJoinRequest({required this.channel, required this.enabled});

  static ToggleJoinRequest fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var enabled = reader.tgReadBool();
    return ToggleJoinRequest(channel: channel, enabled: enabled);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1277789622, 4),
      (this.channel.getBytes()),
      [this.enabled == true ? 0xb5757299 : 0x379779bc],
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
    return 'ToggleJoinRequest{ID: $ID, channel: $channel, enabled: $enabled}';
  }
}
