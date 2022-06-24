import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class GetContactIDs {
    static const CONSTRUCTOR_ID = 2061264541;
    static const SUBCLASS_OF_ID = 2634394217;
    final classType = "request";
    final ID = 2061264541;
	BigInt hash;


	GetContactIDs({required this.hash});

	static GetContactIDs fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();		return new GetContactIDs(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2061264541,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	List<int> readResult(BinaryReader reader) {
	
reader.readInt();
final range = reader.readInt();
final List<int> result = [];
 for (int i=0;i<range;i++){
	result.add(reader.readInt());}
	return result;
	}

}

class GetStatuses {
    static const CONSTRUCTOR_ID = 3299038190;
    static const SUBCLASS_OF_ID = 1426372378;
    final classType = "request";
    final ID = 3299038190;


	GetStatuses();

	static GetStatuses fromReader(BinaryReader reader) {
	var temp,len;		return new GetStatuses();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3299038190,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetContacts {
    static const CONSTRUCTOR_ID = 1574346258;
    static const SUBCLASS_OF_ID = 409327542;
    final classType = "request";
    final ID = 1574346258;
	BigInt hash;


	GetContacts({required this.hash});

	static GetContacts fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();		return new GetContacts(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1574346258,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ImportContacts {
    static const CONSTRUCTOR_ID = 746589157;
    static const SUBCLASS_OF_ID = 3622042187;
    final classType = "request";
    final ID = 746589157;
	List<dynamic> contacts;


	ImportContacts({required this.contacts});

	static ImportContacts fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> contacts = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		contacts.add(reader.tgReadObject());
}		return new ImportContacts(contacts : contacts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(746589157,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.contacts.length,4,little:true,signed:true),this.contacts.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteContacts {
    static const CONSTRUCTOR_ID = 157945344;
    static const SUBCLASS_OF_ID = 4202248750;
    final classType = "request";
    final ID = 157945344;
	List<dynamic> id;


	DeleteContacts({required this.id});

	static DeleteContacts fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.tgReadObject());
}		return new DeleteContacts(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(157945344,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteByPhones {
    static const CONSTRUCTOR_ID = 269745566;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 269745566;
	List<String> phones;


	DeleteByPhones({required this.phones});

	static DeleteByPhones fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<String> phones = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		phones.add(reader.tgReadString());
}		return new DeleteByPhones(phones : phones);
	}
	List<int> getBytes(){return [readBufferFromBigInt(269745566,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.phones.length,4,little:true,signed:true),this.phones.map((x)=>serializeBytes(x)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class Block {
    static const CONSTRUCTOR_ID = 1758204945;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 1758204945;
	var id;


	Block({required this.id});

	static Block fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();		return new Block(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1758204945,4),(this.id.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class Unblock {
    static const CONSTRUCTOR_ID = 3198573904;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 3198573904;
	var id;


	Unblock({required this.id});

	static Unblock fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();		return new Unblock(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3198573904,4),(this.id.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetBlocked {
    static const CONSTRUCTOR_ID = 4118557967;
    static const SUBCLASS_OF_ID = 3687220896;
    final classType = "request";
    final ID = 4118557967;
	int offset;
	int limit;


	GetBlocked({required this.offset, required this.limit});

	static GetBlocked fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var limit = reader.readInt();		return new GetBlocked(offset : offset, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4118557967,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class Search {
    static const CONSTRUCTOR_ID = 301470424;
    static const SUBCLASS_OF_ID = 2639130989;
    final classType = "request";
    final ID = 301470424;
	String q;
	int limit;


	Search({required this.q, required this.limit});

	static Search fromReader(BinaryReader reader) {
	var temp,len;var q = reader.tgReadString();var limit = reader.readInt();		return new Search(q : q, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(301470424,4),serializeBytes(this.q),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ResolveUsername {
    static const CONSTRUCTOR_ID = 4181511075;
    static const SUBCLASS_OF_ID = 2277333274;
    final classType = "request";
    final ID = 4181511075;
	String username;


	ResolveUsername({required this.username});

	static ResolveUsername fromReader(BinaryReader reader) {
	var temp,len;var username = reader.tgReadString();		return new ResolveUsername(username : username);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4181511075,4),serializeBytes(this.username),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetTopPeers {
    static const CONSTRUCTOR_ID = 2536798390;
    static const SUBCLASS_OF_ID = 3096014790;
    final classType = "request";
    final ID = 2536798390;
	bool correspondents;
	bool botsPm;
	bool botsInline;
	bool phoneCalls;
	bool forwardUsers;
	bool forwardChats;
	bool groups;
	bool channels;
	int offset;
	int limit;
	BigInt hash;


	GetTopPeers({required this.correspondents, required this.botsPm, required this.botsInline, required this.phoneCalls, required this.forwardUsers, required this.forwardChats, required this.groups, required this.channels, required this.offset, required this.limit, required this.hash});

	static GetTopPeers fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final correspondents = false;final botsPm = false;final botsInline = false;final phoneCalls = false;final forwardUsers = false;final forwardChats = false;final groups = false;final channels = false;var offset = reader.readInt();var limit = reader.readInt();var hash = reader.readLong();		return new GetTopPeers(correspondents : correspondents, botsPm : botsPm, botsInline : botsInline, phoneCalls : phoneCalls, forwardUsers : forwardUsers, forwardChats : forwardChats, groups : groups, channels : channels, offset : offset, limit : limit, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2536798390,4),[0,0,0,0],readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ResetTopPeerRating {
    static const CONSTRUCTOR_ID = 451113900;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 451113900;
	var category;
	var peer;


	ResetTopPeerRating({required this.category, required this.peer});

	static ResetTopPeerRating fromReader(BinaryReader reader) {
	var temp,len;var category = reader.tgReadObject();var peer = reader.tgReadObject();		return new ResetTopPeerRating(category : category, peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(451113900,4),(this.category.getBytes() as List<int>),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ResetSaved {
    static const CONSTRUCTOR_ID = 2274703345;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 2274703345;


	ResetSaved();

	static ResetSaved fromReader(BinaryReader reader) {
	var temp,len;		return new ResetSaved();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2274703345,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetSaved {
    static const CONSTRUCTOR_ID = 2196890527;
    static const SUBCLASS_OF_ID = 842333852;
    final classType = "request";
    final ID = 2196890527;


	GetSaved();

	static GetSaved fromReader(BinaryReader reader) {
	var temp,len;		return new GetSaved();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2196890527,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ToggleTopPeers {
    static const CONSTRUCTOR_ID = 2232729050;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 2232729050;
	bool enabled;


	ToggleTopPeers({required this.enabled});

	static ToggleTopPeers fromReader(BinaryReader reader) {
	var temp,len;var enabled = reader.tgReadBool();		return new ToggleTopPeers(enabled : enabled);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2232729050,4),[this.enabled ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class AddContact {
    static const CONSTRUCTOR_ID = 3908330448;
    static const SUBCLASS_OF_ID = 4202248750;
    final classType = "request";
    final ID = 3908330448;
	bool addPhonePrivacyException;
	var id;
	String firstName;
	String lastName;
	String phone;


	AddContact({required this.addPhonePrivacyException, required this.id, required this.firstName, required this.lastName, required this.phone});

	static AddContact fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final addPhonePrivacyException = false;var id = reader.tgReadObject();var firstName = reader.tgReadString();var lastName = reader.tgReadString();var phone = reader.tgReadString();		return new AddContact(addPhonePrivacyException : addPhonePrivacyException, id : id, firstName : firstName, lastName : lastName, phone : phone);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3908330448,4),[0,0,0,0],(this.id.getBytes() as List<int>),serializeBytes(this.firstName),serializeBytes(this.lastName),serializeBytes(this.phone),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class AcceptContact {
    static const CONSTRUCTOR_ID = 4164002319;
    static const SUBCLASS_OF_ID = 4202248750;
    final classType = "request";
    final ID = 4164002319;
	var id;


	AcceptContact({required this.id});

	static AcceptContact fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();		return new AcceptContact(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4164002319,4),(this.id.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetLocated {
    static const CONSTRUCTOR_ID = 3544759364;
    static const SUBCLASS_OF_ID = 4202248750;
    final classType = "request";
    final ID = 3544759364;
	bool background;
	var geoPoint;
	int selfExpires;


	GetLocated({required this.background, required this.geoPoint, required this.selfExpires});

	static GetLocated fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final background = false;var geoPoint = reader.tgReadObject();var selfExpires;if ((flags & 1)==1){selfExpires = reader.readInt(); } else {selfExpires=null;}		return new GetLocated(background : background, geoPoint : geoPoint, selfExpires : selfExpires);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3544759364,4),[0,0,0,0],(this.geoPoint.getBytes() as List<int>),(this.selfExpires==null||this.selfExpires==false)?new List<int>.empty():[readBufferFromBigInt(this.selfExpires,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class BlockFromReplies {
    static const CONSTRUCTOR_ID = 698914348;
    static const SUBCLASS_OF_ID = 4202248750;
    final classType = "request";
    final ID = 698914348;
	bool deleteMessage;
	bool deleteHistory;
	bool reportSpam;
	int msgId;


	BlockFromReplies({required this.deleteMessage, required this.deleteHistory, required this.reportSpam, required this.msgId});

	static BlockFromReplies fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final deleteMessage = false;final deleteHistory = false;final reportSpam = false;var msgId = reader.readInt();		return new BlockFromReplies(deleteMessage : deleteMessage, deleteHistory : deleteHistory, reportSpam : reportSpam, msgId : msgId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(698914348,4),[0,0,0,0],readBufferFromBigInt(this.msgId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ResolvePhone {
    static const CONSTRUCTOR_ID = 2331591492;
    static const SUBCLASS_OF_ID = 2277333274;
    final classType = "request";
    final ID = 2331591492;
	String phone;


	ResolvePhone({required this.phone});

	static ResolvePhone fromReader(BinaryReader reader) {
	var temp,len;var phone = reader.tgReadString();		return new ResolvePhone(phone : phone);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2331591492,4),serializeBytes(this.phone),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}