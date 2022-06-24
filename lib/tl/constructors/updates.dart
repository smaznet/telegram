import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class State {
    static const CONSTRUCTOR_ID = 2775329342;
    static const SUBCLASS_OF_ID = 3387548233;
    final classType = "constructor";
    final ID = 2775329342;
	int pts;
	int qts;
	int date;
	int seq;
	int unreadCount;


	State({required this.pts, required this.qts, required this.date, required this.seq, required this.unreadCount});

	static State fromReader(BinaryReader reader) {
	var temp,len;var pts = reader.readInt();var qts = reader.readInt();var date = reader.readInt();var seq = reader.readInt();var unreadCount = reader.readInt();		return new State(pts : pts, qts : qts, date : date, seq : seq, unreadCount : unreadCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2775329342,4),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.qts,4,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.seq,4,little:true,signed:true),readBufferFromBigInt(this.unreadCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class DifferenceEmpty {
    static const CONSTRUCTOR_ID = 1567990072;
    static const SUBCLASS_OF_ID = 651126040;
    final classType = "constructor";
    final ID = 1567990072;
	int date;
	int seq;


	DifferenceEmpty({required this.date, required this.seq});

	static DifferenceEmpty fromReader(BinaryReader reader) {
	var temp,len;var date = reader.readInt();var seq = reader.readInt();		return new DifferenceEmpty(date : date, seq : seq);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1567990072,4),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.seq,4,little:true,signed:true),].expand((element) => element).toList();}

}

class Difference {
    static const CONSTRUCTOR_ID = 16030880;
    static const SUBCLASS_OF_ID = 651126040;
    final classType = "constructor";
    final ID = 16030880;
	List<dynamic> newMessages;
	List<dynamic> newEncryptedMessages;
	List<dynamic> otherUpdates;
	List<dynamic> chats;
	List<dynamic> users;
	var state;


	Difference({required this.newMessages, required this.newEncryptedMessages, required this.otherUpdates, required this.chats, required this.users, required this.state});

	static Difference fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> newMessages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		newMessages.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> newEncryptedMessages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		newEncryptedMessages.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> otherUpdates = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		otherUpdates.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}var state = reader.tgReadObject();		return new Difference(newMessages : newMessages, newEncryptedMessages : newEncryptedMessages, otherUpdates : otherUpdates, chats : chats, users : users, state : state);
	}
	List<int> getBytes(){return [readBufferFromBigInt(16030880,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.newMessages.length,4,little:true,signed:true),this.newMessages.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.newEncryptedMessages.length,4,little:true,signed:true),this.newEncryptedMessages.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.otherUpdates.length,4,little:true,signed:true),this.otherUpdates.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.state.getBytes() as List<int>),].expand((element) => element).toList();}

}

class DifferenceSlice {
    static const CONSTRUCTOR_ID = 2835028353;
    static const SUBCLASS_OF_ID = 651126040;
    final classType = "constructor";
    final ID = 2835028353;
	List<dynamic> newMessages;
	List<dynamic> newEncryptedMessages;
	List<dynamic> otherUpdates;
	List<dynamic> chats;
	List<dynamic> users;
	var intermediateState;


	DifferenceSlice({required this.newMessages, required this.newEncryptedMessages, required this.otherUpdates, required this.chats, required this.users, required this.intermediateState});

	static DifferenceSlice fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> newMessages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		newMessages.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> newEncryptedMessages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		newEncryptedMessages.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> otherUpdates = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		otherUpdates.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}var intermediateState = reader.tgReadObject();		return new DifferenceSlice(newMessages : newMessages, newEncryptedMessages : newEncryptedMessages, otherUpdates : otherUpdates, chats : chats, users : users, intermediateState : intermediateState);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2835028353,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.newMessages.length,4,little:true,signed:true),this.newMessages.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.newEncryptedMessages.length,4,little:true,signed:true),this.newEncryptedMessages.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.otherUpdates.length,4,little:true,signed:true),this.otherUpdates.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.intermediateState.getBytes() as List<int>),].expand((element) => element).toList();}

}

