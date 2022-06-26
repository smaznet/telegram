// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_request.dart';
import '../constructors/constructors.dart';

class InvokeAfterMsg extends BaseRequest<dynamic, dynamic> {
  static const CONSTRUCTOR_ID = 3416209197;
  static const SUBCLASS_OF_ID = 3081909835;
  final classType = "request";
  final ID = 3416209197;
  BigInt msgId;
  dynamic query;

  InvokeAfterMsg({required this.msgId, required this.query});

  static InvokeAfterMsg fromReader(BinaryReader reader) {
    var msgId = reader.readLong();
    var query = reader.tgReadObject();
    return InvokeAfterMsg(msgId: msgId, query: query);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3416209197, 4),
      readBufferFromBigInt(this.msgId, 8, little: true, signed: true),
      (this.query!.getBytes() as List<int>),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<dynamic, dynamic>();
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
    return 'InvokeAfterMsg{ID: $ID, msgId: $msgId, query: $query}';
  }
}

class InvokeAfterMsgs extends BaseRequest<dynamic, dynamic> {
  static const CONSTRUCTOR_ID = 1036301552;
  static const SUBCLASS_OF_ID = 3081909835;
  final classType = "request";
  final ID = 1036301552;
  List<BigInt> msgIds;
  dynamic query;

  InvokeAfterMsgs({required this.msgIds, required this.query});

  static InvokeAfterMsgs fromReader(BinaryReader reader) {
    var len;
    var _vectormsgIds = reader.readInt();
    if (_vectormsgIds != 481674261) throw Exception('Wrong vectorId');
    List<BigInt> msgIds = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      msgIds.add(reader.readLong());
    }
    var query = reader.tgReadObject();
    return InvokeAfterMsgs(msgIds: msgIds, query: query);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1036301552, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.msgIds.length, 4, little: true, signed: true),
      this
          .msgIds.map((x) => readBufferFromBigInt(x, 8, little: true, signed: true))
          .expand((element) => element),
      (this.query!.getBytes() as List<int>),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<dynamic, dynamic>();
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
    return 'InvokeAfterMsgs{ID: $ID, msgIds: $msgIds, query: $query}';
  }
}

class InitConnection extends BaseRequest<dynamic, dynamic> {
  static const CONSTRUCTOR_ID = 3251461801;
  static const SUBCLASS_OF_ID = 3081909835;
  final classType = "request";
  final ID = 3251461801;
  int apiId;
  String deviceModel;
  String systemVersion;
  String appVersion;
  String systemLangCode;
  String langPack;
  String langCode;
  InputClientProxy? proxy;
  JSONValueBase? params;
  dynamic query;

  InitConnection(
      {required this.apiId,
      required this.deviceModel,
      required this.systemVersion,
      required this.appVersion,
      required this.systemLangCode,
      required this.langPack,
      required this.langCode,
      this.proxy,
      this.params,
      required this.query});

  static InitConnection fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var apiId = reader.readInt();
    var deviceModel = reader.tgReadString();
    var systemVersion = reader.tgReadString();
    var appVersion = reader.tgReadString();
    var systemLangCode = reader.tgReadString();
    var langPack = reader.tgReadString();
    var langCode = reader.tgReadString();
    var proxy;
    if ((flags & 1) == 1) {
      proxy = reader.tgReadObject();
    } else {
      proxy = null;
    }
    var params;
    if ((flags & 2) == 2) {
      params = reader.tgReadObject();
    } else {
      params = null;
    }
    var query = reader.tgReadObject();
    return InitConnection(
        apiId: apiId,
        deviceModel: deviceModel,
        systemVersion: systemVersion,
        appVersion: appVersion,
        systemLangCode: systemLangCode,
        langPack: langPack,
        langCode: langCode,
        proxy: proxy,
        params: params,
        query: query);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3251461801, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.apiId, 4, little: true, signed: true),
      serializeBytes(this.deviceModel),
      serializeBytes(this.systemVersion),
      serializeBytes(this.appVersion),
      serializeBytes(this.systemLangCode),
      serializeBytes(this.langPack),
      serializeBytes(this.langCode),
      (this.proxy == null || this.proxy == false)
          ? List<int>.empty()
          : [(this.proxy!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.params == null || this.params == false)
          ? List<int>.empty()
          : [(this.params!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.query!.getBytes() as List<int>),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<dynamic, dynamic>();
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
    return 'InitConnection{ID: $ID, apiId: $apiId, deviceModel: $deviceModel, systemVersion: $systemVersion, appVersion: $appVersion, systemLangCode: $systemLangCode, langPack: $langPack, langCode: $langCode, proxy: $proxy, params: $params, query: $query}';
  }
}

