import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class ChannelParticipants {
    static const CONSTRUCTOR_ID = 2595290799;
    static const SUBCLASS_OF_ID = 3859443300;
    final classType = "constructor";
    final ID = 2595290799;
	int count;
	List<dynamic> participants;
	List<dynamic> chats;
	List<dynamic> users;


	ChannelParticipants({required this.count, required this.participants, required this.chats, required this.users});

	static ChannelParticipants fromReader(BinaryReader reader) {
	var temp,len;var count = reader.readInt();reader.readInt();
List<dynamic> participants = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		participants.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new ChannelParticipants(count : count, participants : participants, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2595290799,4),readBufferFromBigInt(this.count,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.participants.length,4,little:true,signed:true),this.participants.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class ChannelParticipantsNotModified {
    static const CONSTRUCTOR_ID = 4028055529;
    static const SUBCLASS_OF_ID = 3859443300;
    final classType = "constructor";
    final ID = 4028055529;


	ChannelParticipantsNotModified();

	static ChannelParticipantsNotModified fromReader(BinaryReader reader) {
	var temp,len;		return new ChannelParticipantsNotModified();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4028055529,4),].expand((element) => element).toList();}

}

class ChannelParticipant {
    static const CONSTRUCTOR_ID = 3753378583;
    static const SUBCLASS_OF_ID = 1717048602;
    final classType = "constructor";
    final ID = 3753378583;
	var participant;
	List<dynamic> chats;
	List<dynamic> users;


	ChannelParticipant({required this.participant, required this.chats, required this.users});

	static ChannelParticipant fromReader(BinaryReader reader) {
	var temp,len;var participant = reader.tgReadObject();reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new ChannelParticipant(participant : participant, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3753378583,4),(this.participant.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class AdminLogResults {
    static const CONSTRUCTOR_ID = 3985307469;
    static const SUBCLASS_OF_ID = 1374713532;
    final classType = "constructor";
    final ID = 3985307469;
	List<dynamic> events;
	List<dynamic> chats;
	List<dynamic> users;


	AdminLogResults({required this.events, required this.chats, required this.users});

	static AdminLogResults fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> events = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		events.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new AdminLogResults(events : events, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3985307469,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.events.length,4,little:true,signed:true),this.events.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class SendAsPeers {
    static const CONSTRUCTOR_ID = 2203504041;
    static const SUBCLASS_OF_ID = 952864033;
    final classType = "constructor";
    final ID = 2203504041;
	List<dynamic> peers;
	List<dynamic> chats;
	List<dynamic> users;


	SendAsPeers({required this.peers, required this.chats, required this.users});

	static SendAsPeers fromReader(BinaryReader reader) {
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
}		return new SendAsPeers(peers : peers, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2203504041,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.peers.length,4,little:true,signed:true),this.peers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}