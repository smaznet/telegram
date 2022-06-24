import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class GetMessages {
    static const CONSTRUCTOR_ID = 1673946374;
    static const SUBCLASS_OF_ID = 3568569182;
    final classType = "request";
    final ID = 1673946374;
	List<dynamic> id;


	GetMessages({required this.id});

	static GetMessages fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.tgReadObject());
}		return new GetMessages(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1673946374,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetDialogs {
    static const CONSTRUCTOR_ID = 2700397391;
    static const SUBCLASS_OF_ID = 236671726;
    final classType = "request";
    final ID = 2700397391;
	bool excludePinned;
	int folderId;
	int offsetDate;
	int offsetId;
	var offsetPeer;
	int limit;
	BigInt hash;


	GetDialogs({required this.excludePinned, required this.folderId, required this.offsetDate, required this.offsetId, required this.offsetPeer, required this.limit, required this.hash});

	static GetDialogs fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final excludePinned = false;var folderId;if ((flags & 2)==1){folderId = reader.readInt(); } else {folderId=null;}var offsetDate = reader.readInt();var offsetId = reader.readInt();var offsetPeer = reader.tgReadObject();var limit = reader.readInt();var hash = reader.readLong();		return new GetDialogs(excludePinned : excludePinned, folderId : folderId, offsetDate : offsetDate, offsetId : offsetId, offsetPeer : offsetPeer, limit : limit, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2700397391,4),[0,0,0,0],(this.folderId==null||this.folderId==false)?new List<int>.empty():[readBufferFromBigInt(this.folderId,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.offsetDate,4,little:true,signed:true),readBufferFromBigInt(this.offsetId,4,little:true,signed:true),(this.offsetPeer.getBytes() as List<int>),readBufferFromBigInt(this.limit,4,little:true,signed:true),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetHistory {
    static const CONSTRUCTOR_ID = 1143203525;
    static const SUBCLASS_OF_ID = 3568569182;
    final classType = "request";
    final ID = 1143203525;
	var peer;
	int offsetId;
	int offsetDate;
	int addOffset;
	int limit;
	int maxId;
	int minId;
	BigInt hash;


	GetHistory({required this.peer, required this.offsetId, required this.offsetDate, required this.addOffset, required this.limit, required this.maxId, required this.minId, required this.hash});

	static GetHistory fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var offsetId = reader.readInt();var offsetDate = reader.readInt();var addOffset = reader.readInt();var limit = reader.readInt();var maxId = reader.readInt();var minId = reader.readInt();var hash = reader.readLong();		return new GetHistory(peer : peer, offsetId : offsetId, offsetDate : offsetDate, addOffset : addOffset, limit : limit, maxId : maxId, minId : minId, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1143203525,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.offsetId,4,little:true,signed:true),readBufferFromBigInt(this.offsetDate,4,little:true,signed:true),readBufferFromBigInt(this.addOffset,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),readBufferFromBigInt(this.maxId,4,little:true,signed:true),readBufferFromBigInt(this.minId,4,little:true,signed:true),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class Search {
    static const CONSTRUCTOR_ID = 2700978018;
    static const SUBCLASS_OF_ID = 3568569182;
    final classType = "request";
    final ID = 2700978018;
	var peer;
	String q;
	var fromId;
	int topMsgId;
	var filter;
	int minDate;
	int maxDate;
	int offsetId;
	int addOffset;
	int limit;
	int maxId;
	int minId;
	BigInt hash;


	Search({required this.peer, required this.q, required this.fromId, required this.topMsgId, required this.filter, required this.minDate, required this.maxDate, required this.offsetId, required this.addOffset, required this.limit, required this.maxId, required this.minId, required this.hash});

	static Search fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var peer = reader.tgReadObject();var q = reader.tgReadString();var fromId;if ((flags & 1)==1){fromId = reader.tgReadObject(); } else {fromId=null;}var topMsgId;if ((flags & 2)==1){topMsgId = reader.readInt(); } else {topMsgId=null;}var filter = reader.tgReadObject();var minDate = reader.readInt();var maxDate = reader.readInt();var offsetId = reader.readInt();var addOffset = reader.readInt();var limit = reader.readInt();var maxId = reader.readInt();var minId = reader.readInt();var hash = reader.readLong();		return new Search(peer : peer, q : q, fromId : fromId, topMsgId : topMsgId, filter : filter, minDate : minDate, maxDate : maxDate, offsetId : offsetId, addOffset : addOffset, limit : limit, maxId : maxId, minId : minId, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2700978018,4),[0,0,0,0],(this.peer.getBytes() as List<int>),serializeBytes(this.q),(this.fromId==null||this.fromId==false)?new List<int>.empty():[(this.fromId.getBytes() as List<int>)].expand((element) => element).toList(),(this.topMsgId==null||this.topMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.topMsgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.filter.getBytes() as List<int>),readBufferFromBigInt(this.minDate,4,little:true,signed:true),readBufferFromBigInt(this.maxDate,4,little:true,signed:true),readBufferFromBigInt(this.offsetId,4,little:true,signed:true),readBufferFromBigInt(this.addOffset,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),readBufferFromBigInt(this.maxId,4,little:true,signed:true),readBufferFromBigInt(this.minId,4,little:true,signed:true),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReadHistory {
    static const CONSTRUCTOR_ID = 238054714;
    static const SUBCLASS_OF_ID = 3469983854;
    final classType = "request";
    final ID = 238054714;
	var peer;
	int maxId;


	ReadHistory({required this.peer, required this.maxId});

	static ReadHistory fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var maxId = reader.readInt();		return new ReadHistory(peer : peer, maxId : maxId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(238054714,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.maxId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteHistory {
    static const CONSTRUCTOR_ID = 2962199082;
    static const SUBCLASS_OF_ID = 743031062;
    final classType = "request";
    final ID = 2962199082;
	bool justClear;
	bool revoke;
	var peer;
	int maxId;
	int minDate;
	int maxDate;


	DeleteHistory({required this.justClear, required this.revoke, required this.peer, required this.maxId, required this.minDate, required this.maxDate});

	static DeleteHistory fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final justClear = false;final revoke = false;var peer = reader.tgReadObject();var maxId = reader.readInt();var minDate;if ((flags & 4)==1){minDate = reader.readInt(); } else {minDate=null;}var maxDate;if ((flags & 8)==1){maxDate = reader.readInt(); } else {maxDate=null;}		return new DeleteHistory(justClear : justClear, revoke : revoke, peer : peer, maxId : maxId, minDate : minDate, maxDate : maxDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2962199082,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.maxId,4,little:true,signed:true),(this.minDate==null||this.minDate==false)?new List<int>.empty():[readBufferFromBigInt(this.minDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.maxDate==null||this.maxDate==false)?new List<int>.empty():[readBufferFromBigInt(this.maxDate,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteMessages {
    static const CONSTRUCTOR_ID = 3851326930;
    static const SUBCLASS_OF_ID = 3469983854;
    final classType = "request";
    final ID = 3851326930;
	bool revoke;
	List<int> id;


	DeleteMessages({required this.revoke, required this.id});

	static DeleteMessages fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final revoke = false;reader.readInt();
List<int> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readInt());
}		return new DeleteMessages(revoke : revoke, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3851326930,4),[0,0,0,0],readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReceivedMessages {
    static const CONSTRUCTOR_ID = 94983360;
    static const SUBCLASS_OF_ID = 2238052503;
    final classType = "request";
    final ID = 94983360;
	int maxId;


	ReceivedMessages({required this.maxId});

	static ReceivedMessages fromReader(BinaryReader reader) {
	var temp,len;var maxId = reader.readInt();		return new ReceivedMessages(maxId : maxId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(94983360,4),readBufferFromBigInt(this.maxId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetTyping {
    static const CONSTRUCTOR_ID = 1486110434;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 1486110434;
	var peer;
	int topMsgId;
	var action;


	SetTyping({required this.peer, required this.topMsgId, required this.action});

	static SetTyping fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var peer = reader.tgReadObject();var topMsgId;if ((flags & 1)==1){topMsgId = reader.readInt(); } else {topMsgId=null;}var action = reader.tgReadObject();		return new SetTyping(peer : peer, topMsgId : topMsgId, action : action);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1486110434,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.topMsgId==null||this.topMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.topMsgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.action.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendMessage {
    static const CONSTRUCTOR_ID = 228423076;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 228423076;
	bool noWebpage;
	bool silent;
	bool background;
	bool clearDraft;
	bool noforwards;
	var peer;
	int replyToMsgId;
	String message;
	BigInt randomId;
	var replyMarkup;
	List<dynamic> entities;
	int scheduleDate;
	var sendAs;


	SendMessage({required this.noWebpage, required this.silent, required this.background, required this.clearDraft, required this.noforwards, required this.peer, required this.replyToMsgId, required this.message, required this.randomId, required this.replyMarkup, required this.entities, required this.scheduleDate, required this.sendAs});

	static SendMessage fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final noWebpage = false;final silent = false;final background = false;final clearDraft = false;final noforwards = false;var peer = reader.tgReadObject();var replyToMsgId;if ((flags & 1)==1){replyToMsgId = reader.readInt(); } else {replyToMsgId=null;}var message = reader.tgReadString();var randomId = reader.readLong();var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}var entities;if ((flags & 8)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}var scheduleDate;if ((flags & 1024)==1){scheduleDate = reader.readInt(); } else {scheduleDate=null;}var sendAs;if ((flags & 8192)==1){sendAs = reader.tgReadObject(); } else {sendAs=null;}		return new SendMessage(noWebpage : noWebpage, silent : silent, background : background, clearDraft : clearDraft, noforwards : noforwards, peer : peer, replyToMsgId : replyToMsgId, message : message, randomId : randomId, replyMarkup : replyMarkup, entities : entities, scheduleDate : scheduleDate, sendAs : sendAs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(228423076,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.replyToMsgId==null||this.replyToMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.replyToMsgId,4,little:true,signed:true)].expand((element) => element).toList(),serializeBytes(this.message),readBufferFromBigInt(this.randomId,8,little:true,signed:true),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.scheduleDate==null||this.scheduleDate==false)?new List<int>.empty():[readBufferFromBigInt(this.scheduleDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.sendAs==null||this.sendAs==false)?new List<int>.empty():[(this.sendAs.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendMedia {
    static const CONSTRUCTOR_ID = 3797940448;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3797940448;
	bool silent;
	bool background;
	bool clearDraft;
	bool noforwards;
	var peer;
	int replyToMsgId;
	var media;
	String message;
	BigInt randomId;
	var replyMarkup;
	List<dynamic> entities;
	int scheduleDate;
	var sendAs;


	SendMedia({required this.silent, required this.background, required this.clearDraft, required this.noforwards, required this.peer, required this.replyToMsgId, required this.media, required this.message, required this.randomId, required this.replyMarkup, required this.entities, required this.scheduleDate, required this.sendAs});

	static SendMedia fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final silent = false;final background = false;final clearDraft = false;final noforwards = false;var peer = reader.tgReadObject();var replyToMsgId;if ((flags & 1)==1){replyToMsgId = reader.readInt(); } else {replyToMsgId=null;}var media = reader.tgReadObject();var message = reader.tgReadString();var randomId = reader.readLong();var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}var entities;if ((flags & 8)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}var scheduleDate;if ((flags & 1024)==1){scheduleDate = reader.readInt(); } else {scheduleDate=null;}var sendAs;if ((flags & 8192)==1){sendAs = reader.tgReadObject(); } else {sendAs=null;}		return new SendMedia(silent : silent, background : background, clearDraft : clearDraft, noforwards : noforwards, peer : peer, replyToMsgId : replyToMsgId, media : media, message : message, randomId : randomId, replyMarkup : replyMarkup, entities : entities, scheduleDate : scheduleDate, sendAs : sendAs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3797940448,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.replyToMsgId==null||this.replyToMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.replyToMsgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.media.getBytes() as List<int>),serializeBytes(this.message),readBufferFromBigInt(this.randomId,8,little:true,signed:true),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.scheduleDate==null||this.scheduleDate==false)?new List<int>.empty():[readBufferFromBigInt(this.scheduleDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.sendAs==null||this.sendAs==false)?new List<int>.empty():[(this.sendAs.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ForwardMessages {
    static const CONSTRUCTOR_ID = 3425708299;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3425708299;
	bool silent;
	bool background;
	bool withMyScore;
	bool dropAuthor;
	bool dropMediaCaptions;
	bool noforwards;
	var fromPeer;
	List<int> id;
	List<BigInt> randomId;
	var toPeer;
	int scheduleDate;
	var sendAs;


	ForwardMessages({required this.silent, required this.background, required this.withMyScore, required this.dropAuthor, required this.dropMediaCaptions, required this.noforwards, required this.fromPeer, required this.id, required this.randomId, required this.toPeer, required this.scheduleDate, required this.sendAs});

	static ForwardMessages fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final silent = false;final background = false;final withMyScore = false;final dropAuthor = false;final dropMediaCaptions = false;final noforwards = false;var fromPeer = reader.tgReadObject();reader.readInt();
List<int> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readInt());
}reader.readInt();
List<BigInt> randomId = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		randomId.add(reader.readLong());
}var toPeer = reader.tgReadObject();var scheduleDate;if ((flags & 1024)==1){scheduleDate = reader.readInt(); } else {scheduleDate=null;}var sendAs;if ((flags & 8192)==1){sendAs = reader.tgReadObject(); } else {sendAs=null;}		return new ForwardMessages(silent : silent, background : background, withMyScore : withMyScore, dropAuthor : dropAuthor, dropMediaCaptions : dropMediaCaptions, noforwards : noforwards, fromPeer : fromPeer, id : id, randomId : randomId, toPeer : toPeer, scheduleDate : scheduleDate, sendAs : sendAs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3425708299,4),[0,0,0,0],(this.fromPeer.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.randomId.length,4,little:true,signed:true),this.randomId.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),(this.toPeer.getBytes() as List<int>),(this.scheduleDate==null||this.scheduleDate==false)?new List<int>.empty():[readBufferFromBigInt(this.scheduleDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.sendAs==null||this.sendAs==false)?new List<int>.empty():[(this.sendAs.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReportSpam {
    static const CONSTRUCTOR_ID = 3474297563;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3474297563;
	var peer;


	ReportSpam({required this.peer});

	static ReportSpam fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new ReportSpam(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3474297563,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetPeerSettings {
    static const CONSTRUCTOR_ID = 4024018594;
    static const SUBCLASS_OF_ID = 1705179041;
    final classType = "request";
    final ID = 4024018594;
	var peer;


	GetPeerSettings({required this.peer});

	static GetPeerSettings fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new GetPeerSettings(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4024018594,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class Report {
    static const CONSTRUCTOR_ID = 2303961934;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 2303961934;
	var peer;
	List<int> id;
	var reason;
	String message;


	Report({required this.peer, required this.id, required this.reason, required this.message});

	static Report fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();reader.readInt();
List<int> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readInt());
}var reason = reader.tgReadObject();var message = reader.tgReadString();		return new Report(peer : peer, id : id, reason : reason, message : message);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2303961934,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),(this.reason.getBytes() as List<int>),serializeBytes(this.message),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetChats {
    static const CONSTRUCTOR_ID = 1240027791;
    static const SUBCLASS_OF_ID = 2580925204;
    final classType = "request";
    final ID = 1240027791;
	List<BigInt> id;


	GetChats({required this.id});

	static GetChats fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readLong());
}		return new GetChats(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1240027791,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetFullChat {
    static const CONSTRUCTOR_ID = 2930772788;
    static const SUBCLASS_OF_ID = 576344329;
    final classType = "request";
    final ID = 2930772788;
	BigInt chatId;


	GetFullChat({required this.chatId});

	static GetFullChat fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();		return new GetFullChat(chatId : chatId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2930772788,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditChatTitle {
    static const CONSTRUCTOR_ID = 1937260541;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1937260541;
	BigInt chatId;
	String title;


	EditChatTitle({required this.chatId, required this.title});

	static EditChatTitle fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();var title = reader.tgReadString();		return new EditChatTitle(chatId : chatId, title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1937260541,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),serializeBytes(this.title),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditChatPhoto {
    static const CONSTRUCTOR_ID = 903730804;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 903730804;
	BigInt chatId;
	var photo;


	EditChatPhoto({required this.chatId, required this.photo});

	static EditChatPhoto fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();var photo = reader.tgReadObject();		return new EditChatPhoto(chatId : chatId, photo : photo);
	}
	List<int> getBytes(){return [readBufferFromBigInt(903730804,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),(this.photo.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class AddChatUser {
    static const CONSTRUCTOR_ID = 4064760803;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 4064760803;
	BigInt chatId;
	var userId;
	int fwdLimit;


	AddChatUser({required this.chatId, required this.userId, required this.fwdLimit});

	static AddChatUser fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();var userId = reader.tgReadObject();var fwdLimit = reader.readInt();		return new AddChatUser(chatId : chatId, userId : userId, fwdLimit : fwdLimit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4064760803,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),(this.userId.getBytes() as List<int>),readBufferFromBigInt(this.fwdLimit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteChatUser {
    static const CONSTRUCTOR_ID = 2719505579;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2719505579;
	bool revokeHistory;
	BigInt chatId;
	var userId;


	DeleteChatUser({required this.revokeHistory, required this.chatId, required this.userId});

	static DeleteChatUser fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final revokeHistory = false;var chatId = reader.readLong();var userId = reader.tgReadObject();		return new DeleteChatUser(revokeHistory : revokeHistory, chatId : chatId, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2719505579,4),[0,0,0,0],readBufferFromBigInt(this.chatId,8,little:true,signed:true),(this.userId.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class CreateChat {
    static const CONSTRUCTOR_ID = 164303470;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 164303470;
	List<dynamic> users;
	String title;


	CreateChat({required this.users, required this.title});

	static CreateChat fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}var title = reader.tgReadString();		return new CreateChat(users : users, title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(164303470,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),serializeBytes(this.title),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetDhConfig {
    static const CONSTRUCTOR_ID = 651135312;
    static const SUBCLASS_OF_ID = 3834178955;
    final classType = "request";
    final ID = 651135312;
	int version;
	int randomLength;


	GetDhConfig({required this.version, required this.randomLength});

	static GetDhConfig fromReader(BinaryReader reader) {
	var temp,len;var version = reader.readInt();var randomLength = reader.readInt();		return new GetDhConfig(version : version, randomLength : randomLength);
	}
	List<int> getBytes(){return [readBufferFromBigInt(651135312,4),readBufferFromBigInt(this.version,4,little:true,signed:true),readBufferFromBigInt(this.randomLength,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class RequestEncryption {
    static const CONSTRUCTOR_ID = 4132286275;
    static const SUBCLASS_OF_ID = 1831379834;
    final classType = "request";
    final ID = 4132286275;
	var userId;
	int randomId;
	List<int> gA;


	RequestEncryption({required this.userId, required this.randomId, required this.gA});

	static RequestEncryption fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.tgReadObject();var randomId = reader.readInt();var gA = reader.tgReadBytes();		return new RequestEncryption(userId : userId, randomId : randomId, gA : gA);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4132286275,4),(this.userId.getBytes() as List<int>),readBufferFromBigInt(this.randomId,4,little:true,signed:true),serializeBytes(this.gA),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class AcceptEncryption {
    static const CONSTRUCTOR_ID = 1035731989;
    static const SUBCLASS_OF_ID = 1831379834;
    final classType = "request";
    final ID = 1035731989;
	var peer;
	List<int> gB;
	BigInt keyFingerprint;


	AcceptEncryption({required this.peer, required this.gB, required this.keyFingerprint});

	static AcceptEncryption fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var gB = reader.tgReadBytes();var keyFingerprint = reader.readLong();		return new AcceptEncryption(peer : peer, gB : gB, keyFingerprint : keyFingerprint);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1035731989,4),(this.peer.getBytes() as List<int>),serializeBytes(this.gB),readBufferFromBigInt(this.keyFingerprint,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DiscardEncryption {
    static const CONSTRUCTOR_ID = 4086541984;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 4086541984;
	bool deleteHistory;
	int chatId;


	DiscardEncryption({required this.deleteHistory, required this.chatId});

	static DiscardEncryption fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final deleteHistory = false;var chatId = reader.readInt();		return new DiscardEncryption(deleteHistory : deleteHistory, chatId : chatId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4086541984,4),[0,0,0,0],readBufferFromBigInt(this.chatId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetEncryptedTyping {
    static const CONSTRUCTOR_ID = 2031374829;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 2031374829;
	var peer;
	bool typing;


	SetEncryptedTyping({required this.peer, required this.typing});

	static SetEncryptedTyping fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var typing = reader.tgReadBool();		return new SetEncryptedTyping(peer : peer, typing : typing);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2031374829,4),(this.peer.getBytes() as List<int>),[this.typing ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReadEncryptedHistory {
    static const CONSTRUCTOR_ID = 2135648522;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 2135648522;
	var peer;
	int maxDate;


	ReadEncryptedHistory({required this.peer, required this.maxDate});

	static ReadEncryptedHistory fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var maxDate = reader.readInt();		return new ReadEncryptedHistory(peer : peer, maxDate : maxDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2135648522,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.maxDate,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendEncrypted {
    static const CONSTRUCTOR_ID = 1157265941;
    static const SUBCLASS_OF_ID = 3382591056;
    final classType = "request";
    final ID = 1157265941;
	bool silent;
	var peer;
	BigInt randomId;
	List<int> data;


	SendEncrypted({required this.silent, required this.peer, required this.randomId, required this.data});

	static SendEncrypted fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final silent = false;var peer = reader.tgReadObject();var randomId = reader.readLong();var data = reader.tgReadBytes();		return new SendEncrypted(silent : silent, peer : peer, randomId : randomId, data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1157265941,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.randomId,8,little:true,signed:true),serializeBytes(this.data),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendEncryptedFile {
    static const CONSTRUCTOR_ID = 1431914525;
    static const SUBCLASS_OF_ID = 3382591056;
    final classType = "request";
    final ID = 1431914525;
	bool silent;
	var peer;
	BigInt randomId;
	List<int> data;
	var file;


	SendEncryptedFile({required this.silent, required this.peer, required this.randomId, required this.data, required this.file});

	static SendEncryptedFile fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final silent = false;var peer = reader.tgReadObject();var randomId = reader.readLong();var data = reader.tgReadBytes();var file = reader.tgReadObject();		return new SendEncryptedFile(silent : silent, peer : peer, randomId : randomId, data : data, file : file);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1431914525,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.randomId,8,little:true,signed:true),serializeBytes(this.data),(this.file.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendEncryptedService {
    static const CONSTRUCTOR_ID = 852769188;
    static const SUBCLASS_OF_ID = 3382591056;
    final classType = "request";
    final ID = 852769188;
	var peer;
	BigInt randomId;
	List<int> data;


	SendEncryptedService({required this.peer, required this.randomId, required this.data});

	static SendEncryptedService fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var randomId = reader.readLong();var data = reader.tgReadBytes();		return new SendEncryptedService(peer : peer, randomId : randomId, data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(852769188,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.randomId,8,little:true,signed:true),serializeBytes(this.data),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReceivedQueue {
    static const CONSTRUCTOR_ID = 1436924774;
    static const SUBCLASS_OF_ID = 2300109160;
    final classType = "request";
    final ID = 1436924774;
	int maxQts;


	ReceivedQueue({required this.maxQts});

	static ReceivedQueue fromReader(BinaryReader reader) {
	var temp,len;var maxQts = reader.readInt();		return new ReceivedQueue(maxQts : maxQts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1436924774,4),readBufferFromBigInt(this.maxQts,4,little:true,signed:true),].expand((element) => element).toList();}
	List<BigInt> readResult(BinaryReader reader) {
	
reader.readInt();
final range = reader.readInt();
final List<BigInt> result = [];
 for (int i=0;i<range;i++){
	result.add(reader.readLong());}
	return result;
	}

}

class ReportEncryptedSpam {
    static const CONSTRUCTOR_ID = 1259113487;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 1259113487;
	var peer;


	ReportEncryptedSpam({required this.peer});

	static ReportEncryptedSpam fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new ReportEncryptedSpam(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1259113487,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReadMessageContents {
    static const CONSTRUCTOR_ID = 916930423;
    static const SUBCLASS_OF_ID = 3469983854;
    final classType = "request";
    final ID = 916930423;
	List<int> id;


	ReadMessageContents({required this.id});

	static ReadMessageContents fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<int> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readInt());
}		return new ReadMessageContents(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(916930423,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetStickers {
    static const CONSTRUCTOR_ID = 3584414625;
    static const SUBCLASS_OF_ID = 3611015646;
    final classType = "request";
    final ID = 3584414625;
	String emoticon;
	BigInt hash;


	GetStickers({required this.emoticon, required this.hash});

	static GetStickers fromReader(BinaryReader reader) {
	var temp,len;var emoticon = reader.tgReadString();var hash = reader.readLong();		return new GetStickers(emoticon : emoticon, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3584414625,4),serializeBytes(this.emoticon),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAllStickers {
    static const CONSTRUCTOR_ID = 3097534888;
    static const SUBCLASS_OF_ID = 1166231593;
    final classType = "request";
    final ID = 3097534888;
	BigInt hash;


	GetAllStickers({required this.hash});

	static GetAllStickers fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();		return new GetAllStickers(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3097534888,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetWebPagePreview {
    static const CONSTRUCTOR_ID = 2338894028;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "request";
    final ID = 2338894028;
	String message;
	List<dynamic> entities;


	GetWebPagePreview({required this.message, required this.entities});

	static GetWebPagePreview fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var message = reader.tgReadString();var entities;if ((flags & 8)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}		return new GetWebPagePreview(message : message, entities : entities);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2338894028,4),[0,0,0,0],serializeBytes(this.message),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ExportChatInvite {
    static const CONSTRUCTOR_ID = 2687296981;
    static const SUBCLASS_OF_ID = 3027536472;
    final classType = "request";
    final ID = 2687296981;
	bool legacyRevokePermanent;
	bool requestNeeded;
	var peer;
	int expireDate;
	int usageLimit;
	String title;


	ExportChatInvite({required this.legacyRevokePermanent, required this.requestNeeded, required this.peer, required this.expireDate, required this.usageLimit, required this.title});

	static ExportChatInvite fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final legacyRevokePermanent = false;final requestNeeded = false;var peer = reader.tgReadObject();var expireDate;if ((flags & 1)==1){expireDate = reader.readInt(); } else {expireDate=null;}var usageLimit;if ((flags & 2)==1){usageLimit = reader.readInt(); } else {usageLimit=null;}var title;if ((flags & 16)==1){title = reader.tgReadString(); } else {title=null;}		return new ExportChatInvite(legacyRevokePermanent : legacyRevokePermanent, requestNeeded : requestNeeded, peer : peer, expireDate : expireDate, usageLimit : usageLimit, title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2687296981,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.expireDate==null||this.expireDate==false)?new List<int>.empty():[readBufferFromBigInt(this.expireDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.usageLimit==null||this.usageLimit==false)?new List<int>.empty():[readBufferFromBigInt(this.usageLimit,4,little:true,signed:true)].expand((element) => element).toList(),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class CheckChatInvite {
    static const CONSTRUCTOR_ID = 1051570619;
    static const SUBCLASS_OF_ID = 72750902;
    final classType = "request";
    final ID = 1051570619;
	String hash;


	CheckChatInvite({required this.hash});

	static CheckChatInvite fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.tgReadString();		return new CheckChatInvite(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1051570619,4),serializeBytes(this.hash),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ImportChatInvite {
    static const CONSTRUCTOR_ID = 1817183516;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1817183516;
	String hash;


	ImportChatInvite({required this.hash});

	static ImportChatInvite fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.tgReadString();		return new ImportChatInvite(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1817183516,4),serializeBytes(this.hash),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetStickerSet {
    static const CONSTRUCTOR_ID = 3365989492;
    static const SUBCLASS_OF_ID = 2607827546;
    final classType = "request";
    final ID = 3365989492;
	var stickerset;
	int hash;


	GetStickerSet({required this.stickerset, required this.hash});

	static GetStickerSet fromReader(BinaryReader reader) {
	var temp,len;var stickerset = reader.tgReadObject();var hash = reader.readInt();		return new GetStickerSet(stickerset : stickerset, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3365989492,4),(this.stickerset.getBytes() as List<int>),readBufferFromBigInt(this.hash,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class InstallStickerSet {
    static const CONSTRUCTOR_ID = 3348096096;
    static const SUBCLASS_OF_ID = 1741373416;
    final classType = "request";
    final ID = 3348096096;
	var stickerset;
	bool archived;


	InstallStickerSet({required this.stickerset, required this.archived});

	static InstallStickerSet fromReader(BinaryReader reader) {
	var temp,len;var stickerset = reader.tgReadObject();var archived = reader.tgReadBool();		return new InstallStickerSet(stickerset : stickerset, archived : archived);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3348096096,4),(this.stickerset.getBytes() as List<int>),[this.archived ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class UninstallStickerSet {
    static const CONSTRUCTOR_ID = 4184757726;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 4184757726;
	var stickerset;


	UninstallStickerSet({required this.stickerset});

	static UninstallStickerSet fromReader(BinaryReader reader) {
	var temp,len;var stickerset = reader.tgReadObject();		return new UninstallStickerSet(stickerset : stickerset);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4184757726,4),(this.stickerset.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class StartBot {
    static const CONSTRUCTOR_ID = 3873403768;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3873403768;
	var bot;
	var peer;
	BigInt randomId;
	String startParam;


	StartBot({required this.bot, required this.peer, required this.randomId, required this.startParam});

	static StartBot fromReader(BinaryReader reader) {
	var temp,len;var bot = reader.tgReadObject();var peer = reader.tgReadObject();var randomId = reader.readLong();var startParam = reader.tgReadString();		return new StartBot(bot : bot, peer : peer, randomId : randomId, startParam : startParam);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3873403768,4),(this.bot.getBytes() as List<int>),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.randomId,8,little:true,signed:true),serializeBytes(this.startParam),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetMessagesViews {
    static const CONSTRUCTOR_ID = 1468322785;
    static const SUBCLASS_OF_ID = 2947935132;
    final classType = "request";
    final ID = 1468322785;
	var peer;
	List<int> id;
	bool increment;


	GetMessagesViews({required this.peer, required this.id, required this.increment});

	static GetMessagesViews fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();reader.readInt();
List<int> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readInt());
}var increment = reader.tgReadBool();		return new GetMessagesViews(peer : peer, id : id, increment : increment);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1468322785,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),[this.increment ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditChatAdmin {
    static const CONSTRUCTOR_ID = 2824589762;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 2824589762;
	BigInt chatId;
	var userId;
	bool isAdmin;


	EditChatAdmin({required this.chatId, required this.userId, required this.isAdmin});

	static EditChatAdmin fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();var userId = reader.tgReadObject();var isAdmin = reader.tgReadBool();		return new EditChatAdmin(chatId : chatId, userId : userId, isAdmin : isAdmin);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2824589762,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),(this.userId.getBytes() as List<int>),[this.isAdmin ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class MigrateChat {
    static const CONSTRUCTOR_ID = 2726777625;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2726777625;
	BigInt chatId;


	MigrateChat({required this.chatId});

	static MigrateChat fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();		return new MigrateChat(chatId : chatId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2726777625,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SearchGlobal {
    static const CONSTRUCTOR_ID = 1271290010;
    static const SUBCLASS_OF_ID = 3568569182;
    final classType = "request";
    final ID = 1271290010;
	int folderId;
	String q;
	var filter;
	int minDate;
	int maxDate;
	int offsetRate;
	var offsetPeer;
	int offsetId;
	int limit;


	SearchGlobal({required this.folderId, required this.q, required this.filter, required this.minDate, required this.maxDate, required this.offsetRate, required this.offsetPeer, required this.offsetId, required this.limit});

	static SearchGlobal fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var folderId;if ((flags & 1)==1){folderId = reader.readInt(); } else {folderId=null;}var q = reader.tgReadString();var filter = reader.tgReadObject();var minDate = reader.readInt();var maxDate = reader.readInt();var offsetRate = reader.readInt();var offsetPeer = reader.tgReadObject();var offsetId = reader.readInt();var limit = reader.readInt();		return new SearchGlobal(folderId : folderId, q : q, filter : filter, minDate : minDate, maxDate : maxDate, offsetRate : offsetRate, offsetPeer : offsetPeer, offsetId : offsetId, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1271290010,4),[0,0,0,0],(this.folderId==null||this.folderId==false)?new List<int>.empty():[readBufferFromBigInt(this.folderId,4,little:true,signed:true)].expand((element) => element).toList(),serializeBytes(this.q),(this.filter.getBytes() as List<int>),readBufferFromBigInt(this.minDate,4,little:true,signed:true),readBufferFromBigInt(this.maxDate,4,little:true,signed:true),readBufferFromBigInt(this.offsetRate,4,little:true,signed:true),(this.offsetPeer.getBytes() as List<int>),readBufferFromBigInt(this.offsetId,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReorderStickerSets {
    static const CONSTRUCTOR_ID = 2016638777;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 2016638777;
	bool masks;
	List<BigInt> order;


	ReorderStickerSets({required this.masks, required this.order});

	static ReorderStickerSets fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final masks = false;reader.readInt();
List<BigInt> order = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		order.add(reader.readLong());
}		return new ReorderStickerSets(masks : masks, order : order);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2016638777,4),[0,0,0,0],readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.order.length,4,little:true,signed:true),this.order.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetDocumentByHash {
    static const CONSTRUCTOR_ID = 2985428511;
    static const SUBCLASS_OF_ID = 555739168;
    final classType = "request";
    final ID = 2985428511;
	List<int> sha256;
	BigInt size;
	String mimeType;


	GetDocumentByHash({required this.sha256, required this.size, required this.mimeType});

	static GetDocumentByHash fromReader(BinaryReader reader) {
	var temp,len;var sha256 = reader.tgReadBytes();var size = reader.readLong();var mimeType = reader.tgReadString();		return new GetDocumentByHash(sha256 : sha256, size : size, mimeType : mimeType);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2985428511,4),serializeBytes(this.sha256),readBufferFromBigInt(this.size,8,little:true,signed:true),serializeBytes(this.mimeType),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetSavedGifs {
    static const CONSTRUCTOR_ID = 1559270965;
    static const SUBCLASS_OF_ID = 2794152437;
    final classType = "request";
    final ID = 1559270965;
	BigInt hash;


	GetSavedGifs({required this.hash});

	static GetSavedGifs fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();		return new GetSavedGifs(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1559270965,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SaveGif {
    static const CONSTRUCTOR_ID = 846868683;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 846868683;
	var id;
	bool unsave;


	SaveGif({required this.id, required this.unsave});

	static SaveGif fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();var unsave = reader.tgReadBool();		return new SaveGif(id : id, unsave : unsave);
	}
	List<int> getBytes(){return [readBufferFromBigInt(846868683,4),(this.id.getBytes() as List<int>),[this.unsave ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetInlineBotResults {
    static const CONSTRUCTOR_ID = 1364105629;
    static const SUBCLASS_OF_ID = 1054136777;
    final classType = "request";
    final ID = 1364105629;
	var bot;
	var peer;
	var geoPoint;
	String query;
	String offset;


	GetInlineBotResults({required this.bot, required this.peer, required this.geoPoint, required this.query, required this.offset});

	static GetInlineBotResults fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var bot = reader.tgReadObject();var peer = reader.tgReadObject();var geoPoint;if ((flags & 1)==1){geoPoint = reader.tgReadObject(); } else {geoPoint=null;}var query = reader.tgReadString();var offset = reader.tgReadString();		return new GetInlineBotResults(bot : bot, peer : peer, geoPoint : geoPoint, query : query, offset : offset);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1364105629,4),[0,0,0,0],(this.bot.getBytes() as List<int>),(this.peer.getBytes() as List<int>),(this.geoPoint==null||this.geoPoint==false)?new List<int>.empty():[(this.geoPoint.getBytes() as List<int>)].expand((element) => element).toList(),serializeBytes(this.query),serializeBytes(this.offset),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetInlineBotResults {
    static const CONSTRUCTOR_ID = 3948847622;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3948847622;
	bool gallery;
	bool private;
	BigInt queryId;
	List<dynamic> results;
	int cacheTime;
	String nextOffset;
	var switchPm;


	SetInlineBotResults({required this.gallery, required this.private, required this.queryId, required this.results, required this.cacheTime, required this.nextOffset, required this.switchPm});

	static SetInlineBotResults fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final gallery = false;final private = false;var queryId = reader.readLong();reader.readInt();
List<dynamic> results = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		results.add(reader.tgReadObject());
}var cacheTime = reader.readInt();var nextOffset;if ((flags & 4)==1){nextOffset = reader.tgReadString(); } else {nextOffset=null;}var switchPm;if ((flags & 8)==1){switchPm = reader.tgReadObject(); } else {switchPm=null;}		return new SetInlineBotResults(gallery : gallery, private : private, queryId : queryId, results : results, cacheTime : cacheTime, nextOffset : nextOffset, switchPm : switchPm);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3948847622,4),[0,0,0,0],readBufferFromBigInt(this.queryId,8,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.results.length,4,little:true,signed:true),this.results.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(this.cacheTime,4,little:true,signed:true),(this.nextOffset==null||this.nextOffset==false)?new List<int>.empty():[serializeBytes(this.nextOffset)].expand((element) => element).toList(),(this.switchPm==null||this.switchPm==false)?new List<int>.empty():[(this.switchPm.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendInlineBotResult {
    static const CONSTRUCTOR_ID = 2057376407;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2057376407;
	bool silent;
	bool background;
	bool clearDraft;
	bool hideVia;
	var peer;
	int replyToMsgId;
	BigInt randomId;
	BigInt queryId;
	String id;
	int scheduleDate;
	var sendAs;


	SendInlineBotResult({required this.silent, required this.background, required this.clearDraft, required this.hideVia, required this.peer, required this.replyToMsgId, required this.randomId, required this.queryId, required this.id, required this.scheduleDate, required this.sendAs});

	static SendInlineBotResult fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final silent = false;final background = false;final clearDraft = false;final hideVia = false;var peer = reader.tgReadObject();var replyToMsgId;if ((flags & 1)==1){replyToMsgId = reader.readInt(); } else {replyToMsgId=null;}var randomId = reader.readLong();var queryId = reader.readLong();var id = reader.tgReadString();var scheduleDate;if ((flags & 1024)==1){scheduleDate = reader.readInt(); } else {scheduleDate=null;}var sendAs;if ((flags & 8192)==1){sendAs = reader.tgReadObject(); } else {sendAs=null;}		return new SendInlineBotResult(silent : silent, background : background, clearDraft : clearDraft, hideVia : hideVia, peer : peer, replyToMsgId : replyToMsgId, randomId : randomId, queryId : queryId, id : id, scheduleDate : scheduleDate, sendAs : sendAs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2057376407,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.replyToMsgId==null||this.replyToMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.replyToMsgId,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.randomId,8,little:true,signed:true),readBufferFromBigInt(this.queryId,8,little:true,signed:true),serializeBytes(this.id),(this.scheduleDate==null||this.scheduleDate==false)?new List<int>.empty():[readBufferFromBigInt(this.scheduleDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.sendAs==null||this.sendAs==false)?new List<int>.empty():[(this.sendAs.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetMessageEditData {
    static const CONSTRUCTOR_ID = 4255550774;
    static const SUBCLASS_OF_ID = 4215772317;
    final classType = "request";
    final ID = 4255550774;
	var peer;
	int id;


	GetMessageEditData({required this.peer, required this.id});

	static GetMessageEditData fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var id = reader.readInt();		return new GetMessageEditData(peer : peer, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4255550774,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.id,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditMessage {
    static const CONSTRUCTOR_ID = 1224152952;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1224152952;
	bool noWebpage;
	var peer;
	int id;
	String message;
	var media;
	var replyMarkup;
	List<dynamic> entities;
	int scheduleDate;


	EditMessage({required this.noWebpage, required this.peer, required this.id, required this.message, required this.media, required this.replyMarkup, required this.entities, required this.scheduleDate});

	static EditMessage fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final noWebpage = false;var peer = reader.tgReadObject();var id = reader.readInt();var message;if ((flags & 2048)==1){message = reader.tgReadString(); } else {message=null;}var media;if ((flags & 16384)==1){media = reader.tgReadObject(); } else {media=null;}var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}var entities;if ((flags & 8)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}var scheduleDate;if ((flags & 32768)==1){scheduleDate = reader.readInt(); } else {scheduleDate=null;}		return new EditMessage(noWebpage : noWebpage, peer : peer, id : id, message : message, media : media, replyMarkup : replyMarkup, entities : entities, scheduleDate : scheduleDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1224152952,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.id,4,little:true,signed:true),(this.message==null||this.message==false)?new List<int>.empty():[serializeBytes(this.message)].expand((element) => element).toList(),(this.media==null||this.media==false)?new List<int>.empty():[(this.media.getBytes() as List<int>)].expand((element) => element).toList(),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.scheduleDate==null||this.scheduleDate==false)?new List<int>.empty():[readBufferFromBigInt(this.scheduleDate,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditInlineBotMessage {
    static const CONSTRUCTOR_ID = 2203418042;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 2203418042;
	bool noWebpage;
	var id;
	String message;
	var media;
	var replyMarkup;
	List<dynamic> entities;


	EditInlineBotMessage({required this.noWebpage, required this.id, required this.message, required this.media, required this.replyMarkup, required this.entities});

	static EditInlineBotMessage fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final noWebpage = false;var id = reader.tgReadObject();var message;if ((flags & 2048)==1){message = reader.tgReadString(); } else {message=null;}var media;if ((flags & 16384)==1){media = reader.tgReadObject(); } else {media=null;}var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}var entities;if ((flags & 8)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}		return new EditInlineBotMessage(noWebpage : noWebpage, id : id, message : message, media : media, replyMarkup : replyMarkup, entities : entities);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2203418042,4),[0,0,0,0],(this.id.getBytes() as List<int>),(this.message==null||this.message==false)?new List<int>.empty():[serializeBytes(this.message)].expand((element) => element).toList(),(this.media==null||this.media==false)?new List<int>.empty():[(this.media.getBytes() as List<int>)].expand((element) => element).toList(),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetBotCallbackAnswer {
    static const CONSTRUCTOR_ID = 2470627847;
    static const SUBCLASS_OF_ID = 1817039244;
    final classType = "request";
    final ID = 2470627847;
	bool game;
	var peer;
	int msgId;
	List<int> data;
	var password;


	GetBotCallbackAnswer({required this.game, required this.peer, required this.msgId, required this.data, required this.password});

	static GetBotCallbackAnswer fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final game = false;var peer = reader.tgReadObject();var msgId = reader.readInt();var data;if ((flags & 1)==1){data = reader.tgReadBytes(); } else {data=null;}var password;if ((flags & 4)==1){password = reader.tgReadObject(); } else {password=null;}		return new GetBotCallbackAnswer(game : game, peer : peer, msgId : msgId, data : data, password : password);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2470627847,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),(this.data==null||this.data==false)?new List<int>.empty():[serializeBytes(this.data)].expand((element) => element).toList(),(this.password==null||this.password==false)?new List<int>.empty():[(this.password.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetBotCallbackAnswer {
    static const CONSTRUCTOR_ID = 3582923530;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3582923530;
	bool alert;
	BigInt queryId;
	String message;
	String url;
	int cacheTime;


	SetBotCallbackAnswer({required this.alert, required this.queryId, required this.message, required this.url, required this.cacheTime});

	static SetBotCallbackAnswer fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final alert = false;var queryId = reader.readLong();var message;if ((flags & 1)==1){message = reader.tgReadString(); } else {message=null;}var url;if ((flags & 4)==1){url = reader.tgReadString(); } else {url=null;}var cacheTime = reader.readInt();		return new SetBotCallbackAnswer(alert : alert, queryId : queryId, message : message, url : url, cacheTime : cacheTime);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3582923530,4),[0,0,0,0],readBufferFromBigInt(this.queryId,8,little:true,signed:true),(this.message==null||this.message==false)?new List<int>.empty():[serializeBytes(this.message)].expand((element) => element).toList(),(this.url==null||this.url==false)?new List<int>.empty():[serializeBytes(this.url)].expand((element) => element).toList(),readBufferFromBigInt(this.cacheTime,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetPeerDialogs {
    static const CONSTRUCTOR_ID = 3832593661;
    static const SUBCLASS_OF_ID = 986120498;
    final classType = "request";
    final ID = 3832593661;
	List<dynamic> peers;


	GetPeerDialogs({required this.peers});

	static GetPeerDialogs fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> peers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		peers.add(reader.tgReadObject());
}		return new GetPeerDialogs(peers : peers);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3832593661,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.peers.length,4,little:true,signed:true),this.peers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SaveDraft {
    static const CONSTRUCTOR_ID = 3157909835;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3157909835;
	bool noWebpage;
	int replyToMsgId;
	var peer;
	String message;
	List<dynamic> entities;


	SaveDraft({required this.noWebpage, required this.replyToMsgId, required this.peer, required this.message, required this.entities});

	static SaveDraft fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final noWebpage = false;var replyToMsgId;if ((flags & 1)==1){replyToMsgId = reader.readInt(); } else {replyToMsgId=null;}var peer = reader.tgReadObject();var message = reader.tgReadString();var entities;if ((flags & 8)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}		return new SaveDraft(noWebpage : noWebpage, replyToMsgId : replyToMsgId, peer : peer, message : message, entities : entities);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3157909835,4),[0,0,0,0],(this.replyToMsgId==null||this.replyToMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.replyToMsgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.peer.getBytes() as List<int>),serializeBytes(this.message),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAllDrafts {
    static const CONSTRUCTOR_ID = 1782549861;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1782549861;


	GetAllDrafts();

	static GetAllDrafts fromReader(BinaryReader reader) {
	var temp,len;		return new GetAllDrafts();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1782549861,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetFeaturedStickers {
    static const CONSTRUCTOR_ID = 1685588756;
    static const SUBCLASS_OF_ID = 638891810;
    final classType = "request";
    final ID = 1685588756;
	BigInt hash;


	GetFeaturedStickers({required this.hash});

	static GetFeaturedStickers fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();		return new GetFeaturedStickers(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1685588756,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReadFeaturedStickers {
    static const CONSTRUCTOR_ID = 1527873830;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 1527873830;
	List<BigInt> id;


	ReadFeaturedStickers({required this.id});

	static ReadFeaturedStickers fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readLong());
}		return new ReadFeaturedStickers(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1527873830,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetRecentStickers {
    static const CONSTRUCTOR_ID = 2645114939;
    static const SUBCLASS_OF_ID = 4151281283;
    final classType = "request";
    final ID = 2645114939;
	bool attached;
	BigInt hash;


	GetRecentStickers({required this.attached, required this.hash});

	static GetRecentStickers fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final attached = false;var hash = reader.readLong();		return new GetRecentStickers(attached : attached, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2645114939,4),[0,0,0,0],readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SaveRecentSticker {
    static const CONSTRUCTOR_ID = 958863608;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 958863608;
	bool attached;
	var id;
	bool unsave;


	SaveRecentSticker({required this.attached, required this.id, required this.unsave});

	static SaveRecentSticker fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final attached = false;var id = reader.tgReadObject();var unsave = reader.tgReadBool();		return new SaveRecentSticker(attached : attached, id : id, unsave : unsave);
	}
	List<int> getBytes(){return [readBufferFromBigInt(958863608,4),[0,0,0,0],(this.id.getBytes() as List<int>),[this.unsave ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ClearRecentStickers {
    static const CONSTRUCTOR_ID = 2308530221;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 2308530221;
	bool attached;


	ClearRecentStickers({required this.attached});

	static ClearRecentStickers fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final attached = false;		return new ClearRecentStickers(attached : attached);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2308530221,4),[0,0,0,0],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetArchivedStickers {
    static const CONSTRUCTOR_ID = 1475442322;
    static const SUBCLASS_OF_ID = 1922488177;
    final classType = "request";
    final ID = 1475442322;
	bool masks;
	BigInt offsetId;
	int limit;


	GetArchivedStickers({required this.masks, required this.offsetId, required this.limit});

	static GetArchivedStickers fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final masks = false;var offsetId = reader.readLong();var limit = reader.readInt();		return new GetArchivedStickers(masks : masks, offsetId : offsetId, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1475442322,4),[0,0,0,0],readBufferFromBigInt(this.offsetId,8,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetMaskStickers {
    static const CONSTRUCTOR_ID = 1678738104;
    static const SUBCLASS_OF_ID = 1166231593;
    final classType = "request";
    final ID = 1678738104;
	BigInt hash;


	GetMaskStickers({required this.hash});

	static GetMaskStickers fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();		return new GetMaskStickers(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1678738104,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAttachedStickers {
    static const CONSTRUCTOR_ID = 3428542412;
    static const SUBCLASS_OF_ID = 3423756139;
    final classType = "request";
    final ID = 3428542412;
	var media;


	GetAttachedStickers({required this.media});

	static GetAttachedStickers fromReader(BinaryReader reader) {
	var temp,len;var media = reader.tgReadObject();		return new GetAttachedStickers(media : media);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3428542412,4),(this.media.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetGameScore {
    static const CONSTRUCTOR_ID = 2398678208;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2398678208;
	bool editMessage;
	bool force;
	var peer;
	int id;
	var userId;
	int score;


	SetGameScore({required this.editMessage, required this.force, required this.peer, required this.id, required this.userId, required this.score});

	static SetGameScore fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final editMessage = false;final force = false;var peer = reader.tgReadObject();var id = reader.readInt();var userId = reader.tgReadObject();var score = reader.readInt();		return new SetGameScore(editMessage : editMessage, force : force, peer : peer, id : id, userId : userId, score : score);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2398678208,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.id,4,little:true,signed:true),(this.userId.getBytes() as List<int>),readBufferFromBigInt(this.score,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetInlineGameScore {
    static const CONSTRUCTOR_ID = 363700068;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 363700068;
	bool editMessage;
	bool force;
	var id;
	var userId;
	int score;


	SetInlineGameScore({required this.editMessage, required this.force, required this.id, required this.userId, required this.score});

	static SetInlineGameScore fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final editMessage = false;final force = false;var id = reader.tgReadObject();var userId = reader.tgReadObject();var score = reader.readInt();		return new SetInlineGameScore(editMessage : editMessage, force : force, id : id, userId : userId, score : score);
	}
	List<int> getBytes(){return [readBufferFromBigInt(363700068,4),[0,0,0,0],(this.id.getBytes() as List<int>),(this.userId.getBytes() as List<int>),readBufferFromBigInt(this.score,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetGameHighScores {
    static const CONSTRUCTOR_ID = 3894568093;
    static const SUBCLASS_OF_ID = 1825412605;
    final classType = "request";
    final ID = 3894568093;
	var peer;
	int id;
	var userId;


	GetGameHighScores({required this.peer, required this.id, required this.userId});

	static GetGameHighScores fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var id = reader.readInt();var userId = reader.tgReadObject();		return new GetGameHighScores(peer : peer, id : id, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3894568093,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.id,4,little:true,signed:true),(this.userId.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetInlineGameHighScores {
    static const CONSTRUCTOR_ID = 258170395;
    static const SUBCLASS_OF_ID = 1825412605;
    final classType = "request";
    final ID = 258170395;
	var id;
	var userId;


	GetInlineGameHighScores({required this.id, required this.userId});

	static GetInlineGameHighScores fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();var userId = reader.tgReadObject();		return new GetInlineGameHighScores(id : id, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(258170395,4),(this.id.getBytes() as List<int>),(this.userId.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetCommonChats {
    static const CONSTRUCTOR_ID = 3826032900;
    static const SUBCLASS_OF_ID = 2580925204;
    final classType = "request";
    final ID = 3826032900;
	var userId;
	BigInt maxId;
	int limit;


	GetCommonChats({required this.userId, required this.maxId, required this.limit});

	static GetCommonChats fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.tgReadObject();var maxId = reader.readLong();var limit = reader.readInt();		return new GetCommonChats(userId : userId, maxId : maxId, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3826032900,4),(this.userId.getBytes() as List<int>),readBufferFromBigInt(this.maxId,8,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAllChats {
    static const CONSTRUCTOR_ID = 2271179966;
    static const SUBCLASS_OF_ID = 2580925204;
    final classType = "request";
    final ID = 2271179966;
	List<BigInt> exceptIds;


	GetAllChats({required this.exceptIds});

	static GetAllChats fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> exceptIds = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		exceptIds.add(reader.readLong());
}		return new GetAllChats(exceptIds : exceptIds);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2271179966,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.exceptIds.length,4,little:true,signed:true),this.exceptIds.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetWebPage {
    static const CONSTRUCTOR_ID = 852135825;
    static const SUBCLASS_OF_ID = 1437168769;
    final classType = "request";
    final ID = 852135825;
	String url;
	int hash;


	GetWebPage({required this.url, required this.hash});

	static GetWebPage fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();var hash = reader.readInt();		return new GetWebPage(url : url, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(852135825,4),serializeBytes(this.url),readBufferFromBigInt(this.hash,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ToggleDialogPin {
    static const CONSTRUCTOR_ID = 2805064279;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 2805064279;
	bool pinned;
	var peer;


	ToggleDialogPin({required this.pinned, required this.peer});

	static ToggleDialogPin fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final pinned = false;var peer = reader.tgReadObject();		return new ToggleDialogPin(pinned : pinned, peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2805064279,4),[0,0,0,0],(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReorderPinnedDialogs {
    static const CONSTRUCTOR_ID = 991616823;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 991616823;
	bool force;
	int folderId;
	List<dynamic> order;


	ReorderPinnedDialogs({required this.force, required this.folderId, required this.order});

	static ReorderPinnedDialogs fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final force = false;var folderId = reader.readInt();reader.readInt();
List<dynamic> order = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		order.add(reader.tgReadObject());
}		return new ReorderPinnedDialogs(force : force, folderId : folderId, order : order);
	}
	List<int> getBytes(){return [readBufferFromBigInt(991616823,4),[0,0,0,0],readBufferFromBigInt(this.folderId,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.order.length,4,little:true,signed:true),this.order.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetPinnedDialogs {
    static const CONSTRUCTOR_ID = 3602468338;
    static const SUBCLASS_OF_ID = 986120498;
    final classType = "request";
    final ID = 3602468338;
	int folderId;


	GetPinnedDialogs({required this.folderId});

	static GetPinnedDialogs fromReader(BinaryReader reader) {
	var temp,len;var folderId = reader.readInt();		return new GetPinnedDialogs(folderId : folderId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3602468338,4),readBufferFromBigInt(this.folderId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetBotShippingResults {
    static const CONSTRUCTOR_ID = 3858133754;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3858133754;
	BigInt queryId;
	String error;
	List<dynamic> shippingOptions;


	SetBotShippingResults({required this.queryId, required this.error, required this.shippingOptions});

	static SetBotShippingResults fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var queryId = reader.readLong();var error;if ((flags & 1)==1){error = reader.tgReadString(); } else {error=null;}var shippingOptions;if ((flags & 2)==1){reader.readInt();
List<dynamic> shippingOptions = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		shippingOptions.add(reader.tgReadObject());
} } else {shippingOptions=null;}		return new SetBotShippingResults(queryId : queryId, error : error, shippingOptions : shippingOptions);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3858133754,4),[0,0,0,0],readBufferFromBigInt(this.queryId,8,little:true,signed:true),(this.error==null||this.error==false)?new List<int>.empty():[serializeBytes(this.error)].expand((element) => element).toList(),(this.shippingOptions==null||this.shippingOptions==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.shippingOptions.length,4,little:true,signed:true),this.shippingOptions.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetBotPrecheckoutResults {
    static const CONSTRUCTOR_ID = 163765653;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 163765653;
	bool success;
	BigInt queryId;
	String error;


	SetBotPrecheckoutResults({required this.success, required this.queryId, required this.error});

	static SetBotPrecheckoutResults fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final success = false;var queryId = reader.readLong();var error;if ((flags & 1)==1){error = reader.tgReadString(); } else {error=null;}		return new SetBotPrecheckoutResults(success : success, queryId : queryId, error : error);
	}
	List<int> getBytes(){return [readBufferFromBigInt(163765653,4),[0,0,0,0],readBufferFromBigInt(this.queryId,8,little:true,signed:true),(this.error==null||this.error==false)?new List<int>.empty():[serializeBytes(this.error)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class UploadMedia {
    static const CONSTRUCTOR_ID = 1369162417;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "request";
    final ID = 1369162417;
	var peer;
	var media;


	UploadMedia({required this.peer, required this.media});

	static UploadMedia fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var media = reader.tgReadObject();		return new UploadMedia(peer : peer, media : media);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1369162417,4),(this.peer.getBytes() as List<int>),(this.media.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendScreenshotNotification {
    static const CONSTRUCTOR_ID = 3380473888;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3380473888;
	var peer;
	int replyToMsgId;
	BigInt randomId;


	SendScreenshotNotification({required this.peer, required this.replyToMsgId, required this.randomId});

	static SendScreenshotNotification fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var replyToMsgId = reader.readInt();var randomId = reader.readLong();		return new SendScreenshotNotification(peer : peer, replyToMsgId : replyToMsgId, randomId : randomId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3380473888,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.replyToMsgId,4,little:true,signed:true),readBufferFromBigInt(this.randomId,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetFavedStickers {
    static const CONSTRUCTOR_ID = 82946729;
    static const SUBCLASS_OF_ID = 2389929913;
    final classType = "request";
    final ID = 82946729;
	BigInt hash;


	GetFavedStickers({required this.hash});

	static GetFavedStickers fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();		return new GetFavedStickers(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(82946729,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class FaveSticker {
    static const CONSTRUCTOR_ID = 3120547163;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3120547163;
	var id;
	bool unfave;


	FaveSticker({required this.id, required this.unfave});

	static FaveSticker fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();var unfave = reader.tgReadBool();		return new FaveSticker(id : id, unfave : unfave);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3120547163,4),(this.id.getBytes() as List<int>),[this.unfave ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetUnreadMentions {
    static const CONSTRUCTOR_ID = 1180140658;
    static const SUBCLASS_OF_ID = 3568569182;
    final classType = "request";
    final ID = 1180140658;
	var peer;
	int offsetId;
	int addOffset;
	int limit;
	int maxId;
	int minId;


	GetUnreadMentions({required this.peer, required this.offsetId, required this.addOffset, required this.limit, required this.maxId, required this.minId});

	static GetUnreadMentions fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var offsetId = reader.readInt();var addOffset = reader.readInt();var limit = reader.readInt();var maxId = reader.readInt();var minId = reader.readInt();		return new GetUnreadMentions(peer : peer, offsetId : offsetId, addOffset : addOffset, limit : limit, maxId : maxId, minId : minId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1180140658,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.offsetId,4,little:true,signed:true),readBufferFromBigInt(this.addOffset,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),readBufferFromBigInt(this.maxId,4,little:true,signed:true),readBufferFromBigInt(this.minId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReadMentions {
    static const CONSTRUCTOR_ID = 251759059;
    static const SUBCLASS_OF_ID = 743031062;
    final classType = "request";
    final ID = 251759059;
	var peer;


	ReadMentions({required this.peer});

	static ReadMentions fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new ReadMentions(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(251759059,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetRecentLocations {
    static const CONSTRUCTOR_ID = 1881817312;
    static const SUBCLASS_OF_ID = 3568569182;
    final classType = "request";
    final ID = 1881817312;
	var peer;
	int limit;
	BigInt hash;


	GetRecentLocations({required this.peer, required this.limit, required this.hash});

	static GetRecentLocations fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var limit = reader.readInt();var hash = reader.readLong();		return new GetRecentLocations(peer : peer, limit : limit, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1881817312,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.limit,4,little:true,signed:true),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendMultiMedia {
    static const CONSTRUCTOR_ID = 4160951183;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 4160951183;
	bool silent;
	bool background;
	bool clearDraft;
	bool noforwards;
	var peer;
	int replyToMsgId;
	List<dynamic> multiMedia;
	int scheduleDate;
	var sendAs;


	SendMultiMedia({required this.silent, required this.background, required this.clearDraft, required this.noforwards, required this.peer, required this.replyToMsgId, required this.multiMedia, required this.scheduleDate, required this.sendAs});

	static SendMultiMedia fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final silent = false;final background = false;final clearDraft = false;final noforwards = false;var peer = reader.tgReadObject();var replyToMsgId;if ((flags & 1)==1){replyToMsgId = reader.readInt(); } else {replyToMsgId=null;}reader.readInt();
List<dynamic> multiMedia = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		multiMedia.add(reader.tgReadObject());
}var scheduleDate;if ((flags & 1024)==1){scheduleDate = reader.readInt(); } else {scheduleDate=null;}var sendAs;if ((flags & 8192)==1){sendAs = reader.tgReadObject(); } else {sendAs=null;}		return new SendMultiMedia(silent : silent, background : background, clearDraft : clearDraft, noforwards : noforwards, peer : peer, replyToMsgId : replyToMsgId, multiMedia : multiMedia, scheduleDate : scheduleDate, sendAs : sendAs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4160951183,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.replyToMsgId==null||this.replyToMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.replyToMsgId,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.multiMedia.length,4,little:true,signed:true),this.multiMedia.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.scheduleDate==null||this.scheduleDate==false)?new List<int>.empty():[readBufferFromBigInt(this.scheduleDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.sendAs==null||this.sendAs==false)?new List<int>.empty():[(this.sendAs.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class UploadEncryptedFile {
    static const CONSTRUCTOR_ID = 1347929239;
    static const SUBCLASS_OF_ID = 2217371584;
    final classType = "request";
    final ID = 1347929239;
	var peer;
	var file;


	UploadEncryptedFile({required this.peer, required this.file});

	static UploadEncryptedFile fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var file = reader.tgReadObject();		return new UploadEncryptedFile(peer : peer, file : file);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1347929239,4),(this.peer.getBytes() as List<int>),(this.file.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SearchStickerSets {
    static const CONSTRUCTOR_ID = 896555914;
    static const SUBCLASS_OF_ID = 68023137;
    final classType = "request";
    final ID = 896555914;
	bool excludeFeatured;
	String q;
	BigInt hash;


	SearchStickerSets({required this.excludeFeatured, required this.q, required this.hash});

	static SearchStickerSets fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final excludeFeatured = false;var q = reader.tgReadString();var hash = reader.readLong();		return new SearchStickerSets(excludeFeatured : excludeFeatured, q : q, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(896555914,4),[0,0,0,0],serializeBytes(this.q),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetSplitRanges {
    static const CONSTRUCTOR_ID = 486505992;
    static const SUBCLASS_OF_ID = 1537549572;
    final classType = "request";
    final ID = 486505992;


	GetSplitRanges();

	static GetSplitRanges fromReader(BinaryReader reader) {
	var temp,len;		return new GetSplitRanges();
	}
	List<int> getBytes(){return [readBufferFromBigInt(486505992,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class MarkDialogUnread {
    static const CONSTRUCTOR_ID = 3263617423;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3263617423;
	bool unread;
	var peer;


	MarkDialogUnread({required this.unread, required this.peer});

	static MarkDialogUnread fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final unread = false;var peer = reader.tgReadObject();		return new MarkDialogUnread(unread : unread, peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3263617423,4),[0,0,0,0],(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetDialogUnreadMarks {
    static const CONSTRUCTOR_ID = 585256482;
    static const SUBCLASS_OF_ID = 3200666329;
    final classType = "request";
    final ID = 585256482;


	GetDialogUnreadMarks();

	static GetDialogUnreadMarks fromReader(BinaryReader reader) {
	var temp,len;		return new GetDialogUnreadMarks();
	}
	List<int> getBytes(){return [readBufferFromBigInt(585256482,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ClearAllDrafts {
    static const CONSTRUCTOR_ID = 2119757468;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 2119757468;


	ClearAllDrafts();

	static ClearAllDrafts fromReader(BinaryReader reader) {
	var temp,len;		return new ClearAllDrafts();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2119757468,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class UpdatePinnedMessage {
    static const CONSTRUCTOR_ID = 3534419948;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3534419948;
	bool silent;
	bool unpin;
	bool pmOneside;
	var peer;
	int id;


	UpdatePinnedMessage({required this.silent, required this.unpin, required this.pmOneside, required this.peer, required this.id});

	static UpdatePinnedMessage fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final silent = false;final unpin = false;final pmOneside = false;var peer = reader.tgReadObject();var id = reader.readInt();		return new UpdatePinnedMessage(silent : silent, unpin : unpin, pmOneside : pmOneside, peer : peer, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3534419948,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.id,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendVote {
    static const CONSTRUCTOR_ID = 283795844;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 283795844;
	var peer;
	int msgId;
	List<List<int>> options;


	SendVote({required this.peer, required this.msgId, required this.options});

	static SendVote fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();reader.readInt();
List<List<int>> options = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		options.add(reader.tgReadBytes());
}		return new SendVote(peer : peer, msgId : msgId, options : options);
	}
	List<int> getBytes(){return [readBufferFromBigInt(283795844,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.options.length,4,little:true,signed:true),this.options.map((x)=>serializeBytes(x)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetPollResults {
    static const CONSTRUCTOR_ID = 1941660731;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1941660731;
	var peer;
	int msgId;


	GetPollResults({required this.peer, required this.msgId});

	static GetPollResults fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();		return new GetPollResults(peer : peer, msgId : msgId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1941660731,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetOnlines {
    static const CONSTRUCTOR_ID = 1848369232;
    static const SUBCLASS_OF_ID = 2357301306;
    final classType = "request";
    final ID = 1848369232;
	var peer;


	GetOnlines({required this.peer});

	static GetOnlines fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new GetOnlines(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1848369232,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditChatAbout {
    static const CONSTRUCTOR_ID = 3740665751;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3740665751;
	var peer;
	String about;


	EditChatAbout({required this.peer, required this.about});

	static EditChatAbout fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var about = reader.tgReadString();		return new EditChatAbout(peer : peer, about : about);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3740665751,4),(this.peer.getBytes() as List<int>),serializeBytes(this.about),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditChatDefaultBannedRights {
    static const CONSTRUCTOR_ID = 2777049921;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2777049921;
	var peer;
	var bannedRights;


	EditChatDefaultBannedRights({required this.peer, required this.bannedRights});

	static EditChatDefaultBannedRights fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var bannedRights = reader.tgReadObject();		return new EditChatDefaultBannedRights(peer : peer, bannedRights : bannedRights);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2777049921,4),(this.peer.getBytes() as List<int>),(this.bannedRights.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetEmojiKeywords {
    static const CONSTRUCTOR_ID = 899735650;
    static const SUBCLASS_OF_ID = 3531196018;
    final classType = "request";
    final ID = 899735650;
	String langCode;


	GetEmojiKeywords({required this.langCode});

	static GetEmojiKeywords fromReader(BinaryReader reader) {
	var temp,len;var langCode = reader.tgReadString();		return new GetEmojiKeywords(langCode : langCode);
	}
	List<int> getBytes(){return [readBufferFromBigInt(899735650,4),serializeBytes(this.langCode),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetEmojiKeywordsDifference {
    static const CONSTRUCTOR_ID = 352892591;
    static const SUBCLASS_OF_ID = 3531196018;
    final classType = "request";
    final ID = 352892591;
	String langCode;
	int fromVersion;


	GetEmojiKeywordsDifference({required this.langCode, required this.fromVersion});

	static GetEmojiKeywordsDifference fromReader(BinaryReader reader) {
	var temp,len;var langCode = reader.tgReadString();var fromVersion = reader.readInt();		return new GetEmojiKeywordsDifference(langCode : langCode, fromVersion : fromVersion);
	}
	List<int> getBytes(){return [readBufferFromBigInt(352892591,4),serializeBytes(this.langCode),readBufferFromBigInt(this.fromVersion,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetEmojiKeywordsLanguages {
    static const CONSTRUCTOR_ID = 1318675378;
    static const SUBCLASS_OF_ID = 3885355911;
    final classType = "request";
    final ID = 1318675378;
	List<String> langCodes;


	GetEmojiKeywordsLanguages({required this.langCodes});

	static GetEmojiKeywordsLanguages fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<String> langCodes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		langCodes.add(reader.tgReadString());
}		return new GetEmojiKeywordsLanguages(langCodes : langCodes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1318675378,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.langCodes.length,4,little:true,signed:true),this.langCodes.map((x)=>serializeBytes(x)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetEmojiURL {
    static const CONSTRUCTOR_ID = 3585149990;
    static const SUBCLASS_OF_ID = 530614809;
    final classType = "request";
    final ID = 3585149990;
	String langCode;


	GetEmojiURL({required this.langCode});

	static GetEmojiURL fromReader(BinaryReader reader) {
	var temp,len;var langCode = reader.tgReadString();		return new GetEmojiURL(langCode : langCode);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3585149990,4),serializeBytes(this.langCode),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetSearchCounters {
    static const CONSTRUCTOR_ID = 1932455680;
    static const SUBCLASS_OF_ID = 1809726574;
    final classType = "request";
    final ID = 1932455680;
	var peer;
	List<dynamic> filters;


	GetSearchCounters({required this.peer, required this.filters});

	static GetSearchCounters fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();reader.readInt();
List<dynamic> filters = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		filters.add(reader.tgReadObject());
}		return new GetSearchCounters(peer : peer, filters : filters);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1932455680,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.filters.length,4,little:true,signed:true),this.filters.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class RequestUrlAuth {
    static const CONSTRUCTOR_ID = 428848198;
    static const SUBCLASS_OF_ID = 2003159838;
    final classType = "request";
    final ID = 428848198;
	var peer;
	int msgId;
	int buttonId;
	String url;


	RequestUrlAuth({required this.peer, required this.msgId, required this.buttonId, required this.url});

	static RequestUrlAuth fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var peer;if ((flags & 2)==1){peer = reader.tgReadObject(); } else {peer=null;}var msgId;if ((flags & 2)==1){msgId = reader.readInt(); } else {msgId=null;}var buttonId;if ((flags & 2)==1){buttonId = reader.readInt(); } else {buttonId=null;}var url;if ((flags & 4)==1){url = reader.tgReadString(); } else {url=null;}		return new RequestUrlAuth(peer : peer, msgId : msgId, buttonId : buttonId, url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(428848198,4),[0,0,0,0],(this.peer==null||this.peer==false)?new List<int>.empty():[(this.peer.getBytes() as List<int>)].expand((element) => element).toList(),(this.msgId==null||this.msgId==false)?new List<int>.empty():[readBufferFromBigInt(this.msgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.buttonId==null||this.buttonId==false)?new List<int>.empty():[readBufferFromBigInt(this.buttonId,4,little:true,signed:true)].expand((element) => element).toList(),(this.url==null||this.url==false)?new List<int>.empty():[serializeBytes(this.url)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class AcceptUrlAuth {
    static const CONSTRUCTOR_ID = 2972479781;
    static const SUBCLASS_OF_ID = 2003159838;
    final classType = "request";
    final ID = 2972479781;
	bool writeAllowed;
	var peer;
	int msgId;
	int buttonId;
	String url;


	AcceptUrlAuth({required this.writeAllowed, required this.peer, required this.msgId, required this.buttonId, required this.url});

	static AcceptUrlAuth fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final writeAllowed = false;var peer;if ((flags & 2)==1){peer = reader.tgReadObject(); } else {peer=null;}var msgId;if ((flags & 2)==1){msgId = reader.readInt(); } else {msgId=null;}var buttonId;if ((flags & 2)==1){buttonId = reader.readInt(); } else {buttonId=null;}var url;if ((flags & 4)==1){url = reader.tgReadString(); } else {url=null;}		return new AcceptUrlAuth(writeAllowed : writeAllowed, peer : peer, msgId : msgId, buttonId : buttonId, url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2972479781,4),[0,0,0,0],(this.peer==null||this.peer==false)?new List<int>.empty():[(this.peer.getBytes() as List<int>)].expand((element) => element).toList(),(this.msgId==null||this.msgId==false)?new List<int>.empty():[readBufferFromBigInt(this.msgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.buttonId==null||this.buttonId==false)?new List<int>.empty():[readBufferFromBigInt(this.buttonId,4,little:true,signed:true)].expand((element) => element).toList(),(this.url==null||this.url==false)?new List<int>.empty():[serializeBytes(this.url)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class HidePeerSettingsBar {
    static const CONSTRUCTOR_ID = 1336717624;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 1336717624;
	var peer;


	HidePeerSettingsBar({required this.peer});

	static HidePeerSettingsBar fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new HidePeerSettingsBar(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1336717624,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetScheduledHistory {
    static const CONSTRUCTOR_ID = 4111889931;
    static const SUBCLASS_OF_ID = 3568569182;
    final classType = "request";
    final ID = 4111889931;
	var peer;
	BigInt hash;


	GetScheduledHistory({required this.peer, required this.hash});

	static GetScheduledHistory fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var hash = reader.readLong();		return new GetScheduledHistory(peer : peer, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4111889931,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetScheduledMessages {
    static const CONSTRUCTOR_ID = 3183150180;
    static const SUBCLASS_OF_ID = 3568569182;
    final classType = "request";
    final ID = 3183150180;
	var peer;
	List<int> id;


	GetScheduledMessages({required this.peer, required this.id});

	static GetScheduledMessages fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();reader.readInt();
List<int> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readInt());
}		return new GetScheduledMessages(peer : peer, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3183150180,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendScheduledMessages {
    static const CONSTRUCTOR_ID = 3174597898;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3174597898;
	var peer;
	List<int> id;


	SendScheduledMessages({required this.peer, required this.id});

	static SendScheduledMessages fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();reader.readInt();
List<int> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readInt());
}		return new SendScheduledMessages(peer : peer, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3174597898,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteScheduledMessages {
    static const CONSTRUCTOR_ID = 1504586518;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1504586518;
	var peer;
	List<int> id;


	DeleteScheduledMessages({required this.peer, required this.id});

	static DeleteScheduledMessages fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();reader.readInt();
List<int> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readInt());
}		return new DeleteScheduledMessages(peer : peer, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1504586518,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetPollVotes {
    static const CONSTRUCTOR_ID = 3094231054;
    static const SUBCLASS_OF_ID = 3256457349;
    final classType = "request";
    final ID = 3094231054;
	var peer;
	int id;
	List<int> option;
	String offset;
	int limit;


	GetPollVotes({required this.peer, required this.id, required this.option, required this.offset, required this.limit});

	static GetPollVotes fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var peer = reader.tgReadObject();var id = reader.readInt();var option;if ((flags & 1)==1){option = reader.tgReadBytes(); } else {option=null;}var offset;if ((flags & 2)==1){offset = reader.tgReadString(); } else {offset=null;}var limit = reader.readInt();		return new GetPollVotes(peer : peer, id : id, option : option, offset : offset, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3094231054,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.id,4,little:true,signed:true),(this.option==null||this.option==false)?new List<int>.empty():[serializeBytes(this.option)].expand((element) => element).toList(),(this.offset==null||this.offset==false)?new List<int>.empty():[serializeBytes(this.offset)].expand((element) => element).toList(),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ToggleStickerSets {
    static const CONSTRUCTOR_ID = 3037016042;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3037016042;
	bool uninstall;
	bool archive;
	bool unarchive;
	List<dynamic> stickersets;


	ToggleStickerSets({required this.uninstall, required this.archive, required this.unarchive, required this.stickersets});

	static ToggleStickerSets fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final uninstall = false;final archive = false;final unarchive = false;reader.readInt();
List<dynamic> stickersets = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		stickersets.add(reader.tgReadObject());
}		return new ToggleStickerSets(uninstall : uninstall, archive : archive, unarchive : unarchive, stickersets : stickersets);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3037016042,4),[0,0,0,0],readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.stickersets.length,4,little:true,signed:true),this.stickersets.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetDialogFilters {
    static const CONSTRUCTOR_ID = 4053719405;
    static const SUBCLASS_OF_ID = 1612507469;
    final classType = "request";
    final ID = 4053719405;


	GetDialogFilters();

	static GetDialogFilters fromReader(BinaryReader reader) {
	var temp,len;		return new GetDialogFilters();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4053719405,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetSuggestedDialogFilters {
    static const CONSTRUCTOR_ID = 2728186924;
    static const SUBCLASS_OF_ID = 2066312249;
    final classType = "request";
    final ID = 2728186924;


	GetSuggestedDialogFilters();

	static GetSuggestedDialogFilters fromReader(BinaryReader reader) {
	var temp,len;		return new GetSuggestedDialogFilters();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2728186924,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class UpdateDialogFilter {
    static const CONSTRUCTOR_ID = 450142282;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 450142282;
	int id;
	var filter;


	UpdateDialogFilter({required this.id, required this.filter});

	static UpdateDialogFilter fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var id = reader.readInt();var filter;if ((flags & 1)==1){filter = reader.tgReadObject(); } else {filter=null;}		return new UpdateDialogFilter(id : id, filter : filter);
	}
	List<int> getBytes(){return [readBufferFromBigInt(450142282,4),[0,0,0,0],readBufferFromBigInt(this.id,4,little:true,signed:true),(this.filter==null||this.filter==false)?new List<int>.empty():[(this.filter.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class UpdateDialogFiltersOrder {
    static const CONSTRUCTOR_ID = 3311649252;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3311649252;
	List<int> order;


	UpdateDialogFiltersOrder({required this.order});

	static UpdateDialogFiltersOrder fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<int> order = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		order.add(reader.readInt());
}		return new UpdateDialogFiltersOrder(order : order);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3311649252,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.order.length,4,little:true,signed:true),this.order.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetOldFeaturedStickers {
    static const CONSTRUCTOR_ID = 2127598753;
    static const SUBCLASS_OF_ID = 638891810;
    final classType = "request";
    final ID = 2127598753;
	int offset;
	int limit;
	BigInt hash;


	GetOldFeaturedStickers({required this.offset, required this.limit, required this.hash});

	static GetOldFeaturedStickers fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var limit = reader.readInt();var hash = reader.readLong();		return new GetOldFeaturedStickers(offset : offset, limit : limit, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2127598753,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetReplies {
    static const CONSTRUCTOR_ID = 584962828;
    static const SUBCLASS_OF_ID = 3568569182;
    final classType = "request";
    final ID = 584962828;
	var peer;
	int msgId;
	int offsetId;
	int offsetDate;
	int addOffset;
	int limit;
	int maxId;
	int minId;
	BigInt hash;


	GetReplies({required this.peer, required this.msgId, required this.offsetId, required this.offsetDate, required this.addOffset, required this.limit, required this.maxId, required this.minId, required this.hash});

	static GetReplies fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();var offsetId = reader.readInt();var offsetDate = reader.readInt();var addOffset = reader.readInt();var limit = reader.readInt();var maxId = reader.readInt();var minId = reader.readInt();var hash = reader.readLong();		return new GetReplies(peer : peer, msgId : msgId, offsetId : offsetId, offsetDate : offsetDate, addOffset : addOffset, limit : limit, maxId : maxId, minId : minId, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(584962828,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),readBufferFromBigInt(this.offsetId,4,little:true,signed:true),readBufferFromBigInt(this.offsetDate,4,little:true,signed:true),readBufferFromBigInt(this.addOffset,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),readBufferFromBigInt(this.maxId,4,little:true,signed:true),readBufferFromBigInt(this.minId,4,little:true,signed:true),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetDiscussionMessage {
    static const CONSTRUCTOR_ID = 1147761405;
    static const SUBCLASS_OF_ID = 1408820200;
    final classType = "request";
    final ID = 1147761405;
	var peer;
	int msgId;


	GetDiscussionMessage({required this.peer, required this.msgId});

	static GetDiscussionMessage fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();		return new GetDiscussionMessage(peer : peer, msgId : msgId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1147761405,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReadDiscussion {
    static const CONSTRUCTOR_ID = 4147227124;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 4147227124;
	var peer;
	int msgId;
	int readMaxId;


	ReadDiscussion({required this.peer, required this.msgId, required this.readMaxId});

	static ReadDiscussion fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();var readMaxId = reader.readInt();		return new ReadDiscussion(peer : peer, msgId : msgId, readMaxId : readMaxId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4147227124,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),readBufferFromBigInt(this.readMaxId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class UnpinAllMessages {
    static const CONSTRUCTOR_ID = 4029004939;
    static const SUBCLASS_OF_ID = 743031062;
    final classType = "request";
    final ID = 4029004939;
	var peer;


	UnpinAllMessages({required this.peer});

	static UnpinAllMessages fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new UnpinAllMessages(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4029004939,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteChat {
    static const CONSTRUCTOR_ID = 1540419152;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 1540419152;
	BigInt chatId;


	DeleteChat({required this.chatId});

	static DeleteChat fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();		return new DeleteChat(chatId : chatId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1540419152,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeletePhoneCallHistory {
    static const CONSTRUCTOR_ID = 4190888969;
    static const SUBCLASS_OF_ID = 4162282798;
    final classType = "request";
    final ID = 4190888969;
	bool revoke;


	DeletePhoneCallHistory({required this.revoke});

	static DeletePhoneCallHistory fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final revoke = false;		return new DeletePhoneCallHistory(revoke : revoke);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4190888969,4),[0,0,0,0],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class CheckHistoryImport {
    static const CONSTRUCTOR_ID = 1140726259;
    static const SUBCLASS_OF_ID = 1538421259;
    final classType = "request";
    final ID = 1140726259;
	String importHead;


	CheckHistoryImport({required this.importHead});

	static CheckHistoryImport fromReader(BinaryReader reader) {
	var temp,len;var importHead = reader.tgReadString();		return new CheckHistoryImport(importHead : importHead);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1140726259,4),serializeBytes(this.importHead),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class InitHistoryImport {
    static const CONSTRUCTOR_ID = 873008187;
    static const SUBCLASS_OF_ID = 2978723082;
    final classType = "request";
    final ID = 873008187;
	var peer;
	var file;
	int mediaCount;


	InitHistoryImport({required this.peer, required this.file, required this.mediaCount});

	static InitHistoryImport fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var file = reader.tgReadObject();var mediaCount = reader.readInt();		return new InitHistoryImport(peer : peer, file : file, mediaCount : mediaCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(873008187,4),(this.peer.getBytes() as List<int>),(this.file.getBytes() as List<int>),readBufferFromBigInt(this.mediaCount,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class UploadImportedMedia {
    static const CONSTRUCTOR_ID = 713433234;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "request";
    final ID = 713433234;
	var peer;
	BigInt importId;
	String fileName;
	var media;


	UploadImportedMedia({required this.peer, required this.importId, required this.fileName, required this.media});

	static UploadImportedMedia fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var importId = reader.readLong();var fileName = reader.tgReadString();var media = reader.tgReadObject();		return new UploadImportedMedia(peer : peer, importId : importId, fileName : fileName, media : media);
	}
	List<int> getBytes(){return [readBufferFromBigInt(713433234,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.importId,8,little:true,signed:true),serializeBytes(this.fileName),(this.media.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class StartHistoryImport {
    static const CONSTRUCTOR_ID = 3023958852;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3023958852;
	var peer;
	BigInt importId;


	StartHistoryImport({required this.peer, required this.importId});

	static StartHistoryImport fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var importId = reader.readLong();		return new StartHistoryImport(peer : peer, importId : importId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3023958852,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.importId,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetExportedChatInvites {
    static const CONSTRUCTOR_ID = 2729812982;
    static const SUBCLASS_OF_ID = 1614624881;
    final classType = "request";
    final ID = 2729812982;
	bool revoked;
	var peer;
	var adminId;
	int offsetDate;
	String offsetLink;
	int limit;


	GetExportedChatInvites({required this.revoked, required this.peer, required this.adminId, required this.offsetDate, required this.offsetLink, required this.limit});

	static GetExportedChatInvites fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final revoked = false;var peer = reader.tgReadObject();var adminId = reader.tgReadObject();var offsetDate;if ((flags & 4)==1){offsetDate = reader.readInt(); } else {offsetDate=null;}var offsetLink;if ((flags & 4)==1){offsetLink = reader.tgReadString(); } else {offsetLink=null;}var limit = reader.readInt();		return new GetExportedChatInvites(revoked : revoked, peer : peer, adminId : adminId, offsetDate : offsetDate, offsetLink : offsetLink, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2729812982,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.adminId.getBytes() as List<int>),(this.offsetDate==null||this.offsetDate==false)?new List<int>.empty():[readBufferFromBigInt(this.offsetDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.offsetLink==null||this.offsetLink==false)?new List<int>.empty():[serializeBytes(this.offsetLink)].expand((element) => element).toList(),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetExportedChatInvite {
    static const CONSTRUCTOR_ID = 1937010524;
    static const SUBCLASS_OF_ID = 2195510474;
    final classType = "request";
    final ID = 1937010524;
	var peer;
	String link;


	GetExportedChatInvite({required this.peer, required this.link});

	static GetExportedChatInvite fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var link = reader.tgReadString();		return new GetExportedChatInvite(peer : peer, link : link);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1937010524,4),(this.peer.getBytes() as List<int>),serializeBytes(this.link),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditExportedChatInvite {
    static const CONSTRUCTOR_ID = 3184144245;
    static const SUBCLASS_OF_ID = 2195510474;
    final classType = "request";
    final ID = 3184144245;
	bool revoked;
	var peer;
	String link;
	int expireDate;
	int usageLimit;
	bool requestNeeded;
	String title;


	EditExportedChatInvite({required this.revoked, required this.peer, required this.link, required this.expireDate, required this.usageLimit, required this.requestNeeded, required this.title});

	static EditExportedChatInvite fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final revoked = false;var peer = reader.tgReadObject();var link = reader.tgReadString();var expireDate;if ((flags & 1)==1){expireDate = reader.readInt(); } else {expireDate=null;}var usageLimit;if ((flags & 2)==1){usageLimit = reader.readInt(); } else {usageLimit=null;}var requestNeeded;if ((flags & 8)==1){requestNeeded = reader.tgReadBool(); } else {requestNeeded=null;}var title;if ((flags & 16)==1){title = reader.tgReadString(); } else {title=null;}		return new EditExportedChatInvite(revoked : revoked, peer : peer, link : link, expireDate : expireDate, usageLimit : usageLimit, requestNeeded : requestNeeded, title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3184144245,4),[0,0,0,0],(this.peer.getBytes() as List<int>),serializeBytes(this.link),(this.expireDate==null||this.expireDate==false)?new List<int>.empty():[readBufferFromBigInt(this.expireDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.usageLimit==null||this.usageLimit==false)?new List<int>.empty():[readBufferFromBigInt(this.usageLimit,4,little:true,signed:true)].expand((element) => element).toList(),(this.requestNeeded==null||this.requestNeeded==false)?new List<int>.empty():[[this.requestNeeded ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteRevokedExportedChatInvites {
    static const CONSTRUCTOR_ID = 1452833749;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 1452833749;
	var peer;
	var adminId;


	DeleteRevokedExportedChatInvites({required this.peer, required this.adminId});

	static DeleteRevokedExportedChatInvites fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var adminId = reader.tgReadObject();		return new DeleteRevokedExportedChatInvites(peer : peer, adminId : adminId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1452833749,4),(this.peer.getBytes() as List<int>),(this.adminId.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteExportedChatInvite {
    static const CONSTRUCTOR_ID = 3563365419;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3563365419;
	var peer;
	String link;


	DeleteExportedChatInvite({required this.peer, required this.link});

	static DeleteExportedChatInvite fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var link = reader.tgReadString();		return new DeleteExportedChatInvite(peer : peer, link : link);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3563365419,4),(this.peer.getBytes() as List<int>),serializeBytes(this.link),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAdminsWithInvites {
    static const CONSTRUCTOR_ID = 958457583;
    static const SUBCLASS_OF_ID = 2405149995;
    final classType = "request";
    final ID = 958457583;
	var peer;


	GetAdminsWithInvites({required this.peer});

	static GetAdminsWithInvites fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new GetAdminsWithInvites(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(958457583,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetChatInviteImporters {
    static const CONSTRUCTOR_ID = 3741637966;
    static const SUBCLASS_OF_ID = 3653012134;
    final classType = "request";
    final ID = 3741637966;
	bool requested;
	var peer;
	String link;
	String q;
	int offsetDate;
	var offsetUser;
	int limit;


	GetChatInviteImporters({required this.requested, required this.peer, required this.link, required this.q, required this.offsetDate, required this.offsetUser, required this.limit});

	static GetChatInviteImporters fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final requested = false;var peer = reader.tgReadObject();var link;if ((flags & 2)==1){link = reader.tgReadString(); } else {link=null;}var q;if ((flags & 4)==1){q = reader.tgReadString(); } else {q=null;}var offsetDate = reader.readInt();var offsetUser = reader.tgReadObject();var limit = reader.readInt();		return new GetChatInviteImporters(requested : requested, peer : peer, link : link, q : q, offsetDate : offsetDate, offsetUser : offsetUser, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3741637966,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.link==null||this.link==false)?new List<int>.empty():[serializeBytes(this.link)].expand((element) => element).toList(),(this.q==null||this.q==false)?new List<int>.empty():[serializeBytes(this.q)].expand((element) => element).toList(),readBufferFromBigInt(this.offsetDate,4,little:true,signed:true),(this.offsetUser.getBytes() as List<int>),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetHistoryTTL {
    static const CONSTRUCTOR_ID = 3087949796;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3087949796;
	var peer;
	int period;


	SetHistoryTTL({required this.peer, required this.period});

	static SetHistoryTTL fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var period = reader.readInt();		return new SetHistoryTTL(peer : peer, period : period);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3087949796,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.period,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class CheckHistoryImportPeer {
    static const CONSTRUCTOR_ID = 1573261059;
    static const SUBCLASS_OF_ID = 3091968823;
    final classType = "request";
    final ID = 1573261059;
	var peer;


	CheckHistoryImportPeer({required this.peer});

	static CheckHistoryImportPeer fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new CheckHistoryImportPeer(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1573261059,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetChatTheme {
    static const CONSTRUCTOR_ID = 3862683967;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3862683967;
	var peer;
	String emoticon;


	SetChatTheme({required this.peer, required this.emoticon});

	static SetChatTheme fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var emoticon = reader.tgReadString();		return new SetChatTheme(peer : peer, emoticon : emoticon);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3862683967,4),(this.peer.getBytes() as List<int>),serializeBytes(this.emoticon),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetMessageReadParticipants {
    static const CONSTRUCTOR_ID = 745510839;
    static const SUBCLASS_OF_ID = 2300109160;
    final classType = "request";
    final ID = 745510839;
	var peer;
	int msgId;


	GetMessageReadParticipants({required this.peer, required this.msgId});

	static GetMessageReadParticipants fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();		return new GetMessageReadParticipants(peer : peer, msgId : msgId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(745510839,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),].expand((element) => element).toList();}
	List<BigInt> readResult(BinaryReader reader) {
	
reader.readInt();
final range = reader.readInt();
final List<BigInt> result = [];
 for (int i=0;i<range;i++){
	result.add(reader.readLong());}
	return result;
	}

}

class GetSearchResultsCalendar {
    static const CONSTRUCTOR_ID = 1240514025;
    static const SUBCLASS_OF_ID = 2462409743;
    final classType = "request";
    final ID = 1240514025;
	var peer;
	var filter;
	int offsetId;
	int offsetDate;


	GetSearchResultsCalendar({required this.peer, required this.filter, required this.offsetId, required this.offsetDate});

	static GetSearchResultsCalendar fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var filter = reader.tgReadObject();var offsetId = reader.readInt();var offsetDate = reader.readInt();		return new GetSearchResultsCalendar(peer : peer, filter : filter, offsetId : offsetId, offsetDate : offsetDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1240514025,4),(this.peer.getBytes() as List<int>),(this.filter.getBytes() as List<int>),readBufferFromBigInt(this.offsetId,4,little:true,signed:true),readBufferFromBigInt(this.offsetDate,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetSearchResultsPositions {
    static const CONSTRUCTOR_ID = 1855292323;
    static const SUBCLASS_OF_ID = 3647172749;
    final classType = "request";
    final ID = 1855292323;
	var peer;
	var filter;
	int offsetId;
	int limit;


	GetSearchResultsPositions({required this.peer, required this.filter, required this.offsetId, required this.limit});

	static GetSearchResultsPositions fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var filter = reader.tgReadObject();var offsetId = reader.readInt();var limit = reader.readInt();		return new GetSearchResultsPositions(peer : peer, filter : filter, offsetId : offsetId, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1855292323,4),(this.peer.getBytes() as List<int>),(this.filter.getBytes() as List<int>),readBufferFromBigInt(this.offsetId,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class HideChatJoinRequest {
    static const CONSTRUCTOR_ID = 2145904661;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2145904661;
	bool approved;
	var peer;
	var userId;


	HideChatJoinRequest({required this.approved, required this.peer, required this.userId});

	static HideChatJoinRequest fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final approved = false;var peer = reader.tgReadObject();var userId = reader.tgReadObject();		return new HideChatJoinRequest(approved : approved, peer : peer, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2145904661,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.userId.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class HideAllChatJoinRequests {
    static const CONSTRUCTOR_ID = 3766875370;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3766875370;
	bool approved;
	var peer;
	String link;


	HideAllChatJoinRequests({required this.approved, required this.peer, required this.link});

	static HideAllChatJoinRequests fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final approved = false;var peer = reader.tgReadObject();var link;if ((flags & 2)==1){link = reader.tgReadString(); } else {link=null;}		return new HideAllChatJoinRequests(approved : approved, peer : peer, link : link);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3766875370,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.link==null||this.link==false)?new List<int>.empty():[serializeBytes(this.link)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ToggleNoForwards {
    static const CONSTRUCTOR_ID = 2971578274;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2971578274;
	var peer;
	bool enabled;


	ToggleNoForwards({required this.peer, required this.enabled});

	static ToggleNoForwards fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var enabled = reader.tgReadBool();		return new ToggleNoForwards(peer : peer, enabled : enabled);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2971578274,4),(this.peer.getBytes() as List<int>),[this.enabled ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SaveDefaultSendAs {
    static const CONSTRUCTOR_ID = 3439189910;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3439189910;
	var peer;
	var sendAs;


	SaveDefaultSendAs({required this.peer, required this.sendAs});

	static SaveDefaultSendAs fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var sendAs = reader.tgReadObject();		return new SaveDefaultSendAs(peer : peer, sendAs : sendAs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3439189910,4),(this.peer.getBytes() as List<int>),(this.sendAs.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendReaction {
    static const CONSTRUCTOR_ID = 627641572;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 627641572;
	bool big;
	var peer;
	int msgId;
	String reaction;


	SendReaction({required this.big, required this.peer, required this.msgId, required this.reaction});

	static SendReaction fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final big = false;var peer = reader.tgReadObject();var msgId = reader.readInt();var reaction;if ((flags & 1)==1){reaction = reader.tgReadString(); } else {reaction=null;}		return new SendReaction(big : big, peer : peer, msgId : msgId, reaction : reaction);
	}
	List<int> getBytes(){return [readBufferFromBigInt(627641572,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),(this.reaction==null||this.reaction==false)?new List<int>.empty():[serializeBytes(this.reaction)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetMessagesReactions {
    static const CONSTRUCTOR_ID = 2344259814;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2344259814;
	var peer;
	List<int> id;


	GetMessagesReactions({required this.peer, required this.id});

	static GetMessagesReactions fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();reader.readInt();
List<int> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readInt());
}		return new GetMessagesReactions(peer : peer, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2344259814,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetMessageReactionsList {
    static const CONSTRUCTOR_ID = 3773721463;
    static const SUBCLASS_OF_ID = 1627186662;
    final classType = "request";
    final ID = 3773721463;
	var peer;
	int id;
	String reaction;
	String offset;
	int limit;


	GetMessageReactionsList({required this.peer, required this.id, required this.reaction, required this.offset, required this.limit});

	static GetMessageReactionsList fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var peer = reader.tgReadObject();var id = reader.readInt();var reaction;if ((flags & 1)==1){reaction = reader.tgReadString(); } else {reaction=null;}var offset;if ((flags & 2)==1){offset = reader.tgReadString(); } else {offset=null;}var limit = reader.readInt();		return new GetMessageReactionsList(peer : peer, id : id, reaction : reaction, offset : offset, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3773721463,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.id,4,little:true,signed:true),(this.reaction==null||this.reaction==false)?new List<int>.empty():[serializeBytes(this.reaction)].expand((element) => element).toList(),(this.offset==null||this.offset==false)?new List<int>.empty():[serializeBytes(this.offset)].expand((element) => element).toList(),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetChatAvailableReactions {
    static const CONSTRUCTOR_ID = 335875750;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 335875750;
	var peer;
	List<String> availableReactions;


	SetChatAvailableReactions({required this.peer, required this.availableReactions});

	static SetChatAvailableReactions fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();reader.readInt();
List<String> availableReactions = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		availableReactions.add(reader.tgReadString());
}		return new SetChatAvailableReactions(peer : peer, availableReactions : availableReactions);
	}
	List<int> getBytes(){return [readBufferFromBigInt(335875750,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.availableReactions.length,4,little:true,signed:true),this.availableReactions.map((x)=>serializeBytes(x)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAvailableReactions {
    static const CONSTRUCTOR_ID = 417243308;
    static const SUBCLASS_OF_ID = 3827740034;
    final classType = "request";
    final ID = 417243308;
	int hash;


	GetAvailableReactions({required this.hash});

	static GetAvailableReactions fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readInt();		return new GetAvailableReactions(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(417243308,4),readBufferFromBigInt(this.hash,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetDefaultReaction {
    static const CONSTRUCTOR_ID = 3646997716;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3646997716;
	String reaction;


	SetDefaultReaction({required this.reaction});

	static SetDefaultReaction fromReader(BinaryReader reader) {
	var temp,len;var reaction = reader.tgReadString();		return new SetDefaultReaction(reaction : reaction);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3646997716,4),serializeBytes(this.reaction),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class TranslateText {
    static const CONSTRUCTOR_ID = 617508334;
    static const SUBCLASS_OF_ID = 37897192;
    final classType = "request";
    final ID = 617508334;
	var peer;
	int msgId;
	String text;
	String fromLang;
	String toLang;


	TranslateText({required this.peer, required this.msgId, required this.text, required this.fromLang, required this.toLang});

	static TranslateText fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var peer;if ((flags & 1)==1){peer = reader.tgReadObject(); } else {peer=null;}var msgId;if ((flags & 1)==1){msgId = reader.readInt(); } else {msgId=null;}var text;if ((flags & 2)==1){text = reader.tgReadString(); } else {text=null;}var fromLang;if ((flags & 4)==1){fromLang = reader.tgReadString(); } else {fromLang=null;}var toLang = reader.tgReadString();		return new TranslateText(peer : peer, msgId : msgId, text : text, fromLang : fromLang, toLang : toLang);
	}
	List<int> getBytes(){return [readBufferFromBigInt(617508334,4),[0,0,0,0],(this.peer==null||this.peer==false)?new List<int>.empty():[(this.peer.getBytes() as List<int>)].expand((element) => element).toList(),(this.msgId==null||this.msgId==false)?new List<int>.empty():[readBufferFromBigInt(this.msgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.text==null||this.text==false)?new List<int>.empty():[serializeBytes(this.text)].expand((element) => element).toList(),(this.fromLang==null||this.fromLang==false)?new List<int>.empty():[serializeBytes(this.fromLang)].expand((element) => element).toList(),serializeBytes(this.toLang),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetUnreadReactions {
    static const CONSTRUCTOR_ID = 3898322458;
    static const SUBCLASS_OF_ID = 3568569182;
    final classType = "request";
    final ID = 3898322458;
	var peer;
	int offsetId;
	int addOffset;
	int limit;
	int maxId;
	int minId;


	GetUnreadReactions({required this.peer, required this.offsetId, required this.addOffset, required this.limit, required this.maxId, required this.minId});

	static GetUnreadReactions fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var offsetId = reader.readInt();var addOffset = reader.readInt();var limit = reader.readInt();var maxId = reader.readInt();var minId = reader.readInt();		return new GetUnreadReactions(peer : peer, offsetId : offsetId, addOffset : addOffset, limit : limit, maxId : maxId, minId : minId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3898322458,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.offsetId,4,little:true,signed:true),readBufferFromBigInt(this.addOffset,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),readBufferFromBigInt(this.maxId,4,little:true,signed:true),readBufferFromBigInt(this.minId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReadReactions {
    static const CONSTRUCTOR_ID = 2195870167;
    static const SUBCLASS_OF_ID = 743031062;
    final classType = "request";
    final ID = 2195870167;
	var peer;


	ReadReactions({required this.peer});

	static ReadReactions fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new ReadReactions(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2195870167,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SearchSentMedia {
    static const CONSTRUCTOR_ID = 276705696;
    static const SUBCLASS_OF_ID = 3568569182;
    final classType = "request";
    final ID = 276705696;
	String q;
	var filter;
	int limit;


	SearchSentMedia({required this.q, required this.filter, required this.limit});

	static SearchSentMedia fromReader(BinaryReader reader) {
	var temp,len;var q = reader.tgReadString();var filter = reader.tgReadObject();var limit = reader.readInt();		return new SearchSentMedia(q : q, filter : filter, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(276705696,4),serializeBytes(this.q),(this.filter.getBytes() as List<int>),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAttachMenuBots {
    static const CONSTRUCTOR_ID = 385663691;
    static const SUBCLASS_OF_ID = 2217616346;
    final classType = "request";
    final ID = 385663691;
	BigInt hash;


	GetAttachMenuBots({required this.hash});

	static GetAttachMenuBots fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();		return new GetAttachMenuBots(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(385663691,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAttachMenuBot {
    static const CONSTRUCTOR_ID = 1998676370;
    static const SUBCLASS_OF_ID = 3677587517;
    final classType = "request";
    final ID = 1998676370;
	var bot;


	GetAttachMenuBot({required this.bot});

	static GetAttachMenuBot fromReader(BinaryReader reader) {
	var temp,len;var bot = reader.tgReadObject();		return new GetAttachMenuBot(bot : bot);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1998676370,4),(this.bot.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ToggleBotInAttachMenu {
    static const CONSTRUCTOR_ID = 451818415;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 451818415;
	var bot;
	bool enabled;


	ToggleBotInAttachMenu({required this.bot, required this.enabled});

	static ToggleBotInAttachMenu fromReader(BinaryReader reader) {
	var temp,len;var bot = reader.tgReadObject();var enabled = reader.tgReadBool();		return new ToggleBotInAttachMenu(bot : bot, enabled : enabled);
	}
	List<int> getBytes(){return [readBufferFromBigInt(451818415,4),(this.bot.getBytes() as List<int>),[this.enabled ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class RequestWebView {
    static const CONSTRUCTOR_ID = 2444318769;
    static const SUBCLASS_OF_ID = 2479793990;
    final classType = "request";
    final ID = 2444318769;
	bool fromBotMenu;
	bool silent;
	var peer;
	var bot;
	String url;
	String startParam;
	var themeParams;
	int replyToMsgId;
	var sendAs;


	RequestWebView({required this.fromBotMenu, required this.silent, required this.peer, required this.bot, required this.url, required this.startParam, required this.themeParams, required this.replyToMsgId, required this.sendAs});

	static RequestWebView fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final fromBotMenu = false;final silent = false;var peer = reader.tgReadObject();var bot = reader.tgReadObject();var url;if ((flags & 2)==1){url = reader.tgReadString(); } else {url=null;}var startParam;if ((flags & 8)==1){startParam = reader.tgReadString(); } else {startParam=null;}var themeParams;if ((flags & 4)==1){themeParams = reader.tgReadObject(); } else {themeParams=null;}var replyToMsgId;if ((flags & 1)==1){replyToMsgId = reader.readInt(); } else {replyToMsgId=null;}var sendAs;if ((flags & 8192)==1){sendAs = reader.tgReadObject(); } else {sendAs=null;}		return new RequestWebView(fromBotMenu : fromBotMenu, silent : silent, peer : peer, bot : bot, url : url, startParam : startParam, themeParams : themeParams, replyToMsgId : replyToMsgId, sendAs : sendAs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2444318769,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.bot.getBytes() as List<int>),(this.url==null||this.url==false)?new List<int>.empty():[serializeBytes(this.url)].expand((element) => element).toList(),(this.startParam==null||this.startParam==false)?new List<int>.empty():[serializeBytes(this.startParam)].expand((element) => element).toList(),(this.themeParams==null||this.themeParams==false)?new List<int>.empty():[(this.themeParams.getBytes() as List<int>)].expand((element) => element).toList(),(this.replyToMsgId==null||this.replyToMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.replyToMsgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.sendAs==null||this.sendAs==false)?new List<int>.empty():[(this.sendAs.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ProlongWebView {
    static const CONSTRUCTOR_ID = 3932142798;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3932142798;
	bool silent;
	var peer;
	var bot;
	BigInt queryId;
	int replyToMsgId;
	var sendAs;


	ProlongWebView({required this.silent, required this.peer, required this.bot, required this.queryId, required this.replyToMsgId, required this.sendAs});

	static ProlongWebView fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final silent = false;var peer = reader.tgReadObject();var bot = reader.tgReadObject();var queryId = reader.readLong();var replyToMsgId;if ((flags & 1)==1){replyToMsgId = reader.readInt(); } else {replyToMsgId=null;}var sendAs;if ((flags & 8192)==1){sendAs = reader.tgReadObject(); } else {sendAs=null;}		return new ProlongWebView(silent : silent, peer : peer, bot : bot, queryId : queryId, replyToMsgId : replyToMsgId, sendAs : sendAs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3932142798,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.bot.getBytes() as List<int>),readBufferFromBigInt(this.queryId,8,little:true,signed:true),(this.replyToMsgId==null||this.replyToMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.replyToMsgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.sendAs==null||this.sendAs==false)?new List<int>.empty():[(this.sendAs.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class RequestSimpleWebView {
    static const CONSTRUCTOR_ID = 1790652275;
    static const SUBCLASS_OF_ID = 367977435;
    final classType = "request";
    final ID = 1790652275;
	var bot;
	String url;
	var themeParams;


	RequestSimpleWebView({required this.bot, required this.url, required this.themeParams});

	static RequestSimpleWebView fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var bot = reader.tgReadObject();var url = reader.tgReadString();var themeParams;if ((flags & 1)==1){themeParams = reader.tgReadObject(); } else {themeParams=null;}		return new RequestSimpleWebView(bot : bot, url : url, themeParams : themeParams);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1790652275,4),[0,0,0,0],(this.bot.getBytes() as List<int>),serializeBytes(this.url),(this.themeParams==null||this.themeParams==false)?new List<int>.empty():[(this.themeParams.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendWebViewResultMessage {
    static const CONSTRUCTOR_ID = 172168437;
    static const SUBCLASS_OF_ID = 1977914130;
    final classType = "request";
    final ID = 172168437;
	String botQueryId;
	var result;


	SendWebViewResultMessage({required this.botQueryId, required this.result});

	static SendWebViewResultMessage fromReader(BinaryReader reader) {
	var temp,len;var botQueryId = reader.tgReadString();var result = reader.tgReadObject();		return new SendWebViewResultMessage(botQueryId : botQueryId, result : result);
	}
	List<int> getBytes(){return [readBufferFromBigInt(172168437,4),serializeBytes(this.botQueryId),(this.result.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendWebViewData {
    static const CONSTRUCTOR_ID = 3691135688;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3691135688;
	var bot;
	BigInt randomId;
	String buttonText;
	String data;


	SendWebViewData({required this.bot, required this.randomId, required this.buttonText, required this.data});

	static SendWebViewData fromReader(BinaryReader reader) {
	var temp,len;var bot = reader.tgReadObject();var randomId = reader.readLong();var buttonText = reader.tgReadString();var data = reader.tgReadString();		return new SendWebViewData(bot : bot, randomId : randomId, buttonText : buttonText, data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3691135688,4),(this.bot.getBytes() as List<int>),readBufferFromBigInt(this.randomId,8,little:true,signed:true),serializeBytes(this.buttonText),serializeBytes(this.data),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class TranscribeAudio {
    static const CONSTRUCTOR_ID = 647928393;
    static const SUBCLASS_OF_ID = 565332278;
    final classType = "request";
    final ID = 647928393;
	var peer;
	int msgId;


	TranscribeAudio({required this.peer, required this.msgId});

	static TranscribeAudio fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();		return new TranscribeAudio(peer : peer, msgId : msgId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(647928393,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class RateTranscribedAudio {
    static const CONSTRUCTOR_ID = 2132608815;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 2132608815;
	var peer;
	int msgId;
	BigInt transcriptionId;
	bool good;


	RateTranscribedAudio({required this.peer, required this.msgId, required this.transcriptionId, required this.good});

	static RateTranscribedAudio fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();var transcriptionId = reader.readLong();var good = reader.tgReadBool();		return new RateTranscribedAudio(peer : peer, msgId : msgId, transcriptionId : transcriptionId, good : good);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2132608815,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),readBufferFromBigInt(this.transcriptionId,8,little:true,signed:true),[this.good ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}