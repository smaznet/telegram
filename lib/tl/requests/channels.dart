import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class ReadHistory {
    static const CONSTRUCTOR_ID = 3423619383;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3423619383;
	var channel;
	int maxId;


	ReadHistory({required this.channel, required this.maxId});

	static ReadHistory fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var maxId = reader.readInt();		return new ReadHistory(channel : channel, maxId : maxId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3423619383,4),(this.channel.getBytes() as List<int>),readBufferFromBigInt(this.maxId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteMessages {
    static const CONSTRUCTOR_ID = 2227305806;
    static const SUBCLASS_OF_ID = 3469983854;
    final classType = "request";
    final ID = 2227305806;
	var channel;
	List<int> id;


	DeleteMessages({required this.channel, required this.id});

	static DeleteMessages fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();reader.readInt();
List<int> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readInt());
}		return new DeleteMessages(channel : channel, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2227305806,4),(this.channel.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id!.length,4,little:true,signed:true),this.id!.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReportSpam {
    static const CONSTRUCTOR_ID = 4098523925;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 4098523925;
	var channel;
	var participant;
	List<int> id;


	ReportSpam({required this.channel, required this.participant, required this.id});

	static ReportSpam fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var participant = reader.tgReadObject();reader.readInt();
List<int> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readInt());
}		return new ReportSpam(channel : channel, participant : participant, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4098523925,4),(this.channel.getBytes() as List<int>),(this.participant.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id!.length,4,little:true,signed:true),this.id!.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetMessages {
    static const CONSTRUCTOR_ID = 2911672867;
    static const SUBCLASS_OF_ID = 3568569182;
    final classType = "request";
    final ID = 2911672867;
	var channel;
	List<dynamic> id;


	GetMessages({required this.channel, required this.id});

	static GetMessages fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();reader.readInt();
List<dynamic> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.tgReadObject());
}		return new GetMessages(channel : channel, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2911672867,4),(this.channel.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id!.length,4,little:true,signed:true),this.id!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetParticipants {
    static const CONSTRUCTOR_ID = 2010044880;
    static const SUBCLASS_OF_ID = 3859443300;
    final classType = "request";
    final ID = 2010044880;
	var channel;
	var filter;
	int offset;
	int limit;
	BigInt hash;


	GetParticipants({required this.channel, required this.filter, required this.offset, required this.limit, required this.hash});

	static GetParticipants fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var filter = reader.tgReadObject();var offset = reader.readInt();var limit = reader.readInt();var hash = reader.readLong();		return new GetParticipants(channel : channel, filter : filter, offset : offset, limit : limit, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2010044880,4),(this.channel.getBytes() as List<int>),(this.filter.getBytes() as List<int>),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),readBufferFromBigInt(this.hash,8,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetParticipant {
    static const CONSTRUCTOR_ID = 2695589062;
    static const SUBCLASS_OF_ID = 1717048602;
    final classType = "request";
    final ID = 2695589062;
	var channel;
	var participant;


	GetParticipant({required this.channel, required this.participant});

	static GetParticipant fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var participant = reader.tgReadObject();		return new GetParticipant(channel : channel, participant : participant);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2695589062,4),(this.channel.getBytes() as List<int>),(this.participant.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetChannels {
    static const CONSTRUCTOR_ID = 176122811;
    static const SUBCLASS_OF_ID = 2580925204;
    final classType = "request";
    final ID = 176122811;
	List<dynamic> id;


	GetChannels({required this.id});

	static GetChannels fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.tgReadObject());
}		return new GetChannels(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(176122811,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id!.length,4,little:true,signed:true),this.id!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetFullChannel {
    static const CONSTRUCTOR_ID = 141781513;
    static const SUBCLASS_OF_ID = 576344329;
    final classType = "request";
    final ID = 141781513;
	var channel;


	GetFullChannel({required this.channel});

	static GetFullChannel fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();		return new GetFullChannel(channel : channel);
	}
	List<int> getBytes(){return [readBufferFromBigInt(141781513,4),(this.channel.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class CreateChannel {
    static const CONSTRUCTOR_ID = 1029681423;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1029681423;
	bool? broadcast;
	bool? megagroup;
	bool? forImport;
	String title;
	String about;
	var geoPoint;
	String? address;


	CreateChannel({required this.broadcast, required this.megagroup, required this.forImport, required this.title, required this.about, required this.geoPoint, required this.address});

	static CreateChannel fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final broadcast = false;final megagroup = false;final forImport = false;var title = reader.tgReadString();var about = reader.tgReadString();var geoPoint;if ((flags & 4)==1){geoPoint = reader.tgReadObject(); } else {geoPoint=null;}var address;if ((flags & 4)==1){address = reader.tgReadString(); } else {address=null;}		return new CreateChannel(broadcast : broadcast, megagroup : megagroup, forImport : forImport, title : title, about : about, geoPoint : geoPoint, address : address);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1029681423,4),[0,0,0,0],serializeBytes(this.title),serializeBytes(this.about),(this.geoPoint==null||this.geoPoint==false)?new List<int>.empty():[(this.geoPoint.getBytes() as List<int>)].expand((element) => element).toList(),(this.address==null||this.address==false)?new List<int>.empty():[serializeBytes(this.address)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditAdmin {
    static const CONSTRUCTOR_ID = 3543959810;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3543959810;
	var channel;
	var userId;
	var adminRights;
	String rank;


	EditAdmin({required this.channel, required this.userId, required this.adminRights, required this.rank});

	static EditAdmin fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var userId = reader.tgReadObject();var adminRights = reader.tgReadObject();var rank = reader.tgReadString();		return new EditAdmin(channel : channel, userId : userId, adminRights : adminRights, rank : rank);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3543959810,4),(this.channel.getBytes() as List<int>),(this.userId.getBytes() as List<int>),(this.adminRights.getBytes() as List<int>),serializeBytes(this.rank),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditTitle {
    static const CONSTRUCTOR_ID = 1450044624;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1450044624;
	var channel;
	String title;


	EditTitle({required this.channel, required this.title});

	static EditTitle fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var title = reader.tgReadString();		return new EditTitle(channel : channel, title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1450044624,4),(this.channel.getBytes() as List<int>),serializeBytes(this.title),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditPhoto {
    static const CONSTRUCTOR_ID = 4046346185;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 4046346185;
	var channel;
	var photo;


	EditPhoto({required this.channel, required this.photo});

	static EditPhoto fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var photo = reader.tgReadObject();		return new EditPhoto(channel : channel, photo : photo);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4046346185,4),(this.channel.getBytes() as List<int>),(this.photo.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class CheckUsername {
    static const CONSTRUCTOR_ID = 283557164;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 283557164;
	var channel;
	String username;


	CheckUsername({required this.channel, required this.username});

	static CheckUsername fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var username = reader.tgReadString();		return new CheckUsername(channel : channel, username : username);
	}
	List<int> getBytes(){return [readBufferFromBigInt(283557164,4),(this.channel.getBytes() as List<int>),serializeBytes(this.username),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class UpdateUsername {
    static const CONSTRUCTOR_ID = 890549214;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 890549214;
	var channel;
	String username;


	UpdateUsername({required this.channel, required this.username});

	static UpdateUsername fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var username = reader.tgReadString();		return new UpdateUsername(channel : channel, username : username);
	}
	List<int> getBytes(){return [readBufferFromBigInt(890549214,4),(this.channel.getBytes() as List<int>),serializeBytes(this.username),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class JoinChannel {
    static const CONSTRUCTOR_ID = 615851205;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 615851205;
	var channel;


	JoinChannel({required this.channel});

	static JoinChannel fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();		return new JoinChannel(channel : channel);
	}
	List<int> getBytes(){return [readBufferFromBigInt(615851205,4),(this.channel.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class LeaveChannel {
    static const CONSTRUCTOR_ID = 4164332181;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 4164332181;
	var channel;


	LeaveChannel({required this.channel});

	static LeaveChannel fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();		return new LeaveChannel(channel : channel);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4164332181,4),(this.channel.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class InviteToChannel {
    static const CONSTRUCTOR_ID = 429865580;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 429865580;
	var channel;
	List<dynamic> users;


	InviteToChannel({required this.channel, required this.users});

	static InviteToChannel fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new InviteToChannel(channel : channel, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(429865580,4),(this.channel.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users!.length,4,little:true,signed:true),this.users!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteChannel {
    static const CONSTRUCTOR_ID = 3222347747;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3222347747;
	var channel;


	DeleteChannel({required this.channel});

	static DeleteChannel fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();		return new DeleteChannel(channel : channel);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3222347747,4),(this.channel.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ExportMessageLink {
    static const CONSTRUCTOR_ID = 3862932971;
    static const SUBCLASS_OF_ID = 3739632844;
    final classType = "request";
    final ID = 3862932971;
	bool? grouped;
	bool? thread;
	var channel;
	int id;


	ExportMessageLink({required this.grouped, required this.thread, required this.channel, required this.id});

	static ExportMessageLink fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final grouped = false;final thread = false;var channel = reader.tgReadObject();var id = reader.readInt();		return new ExportMessageLink(grouped : grouped, thread : thread, channel : channel, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3862932971,4),[0,0,0,0],(this.channel.getBytes() as List<int>),readBufferFromBigInt(this.id,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ToggleSignatures {
    static const CONSTRUCTOR_ID = 527021574;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 527021574;
	var channel;
	bool enabled;


	ToggleSignatures({required this.channel, required this.enabled});

	static ToggleSignatures fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var enabled = reader.tgReadBool();		return new ToggleSignatures(channel : channel, enabled : enabled);
	}
	List<int> getBytes(){return [readBufferFromBigInt(527021574,4),(this.channel.getBytes() as List<int>),[this.enabled == true ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAdminedPublicChannels {
    static const CONSTRUCTOR_ID = 4172297903;
    static const SUBCLASS_OF_ID = 2580925204;
    final classType = "request";
    final ID = 4172297903;
	bool? byLocation;
	bool? checkLimit;


	GetAdminedPublicChannels({required this.byLocation, required this.checkLimit});

	static GetAdminedPublicChannels fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final byLocation = false;final checkLimit = false;		return new GetAdminedPublicChannels(byLocation : byLocation, checkLimit : checkLimit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4172297903,4),[0,0,0,0],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditBanned {
    static const CONSTRUCTOR_ID = 2531708289;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2531708289;
	var channel;
	var participant;
	var bannedRights;


	EditBanned({required this.channel, required this.participant, required this.bannedRights});

	static EditBanned fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var participant = reader.tgReadObject();var bannedRights = reader.tgReadObject();		return new EditBanned(channel : channel, participant : participant, bannedRights : bannedRights);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2531708289,4),(this.channel.getBytes() as List<int>),(this.participant.getBytes() as List<int>),(this.bannedRights.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAdminLog {
    static const CONSTRUCTOR_ID = 870184064;
    static const SUBCLASS_OF_ID = 1374713532;
    final classType = "request";
    final ID = 870184064;
	var channel;
	String q;
	var eventsFilter;
	List<dynamic>? admins;
	BigInt maxId;
	BigInt minId;
	int limit;


	GetAdminLog({required this.channel, required this.q, required this.eventsFilter, required this.admins, required this.maxId, required this.minId, required this.limit});

	static GetAdminLog fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var channel = reader.tgReadObject();var q = reader.tgReadString();var eventsFilter;if ((flags & 1)==1){eventsFilter = reader.tgReadObject(); } else {eventsFilter=null;}var admins;if ((flags & 2)==1){reader.readInt();
List<dynamic> admins = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		admins.add(reader.tgReadObject());
} } else {admins=null;}var maxId = reader.readLong();var minId = reader.readLong();var limit = reader.readInt();		return new GetAdminLog(channel : channel, q : q, eventsFilter : eventsFilter, admins : admins, maxId : maxId, minId : minId, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(870184064,4),[0,0,0,0],(this.channel.getBytes() as List<int>),serializeBytes(this.q),(this.eventsFilter==null||this.eventsFilter==false)?new List<int>.empty():[(this.eventsFilter.getBytes() as List<int>)].expand((element) => element).toList(),(this.admins==null||this.admins==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.admins!.length,4,little:true,signed:true),this.admins!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),readBufferFromBigInt(this.maxId,8,little:true,signed:true),readBufferFromBigInt(this.minId,8,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetStickers {
    static const CONSTRUCTOR_ID = 3935085817;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3935085817;
	var channel;
	var stickerset;


	SetStickers({required this.channel, required this.stickerset});

	static SetStickers fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var stickerset = reader.tgReadObject();		return new SetStickers(channel : channel, stickerset : stickerset);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3935085817,4),(this.channel.getBytes() as List<int>),(this.stickerset.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ReadMessageContents {
    static const CONSTRUCTOR_ID = 3937786936;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3937786936;
	var channel;
	List<int> id;


	ReadMessageContents({required this.channel, required this.id});

	static ReadMessageContents fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();reader.readInt();
List<int> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.readInt());
}		return new ReadMessageContents(channel : channel, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3937786936,4),(this.channel.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id!.length,4,little:true,signed:true),this.id!.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteHistory {
    static const CONSTRUCTOR_ID = 2611648071;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2611648071;
	bool? forEveryone;
	var channel;
	int maxId;


	DeleteHistory({required this.forEveryone, required this.channel, required this.maxId});

	static DeleteHistory fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final forEveryone = false;var channel = reader.tgReadObject();var maxId = reader.readInt();		return new DeleteHistory(forEveryone : forEveryone, channel : channel, maxId : maxId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2611648071,4),[0,0,0,0],(this.channel.getBytes() as List<int>),readBufferFromBigInt(this.maxId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class TogglePreHistoryHidden {
    static const CONSTRUCTOR_ID = 3938171212;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3938171212;
	var channel;
	bool enabled;


	TogglePreHistoryHidden({required this.channel, required this.enabled});

	static TogglePreHistoryHidden fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var enabled = reader.tgReadBool();		return new TogglePreHistoryHidden(channel : channel, enabled : enabled);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3938171212,4),(this.channel.getBytes() as List<int>),[this.enabled == true ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetLeftChannels {
    static const CONSTRUCTOR_ID = 2202135744;
    static const SUBCLASS_OF_ID = 2580925204;
    final classType = "request";
    final ID = 2202135744;
	int offset;


	GetLeftChannels({required this.offset});

	static GetLeftChannels fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();		return new GetLeftChannels(offset : offset);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2202135744,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetGroupsForDiscussion {
    static const CONSTRUCTOR_ID = 4124758904;
    static const SUBCLASS_OF_ID = 2580925204;
    final classType = "request";
    final ID = 4124758904;


	GetGroupsForDiscussion();

	static GetGroupsForDiscussion fromReader(BinaryReader reader) {
	var temp,len;		return new GetGroupsForDiscussion();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4124758904,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetDiscussionGroup {
    static const CONSTRUCTOR_ID = 1079520178;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 1079520178;
	var broadcast;
	var group;


	SetDiscussionGroup({required this.broadcast, required this.group});

	static SetDiscussionGroup fromReader(BinaryReader reader) {
	var temp,len;var broadcast = reader.tgReadObject();var group = reader.tgReadObject();		return new SetDiscussionGroup(broadcast : broadcast, group : group);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1079520178,4),(this.broadcast.getBytes() as List<int>),(this.group.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditCreator {
    static const CONSTRUCTOR_ID = 2402864415;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 2402864415;
	var channel;
	var userId;
	var password;


	EditCreator({required this.channel, required this.userId, required this.password});

	static EditCreator fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var userId = reader.tgReadObject();var password = reader.tgReadObject();		return new EditCreator(channel : channel, userId : userId, password : password);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2402864415,4),(this.channel.getBytes() as List<int>),(this.userId.getBytes() as List<int>),(this.password.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditLocation {
    static const CONSTRUCTOR_ID = 1491484525;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 1491484525;
	var channel;
	var geoPoint;
	String address;


	EditLocation({required this.channel, required this.geoPoint, required this.address});

	static EditLocation fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var geoPoint = reader.tgReadObject();var address = reader.tgReadString();		return new EditLocation(channel : channel, geoPoint : geoPoint, address : address);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1491484525,4),(this.channel.getBytes() as List<int>),(this.geoPoint.getBytes() as List<int>),serializeBytes(this.address),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ToggleSlowMode {
    static const CONSTRUCTOR_ID = 3990134512;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3990134512;
	var channel;
	int seconds;


	ToggleSlowMode({required this.channel, required this.seconds});

	static ToggleSlowMode fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var seconds = reader.readInt();		return new ToggleSlowMode(channel : channel, seconds : seconds);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3990134512,4),(this.channel.getBytes() as List<int>),readBufferFromBigInt(this.seconds,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetInactiveChannels {
    static const CONSTRUCTOR_ID = 300429806;
    static const SUBCLASS_OF_ID = 2348013524;
    final classType = "request";
    final ID = 300429806;


	GetInactiveChannels();

	static GetInactiveChannels fromReader(BinaryReader reader) {
	var temp,len;		return new GetInactiveChannels();
	}
	List<int> getBytes(){return [readBufferFromBigInt(300429806,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ConvertToGigagroup {
    static const CONSTRUCTOR_ID = 187239529;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 187239529;
	var channel;


	ConvertToGigagroup({required this.channel});

	static ConvertToGigagroup fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();		return new ConvertToGigagroup(channel : channel);
	}
	List<int> getBytes(){return [readBufferFromBigInt(187239529,4),(this.channel.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ViewSponsoredMessage {
    static const CONSTRUCTOR_ID = 3199130516;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3199130516;
	var channel;
	List<int> randomId;


	ViewSponsoredMessage({required this.channel, required this.randomId});

	static ViewSponsoredMessage fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var randomId = reader.tgReadBytes();		return new ViewSponsoredMessage(channel : channel, randomId : randomId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3199130516,4),(this.channel.getBytes() as List<int>),serializeBytes(this.randomId),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetSponsoredMessages {
    static const CONSTRUCTOR_ID = 3961589695;
    static const SUBCLASS_OF_ID = 2134993376;
    final classType = "request";
    final ID = 3961589695;
	var channel;


	GetSponsoredMessages({required this.channel});

	static GetSponsoredMessages fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();		return new GetSponsoredMessages(channel : channel);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3961589695,4),(this.channel.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetSendAs {
    static const CONSTRUCTOR_ID = 231174382;
    static const SUBCLASS_OF_ID = 952864033;
    final classType = "request";
    final ID = 231174382;
	var peer;


	GetSendAs({required this.peer});

	static GetSendAs fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new GetSendAs(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(231174382,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeleteParticipantHistory {
    static const CONSTRUCTOR_ID = 913655003;
    static const SUBCLASS_OF_ID = 743031062;
    final classType = "request";
    final ID = 913655003;
	var channel;
	var participant;


	DeleteParticipantHistory({required this.channel, required this.participant});

	static DeleteParticipantHistory fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var participant = reader.tgReadObject();		return new DeleteParticipantHistory(channel : channel, participant : participant);
	}
	List<int> getBytes(){return [readBufferFromBigInt(913655003,4),(this.channel.getBytes() as List<int>),(this.participant.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ToggleJoinToSend {
    static const CONSTRUCTOR_ID = 3838547328;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3838547328;
	var channel;
	bool enabled;


	ToggleJoinToSend({required this.channel, required this.enabled});

	static ToggleJoinToSend fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var enabled = reader.tgReadBool();		return new ToggleJoinToSend(channel : channel, enabled : enabled);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3838547328,4),(this.channel.getBytes() as List<int>),[this.enabled == true ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ToggleJoinRequest {
    static const CONSTRUCTOR_ID = 1277789622;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1277789622;
	var channel;
	bool enabled;


	ToggleJoinRequest({required this.channel, required this.enabled});

	static ToggleJoinRequest fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();var enabled = reader.tgReadBool();		return new ToggleJoinRequest(channel : channel, enabled : enabled);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1277789622,4),(this.channel.getBytes() as List<int>),[this.enabled == true ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}