class InvokeWithLayer extends BaseRequest<dynamic, dynamic> {
  static const CONSTRUCTOR_ID = 3667594509;
  static const SUBCLASS_OF_ID = 3081909835;
  final classType = "request";
  final ID = 3667594509;
  int layer;
  dynamic query;

  InvokeWithLayer({required this.layer, required this.query});

  static InvokeWithLayer fromReader(BinaryReader reader) {
    var layer = reader.readInt();
    var query = reader.tgReadObject();
    return InvokeWithLayer(layer: layer, query: query);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3667594509, 4),
      readBufferFromBigInt(this.layer, 4, little: true, signed: true),
      (this.query!.getBytes() as List<int>),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<dynamic, dynamic>();
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
    return 'InvokeWithLayer{ID: $ID, layer: $layer, query: $query}';
  }
}

class InvokeWithoutUpdates extends BaseRequest<dynamic, dynamic> {
  static const CONSTRUCTOR_ID = 3214170551;
  static const SUBCLASS_OF_ID = 3081909835;
  final classType = "request";
  final ID = 3214170551;
  dynamic query;

  InvokeWithoutUpdates({required this.query});

  static InvokeWithoutUpdates fromReader(BinaryReader reader) {
    var query = reader.tgReadObject();
    return InvokeWithoutUpdates(query: query);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3214170551, 4),
      (this.query!.getBytes() as List<int>),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<dynamic, dynamic>();
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
    return 'InvokeWithoutUpdates{ID: $ID, query: $query}';
  }
}

class InvokeWithMessagesRange extends BaseRequest<dynamic, dynamic> {
  static const CONSTRUCTOR_ID = 911373810;
  static const SUBCLASS_OF_ID = 3081909835;
  final classType = "request";
  final ID = 911373810;
  MessageRange range;
  dynamic query;

  InvokeWithMessagesRange({required this.range, required this.query});

  static InvokeWithMessagesRange fromReader(BinaryReader reader) {
    var range = reader.tgReadObject();
    var query = reader.tgReadObject();
    return InvokeWithMessagesRange(range: range, query: query);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(911373810, 4),
      (this.range.getBytes()),
      (this.query!.getBytes() as List<int>),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<dynamic, dynamic>();
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
    return 'InvokeWithMessagesRange{ID: $ID, range: $range, query: $query}';
  }
}

class InvokeWithTakeout extends BaseRequest<dynamic, dynamic> {
  static const CONSTRUCTOR_ID = 2896821550;
  static const SUBCLASS_OF_ID = 3081909835;
  final classType = "request";
  final ID = 2896821550;
  BigInt takeoutId;
  dynamic query;

  InvokeWithTakeout({required this.takeoutId, required this.query});

  static InvokeWithTakeout fromReader(BinaryReader reader) {
    var takeoutId = reader.readLong();
    var query = reader.tgReadObject();
    return InvokeWithTakeout(takeoutId: takeoutId, query: query);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2896821550, 4),
      readBufferFromBigInt(this.takeoutId, 8, little: true, signed: true),
      (this.query!.getBytes() as List<int>),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<dynamic, dynamic>();
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
    return 'InvokeWithTakeout{ID: $ID, takeoutId: $takeoutId, query: $query}';
  }
}

class ReqPq extends BaseRequest<ResPQ, dynamic> {
  static const CONSTRUCTOR_ID = 1615239032;
  static const SUBCLASS_OF_ID = 2020181688;
  final classType = "request";
  final ID = 1615239032;
  BigInt nonce;

  ReqPq({required this.nonce});

