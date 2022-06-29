// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_request.dart';
import '../constructors/constructors.dart';
import '../constructors/phone.dart' as phone_ns;

class GetCallConfig extends BaseRequest<DataJSON, dynamic> {
  static const CONSTRUCTOR_ID = 1430593449;
  static const SUBCLASS_OF_ID = 2902676200;
  final classType = "request";
  final ID = 1430593449;

  GetCallConfig();

  static GetCallConfig fromReader(BinaryReader reader) {
    return GetCallConfig();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1430593449, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<DataJSON, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetCallConfig{ID: $ID, }';
  }
}

class RequestCall extends BaseRequest<phone_ns.PhoneCall, dynamic> {
  static const CONSTRUCTOR_ID = 1124046573;
  static const SUBCLASS_OF_ID = 3565878863;
  final classType = "request";
  final ID = 1124046573;
  bool? video;
  InputUserBase userId;
  int randomId;
  List<int> gAHash;
  PhoneCallProtocol protocol;

  RequestCall(
      {this.video,
      required this.userId,
      required this.randomId,
      required this.gAHash,
      required this.protocol});

  static RequestCall fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final video = (flags & 1) == 1;
    var userId = reader.tgReadObject();
    var randomId = reader.readInt();
    var gAHash = reader.tgReadBytes();
    var protocol = reader.tgReadObject();
    return RequestCall(
        video: video,
        userId: userId,
        randomId: randomId,
        gAHash: gAHash,
        protocol: protocol);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1124046573, 4),
      [0, 0, 0, 0],
      (this.userId.getBytes()),
      readBufferFromBigInt(this.randomId, 4, little: true, signed: true),
      serializeBytes(this.gAHash),
      (this.protocol.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<phone_ns.PhoneCall, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'RequestCall{ID: $ID, video: $video, userId: $userId, randomId: $randomId, gAHash: ${gAHash.sublist(0, 5)}<...${gAHash.length}>, protocol: $protocol}';
  }
}

class AcceptCall extends BaseRequest<phone_ns.PhoneCall, dynamic> {
  static const CONSTRUCTOR_ID = 1003664544;
  static const SUBCLASS_OF_ID = 3565878863;
  final classType = "request";
  final ID = 1003664544;
  InputPhoneCall peer;
  List<int> gB;
  PhoneCallProtocol protocol;

  AcceptCall({required this.peer, required this.gB, required this.protocol});

  static AcceptCall fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    var gB = reader.tgReadBytes();
    var protocol = reader.tgReadObject();
    return AcceptCall(peer: peer, gB: gB, protocol: protocol);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1003664544, 4),
      (this.peer.getBytes()),
      serializeBytes(this.gB),
      (this.protocol.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<phone_ns.PhoneCall, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'AcceptCall{ID: $ID, peer: $peer, gB: ${gB.sublist(0, 5)}<...${gB.length}>, protocol: $protocol}';
  }
}

class ConfirmCall extends BaseRequest<phone_ns.PhoneCall, dynamic> {
  static const CONSTRUCTOR_ID = 788404002;
  static const SUBCLASS_OF_ID = 3565878863;
  final classType = "request";
  final ID = 788404002;
  InputPhoneCall peer;
  List<int> gA;
  BigInt keyFingerprint;
  PhoneCallProtocol protocol;

  ConfirmCall(
      {required this.peer,
      required this.gA,
      required this.keyFingerprint,
      required this.protocol});

  static ConfirmCall fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    var gA = reader.tgReadBytes();
    var keyFingerprint = reader.readLong();
    var protocol = reader.tgReadObject();
    return ConfirmCall(
        peer: peer, gA: gA, keyFingerprint: keyFingerprint, protocol: protocol);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(788404002, 4),
      (this.peer.getBytes()),
      serializeBytes(this.gA),
      readBufferFromBigInt(this.keyFingerprint, 8, little: true, signed: true),
      (this.protocol.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<phone_ns.PhoneCall, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'ConfirmCall{ID: $ID, peer: $peer, gA: ${gA.sublist(0, 5)}<...${gA.length}>, keyFingerprint: $keyFingerprint, protocol: $protocol}';
  }
}

