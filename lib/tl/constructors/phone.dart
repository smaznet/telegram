import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class PhoneCall {
    static const CONSTRUCTOR_ID = 3968000320;
    static const SUBCLASS_OF_ID = 3565878863;
    final classType = "constructor";
    final ID = 3968000320;
	var phoneCall;
	List<dynamic> users;


	PhoneCall({required this.phoneCall, required this.users});

	static PhoneCall fromReader(BinaryReader reader) {
	var temp,len;var phoneCall = reader.tgReadObject();reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new PhoneCall(phoneCall : phoneCall, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3968000320,4),(this.phoneCall.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users!.length,4,little:true,signed:true),this.users!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class GroupCall {
    static const CONSTRUCTOR_ID = 2658302637;
    static const SUBCLASS_OF_ID = 809572030;
    final classType = "constructor";
    final ID = 2658302637;
	var call;
	List<dynamic> participants;
	String participantsNextOffset;
	List<dynamic> chats;
	List<dynamic> users;


	GroupCall({required this.call, required this.participants, required this.participantsNextOffset, required this.chats, required this.users});

	static GroupCall fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();reader.readInt();
List<dynamic> participants = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		participants.add(reader.tgReadObject());
}var participantsNextOffset = reader.tgReadString();reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new GroupCall(call : call, participants : participants, participantsNextOffset : participantsNextOffset, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2658302637,4),(this.call.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.participants!.length,4,little:true,signed:true),this.participants!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),serializeBytes(this.participantsNextOffset),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats!.length,4,little:true,signed:true),this.chats!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users!.length,4,little:true,signed:true),this.users!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class GroupParticipants {
    static const CONSTRUCTOR_ID = 4101460406;
    static const SUBCLASS_OF_ID = 1926431988;
    final classType = "constructor";
    final ID = 4101460406;
	int count;
	List<dynamic> participants;
	String nextOffset;
	List<dynamic> chats;
	List<dynamic> users;
	int version;


	GroupParticipants({required this.count, required this.participants, required this.nextOffset, required this.chats, required this.users, required this.version});

	static GroupParticipants fromReader(BinaryReader reader) {
	var temp,len;var count = reader.readInt();reader.readInt();
List<dynamic> participants = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		participants.add(reader.tgReadObject());
}var nextOffset = reader.tgReadString();reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}var version = reader.readInt();		return new GroupParticipants(count : count, participants : participants, nextOffset : nextOffset, chats : chats, users : users, version : version);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4101460406,4),readBufferFromBigInt(this.count,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.participants!.length,4,little:true,signed:true),this.participants!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),serializeBytes(this.nextOffset),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats!.length,4,little:true,signed:true),this.chats!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users!.length,4,little:true,signed:true),this.users!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(this.version,4,little:true,signed:true),].expand((element) => element).toList();}

}

class JoinAsPeers {
    static const CONSTRUCTOR_ID = 2951045695;
    static const SUBCLASS_OF_ID = 3031920891;
    final classType = "constructor";
    final ID = 2951045695;
	List<dynamic> peers;
	List<dynamic> chats;
	List<dynamic> users;


	JoinAsPeers({required this.peers, required this.chats, required this.users});

	static JoinAsPeers fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> peers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		peers.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new JoinAsPeers(peers : peers, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2951045695,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.peers!.length,4,little:true,signed:true),this.peers!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats!.length,4,little:true,signed:true),this.chats!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users!.length,4,little:true,signed:true),this.users!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class ExportedGroupCallInvite {
    static const CONSTRUCTOR_ID = 541839704;
    static const SUBCLASS_OF_ID = 993787535;
    final classType = "constructor";
    final ID = 541839704;
	String link;


	ExportedGroupCallInvite({required this.link});

	static ExportedGroupCallInvite fromReader(BinaryReader reader) {
	var temp,len;var link = reader.tgReadString();		return new ExportedGroupCallInvite(link : link);
	}
	List<int> getBytes(){return [readBufferFromBigInt(541839704,4),serializeBytes(this.link),].expand((element) => element).toList();}

}

class GroupCallStreamChannels {
    static const CONSTRUCTOR_ID = 3504636594;
    static const SUBCLASS_OF_ID = 2438448612;
    final classType = "constructor";
    final ID = 3504636594;
	List<dynamic> channels;


	GroupCallStreamChannels({required this.channels});

	static GroupCallStreamChannels fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> channels = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		channels.add(reader.tgReadObject());
}		return new GroupCallStreamChannels(channels : channels);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3504636594,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.channels!.length,4,little:true,signed:true),this.channels!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class GroupCallStreamRtmpUrl {
    static const CONSTRUCTOR_ID = 767505458;
    static const SUBCLASS_OF_ID = 3522500043;
    final classType = "constructor";
    final ID = 767505458;
	String url;
	String key;


	GroupCallStreamRtmpUrl({required this.url, required this.key});

	static GroupCallStreamRtmpUrl fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();var key = reader.tgReadString();		return new GroupCallStreamRtmpUrl(url : url, key : key);
	}
	List<int> getBytes(){return [readBufferFromBigInt(767505458,4),serializeBytes(this.url),serializeBytes(this.key),].expand((element) => element).toList();}

}