import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class ContactsNotModified {
    static const CONSTRUCTOR_ID = 3075189202;
    static const SUBCLASS_OF_ID = 409327542;
    final classType = "constructor";
    final ID = 3075189202;


	ContactsNotModified();

	static ContactsNotModified fromReader(BinaryReader reader) {
	var temp,len;		return new ContactsNotModified();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3075189202,4),].expand((element) => element).toList();}

}

class Contacts {
    static const CONSTRUCTOR_ID = 3941105218;
    static const SUBCLASS_OF_ID = 409327542;
    final classType = "constructor";
    final ID = 3941105218;
	List<dynamic> contacts;
	int savedCount;
	List<dynamic> users;


	Contacts({required this.contacts, required this.savedCount, required this.users});

	static Contacts fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> contacts = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		contacts.add(reader.tgReadObject());
}var savedCount = reader.readInt();reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new Contacts(contacts : contacts, savedCount : savedCount, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3941105218,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.contacts.length,4,little:true,signed:true),this.contacts.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(this.savedCount,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class ImportedContacts {
    static const CONSTRUCTOR_ID = 2010127419;
    static const SUBCLASS_OF_ID = 3622042187;
    final classType = "constructor";
    final ID = 2010127419;
	List<dynamic> imported;
	List<dynamic> popularInvites;
	List<BigInt> retryContacts;
	List<dynamic> users;


	ImportedContacts({required this.imported, required this.popularInvites, required this.retryContacts, required this.users});

	static ImportedContacts fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> imported = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		imported.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> popularInvites = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		popularInvites.add(reader.tgReadObject());
}reader.readInt();
List<BigInt> retryContacts = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		retryContacts.add(reader.readLong());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new ImportedContacts(imported : imported, popularInvites : popularInvites, retryContacts : retryContacts, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2010127419,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.imported.length,4,little:true,signed:true),this.imported.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.popularInvites.length,4,little:true,signed:true),this.popularInvites.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.retryContacts.length,4,little:true,signed:true),this.retryContacts.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class Blocked {
    static const CONSTRUCTOR_ID = 182326673;
    static const SUBCLASS_OF_ID = 3687220896;
    final classType = "constructor";
    final ID = 182326673;
	List<dynamic> blocked;
	List<dynamic> chats;
	List<dynamic> users;


	Blocked({required this.blocked, required this.chats, required this.users});

	static Blocked fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> blocked = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		blocked.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new Blocked(blocked : blocked, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(182326673,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.blocked.length,4,little:true,signed:true),this.blocked.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class BlockedSlice {
    static const CONSTRUCTOR_ID = 3781575060;
    static const SUBCLASS_OF_ID = 3687220896;
    final classType = "constructor";
    final ID = 3781575060;
	int count;
	List<dynamic> blocked;
	List<dynamic> chats;
	List<dynamic> users;


	BlockedSlice({required this.count, required this.blocked, required this.chats, required this.users});

	static BlockedSlice fromReader(BinaryReader reader) {
	var temp,len;var count = reader.readInt();reader.readInt();
List<dynamic> blocked = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		blocked.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new BlockedSlice(count : count, blocked : blocked, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3781575060,4),readBufferFromBigInt(this.count,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.blocked.length,4,little:true,signed:true),this.blocked.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class Found {
    static const CONSTRUCTOR_ID = 3004386717;
    static const SUBCLASS_OF_ID = 2639130989;
    final classType = "constructor";
    final ID = 3004386717;
	List<dynamic> myResults;
	List<dynamic> results;
	List<dynamic> chats;
	List<dynamic> users;


	Found({required this.myResults, required this.results, required this.chats, required this.users});

	static Found fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> myResults = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		myResults.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> results = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		results.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new Found(myResults : myResults, results : results, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3004386717,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.myResults.length,4,little:true,signed:true),this.myResults.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.results.length,4,little:true,signed:true),this.results.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class ResolvedPeer {
    static const CONSTRUCTOR_ID = 2131196633;
    static const SUBCLASS_OF_ID = 2277333274;
    final classType = "constructor";
    final ID = 2131196633;
	var peer;
	List<dynamic> chats;
	List<dynamic> users;


	ResolvedPeer({required this.peer, required this.chats, required this.users});

	static ResolvedPeer fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new ResolvedPeer(peer : peer, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2131196633,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class TopPeersNotModified {
    static const CONSTRUCTOR_ID = 3727060725;
    static const SUBCLASS_OF_ID = 3096014790;
    final classType = "constructor";
    final ID = 3727060725;


	TopPeersNotModified();

	static TopPeersNotModified fromReader(BinaryReader reader) {
	var temp,len;		return new TopPeersNotModified();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3727060725,4),].expand((element) => element).toList();}

}

class TopPeers {
    static const CONSTRUCTOR_ID = 1891070632;
    static const SUBCLASS_OF_ID = 3096014790;
    final classType = "constructor";
    final ID = 1891070632;
	List<dynamic> categories;
	List<dynamic> chats;
	List<dynamic> users;


	TopPeers({required this.categories, required this.chats, required this.users});

	static TopPeers fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> categories = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		categories.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new TopPeers(categories : categories, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1891070632,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.categories.length,4,little:true,signed:true),this.categories.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class TopPeersDisabled {
    static const CONSTRUCTOR_ID = 3039597469;
    static const SUBCLASS_OF_ID = 3096014790;
    final classType = "constructor";
    final ID = 3039597469;


	TopPeersDisabled();

	static TopPeersDisabled fromReader(BinaryReader reader) {
	var temp,len;		return new TopPeersDisabled();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3039597469,4),].expand((element) => element).toList();}

}