class ReceivedCall extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 399855457;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 399855457;
  InputPhoneCall peer;

  ReceivedCall({required this.peer});

  static ReceivedCall fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    return ReceivedCall(peer: peer);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(399855457, 4),
      (this.peer.getBytes()),
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
    return 'ReceivedCall{ID: $ID, peer: $peer}';
  }
}

class DiscardCall extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 2999697856;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 2999697856;
  bool? video;
  InputPhoneCall peer;
  int duration;
  PhoneCallDiscardReasonBase reason;
  BigInt connectionId;

  DiscardCall(
      {this.video,
      required this.peer,
      required this.duration,
      required this.reason,
      required this.connectionId});

  static DiscardCall fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final video = (flags & 1) == 1;
    var peer = reader.tgReadObject();
    var duration = reader.readInt();
    var reason = reader.tgReadObject();
    var connectionId = reader.readLong();
    return DiscardCall(
        video: video,
        peer: peer,
        duration: duration,
        reason: reason,
        connectionId: connectionId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2999697856, 4),
      [0, 0, 0, 0],
      (this.peer.getBytes()),
      readBufferFromBigInt(this.duration, 4, little: true, signed: true),
      (this.reason.getBytes()),
      readBufferFromBigInt(this.connectionId, 8, little: true, signed: true),
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
    return 'DiscardCall{ID: $ID, video: $video, peer: $peer, duration: $duration, reason: $reason, connectionId: $connectionId}';
  }
}

class SetCallRating extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 1508562471;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 1508562471;
  bool? userInitiative;
  InputPhoneCall peer;
  int rating;
  String comment;

  SetCallRating(
      {this.userInitiative,
      required this.peer,
      required this.rating,
      required this.comment});

  static SetCallRating fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final userInitiative = (flags & 1) == 1;
    var peer = reader.tgReadObject();
    var rating = reader.readInt();
    var comment = reader.tgReadString();
    return SetCallRating(
        userInitiative: userInitiative,
        peer: peer,
        rating: rating,
        comment: comment);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1508562471, 4),
      [0, 0, 0, 0],
      (this.peer.getBytes()),
      readBufferFromBigInt(this.rating, 4, little: true, signed: true),
      serializeBytes(this.comment),
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
    return 'SetCallRating{ID: $ID, userInitiative: $userInitiative, peer: $peer, rating: $rating, comment: $comment}';
  }
}

class SaveCallDebug extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 662363518;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 662363518;
  InputPhoneCall peer;
  DataJSON debug;

  SaveCallDebug({required this.peer, required this.debug});

  static SaveCallDebug fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    var debug = reader.tgReadObject();
    return SaveCallDebug(peer: peer, debug: debug);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(662363518, 4),
      (this.peer.getBytes()),
      (this.debug.getBytes()),
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
    return 'SaveCallDebug{ID: $ID, peer: $peer, debug: $debug}';
  }
}

class SendSignalingData extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 4286223235;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 4286223235;
  InputPhoneCall peer;
  List<int> data;

  SendSignalingData({required this.peer, required this.data});

  static SendSignalingData fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    var data = reader.tgReadBytes();
    return SendSignalingData(peer: peer, data: data);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4286223235, 4),
      (this.peer.getBytes()),
      serializeBytes(this.data),
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
    return 'SendSignalingData{ID: $ID, peer: $peer, data: ${data.sublist(0, 5)}<...${data.length}>}';
  }
}