  static ReqPq fromReader(BinaryReader reader) {
    var nonce = reader.readLargeInt(128);
    return ReqPq(nonce: nonce);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1615239032, 4),
      readBufferFromBigInt(this.nonce, 16, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<ResPQ, dynamic>();
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
    return 'ReqPq{ID: $ID, nonce: $nonce}';
  }
}

class ReqPqMulti extends BaseRequest<ResPQ, dynamic> {
  static const CONSTRUCTOR_ID = 3195965169;
  static const SUBCLASS_OF_ID = 2020181688;
  final classType = "request";
  final ID = 3195965169;
  BigInt nonce;

  ReqPqMulti({required this.nonce});

  static ReqPqMulti fromReader(BinaryReader reader) {
    var nonce = reader.readLargeInt(128);
    return ReqPqMulti(nonce: nonce);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3195965169, 4),
      readBufferFromBigInt(this.nonce, 16, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<ResPQ, dynamic>();
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
    return 'ReqPqMulti{ID: $ID, nonce: $nonce}';
  }
}

class ReqDHParams extends BaseRequest<dynamic, dynamic> {
  static const CONSTRUCTOR_ID = 3608339646;
  static const SUBCLASS_OF_ID = 2786626974;
  final classType = "request";
  final ID = 3608339646;
  BigInt nonce;
  BigInt serverNonce;
  List<int> p;
  List<int> q;
  BigInt publicKeyFingerprint;
  List<int> encryptedData;

  ReqDHParams(
      {required this.nonce,
      required this.serverNonce,
      required this.p,
      required this.q,
      required this.publicKeyFingerprint,
      required this.encryptedData});

  static ReqDHParams fromReader(BinaryReader reader) {
    var nonce = reader.readLargeInt(128);
    var serverNonce = reader.readLargeInt(128);
    var p = reader.tgReadBytes();
    var q = reader.tgReadBytes();
    var publicKeyFingerprint = reader.readLong();
    var encryptedData = reader.tgReadBytes();
    return ReqDHParams(
        nonce: nonce,
        serverNonce: serverNonce,
        p: p,
        q: q,
        publicKeyFingerprint: publicKeyFingerprint,
        encryptedData: encryptedData);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3608339646, 4),
      readBufferFromBigInt(this.nonce, 16, little: true, signed: true),
      readBufferFromBigInt(this.serverNonce, 16, little: true, signed: true),
      serializeBytes(this.p),
      serializeBytes(this.q),
      readBufferFromBigInt(this.publicKeyFingerprint, 8,
          little: true, signed: true),
      serializeBytes(this.encryptedData),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<dynamic, dynamic>();
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
    return 'ReqDHParams{ID: $ID, nonce: $nonce, serverNonce: $serverNonce, p: $p, q: $q, publicKeyFingerprint: $publicKeyFingerprint, encryptedData: $encryptedData}';
  }
}

class SetClientDHParams extends BaseRequest<dynamic, dynamic> {
  static const CONSTRUCTOR_ID = 4110704415;
  static const SUBCLASS_OF_ID = 1440574683;
  final classType = "request";
  final ID = 4110704415;
  BigInt nonce;
  BigInt serverNonce;
  List<int> encryptedData;

  SetClientDHParams(
      {required this.nonce,
      required this.serverNonce,
      required this.encryptedData});

  static SetClientDHParams fromReader(BinaryReader reader) {
    var nonce = reader.readLargeInt(128);
    var serverNonce = reader.readLargeInt(128);
    var encryptedData = reader.tgReadBytes();
    return SetClientDHParams(
        nonce: nonce, serverNonce: serverNonce, encryptedData: encryptedData);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4110704415, 4),
      readBufferFromBigInt(this.nonce, 16, little: true, signed: true),
      readBufferFromBigInt(this.serverNonce, 16, little: true, signed: true),
      serializeBytes(this.encryptedData),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<dynamic, dynamic>();
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
    return 'SetClientDHParams{ID: $ID, nonce: $nonce, serverNonce: $serverNonce, encryptedData: $encryptedData}';
  }
}

