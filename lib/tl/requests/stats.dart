// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_request.dart';
import '../constructors/stats.dart' as stats_ns;
import '../constructors/constructors.dart';
import '../constructors/messages.dart' as messages_ns;

class GetBroadcastStats extends BaseRequest<stats_ns.BroadcastStats, dynamic> {
  static const CONSTRUCTOR_ID = 2873246746;
  static const SUBCLASS_OF_ID = 2146587688;
  final classType = "request";
  final ID = 2873246746;
  bool? dark;
  InputChannelBase channel;

  GetBroadcastStats({this.dark, required this.channel});

  static GetBroadcastStats fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final dark = (flags & 1) == 1;
    var channel = reader.tgReadObject();
    return GetBroadcastStats(dark: dark, channel: channel);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2873246746, 4),
      [0, 0, 0, 0],
      (this.channel.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<stats_ns.BroadcastStats, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetBroadcastStats{ID: $ID, dark: $dark, channel: $channel}';
  }
}

class LoadAsyncGraph extends BaseRequest<StatsGraphBase, dynamic> {
  static const CONSTRUCTOR_ID = 1646092192;
  static const SUBCLASS_OF_ID = 2609918291;
  final classType = "request";
  final ID = 1646092192;
  String token;
  BigInt? x;

  LoadAsyncGraph({required this.token, this.x});

  static LoadAsyncGraph fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var token = reader.tgReadString();
    var x;
    if ((flags & 1) == 1) {
      x = reader.readLong();
    } else {
      x = null;
    }
    return LoadAsyncGraph(token: token, x: x);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1646092192, 4),
      [0, 0, 0, 0],
      serializeBytes(this.token),
      (this.x == null || this.x == false)
          ? List<int>.empty()
          : [readBufferFromBigInt(this.x, 8, little: true, signed: true)]
              .expand((element) => element)
              .toList(),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<StatsGraphBase, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'LoadAsyncGraph{ID: $ID, token: $token, x: $x}';
  }
}

class GetMegagroupStats extends BaseRequest<stats_ns.MegagroupStats, dynamic> {
  static const CONSTRUCTOR_ID = 3705636359;
  static const SUBCLASS_OF_ID = 1532608141;
  final classType = "request";
  final ID = 3705636359;
  bool? dark;
  InputChannelBase channel;

  GetMegagroupStats({this.dark, required this.channel});

  static GetMegagroupStats fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final dark = (flags & 1) == 1;
    var channel = reader.tgReadObject();
    return GetMegagroupStats(dark: dark, channel: channel);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3705636359, 4),
      [0, 0, 0, 0],
      (this.channel.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<stats_ns.MegagroupStats, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetMegagroupStats{ID: $ID, dark: $dark, channel: $channel}';
  }
}

class GetMessagePublicForwards
    extends BaseRequest<messages_ns.MessagesBase, dynamic> {
  static const CONSTRUCTOR_ID = 1445996571;
  static const SUBCLASS_OF_ID = 3568569182;
  final classType = "request";
  final ID = 1445996571;
  InputChannelBase channel;
  int msgId;
  int offsetRate;
  InputPeerBase offsetPeer;
  int offsetId;
  int limit;

  GetMessagePublicForwards(
      {required this.channel,
      required this.msgId,
      required this.offsetRate,
      required this.offsetPeer,
      required this.offsetId,
      required this.limit});

  static GetMessagePublicForwards fromReader(BinaryReader reader) {
    var channel = reader.tgReadObject();
    var msgId = reader.readInt();
    var offsetRate = reader.readInt();
    var offsetPeer = reader.tgReadObject();
    var offsetId = reader.readInt();
    var limit = reader.readInt();
    return GetMessagePublicForwards(
        channel: channel,
        msgId: msgId,
        offsetRate: offsetRate,
        offsetPeer: offsetPeer,
        offsetId: offsetId,
        limit: limit);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1445996571, 4),
      (this.channel.getBytes()),
      readBufferFromBigInt(this.msgId, 4, little: true, signed: true),
      readBufferFromBigInt(this.offsetRate, 4, little: true, signed: true),
      (this.offsetPeer.getBytes()),
      readBufferFromBigInt(this.offsetId, 4, little: true, signed: true),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
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
    return 'GetMessagePublicForwards{ID: $ID, channel: $channel, msgId: $msgId, offsetRate: $offsetRate, offsetPeer: $offsetPeer, offsetId: $offsetId, limit: $limit}';
  }
}

class GetMessageStats extends BaseRequest<stats_ns.MessageStats, dynamic> {
  static const CONSTRUCTOR_ID = 3068175349;
  static const SUBCLASS_OF_ID = 2516886306;
  final classType = "request";
  final ID = 3068175349;
  bool? dark;
  InputChannelBase channel;
  int msgId;

  GetMessageStats({this.dark, required this.channel, required this.msgId});

  static GetMessageStats fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final dark = (flags & 1) == 1;
    var channel = reader.tgReadObject();
    var msgId = reader.readInt();
    return GetMessageStats(dark: dark, channel: channel, msgId: msgId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3068175349, 4),
      [0, 0, 0, 0],
      (this.channel.getBytes()),
      readBufferFromBigInt(this.msgId, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<stats_ns.MessageStats, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetMessageStats{ID: $ID, dark: $dark, channel: $channel, msgId: $msgId}';
  }
}