class CreateGroupCall extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 1221445336;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 1221445336;
  bool? rtmpStream;
  InputPeerBase peer;
  int randomId;
  String? title;
  int? scheduleDate;

  CreateGroupCall(
      {this.rtmpStream,
      required this.peer,
      required this.randomId,
      this.title,
      this.scheduleDate});

  static CreateGroupCall fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final rtmpStream = (flags & 4) == 4;
    var peer = reader.tgReadObject();
    var randomId = reader.readInt();
    var title;
    if ((flags & 1) == 1) {
      title = reader.tgReadString();
    } else {
      title = null;
    }
    var scheduleDate;
    if ((flags & 2) == 2) {
      scheduleDate = reader.readInt();
    } else {
      scheduleDate = null;
    }
    return CreateGroupCall(
        rtmpStream: rtmpStream,
        peer: peer,
        randomId: randomId,
        title: title,
        scheduleDate: scheduleDate);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1221445336, 4),
      [0, 0, 0, 0],
      (this.peer.getBytes()),
      readBufferFromBigInt(this.randomId, 4, little: true, signed: true),
      (this.title == null || this.title == false)
          ? List<int>.empty()
          : [serializeBytes(this.title)].expand((element) => element).toList(),
      (this.scheduleDate == null || this.scheduleDate == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.scheduleDate, 4,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
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
    return 'CreateGroupCall{ID: $ID, rtmpStream: $rtmpStream, peer: $peer, randomId: $randomId, title: $title, scheduleDate: $scheduleDate}';
  }
}

class JoinGroupCall extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 2972909435;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 2972909435;
  bool? muted;
  bool? videoStopped;
  InputGroupCall call;
  InputPeerBase joinAs;
  String? inviteHash;
  DataJSON params;

  JoinGroupCall(
      {this.muted,
      this.videoStopped,
      required this.call,
      required this.joinAs,
      this.inviteHash,
      required this.params});

  static JoinGroupCall fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final muted = (flags & 1) == 1;
    final videoStopped = (flags & 4) == 4;
    var call = reader.tgReadObject();
    var joinAs = reader.tgReadObject();
    var inviteHash;
    if ((flags & 2) == 2) {
      inviteHash = reader.tgReadString();
    } else {
      inviteHash = null;
    }
    var params = reader.tgReadObject();
    return JoinGroupCall(
        muted: muted,
        videoStopped: videoStopped,
        call: call,
        joinAs: joinAs,
        inviteHash: inviteHash,
        params: params);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2972909435, 4),
      [0, 0, 0, 0],
      (this.call.getBytes()),
      (this.joinAs.getBytes()),
      (this.inviteHash == null || this.inviteHash == false)
          ? List<int>.empty()
          : [serializeBytes(this.inviteHash)]
              .expand((element) => element)
              .toList(),
      (this.params.getBytes()),
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
    return 'JoinGroupCall{ID: $ID, muted: $muted, videoStopped: $videoStopped, call: $call, joinAs: $joinAs, inviteHash: $inviteHash, params: $params}';
  }
}

class LeaveGroupCall extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 1342404601;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 1342404601;
  InputGroupCall call;
  int source;

  LeaveGroupCall({required this.call, required this.source});

  static LeaveGroupCall fromReader(BinaryReader reader) {
    var call = reader.tgReadObject();
    var source = reader.readInt();
    return LeaveGroupCall(call: call, source: source);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1342404601, 4),
      (this.call.getBytes()),
      readBufferFromBigInt(this.source, 4, little: true, signed: true),
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
    return 'LeaveGroupCall{ID: $ID, call: $call, source: $source}';
  }
}

class InviteToGroupCall extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 2067345760;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 2067345760;
  InputGroupCall call;
  List<InputUserBase> users;

  InviteToGroupCall({required this.call, required this.users});

  static InviteToGroupCall fromReader(BinaryReader reader) {
    var len;
    var call = reader.tgReadObject();
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<InputUserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return InviteToGroupCall(call: call, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2067345760, 4),
      (this.call.getBytes()),
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
    return 'InviteToGroupCall{ID: $ID, call: $call, users: $users}';
  }
}

class DiscardGroupCall extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 2054648117;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 2054648117;
  InputGroupCall call;

  DiscardGroupCall({required this.call});

  static DiscardGroupCall fromReader(BinaryReader reader) {
    var call = reader.tgReadObject();
    return DiscardGroupCall(call: call);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2054648117, 4),
      (this.call.getBytes()),
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
    return 'DiscardGroupCall{ID: $ID, call: $call}';
  }
}

