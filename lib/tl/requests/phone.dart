import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class GetCallConfig {
    static const CONSTRUCTOR_ID = 1430593449;
    static const SUBCLASS_OF_ID = 2902676200;
    final classType = "request";
    final ID = 1430593449;


	GetCallConfig();

	static GetCallConfig fromReader(BinaryReader reader) {
	var temp,len;		return new GetCallConfig();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1430593449,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class RequestCall {
    static const CONSTRUCTOR_ID = 1124046573;
    static const SUBCLASS_OF_ID = 3565878863;
    final classType = "request";
    final ID = 1124046573;
	bool? video;
	var userId;
	int randomId;
	List<int> gAHash;
	var protocol;


	RequestCall({required this.video, required this.userId, required this.randomId, required this.gAHash, required this.protocol});

	static RequestCall fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final video = false;var userId = reader.tgReadObject();var randomId = reader.readInt();var gAHash = reader.tgReadBytes();var protocol = reader.tgReadObject();		return new RequestCall(video : video, userId : userId, randomId : randomId, gAHash : gAHash, protocol : protocol);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1124046573,4),[0,0,0,0],(this.userId.getBytes() as List<int>),readBufferFromBigInt(this.randomId,4,little:true,signed:true),serializeBytes(this.gAHash),(this.protocol.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class AcceptCall {
    static const CONSTRUCTOR_ID = 1003664544;
    static const SUBCLASS_OF_ID = 3565878863;
    final classType = "request";
    final ID = 1003664544;
	var peer;
	List<int> gB;
	var protocol;


	AcceptCall({required this.peer, required this.gB, required this.protocol});

	static AcceptCall fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var gB = reader.tgReadBytes();var protocol = reader.tgReadObject();		return new AcceptCall(peer : peer, gB : gB, protocol : protocol);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1003664544,4),(this.peer.getBytes() as List<int>),serializeBytes(this.gB),(this.protocol.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ConfirmCall {
    static const CONSTRUCTOR_ID = 788404002;
    static const SUBCLASS_OF_ID = 3565878863;
    final classType = "request";
    final ID = 788404002;
	var peer;
	List<int> gA;
	BigInt keyFingerprint;
	var protocol;


	ConfirmCall({required this.peer, required this.gA, required this.keyFingerprint, required this.protocol});

	static ConfirmCall fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var gA = reader.tgReadBytes();var keyFingerprint = reader.readLong();var protocol = reader.tgReadObject();		return new ConfirmCall(peer : peer, gA : gA, keyFingerprint : keyFingerprint, protocol : protocol);
	}
	List<int> getBytes(){return [readBufferFromBigInt(788404002,4),(this.peer.getBytes() as List<int>),serializeBytes(this.gA),readBufferFromBigInt(this.keyFingerprint,8,little:true,signed:true),(this.protocol.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReceivedCall {
    static const CONSTRUCTOR_ID = 399855457;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 399855457;
	var peer;


	ReceivedCall({required this.peer});

	static ReceivedCall fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new ReceivedCall(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(399855457,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DiscardCall {
    static const CONSTRUCTOR_ID = 2999697856;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2999697856;
	bool? video;
	var peer;
	int duration;
	var reason;
	BigInt connectionId;


	DiscardCall({required this.video, required this.peer, required this.duration, required this.reason, required this.connectionId});

	static DiscardCall fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final video = false;var peer = reader.tgReadObject();var duration = reader.readInt();var reason = reader.tgReadObject();var connectionId = reader.readLong();		return new DiscardCall(video : video, peer : peer, duration : duration, reason : reason, connectionId : connectionId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2999697856,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.duration,4,little:true,signed:true),(this.reason.getBytes() as List<int>),readBufferFromBigInt(this.connectionId,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetCallRating {
    static const CONSTRUCTOR_ID = 1508562471;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1508562471;
	bool? userInitiative;
	var peer;
	int rating;
	String comment;


	SetCallRating({required this.userInitiative, required this.peer, required this.rating, required this.comment});

	static SetCallRating fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final userInitiative = false;var peer = reader.tgReadObject();var rating = reader.readInt();var comment = reader.tgReadString();		return new SetCallRating(userInitiative : userInitiative, peer : peer, rating : rating, comment : comment);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1508562471,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.rating,4,little:true,signed:true),serializeBytes(this.comment),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SaveCallDebug {
    static const CONSTRUCTOR_ID = 662363518;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 662363518;
	var peer;
	var debug;


	SaveCallDebug({required this.peer, required this.debug});

	static SaveCallDebug fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var debug = reader.tgReadObject();		return new SaveCallDebug(peer : peer, debug : debug);
	}
	List<int> getBytes(){return [readBufferFromBigInt(662363518,4),(this.peer.getBytes() as List<int>),(this.debug.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendSignalingData {
    static const CONSTRUCTOR_ID = 4286223235;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 4286223235;
	var peer;
	List<int> data;


	SendSignalingData({required this.peer, required this.data});

	static SendSignalingData fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var data = reader.tgReadBytes();		return new SendSignalingData(peer : peer, data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4286223235,4),(this.peer.getBytes() as List<int>),serializeBytes(this.data),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class CreateGroupCall {
    static const CONSTRUCTOR_ID = 1221445336;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1221445336;
	bool? rtmpStream;
	var peer;
	int randomId;
	String? title;
	int? scheduleDate;


	CreateGroupCall({required this.rtmpStream, required this.peer, required this.randomId, required this.title, required this.scheduleDate});

	static CreateGroupCall fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final rtmpStream = false;var peer = reader.tgReadObject();var randomId = reader.readInt();var title;if ((flags & 1)==1){title = reader.tgReadString(); } else {title=null;}var scheduleDate;if ((flags & 2)==1){scheduleDate = reader.readInt(); } else {scheduleDate=null;}		return new CreateGroupCall(rtmpStream : rtmpStream, peer : peer, randomId : randomId, title : title, scheduleDate : scheduleDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1221445336,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.randomId,4,little:true,signed:true),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),(this.scheduleDate==null||this.scheduleDate==false)?new List<int>.empty():[readBufferFromBigInt(this.scheduleDate,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class JoinGroupCall {
    static const CONSTRUCTOR_ID = 2972909435;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2972909435;
	bool? muted;
	bool? videoStopped;
	var call;
	var joinAs;
	String? inviteHash;
	var params;


	JoinGroupCall({required this.muted, required this.videoStopped, required this.call, required this.joinAs, required this.inviteHash, required this.params});

	static JoinGroupCall fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final muted = false;final videoStopped = false;var call = reader.tgReadObject();var joinAs = reader.tgReadObject();var inviteHash;if ((flags & 2)==1){inviteHash = reader.tgReadString(); } else {inviteHash=null;}var params = reader.tgReadObject();		return new JoinGroupCall(muted : muted, videoStopped : videoStopped, call : call, joinAs : joinAs, inviteHash : inviteHash, params : params);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2972909435,4),[0,0,0,0],(this.call.getBytes() as List<int>),(this.joinAs.getBytes() as List<int>),(this.inviteHash==null||this.inviteHash==false)?new List<int>.empty():[serializeBytes(this.inviteHash)].expand((element) => element).toList(),(this.params.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class LeaveGroupCall {
    static const CONSTRUCTOR_ID = 1342404601;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1342404601;
	var call;
	int source;


	LeaveGroupCall({required this.call, required this.source});

	static LeaveGroupCall fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();var source = reader.readInt();		return new LeaveGroupCall(call : call, source : source);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1342404601,4),(this.call.getBytes() as List<int>),readBufferFromBigInt(this.source,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class InviteToGroupCall {
    static const CONSTRUCTOR_ID = 2067345760;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2067345760;
	var call;
	List<dynamic> users;


	InviteToGroupCall({required this.call, required this.users});

	static InviteToGroupCall fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new InviteToGroupCall(call : call, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2067345760,4),(this.call.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users!.length,4,little:true,signed:true),this.users!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DiscardGroupCall {
    static const CONSTRUCTOR_ID = 2054648117;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2054648117;
	var call;


	DiscardGroupCall({required this.call});

	static DiscardGroupCall fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();		return new DiscardGroupCall(call : call);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2054648117,4),(this.call.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ToggleGroupCallSettings {
    static const CONSTRUCTOR_ID = 1958458429;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1958458429;
	bool? resetInviteHash;
	var call;
	bool? joinMuted;


	ToggleGroupCallSettings({required this.resetInviteHash, required this.call, required this.joinMuted});

	static ToggleGroupCallSettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final resetInviteHash = false;var call = reader.tgReadObject();var joinMuted;if ((flags & 1)==1){joinMuted = reader.tgReadBool(); } else {joinMuted=null;}		return new ToggleGroupCallSettings(resetInviteHash : resetInviteHash, call : call, joinMuted : joinMuted);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1958458429,4),[0,0,0,0],(this.call.getBytes() as List<int>),(this.joinMuted==null||this.joinMuted==false)?new List<int>.empty():[[this.joinMuted == true ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetGroupCall {
    static const CONSTRUCTOR_ID = 68699611;
    static const SUBCLASS_OF_ID = 809572030;
    final classType = "request";
    final ID = 68699611;
	var call;
	int limit;


	GetGroupCall({required this.call, required this.limit});

	static GetGroupCall fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();var limit = reader.readInt();		return new GetGroupCall(call : call, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(68699611,4),(this.call.getBytes() as List<int>),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetGroupParticipants {
    static const CONSTRUCTOR_ID = 3310934187;
    static const SUBCLASS_OF_ID = 1926431988;
    final classType = "request";
    final ID = 3310934187;
	var call;
	List<dynamic> ids;
	List<int> sources;
	String offset;
	int limit;


	GetGroupParticipants({required this.call, required this.ids, required this.sources, required this.offset, required this.limit});

	static GetGroupParticipants fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();reader.readInt();
List<dynamic> ids = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		ids.add(reader.tgReadObject());
}reader.readInt();
List<int> sources = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		sources.add(reader.readInt());
}var offset = reader.tgReadString();var limit = reader.readInt();		return new GetGroupParticipants(call : call, ids : ids, sources : sources, offset : offset, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3310934187,4),(this.call.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.ids!.length,4,little:true,signed:true),this.ids!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.sources!.length,4,little:true,signed:true),this.sources!.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),serializeBytes(this.offset),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class CheckGroupCall {
    static const CONSTRUCTOR_ID = 3046963575;
    static const SUBCLASS_OF_ID = 1344696591;
    final classType = "request";
    final ID = 3046963575;
	var call;
	List<int> sources;


	CheckGroupCall({required this.call, required this.sources});

	static CheckGroupCall fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();reader.readInt();
List<int> sources = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		sources.add(reader.readInt());
}		return new CheckGroupCall(call : call, sources : sources);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3046963575,4),(this.call.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.sources!.length,4,little:true,signed:true),this.sources!.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	List<int> readResult(BinaryReader reader) {
	
reader.readInt();
final range = reader.readInt();
final List<int> result = [];
 for (int i=0;i<range;i++){
	result.add(reader.readInt());}
	return result;
	}

}

class ToggleGroupCallRecord {
    static const CONSTRUCTOR_ID = 4045981448;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 4045981448;
	bool? start;
	bool? video;
	var call;
	String? title;
	bool? videoPortrait;


	ToggleGroupCallRecord({required this.start, required this.video, required this.call, required this.title, required this.videoPortrait});

	static ToggleGroupCallRecord fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final start = false;final video = false;var call = reader.tgReadObject();var title;if ((flags & 2)==1){title = reader.tgReadString(); } else {title=null;}var videoPortrait;if ((flags & 4)==1){videoPortrait = reader.tgReadBool(); } else {videoPortrait=null;}		return new ToggleGroupCallRecord(start : start, video : video, call : call, title : title, videoPortrait : videoPortrait);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4045981448,4),[0,0,0,0],(this.call.getBytes() as List<int>),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),(this.videoPortrait==null||this.videoPortrait==false)?new List<int>.empty():[[this.videoPortrait == true ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditGroupCallParticipant {
    static const CONSTRUCTOR_ID = 2770811583;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2770811583;
	var call;
	var participant;
	bool? muted;
	int? volume;
	bool? raiseHand;
	bool? videoStopped;
	bool? videoPaused;
	bool? presentationPaused;


	EditGroupCallParticipant({required this.call, required this.participant, required this.muted, required this.volume, required this.raiseHand, required this.videoStopped, required this.videoPaused, required this.presentationPaused});

	static EditGroupCallParticipant fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var call = reader.tgReadObject();var participant = reader.tgReadObject();var muted;if ((flags & 1)==1){muted = reader.tgReadBool(); } else {muted=null;}var volume;if ((flags & 2)==1){volume = reader.readInt(); } else {volume=null;}var raiseHand;if ((flags & 4)==1){raiseHand = reader.tgReadBool(); } else {raiseHand=null;}var videoStopped;if ((flags & 8)==1){videoStopped = reader.tgReadBool(); } else {videoStopped=null;}var videoPaused;if ((flags & 16)==1){videoPaused = reader.tgReadBool(); } else {videoPaused=null;}var presentationPaused;if ((flags & 32)==1){presentationPaused = reader.tgReadBool(); } else {presentationPaused=null;}		return new EditGroupCallParticipant(call : call, participant : participant, muted : muted, volume : volume, raiseHand : raiseHand, videoStopped : videoStopped, videoPaused : videoPaused, presentationPaused : presentationPaused);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2770811583,4),[0,0,0,0],(this.call.getBytes() as List<int>),(this.participant.getBytes() as List<int>),(this.muted==null||this.muted==false)?new List<int>.empty():[[this.muted == true ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),(this.volume==null||this.volume==false)?new List<int>.empty():[readBufferFromBigInt(this.volume,4,little:true,signed:true)].expand((element) => element).toList(),(this.raiseHand==null||this.raiseHand==false)?new List<int>.empty():[[this.raiseHand == true ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),(this.videoStopped==null||this.videoStopped==false)?new List<int>.empty():[[this.videoStopped == true ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),(this.videoPaused==null||this.videoPaused==false)?new List<int>.empty():[[this.videoPaused == true ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),(this.presentationPaused==null||this.presentationPaused==false)?new List<int>.empty():[[this.presentationPaused == true ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditGroupCallTitle {
    static const CONSTRUCTOR_ID = 480685066;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 480685066;
	var call;
	String title;


	EditGroupCallTitle({required this.call, required this.title});

	static EditGroupCallTitle fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();var title = reader.tgReadString();		return new EditGroupCallTitle(call : call, title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(480685066,4),(this.call.getBytes() as List<int>),serializeBytes(this.title),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetGroupCallJoinAs {
    static const CONSTRUCTOR_ID = 4017889594;
    static const SUBCLASS_OF_ID = 3031920891;
    final classType = "request";
    final ID = 4017889594;
	var peer;


	GetGroupCallJoinAs({required this.peer});

	static GetGroupCallJoinAs fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new GetGroupCallJoinAs(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4017889594,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ExportGroupCallInvite {
    static const CONSTRUCTOR_ID = 3869926527;
    static const SUBCLASS_OF_ID = 993787535;
    final classType = "request";
    final ID = 3869926527;
	bool? canSelfUnmute;
	var call;


	ExportGroupCallInvite({required this.canSelfUnmute, required this.call});

	static ExportGroupCallInvite fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final canSelfUnmute = false;var call = reader.tgReadObject();		return new ExportGroupCallInvite(canSelfUnmute : canSelfUnmute, call : call);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3869926527,4),[0,0,0,0],(this.call.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ToggleGroupCallStartSubscription {
    static const CONSTRUCTOR_ID = 563885286;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 563885286;
	var call;
	bool subscribed;


	ToggleGroupCallStartSubscription({required this.call, required this.subscribed});

	static ToggleGroupCallStartSubscription fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();var subscribed = reader.tgReadBool();		return new ToggleGroupCallStartSubscription(call : call, subscribed : subscribed);
	}
	List<int> getBytes(){return [readBufferFromBigInt(563885286,4),(this.call.getBytes() as List<int>),[this.subscribed == true ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class StartScheduledGroupCall {
    static const CONSTRUCTOR_ID = 1451287362;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1451287362;
	var call;


	StartScheduledGroupCall({required this.call});

	static StartScheduledGroupCall fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();		return new StartScheduledGroupCall(call : call);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1451287362,4),(this.call.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SaveDefaultGroupCallJoinAs {
    static const CONSTRUCTOR_ID = 1465786252;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 1465786252;
	var peer;
	var joinAs;


	SaveDefaultGroupCallJoinAs({required this.peer, required this.joinAs});

	static SaveDefaultGroupCallJoinAs fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var joinAs = reader.tgReadObject();		return new SaveDefaultGroupCallJoinAs(peer : peer, joinAs : joinAs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1465786252,4),(this.peer.getBytes() as List<int>),(this.joinAs.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class JoinGroupCallPresentation {
    static const CONSTRUCTOR_ID = 3421137860;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3421137860;
	var call;
	var params;


	JoinGroupCallPresentation({required this.call, required this.params});

	static JoinGroupCallPresentation fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();var params = reader.tgReadObject();		return new JoinGroupCallPresentation(call : call, params : params);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3421137860,4),(this.call.getBytes() as List<int>),(this.params.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class LeaveGroupCallPresentation {
    static const CONSTRUCTOR_ID = 475058500;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 475058500;
	var call;


	LeaveGroupCallPresentation({required this.call});

	static LeaveGroupCallPresentation fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();		return new LeaveGroupCallPresentation(call : call);
	}
	List<int> getBytes(){return [readBufferFromBigInt(475058500,4),(this.call.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetGroupCallStreamChannels {
    static const CONSTRUCTOR_ID = 447879488;
    static const SUBCLASS_OF_ID = 2438448612;
    final classType = "request";
    final ID = 447879488;
	var call;


	GetGroupCallStreamChannels({required this.call});

	static GetGroupCallStreamChannels fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();		return new GetGroupCallStreamChannels(call : call);
	}
	List<int> getBytes(){return [readBufferFromBigInt(447879488,4),(this.call.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetGroupCallStreamRtmpUrl {
    static const CONSTRUCTOR_ID = 3736316863;
    static const SUBCLASS_OF_ID = 3522500043;
    final classType = "request";
    final ID = 3736316863;
	var peer;
	bool revoke;


	GetGroupCallStreamRtmpUrl({required this.peer, required this.revoke});

	static GetGroupCallStreamRtmpUrl fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var revoke = reader.tgReadBool();		return new GetGroupCallStreamRtmpUrl(peer : peer, revoke : revoke);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3736316863,4),(this.peer.getBytes() as List<int>),[this.revoke == true ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SaveCallLog {
    static const CONSTRUCTOR_ID = 1092913030;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 1092913030;
	var peer;
	var file;


	SaveCallLog({required this.peer, required this.file});

	static SaveCallLog fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var file = reader.tgReadObject();		return new SaveCallLog(peer : peer, file : file);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1092913030,4),(this.peer.getBytes() as List<int>),(this.file.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}