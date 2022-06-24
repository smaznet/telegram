import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class InvokeAfterMsg {
    static const CONSTRUCTOR_ID = 3416209197;
    static const SUBCLASS_OF_ID = 4016572148;
    final classType = "request";
    final ID = 3416209197;
	BigInt msgId;
	var query;


	InvokeAfterMsg({required this.msgId, required this.query});

	static InvokeAfterMsg fromReader(BinaryReader reader) {
	var temp,len;var msgId = reader.readLong();var query = reader.tgReadObject();		return new InvokeAfterMsg(msgId : msgId, query : query);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3416209197,4),readBufferFromBigInt(this.msgId,8,little:true,signed:true),(this.query.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class InvokeAfterMsgs {
    static const CONSTRUCTOR_ID = 1036301552;
    static const SUBCLASS_OF_ID = 4016572148;
    final classType = "request";
    final ID = 1036301552;
	List<BigInt> msgIds;
	var query;


	InvokeAfterMsgs({required this.msgIds, required this.query});

	static InvokeAfterMsgs fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> msgIds = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		msgIds.add(reader.readLong());
}var query = reader.tgReadObject();		return new InvokeAfterMsgs(msgIds : msgIds, query : query);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1036301552,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.msgIds.length,4,little:true,signed:true),this.msgIds.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),(this.query.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class InitConnection {
    static const CONSTRUCTOR_ID = 3251461801;
    static const SUBCLASS_OF_ID = 4016572148;
    final classType = "request";
    final ID = 3251461801;
	int apiId;
	String deviceModel;
	String systemVersion;
	String appVersion;
	String systemLangCode;
	String langPack;
	String langCode;
	var proxy;
	var params;
	var query;


	InitConnection({required this.apiId, required this.deviceModel, required this.systemVersion, required this.appVersion, required this.systemLangCode, required this.langPack, required this.langCode, required this.proxy, required this.params, required this.query});

	static InitConnection fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var apiId = reader.readInt();var deviceModel = reader.tgReadString();var systemVersion = reader.tgReadString();var appVersion = reader.tgReadString();var systemLangCode = reader.tgReadString();var langPack = reader.tgReadString();var langCode = reader.tgReadString();var proxy;if ((flags & 1)==1){proxy = reader.tgReadObject(); } else {proxy=null;}var params;if ((flags & 2)==1){params = reader.tgReadObject(); } else {params=null;}var query = reader.tgReadObject();		return new InitConnection(apiId : apiId, deviceModel : deviceModel, systemVersion : systemVersion, appVersion : appVersion, systemLangCode : systemLangCode, langPack : langPack, langCode : langCode, proxy : proxy, params : params, query : query);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3251461801,4),[0,0,0,0],readBufferFromBigInt(this.apiId,4,little:true,signed:true),serializeBytes(this.deviceModel),serializeBytes(this.systemVersion),serializeBytes(this.appVersion),serializeBytes(this.systemLangCode),serializeBytes(this.langPack),serializeBytes(this.langCode),(this.proxy==null||this.proxy==false)?new List<int>.empty():[(this.proxy.getBytes() as List<int>)].expand((element) => element).toList(),(this.params==null||this.params==false)?new List<int>.empty():[(this.params.getBytes() as List<int>)].expand((element) => element).toList(),(this.query.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class InvokeWithLayer {
    static const CONSTRUCTOR_ID = 3667594509;
    static const SUBCLASS_OF_ID = 4016572148;
    final classType = "request";
    final ID = 3667594509;
	int layer;
	var query;


	InvokeWithLayer({required this.layer, required this.query});

	static InvokeWithLayer fromReader(BinaryReader reader) {
	var temp,len;var layer = reader.readInt();var query = reader.tgReadObject();		return new InvokeWithLayer(layer : layer, query : query);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3667594509,4),readBufferFromBigInt(this.layer,4,little:true,signed:true),(this.query.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class InvokeWithoutUpdates {
    static const CONSTRUCTOR_ID = 3214170551;
    static const SUBCLASS_OF_ID = 4016572148;
    final classType = "request";
    final ID = 3214170551;
	var query;


	InvokeWithoutUpdates({required this.query});

	static InvokeWithoutUpdates fromReader(BinaryReader reader) {
	var temp,len;var query = reader.tgReadObject();		return new InvokeWithoutUpdates(query : query);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3214170551,4),(this.query.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class InvokeWithMessagesRange {
    static const CONSTRUCTOR_ID = 911373810;
    static const SUBCLASS_OF_ID = 4016572148;
    final classType = "request";
    final ID = 911373810;
	var range;
	var query;


	InvokeWithMessagesRange({required this.range, required this.query});

	static InvokeWithMessagesRange fromReader(BinaryReader reader) {
	var temp,len;var range = reader.tgReadObject();var query = reader.tgReadObject();		return new InvokeWithMessagesRange(range : range, query : query);
	}
	List<int> getBytes(){return [readBufferFromBigInt(911373810,4),(this.range.getBytes() as List<int>),(this.query.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class InvokeWithTakeout {
    static const CONSTRUCTOR_ID = 2896821550;
    static const SUBCLASS_OF_ID = 4016572148;
    final classType = "request";
    final ID = 2896821550;
	BigInt takeoutId;
	var query;


	InvokeWithTakeout({required this.takeoutId, required this.query});

	static InvokeWithTakeout fromReader(BinaryReader reader) {
	var temp,len;var takeoutId = reader.readLong();var query = reader.tgReadObject();		return new InvokeWithTakeout(takeoutId : takeoutId, query : query);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2896821550,4),readBufferFromBigInt(this.takeoutId,8,little:true,signed:true),(this.query.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReqPq {
    static const CONSTRUCTOR_ID = 1615239032;
    static const SUBCLASS_OF_ID = 1259555595;
    final classType = "request";
    final ID = 1615239032;
	BigInt nonce;


	ReqPq({required this.nonce});

	static ReqPq fromReader(BinaryReader reader) {
	var temp,len;var nonce = reader.readLargeInt(128);		return new ReqPq(nonce : nonce);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1615239032,4),readBufferFromBigInt(this.nonce,16,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReqPqMulti {
    static const CONSTRUCTOR_ID = 3195965169;
    static const SUBCLASS_OF_ID = 1259555595;
    final classType = "request";
    final ID = 3195965169;
	BigInt nonce;


	ReqPqMulti({required this.nonce});

	static ReqPqMulti fromReader(BinaryReader reader) {
	var temp,len;var nonce = reader.readLargeInt(128);		return new ReqPqMulti(nonce : nonce);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3195965169,4),readBufferFromBigInt(this.nonce,16,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReqDHParams {
    static const CONSTRUCTOR_ID = 3608339646;
    static const SUBCLASS_OF_ID = 3729891486;
    final classType = "request";
    final ID = 3608339646;
	BigInt nonce;
	BigInt serverNonce;
	List<int> p;
	List<int> q;
	BigInt publicKeyFingerprint;
	List<int> encryptedData;


	ReqDHParams({required this.nonce, required this.serverNonce, required this.p, required this.q, required this.publicKeyFingerprint, required this.encryptedData});

	static ReqDHParams fromReader(BinaryReader reader) {
	var temp,len;var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var p = reader.tgReadBytes();var q = reader.tgReadBytes();var publicKeyFingerprint = reader.readLong();var encryptedData = reader.tgReadBytes();		return new ReqDHParams(nonce : nonce, serverNonce : serverNonce, p : p, q : q, publicKeyFingerprint : publicKeyFingerprint, encryptedData : encryptedData);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3608339646,4),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),serializeBytes(this.p),serializeBytes(this.q),readBufferFromBigInt(this.publicKeyFingerprint,8,little:true,signed:true),serializeBytes(this.encryptedData),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetClientDHParams {
    static const CONSTRUCTOR_ID = 4110704415;
    static const SUBCLASS_OF_ID = 23357575;
    final classType = "request";
    final ID = 4110704415;
	BigInt nonce;
	BigInt serverNonce;
	List<int> encryptedData;


	SetClientDHParams({required this.nonce, required this.serverNonce, required this.encryptedData});

	static SetClientDHParams fromReader(BinaryReader reader) {
	var temp,len;var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var encryptedData = reader.tgReadBytes();		return new SetClientDHParams(nonce : nonce, serverNonce : serverNonce, encryptedData : encryptedData);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4110704415,4),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),serializeBytes(this.encryptedData),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DestroyAuthKey {
    static const CONSTRUCTOR_ID = 3510849888;
    static const SUBCLASS_OF_ID = 1147138432;
    final classType = "request";
    final ID = 3510849888;


	DestroyAuthKey();

	static DestroyAuthKey fromReader(BinaryReader reader) {
	var temp,len;		return new DestroyAuthKey();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3510849888,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class RpcDropAnswer {
    static const CONSTRUCTOR_ID = 1491380032;
    static const SUBCLASS_OF_ID = 2287644326;
    final classType = "request";
    final ID = 1491380032;
	BigInt reqMsgId;


	RpcDropAnswer({required this.reqMsgId});

	static RpcDropAnswer fromReader(BinaryReader reader) {
	var temp,len;var reqMsgId = reader.readLong();		return new RpcDropAnswer(reqMsgId : reqMsgId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1491380032,4),readBufferFromBigInt(this.reqMsgId,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetFutureSalts {
    static const CONSTRUCTOR_ID = 3105996036;
    static const SUBCLASS_OF_ID = 3494478179;
    final classType = "request";
    final ID = 3105996036;
	int num;


	GetFutureSalts({required this.num});

	static GetFutureSalts fromReader(BinaryReader reader) {
	var temp,len;var num = reader.readInt();		return new GetFutureSalts(num : num);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3105996036,4),readBufferFromBigInt(this.num,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class Ping {
    static const CONSTRUCTOR_ID = 2059302892;
    static const SUBCLASS_OF_ID = 3834985971;
    final classType = "request";
    final ID = 2059302892;
	BigInt pingId;


	Ping({required this.pingId});

	static Ping fromReader(BinaryReader reader) {
	var temp,len;var pingId = reader.readLong();		return new Ping(pingId : pingId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2059302892,4),readBufferFromBigInt(this.pingId,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class PingDelayDisconnect {
    static const CONSTRUCTOR_ID = 4081220492;
    static const SUBCLASS_OF_ID = 3834985971;
    final classType = "request";
    final ID = 4081220492;
	BigInt pingId;
	int disconnectDelay;


	PingDelayDisconnect({required this.pingId, required this.disconnectDelay});

	static PingDelayDisconnect fromReader(BinaryReader reader) {
	var temp,len;var pingId = reader.readLong();var disconnectDelay = reader.readInt();		return new PingDelayDisconnect(pingId : pingId, disconnectDelay : disconnectDelay);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4081220492,4),readBufferFromBigInt(this.pingId,8,little:true,signed:true),readBufferFromBigInt(this.disconnectDelay,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DestroySession {
    static const CONSTRUCTOR_ID = 3880853798;
    static const SUBCLASS_OF_ID = 3533302729;
    final classType = "request";
    final ID = 3880853798;
	BigInt sessionId;


	DestroySession({required this.sessionId});

	static DestroySession fromReader(BinaryReader reader) {
	var temp,len;var sessionId = reader.readLong();		return new DestroySession(sessionId : sessionId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3880853798,4),readBufferFromBigInt(this.sessionId,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}