class ToggleGroupCallSettings extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 1958458429;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 1958458429;
  bool? resetInviteHash;
  InputGroupCall call;
  bool? joinMuted;

  ToggleGroupCallSettings(
      {this.resetInviteHash, required this.call, this.joinMuted});

  static ToggleGroupCallSettings fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final resetInviteHash = (flags & 2) == 2;
    var call = reader.tgReadObject();
    var joinMuted;
    if ((flags & 1) == 1) {
      joinMuted = reader.tgReadBool();
    } else {
      joinMuted = null;
    }
    return ToggleGroupCallSettings(
        resetInviteHash: resetInviteHash, call: call, joinMuted: joinMuted);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1958458429, 4),
      [0, 0, 0, 0],
      (this.call.getBytes()),
      (this.joinMuted == null || this.joinMuted == false)
          ? List<int>.empty()
          : [
              [this.joinMuted == true ? 0xb5757299 : 0x379779bc]
            ].expand((element) => element).toList(),
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
    return 'ToggleGroupCallSettings{ID: $ID, resetInviteHash: $resetInviteHash, call: $call, joinMuted: $joinMuted}';
  }
}

class GetGroupCall extends BaseRequest<phone_ns.GroupCall, dynamic> {
  static const CONSTRUCTOR_ID = 68699611;
  static const SUBCLASS_OF_ID = 809572030;
  final classType = "request";
  final ID = 68699611;
  InputGroupCall call;
  int limit;

  GetGroupCall({required this.call, required this.limit});

  static GetGroupCall fromReader(BinaryReader reader) {
    var call = reader.tgReadObject();
    var limit = reader.readInt();
    return GetGroupCall(call: call, limit: limit);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(68699611, 4),
      (this.call.getBytes()),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<phone_ns.GroupCall, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetGroupCall{ID: $ID, call: $call, limit: $limit}';
  }
}

class GetGroupParticipants
    extends BaseRequest<phone_ns.GroupParticipants, dynamic> {
  static const CONSTRUCTOR_ID = 3310934187;
  static const SUBCLASS_OF_ID = 1926431988;
  final classType = "request";
  final ID = 3310934187;
  InputGroupCall call;
  List<InputPeerBase> ids;
  List<int> sources;
  String offset;
  int limit;

  GetGroupParticipants(
      {required this.call,
      required this.ids,
      required this.sources,
      required this.offset,
      required this.limit});

  static GetGroupParticipants fromReader(BinaryReader reader) {
    var len;
    var call = reader.tgReadObject();
    var _vectorids = reader.readInt();
    if (_vectorids != 481674261) throw Exception('Wrong vectorId');
    List<InputPeerBase> ids = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      ids.add(reader.tgReadObject());
    }
    var _vectorsources = reader.readInt();
    if (_vectorsources != 481674261) throw Exception('Wrong vectorId');
    List<int> sources = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      sources.add(reader.readInt());
    }
    var offset = reader.tgReadString();
    var limit = reader.readInt();
    return GetGroupParticipants(
        call: call, ids: ids, sources: sources, offset: offset, limit: limit);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3310934187, 4),
      (this.call.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.ids.length, 4, little: true, signed: true),
      this
          .ids.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.sources.length, 4, little: true, signed: true),
      this
          .sources.map((x) => readBufferFromBigInt(x, 4, little: true, signed: true))
          .expand((element) => element),
      serializeBytes(this.offset),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<phone_ns.GroupParticipants, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetGroupParticipants{ID: $ID, call: $call, ids: $ids, sources: $sources, offset: $offset, limit: $limit}';
  }
}

class CheckGroupCall extends BaseRequest<List<int>, int> {
  static const CONSTRUCTOR_ID = 3046963575;
  static const SUBCLASS_OF_ID = 1344696591;
  final classType = "request";
  final ID = 3046963575;
  InputGroupCall call;
  List<int> sources;

  CheckGroupCall({required this.call, required this.sources});

  static CheckGroupCall fromReader(BinaryReader reader) {
    var len;
    var call = reader.tgReadObject();
    var _vectorsources = reader.readInt();
    if (_vectorsources != 481674261) throw Exception('Wrong vectorId');
    List<int> sources = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      sources.add(reader.readInt());
    }
    return CheckGroupCall(call: call, sources: sources);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3046963575, 4),
      (this.call.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.sources.length, 4, little: true, signed: true),
      this
          .sources.map((x) => readBufferFromBigInt(x, 4, little: true, signed: true))
          .expand((element) => element),
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
    return 'CheckGroupCall{ID: $ID, call: $call, sources: $sources}';
  }
}