class DestroyAuthKey extends BaseRequest<DestroyAuthKeyResBase, dynamic> {
  static const CONSTRUCTOR_ID = 3510849888;
  static const SUBCLASS_OF_ID = 2190599822;
  final classType = "request";
  final ID = 3510849888;

  DestroyAuthKey();

  static DestroyAuthKey fromReader(BinaryReader reader) {
    return DestroyAuthKey();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3510849888, 4),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<DestroyAuthKeyResBase, dynamic>();
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
    return 'DestroyAuthKey{ID: $ID, }';
  }
}

class RpcDropAnswer extends BaseRequest<RpcDropAnswerBase, dynamic> {
  static const CONSTRUCTOR_ID = 1491380032;
  static const SUBCLASS_OF_ID = 1271559536;
  final classType = "request";
  final ID = 1491380032;
  BigInt reqMsgId;

  RpcDropAnswer({required this.reqMsgId});

  static RpcDropAnswer fromReader(BinaryReader reader) {
    var reqMsgId = reader.readLong();
    return RpcDropAnswer(reqMsgId: reqMsgId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1491380032, 4),
      readBufferFromBigInt(this.reqMsgId, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<RpcDropAnswerBase, dynamic>();
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
    return 'RpcDropAnswer{ID: $ID, reqMsgId: $reqMsgId}';
  }
}

class GetFutureSalts extends BaseRequest<FutureSalts, dynamic> {
  static const CONSTRUCTOR_ID = 3105996036;
  static const SUBCLASS_OF_ID = 277935383;
  final classType = "request";
  final ID = 3105996036;
  int num;

  GetFutureSalts({required this.num});

  static GetFutureSalts fromReader(BinaryReader reader) {
    var num = reader.readInt();
    return GetFutureSalts(num: num);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3105996036, 4),
      readBufferFromBigInt(this.num, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<FutureSalts, dynamic>();
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
    return 'GetFutureSalts{ID: $ID, num: $num}';
  }
}

class Ping extends BaseRequest<Pong, dynamic> {
  static const CONSTRUCTOR_ID = 2059302892;
  static const SUBCLASS_OF_ID = 2171268721;
  final classType = "request";
  final ID = 2059302892;
  BigInt pingId;

  Ping({required this.pingId});

  static Ping fromReader(BinaryReader reader) {
    var pingId = reader.readLong();
    return Ping(pingId: pingId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2059302892, 4),
      readBufferFromBigInt(this.pingId, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<Pong, dynamic>();
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
    return 'Ping{ID: $ID, pingId: $pingId}';
  }
}

class PingDelayDisconnect extends BaseRequest<Pong, dynamic> {
  static const CONSTRUCTOR_ID = 4081220492;
  static const SUBCLASS_OF_ID = 2171268721;
  final classType = "request";
  final ID = 4081220492;
  BigInt pingId;
  int disconnectDelay;

  PingDelayDisconnect({required this.pingId, required this.disconnectDelay});

  static PingDelayDisconnect fromReader(BinaryReader reader) {
    var pingId = reader.readLong();
    var disconnectDelay = reader.readInt();
    return PingDelayDisconnect(
        pingId: pingId, disconnectDelay: disconnectDelay);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4081220492, 4),
      readBufferFromBigInt(this.pingId, 8, little: true, signed: true),
      readBufferFromBigInt(this.disconnectDelay, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<Pong, dynamic>();
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
    return 'PingDelayDisconnect{ID: $ID, pingId: $pingId, disconnectDelay: $disconnectDelay}';
  }
}

class DestroySession extends BaseRequest<DestroySessionResBase, dynamic> {
  static const CONSTRUCTOR_ID = 3880853798;
  static const SUBCLASS_OF_ID = 2936858557;
  final classType = "request";
  final ID = 3880853798;
  BigInt sessionId;

  DestroySession({required this.sessionId});

  static DestroySession fromReader(BinaryReader reader) {
    var sessionId = reader.readLong();
    return DestroySession(sessionId: sessionId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3880853798, 4),
      readBufferFromBigInt(this.sessionId, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<DestroySessionResBase, dynamic>();
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
    return 'DestroySession{ID: $ID, sessionId: $sessionId}';
  }
}
