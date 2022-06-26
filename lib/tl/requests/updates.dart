// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_request.dart';
import '../constructors/updates.dart' as updates_ns;
import '../constructors/constructors.dart';

class GetState extends BaseRequest<updates_ns.State, dynamic> {
  static const CONSTRUCTOR_ID = 3990128682;
  static const SUBCLASS_OF_ID = 601823745;
  final classType = "request";
  final ID = 3990128682;

  GetState();

  static GetState fromReader(BinaryReader reader) {
    return GetState();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3990128682, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<updates_ns.State, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetState{ID: $ID, }';
  }
}

class GetDifference extends BaseRequest<updates_ns.DifferenceBase, dynamic> {
  static const CONSTRUCTOR_ID = 630429265;
  static const SUBCLASS_OF_ID = 541599860;
  final classType = "request";
  final ID = 630429265;
  int pts;
  int? ptsTotalLimit;
  int date;
  int qts;

  GetDifference(
      {required this.pts,
      this.ptsTotalLimit,
      required this.date,
      required this.qts});

  static GetDifference fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var pts = reader.readInt();
    var ptsTotalLimit;
    if ((flags & 1) == 1) {
      ptsTotalLimit = reader.readInt();
    } else {
      ptsTotalLimit = null;
    }
    var date = reader.readInt();
    var qts = reader.readInt();
    return GetDifference(
        pts: pts, ptsTotalLimit: ptsTotalLimit, date: date, qts: qts);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(630429265, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.pts, 4, little: true, signed: true),
      (this.ptsTotalLimit == null || this.ptsTotalLimit == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.ptsTotalLimit, 4,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
      readBufferFromBigInt(this.date, 4, little: true, signed: true),
      readBufferFromBigInt(this.qts, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<updates_ns.DifferenceBase, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetDifference{ID: $ID, pts: $pts, ptsTotalLimit: $ptsTotalLimit, date: $date, qts: $qts}';
  }
}

class GetChannelDifference
    extends BaseRequest<updates_ns.ChannelDifferenceBase, dynamic> {
  static const CONSTRUCTOR_ID = 51854712;
  static const SUBCLASS_OF_ID = 696872797;
  final classType = "request";
  final ID = 51854712;
  bool? force;
  InputChannelBase channel;
  ChannelMessagesFilterBase filter;
  int pts;
  int limit;

  GetChannelDifference(
      {this.force,
      required this.channel,
      required this.filter,
      required this.pts,
      required this.limit});

  static GetChannelDifference fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final force = (flags & 1) == 1;
    var channel = reader.tgReadObject();
    var filter = reader.tgReadObject();
    var pts = reader.readInt();
    var limit = reader.readInt();
    return GetChannelDifference(
        force: force, channel: channel, filter: filter, pts: pts, limit: limit);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(51854712, 4),
      [0, 0, 0, 0],
      (this.channel.getBytes()),
      (this.filter.getBytes()),
      readBufferFromBigInt(this.pts, 4, little: true, signed: true),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<updates_ns.ChannelDifferenceBase, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetChannelDifference{ID: $ID, force: $force, channel: $channel, filter: $filter, pts: $pts, limit: $limit}';
  }
}