class ToggleGroupCallRecord extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 4045981448;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 4045981448;
  bool? start;
  bool? video;
  InputGroupCall call;
  String? title;
  bool? videoPortrait;

  ToggleGroupCallRecord(
      {this.start,
      this.video,
      required this.call,
      this.title,
      this.videoPortrait});

  static ToggleGroupCallRecord fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final start = (flags & 1) == 1;
    final video = (flags & 4) == 4;
    var call = reader.tgReadObject();
    var title;
    if ((flags & 2) == 2) {
      title = reader.tgReadString();
    } else {
      title = null;
    }
    var videoPortrait;
    if ((flags & 4) == 4) {
      videoPortrait = reader.tgReadBool();
    } else {
      videoPortrait = null;
    }
    return ToggleGroupCallRecord(
        start: start,
        video: video,
        call: call,
        title: title,
        videoPortrait: videoPortrait);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4045981448, 4),
      [0, 0, 0, 0],
      (this.call.getBytes()),
      (this.title == null || this.title == false)
          ? List<int>.empty()
          : [serializeBytes(this.title)].expand((element) => element).toList(),
      (this.videoPortrait == null || this.videoPortrait == false)
          ? List<int>.empty()
          : [
              [this.videoPortrait == true ? 0xb5757299 : 0x379779bc]
            ].expand((element) => element).toList(),
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
    return 'ToggleGroupCallRecord{ID: $ID, start: $start, video: $video, call: $call, title: $title, videoPortrait: $videoPortrait}';
  }
}

class EditGroupCallParticipant extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 2770811583;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 2770811583;
  InputGroupCall call;
  InputPeerBase participant;
  bool? muted;
  int? volume;
  bool? raiseHand;
  bool? videoStopped;
  bool? videoPaused;
  bool? presentationPaused;

  EditGroupCallParticipant(
      {required this.call,
      required this.participant,
      this.muted,
      this.volume,
      this.raiseHand,
      this.videoStopped,
      this.videoPaused,
      this.presentationPaused});

  static EditGroupCallParticipant fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var call = reader.tgReadObject();
    var participant = reader.tgReadObject();
    var muted;
    if ((flags & 1) == 1) {
      muted = reader.tgReadBool();
    } else {
      muted = null;
    }
    var volume;
    if ((flags & 2) == 2) {
      volume = reader.readInt();
    } else {
      volume = null;
    }
    var raiseHand;
    if ((flags & 4) == 4) {
      raiseHand = reader.tgReadBool();
    } else {
      raiseHand = null;
    }
    var videoStopped;
    if ((flags & 8) == 8) {
      videoStopped = reader.tgReadBool();
    } else {
      videoStopped = null;
    }
    var videoPaused;
    if ((flags & 16) == 16) {
      videoPaused = reader.tgReadBool();
    } else {
      videoPaused = null;
    }
    var presentationPaused;
    if ((flags & 32) == 32) {
      presentationPaused = reader.tgReadBool();
    } else {
      presentationPaused = null;
    }
    return EditGroupCallParticipant(
        call: call,
        participant: participant,
        muted: muted,
        volume: volume,
        raiseHand: raiseHand,
        videoStopped: videoStopped,
        videoPaused: videoPaused,
        presentationPaused: presentationPaused);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2770811583, 4),
      [0, 0, 0, 0],
      (this.call.getBytes()),
      (this.participant.getBytes()),
      (this.muted == null || this.muted == false)
          ? List<int>.empty()
          : [
              [this.muted == true ? 0xb5757299 : 0x379779bc]
            ].expand((element) => element).toList(),
      (this.volume == null || this.volume == false)
          ? List<int>.empty()
          : [readBufferFromBigInt(this.volume, 4, little: true, signed: true)]
              .expand((element) => element)
              .toList(),
      (this.raiseHand == null || this.raiseHand == false)
          ? List<int>.empty()
          : [
              [this.raiseHand == true ? 0xb5757299 : 0x379779bc]
            ].expand((element) => element).toList(),
      (this.videoStopped == null || this.videoStopped == false)
          ? List<int>.empty()
          : [
              [this.videoStopped == true ? 0xb5757299 : 0x379779bc]
            ].expand((element) => element).toList(),
      (this.videoPaused == null || this.videoPaused == false)
          ? List<int>.empty()
          : [
              [this.videoPaused == true ? 0xb5757299 : 0x379779bc]
            ].expand((element) => element).toList(),
      (this.presentationPaused == null || this.presentationPaused == false)
          ? List<int>.empty()
          : [
              [this.presentationPaused == true ? 0xb5757299 : 0x379779bc]
            ].expand((element) => element).toList(),
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
    return 'EditGroupCallParticipant{ID: $ID, call: $call, participant: $participant, muted: $muted, volume: $volume, raiseHand: $raiseHand, videoStopped: $videoStopped, videoPaused: $videoPaused, presentationPaused: $presentationPaused}';
  }
}