class DifferenceTooLong {
    static const CONSTRUCTOR_ID = 1258196845;
    static const SUBCLASS_OF_ID = 651126040;
    final classType = "constructor";
    final ID = 1258196845;
	int pts;


	DifferenceTooLong({required this.pts});

	static DifferenceTooLong fromReader(BinaryReader reader) {
	var temp,len;var pts = reader.readInt();		return new DifferenceTooLong(pts : pts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1258196845,4),readBufferFromBigInt(this.pts,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ChannelDifferenceEmpty {
    static const CONSTRUCTOR_ID = 1041346555;
    static const SUBCLASS_OF_ID = 1148408860;
    final classType = "constructor";
    final ID = 1041346555;
	bool finalVar;
	int pts;
	int timeout;


	ChannelDifferenceEmpty({required this.finalVar, required this.pts, required this.timeout});

	static ChannelDifferenceEmpty fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final finalVar = false;var pts = reader.readInt();var timeout;if ((flags & 2)==1){timeout = reader.readInt(); } else {timeout=null;}		return new ChannelDifferenceEmpty(finalVar : finalVar, pts : pts, timeout : timeout);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1041346555,4),[0,0,0,0],readBufferFromBigInt(this.pts,4,little:true,signed:true),(this.timeout==null||this.timeout==false)?new List<int>.empty():[readBufferFromBigInt(this.timeout,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChannelDifferenceTooLong {
    static const CONSTRUCTOR_ID = 2763835134;
    static const SUBCLASS_OF_ID = 1148408860;
    final classType = "constructor";
    final ID = 2763835134;
	bool finalVar;
	int timeout;
	var dialog;
	List<dynamic> messages;
	List<dynamic> chats;
	List<dynamic> users;


	ChannelDifferenceTooLong({required this.finalVar, required this.timeout, required this.dialog, required this.messages, required this.chats, required this.users});

	static ChannelDifferenceTooLong fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final finalVar = false;var timeout;if ((flags & 2)==1){timeout = reader.readInt(); } else {timeout=null;}var dialog = reader.tgReadObject();reader.readInt();
List<dynamic> messages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		messages.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new ChannelDifferenceTooLong(finalVar : finalVar, timeout : timeout, dialog : dialog, messages : messages, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2763835134,4),[0,0,0,0],(this.timeout==null||this.timeout==false)?new List<int>.empty():[readBufferFromBigInt(this.timeout,4,little:true,signed:true)].expand((element) => element).toList(),(this.dialog.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.messages.length,4,little:true,signed:true),this.messages.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class ChannelDifference {
    static const CONSTRUCTOR_ID = 543450958;
    static const SUBCLASS_OF_ID = 1148408860;
    final classType = "constructor";
    final ID = 543450958;
	bool finalVar;
	int pts;
	int timeout;
	List<dynamic> newMessages;
	List<dynamic> otherUpdates;
	List<dynamic> chats;
	List<dynamic> users;


	ChannelDifference({required this.finalVar, required this.pts, required this.timeout, required this.newMessages, required this.otherUpdates, required this.chats, required this.users});

	static ChannelDifference fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final finalVar = false;var pts = reader.readInt();var timeout;if ((flags & 2)==1){timeout = reader.readInt(); } else {timeout=null;}reader.readInt();
List<dynamic> newMessages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		newMessages.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> otherUpdates = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		otherUpdates.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new ChannelDifference(finalVar : finalVar, pts : pts, timeout : timeout, newMessages : newMessages, otherUpdates : otherUpdates, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(543450958,4),[0,0,0,0],readBufferFromBigInt(this.pts,4,little:true,signed:true),(this.timeout==null||this.timeout==false)?new List<int>.empty():[readBufferFromBigInt(this.timeout,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.newMessages.length,4,little:true,signed:true),this.newMessages.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.otherUpdates.length,4,little:true,signed:true),this.otherUpdates.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}