class EditGroupCallTitle extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 480685066;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 480685066;
  InputGroupCall call;
  String title;

  EditGroupCallTitle({required this.call, required this.title});

  static EditGroupCallTitle fromReader(BinaryReader reader) {
    var call = reader.tgReadObject();
    var title = reader.tgReadString();
    return EditGroupCallTitle(call: call, title: title);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(480685066, 4),
      (this.call.getBytes()),
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
    return 'EditGroupCallTitle{ID: $ID, call: $call, title: $title}';
  }
}

class GetGroupCallJoinAs extends BaseRequest<phone_ns.JoinAsPeers, dynamic> {
  static const CONSTRUCTOR_ID = 4017889594;
  static const SUBCLASS_OF_ID = 3031920891;
  final classType = "request";
  final ID = 4017889594;
  InputPeerBase peer;

  GetGroupCallJoinAs({required this.peer});

  static GetGroupCallJoinAs fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    return GetGroupCallJoinAs(peer: peer);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4017889594, 4),
      (this.peer.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<phone_ns.JoinAsPeers, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetGroupCallJoinAs{ID: $ID, peer: $peer}';
  }
}

class ExportGroupCallInvite
    extends BaseRequest<phone_ns.ExportedGroupCallInvite, dynamic> {
  static const CONSTRUCTOR_ID = 3869926527;
  static const SUBCLASS_OF_ID = 993787535;
  final classType = "request";
  final ID = 3869926527;
  bool? canSelfUnmute;
  InputGroupCall call;

  ExportGroupCallInvite({this.canSelfUnmute, required this.call});

  static ExportGroupCallInvite fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final canSelfUnmute = (flags & 1) == 1;
    var call = reader.tgReadObject();
    return ExportGroupCallInvite(canSelfUnmute: canSelfUnmute, call: call);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3869926527, 4),
      [0, 0, 0, 0],
      (this.call.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<phone_ns.ExportedGroupCallInvite, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'ExportGroupCallInvite{ID: $ID, canSelfUnmute: $canSelfUnmute, call: $call}';
  }
}

class ToggleGroupCallStartSubscription
    extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 563885286;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 563885286;
  InputGroupCall call;
  bool subscribed;

  ToggleGroupCallStartSubscription(
      {required this.call, required this.subscribed});

  static ToggleGroupCallStartSubscription fromReader(BinaryReader reader) {
    var call = reader.tgReadObject();
    var subscribed = reader.tgReadBool();
    return ToggleGroupCallStartSubscription(call: call, subscribed: subscribed);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(563885286, 4),
      (this.call.getBytes()),
      [this.subscribed == true ? 0xb5757299 : 0x379779bc],
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
    return 'ToggleGroupCallStartSubscription{ID: $ID, call: $call, subscribed: $subscribed}';
  }
}

class StartScheduledGroupCall extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 1451287362;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 1451287362;
  InputGroupCall call;

  StartScheduledGroupCall({required this.call});

  static StartScheduledGroupCall fromReader(BinaryReader reader) {
    var call = reader.tgReadObject();
    return StartScheduledGroupCall(call: call);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1451287362, 4),
      (this.call.getBytes()),
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
    return 'StartScheduledGroupCall{ID: $ID, call: $call}';
  }
}

class SaveDefaultGroupCallJoinAs extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1465786252;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1465786252;
  InputPeerBase peer;
  InputPeerBase joinAs;

  SaveDefaultGroupCallJoinAs({required this.peer, required this.joinAs});

  static SaveDefaultGroupCallJoinAs fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    var joinAs = reader.tgReadObject();
    return SaveDefaultGroupCallJoinAs(peer: peer, joinAs: joinAs);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1465786252, 4),
      (this.peer.getBytes()),
      (this.joinAs.getBytes()),
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
    return 'SaveDefaultGroupCallJoinAs{ID: $ID, peer: $peer, joinAs: $joinAs}';
  }
}

class JoinGroupCallPresentation extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 3421137860;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 3421137860;
  InputGroupCall call;
  DataJSON params;

  JoinGroupCallPresentation({required this.call, required this.params});

  static JoinGroupCallPresentation fromReader(BinaryReader reader) {
    var call = reader.tgReadObject();
    var params = reader.tgReadObject();
    return JoinGroupCallPresentation(call: call, params: params);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3421137860, 4),
      (this.call.getBytes()),
      (this.params.getBytes()),
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
    return 'JoinGroupCallPresentation{ID: $ID, call: $call, params: $params}';
  }
}

class LeaveGroupCallPresentation extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 475058500;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 475058500;
  InputGroupCall call;

  LeaveGroupCallPresentation({required this.call});

  static LeaveGroupCallPresentation fromReader(BinaryReader reader) {
    var call = reader.tgReadObject();
    return LeaveGroupCallPresentation(call: call);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(475058500, 4),
      (this.call.getBytes()),
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
    return 'LeaveGroupCallPresentation{ID: $ID, call: $call}';
  }
}

class GetGroupCallStreamChannels
    extends BaseRequest<phone_ns.GroupCallStreamChannels, dynamic> {
  static const CONSTRUCTOR_ID = 447879488;
  static const SUBCLASS_OF_ID = 2438448612;
  final classType = "request";
  final ID = 447879488;
  InputGroupCall call;

  GetGroupCallStreamChannels({required this.call});

  static GetGroupCallStreamChannels fromReader(BinaryReader reader) {
    var call = reader.tgReadObject();
    return GetGroupCallStreamChannels(call: call);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(447879488, 4),
      (this.call.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<phone_ns.GroupCallStreamChannels, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetGroupCallStreamChannels{ID: $ID, call: $call}';
  }
}

class GetGroupCallStreamRtmpUrl
    extends BaseRequest<phone_ns.GroupCallStreamRtmpUrl, dynamic> {
  static const CONSTRUCTOR_ID = 3736316863;
  static const SUBCLASS_OF_ID = 3522500043;
  final classType = "request";
  final ID = 3736316863;
  InputPeerBase peer;
  bool revoke;

  GetGroupCallStreamRtmpUrl({required this.peer, required this.revoke});

  static GetGroupCallStreamRtmpUrl fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    var revoke = reader.tgReadBool();
    return GetGroupCallStreamRtmpUrl(peer: peer, revoke: revoke);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3736316863, 4),
      (this.peer.getBytes()),
      [this.revoke == true ? 0xb5757299 : 0x379779bc],
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<phone_ns.GroupCallStreamRtmpUrl, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetGroupCallStreamRtmpUrl{ID: $ID, peer: $peer, revoke: $revoke}';
  }
}

class SaveCallLog extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 1092913030;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1092913030;
  InputPhoneCall peer;
  InputFileBase file;

  SaveCallLog({required this.peer, required this.file});

  static SaveCallLog fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    var file = reader.tgReadObject();
    return SaveCallLog(peer: peer, file: file);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1092913030, 4),
      (this.peer.getBytes()),
      (this.file.getBytes()),
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
    return 'SaveCallLog{ID: $ID, peer: $peer, file: $file}';
  }
}
