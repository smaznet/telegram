import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class InputPeerEmpty {
    static const CONSTRUCTOR_ID = 2134579434;
    static const SUBCLASS_OF_ID = 3374092470;
    final classType = "constructor";
    final ID = 2134579434;


	InputPeerEmpty();

	static InputPeerEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new InputPeerEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2134579434,4),].expand((element) => element).toList();}

}

class InputPeerSelf {
    static const CONSTRUCTOR_ID = 2107670217;
    static const SUBCLASS_OF_ID = 3374092470;
    final classType = "constructor";
    final ID = 2107670217;


	InputPeerSelf();

	static InputPeerSelf fromReader(BinaryReader reader) {
	var temp,len;		return new InputPeerSelf();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2107670217,4),].expand((element) => element).toList();}

}

class InputPeerChat {
    static const CONSTRUCTOR_ID = 900291769;
    static const SUBCLASS_OF_ID = 3374092470;
    final classType = "constructor";
    final ID = 900291769;
	BigInt chatId;


	InputPeerChat({required this.chatId});

	static InputPeerChat fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();		return new InputPeerChat(chatId : chatId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(900291769,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputPeerUser {
    static const CONSTRUCTOR_ID = 3723011404;
    static const SUBCLASS_OF_ID = 3374092470;
    final classType = "constructor";
    final ID = 3723011404;
	BigInt userId;
	BigInt accessHash;


	InputPeerUser({required this.userId, required this.accessHash});

	static InputPeerUser fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var accessHash = reader.readLong();		return new InputPeerUser(userId : userId, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3723011404,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputPeerChannel {
    static const CONSTRUCTOR_ID = 666680316;
    static const SUBCLASS_OF_ID = 3374092470;
    final classType = "constructor";
    final ID = 666680316;
	BigInt channelId;
	BigInt accessHash;


	InputPeerChannel({required this.channelId, required this.accessHash});

	static InputPeerChannel fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();var accessHash = reader.readLong();		return new InputPeerChannel(channelId : channelId, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(666680316,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputPeerUserFromMessage {
    static const CONSTRUCTOR_ID = 2826635804;
    static const SUBCLASS_OF_ID = 3374092470;
    final classType = "constructor";
    final ID = 2826635804;
	var peer;
	int msgId;
	BigInt userId;


	InputPeerUserFromMessage({required this.peer, required this.msgId, required this.userId});

	static InputPeerUserFromMessage fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();var userId = reader.readLong();		return new InputPeerUserFromMessage(peer : peer, msgId : msgId, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2826635804,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputPeerChannelFromMessage {
    static const CONSTRUCTOR_ID = 3173648448;
    static const SUBCLASS_OF_ID = 3374092470;
    final classType = "constructor";
    final ID = 3173648448;
	var peer;
	int msgId;
	BigInt channelId;


	InputPeerChannelFromMessage({required this.peer, required this.msgId, required this.channelId});

	static InputPeerChannelFromMessage fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();var channelId = reader.readLong();		return new InputPeerChannelFromMessage(peer : peer, msgId : msgId, channelId : channelId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3173648448,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),readBufferFromBigInt(this.channelId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputUserEmpty {
    static const CONSTRUCTOR_ID = 3112732367;
    static const SUBCLASS_OF_ID = 3865689926;
    final classType = "constructor";
    final ID = 3112732367;


	InputUserEmpty();

	static InputUserEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new InputUserEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3112732367,4),].expand((element) => element).toList();}

}

class InputUserSelf {
    static const CONSTRUCTOR_ID = 4156666175;
    static const SUBCLASS_OF_ID = 3865689926;
    final classType = "constructor";
    final ID = 4156666175;


	InputUserSelf();

	static InputUserSelf fromReader(BinaryReader reader) {
	var temp,len;		return new InputUserSelf();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4156666175,4),].expand((element) => element).toList();}

}

class InputUser {
    static const CONSTRUCTOR_ID = 4061223110;
    static const SUBCLASS_OF_ID = 3865689926;
    final classType = "constructor";
    final ID = 4061223110;
	BigInt userId;
	BigInt accessHash;


	InputUser({required this.userId, required this.accessHash});

	static InputUser fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var accessHash = reader.readLong();		return new InputUser(userId : userId, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4061223110,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputUserFromMessage {
    static const CONSTRUCTOR_ID = 497305826;
    static const SUBCLASS_OF_ID = 3865689926;
    final classType = "constructor";
    final ID = 497305826;
	var peer;
	int msgId;
	BigInt userId;


	InputUserFromMessage({required this.peer, required this.msgId, required this.userId});

	static InputUserFromMessage fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();var userId = reader.readLong();		return new InputUserFromMessage(peer : peer, msgId : msgId, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(497305826,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputPhoneContact {
    static const CONSTRUCTOR_ID = 4086478836;
    static const SUBCLASS_OF_ID = 2926144130;
    final classType = "constructor";
    final ID = 4086478836;
	BigInt clientId;
	String phone;
	String firstName;
	String lastName;


	InputPhoneContact({required this.clientId, required this.phone, required this.firstName, required this.lastName});

	static InputPhoneContact fromReader(BinaryReader reader) {
	var temp,len;var clientId = reader.readLong();var phone = reader.tgReadString();var firstName = reader.tgReadString();var lastName = reader.tgReadString();		return new InputPhoneContact(clientId : clientId, phone : phone, firstName : firstName, lastName : lastName);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4086478836,4),readBufferFromBigInt(this.clientId,8,little:true,signed:true),serializeBytes(this.phone),serializeBytes(this.firstName),serializeBytes(this.lastName),].expand((element) => element).toList();}

}

class InputFile {
    static const CONSTRUCTOR_ID = 4113560191;
    static const SUBCLASS_OF_ID = 3882180383;
    final classType = "constructor";
    final ID = 4113560191;
	BigInt id;
	int parts;
	String name;
	String md5Checksum;


	InputFile({required this.id, required this.parts, required this.name, required this.md5Checksum});

	static InputFile fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var parts = reader.readInt();var name = reader.tgReadString();var md5Checksum = reader.tgReadString();		return new InputFile(id : id, parts : parts, name : name, md5Checksum : md5Checksum);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4113560191,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.parts,4,little:true,signed:true),serializeBytes(this.name),serializeBytes(this.md5Checksum),].expand((element) => element).toList();}

}

class InputFileBig {
    static const CONSTRUCTOR_ID = 4199484341;
    static const SUBCLASS_OF_ID = 3882180383;
    final classType = "constructor";
    final ID = 4199484341;
	BigInt id;
	int parts;
	String name;


	InputFileBig({required this.id, required this.parts, required this.name});

	static InputFileBig fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var parts = reader.readInt();var name = reader.tgReadString();		return new InputFileBig(id : id, parts : parts, name : name);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4199484341,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.parts,4,little:true,signed:true),serializeBytes(this.name),].expand((element) => element).toList();}

}

class InputMediaEmpty {
    static const CONSTRUCTOR_ID = 2523198847;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 2523198847;


	InputMediaEmpty();

	static InputMediaEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new InputMediaEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2523198847,4),].expand((element) => element).toList();}

}

class InputMediaUploadedPhoto {
    static const CONSTRUCTOR_ID = 505969924;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 505969924;
	var file;
	List<dynamic> stickers;
	int ttlSeconds;


	InputMediaUploadedPhoto({required this.file, required this.stickers, required this.ttlSeconds});

	static InputMediaUploadedPhoto fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var file = reader.tgReadObject();var stickers;if ((flags & 1)==1){reader.readInt();
List<dynamic> stickers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		stickers.add(reader.tgReadObject());
} } else {stickers=null;}var ttlSeconds;if ((flags & 2)==1){ttlSeconds = reader.readInt(); } else {ttlSeconds=null;}		return new InputMediaUploadedPhoto(file : file, stickers : stickers, ttlSeconds : ttlSeconds);
	}
	List<int> getBytes(){return [readBufferFromBigInt(505969924,4),[0,0,0,0],(this.file.getBytes() as List<int>),(this.stickers==null||this.stickers==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.stickers.length,4,little:true,signed:true),this.stickers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.ttlSeconds==null||this.ttlSeconds==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlSeconds,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputMediaPhoto {
    static const CONSTRUCTOR_ID = 3015312949;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 3015312949;
	var id;
	int ttlSeconds;


	InputMediaPhoto({required this.id, required this.ttlSeconds});

	static InputMediaPhoto fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var id = reader.tgReadObject();var ttlSeconds;if ((flags & 1)==1){ttlSeconds = reader.readInt(); } else {ttlSeconds=null;}		return new InputMediaPhoto(id : id, ttlSeconds : ttlSeconds);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3015312949,4),[0,0,0,0],(this.id.getBytes() as List<int>),(this.ttlSeconds==null||this.ttlSeconds==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlSeconds,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputMediaGeoPoint {
    static const CONSTRUCTOR_ID = 4190388548;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 4190388548;
	var geoPoint;


	InputMediaGeoPoint({required this.geoPoint});

	static InputMediaGeoPoint fromReader(BinaryReader reader) {
	var temp,len;var geoPoint = reader.tgReadObject();		return new InputMediaGeoPoint(geoPoint : geoPoint);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4190388548,4),(this.geoPoint.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputMediaContact {
    static const CONSTRUCTOR_ID = 4171988475;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 4171988475;
	String phoneNumber;
	String firstName;
	String lastName;
	String vcard;


	InputMediaContact({required this.phoneNumber, required this.firstName, required this.lastName, required this.vcard});

	static InputMediaContact fromReader(BinaryReader reader) {
	var temp,len;var phoneNumber = reader.tgReadString();var firstName = reader.tgReadString();var lastName = reader.tgReadString();var vcard = reader.tgReadString();		return new InputMediaContact(phoneNumber : phoneNumber, firstName : firstName, lastName : lastName, vcard : vcard);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4171988475,4),serializeBytes(this.phoneNumber),serializeBytes(this.firstName),serializeBytes(this.lastName),serializeBytes(this.vcard),].expand((element) => element).toList();}

}

class InputMediaUploadedDocument {
    static const CONSTRUCTOR_ID = 1530447553;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 1530447553;
	bool nosoundVideo;
	bool forceFile;
	var file;
	var thumb;
	String mimeType;
	List<dynamic> attributes;
	List<dynamic> stickers;
	int ttlSeconds;


	InputMediaUploadedDocument({required this.nosoundVideo, required this.forceFile, required this.file, required this.thumb, required this.mimeType, required this.attributes, required this.stickers, required this.ttlSeconds});

	static InputMediaUploadedDocument fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final nosoundVideo = false;final forceFile = false;var file = reader.tgReadObject();var thumb;if ((flags & 4)==1){thumb = reader.tgReadObject(); } else {thumb=null;}var mimeType = reader.tgReadString();reader.readInt();
List<dynamic> attributes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		attributes.add(reader.tgReadObject());
}var stickers;if ((flags & 1)==1){reader.readInt();
List<dynamic> stickers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		stickers.add(reader.tgReadObject());
} } else {stickers=null;}var ttlSeconds;if ((flags & 2)==1){ttlSeconds = reader.readInt(); } else {ttlSeconds=null;}		return new InputMediaUploadedDocument(nosoundVideo : nosoundVideo, forceFile : forceFile, file : file, thumb : thumb, mimeType : mimeType, attributes : attributes, stickers : stickers, ttlSeconds : ttlSeconds);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1530447553,4),[0,0,0,0],(this.file.getBytes() as List<int>),(this.thumb==null||this.thumb==false)?new List<int>.empty():[(this.thumb.getBytes() as List<int>)].expand((element) => element).toList(),serializeBytes(this.mimeType),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.attributes.length,4,little:true,signed:true),this.attributes.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.stickers==null||this.stickers==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.stickers.length,4,little:true,signed:true),this.stickers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.ttlSeconds==null||this.ttlSeconds==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlSeconds,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputMediaDocument {
    static const CONSTRUCTOR_ID = 860303448;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 860303448;
	var id;
	int ttlSeconds;
	String query;


	InputMediaDocument({required this.id, required this.ttlSeconds, required this.query});

	static InputMediaDocument fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var id = reader.tgReadObject();var ttlSeconds;if ((flags & 1)==1){ttlSeconds = reader.readInt(); } else {ttlSeconds=null;}var query;if ((flags & 2)==1){query = reader.tgReadString(); } else {query=null;}		return new InputMediaDocument(id : id, ttlSeconds : ttlSeconds, query : query);
	}
	List<int> getBytes(){return [readBufferFromBigInt(860303448,4),[0,0,0,0],(this.id.getBytes() as List<int>),(this.ttlSeconds==null||this.ttlSeconds==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlSeconds,4,little:true,signed:true)].expand((element) => element).toList(),(this.query==null||this.query==false)?new List<int>.empty():[serializeBytes(this.query)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputMediaVenue {
    static const CONSTRUCTOR_ID = 3242007569;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 3242007569;
	var geoPoint;
	String title;
	String address;
	String provider;
	String venueId;
	String venueType;


	InputMediaVenue({required this.geoPoint, required this.title, required this.address, required this.provider, required this.venueId, required this.venueType});

	static InputMediaVenue fromReader(BinaryReader reader) {
	var temp,len;var geoPoint = reader.tgReadObject();var title = reader.tgReadString();var address = reader.tgReadString();var provider = reader.tgReadString();var venueId = reader.tgReadString();var venueType = reader.tgReadString();		return new InputMediaVenue(geoPoint : geoPoint, title : title, address : address, provider : provider, venueId : venueId, venueType : venueType);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3242007569,4),(this.geoPoint.getBytes() as List<int>),serializeBytes(this.title),serializeBytes(this.address),serializeBytes(this.provider),serializeBytes(this.venueId),serializeBytes(this.venueType),].expand((element) => element).toList();}

}

class InputMediaPhotoExternal {
    static const CONSTRUCTOR_ID = 3854302746;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 3854302746;
	String url;
	int ttlSeconds;


	InputMediaPhotoExternal({required this.url, required this.ttlSeconds});

	static InputMediaPhotoExternal fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var url = reader.tgReadString();var ttlSeconds;if ((flags & 1)==1){ttlSeconds = reader.readInt(); } else {ttlSeconds=null;}		return new InputMediaPhotoExternal(url : url, ttlSeconds : ttlSeconds);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3854302746,4),[0,0,0,0],serializeBytes(this.url),(this.ttlSeconds==null||this.ttlSeconds==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlSeconds,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputMediaDocumentExternal {
    static const CONSTRUCTOR_ID = 4216511641;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 4216511641;
	String url;
	int ttlSeconds;


	InputMediaDocumentExternal({required this.url, required this.ttlSeconds});

	static InputMediaDocumentExternal fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var url = reader.tgReadString();var ttlSeconds;if ((flags & 1)==1){ttlSeconds = reader.readInt(); } else {ttlSeconds=null;}		return new InputMediaDocumentExternal(url : url, ttlSeconds : ttlSeconds);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4216511641,4),[0,0,0,0],serializeBytes(this.url),(this.ttlSeconds==null||this.ttlSeconds==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlSeconds,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputMediaGame {
    static const CONSTRUCTOR_ID = 3544138739;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 3544138739;
	var id;


	InputMediaGame({required this.id});

	static InputMediaGame fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();		return new InputMediaGame(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3544138739,4),(this.id.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputMediaInvoice {
    static const CONSTRUCTOR_ID = 3648624756;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 3648624756;
	String title;
	String description;
	var photo;
	var invoice;
	List<int> payload;
	String provider;
	var providerData;
	String startParam;


	InputMediaInvoice({required this.title, required this.description, required this.photo, required this.invoice, required this.payload, required this.provider, required this.providerData, required this.startParam});

	static InputMediaInvoice fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var title = reader.tgReadString();var description = reader.tgReadString();var photo;if ((flags & 1)==1){photo = reader.tgReadObject(); } else {photo=null;}var invoice = reader.tgReadObject();var payload = reader.tgReadBytes();var provider = reader.tgReadString();var providerData = reader.tgReadObject();var startParam;if ((flags & 2)==1){startParam = reader.tgReadString(); } else {startParam=null;}		return new InputMediaInvoice(title : title, description : description, photo : photo, invoice : invoice, payload : payload, provider : provider, providerData : providerData, startParam : startParam);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3648624756,4),[0,0,0,0],serializeBytes(this.title),serializeBytes(this.description),(this.photo==null||this.photo==false)?new List<int>.empty():[(this.photo.getBytes() as List<int>)].expand((element) => element).toList(),(this.invoice.getBytes() as List<int>),serializeBytes(this.payload),serializeBytes(this.provider),(this.providerData.getBytes() as List<int>),(this.startParam==null||this.startParam==false)?new List<int>.empty():[serializeBytes(this.startParam)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputMediaGeoLive {
    static const CONSTRUCTOR_ID = 2535434307;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 2535434307;
	bool stopped;
	var geoPoint;
	int heading;
	int period;
	int proximityNotificationRadius;


	InputMediaGeoLive({required this.stopped, required this.geoPoint, required this.heading, required this.period, required this.proximityNotificationRadius});

	static InputMediaGeoLive fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final stopped = false;var geoPoint = reader.tgReadObject();var heading;if ((flags & 4)==1){heading = reader.readInt(); } else {heading=null;}var period;if ((flags & 2)==1){period = reader.readInt(); } else {period=null;}var proximityNotificationRadius;if ((flags & 8)==1){proximityNotificationRadius = reader.readInt(); } else {proximityNotificationRadius=null;}		return new InputMediaGeoLive(stopped : stopped, geoPoint : geoPoint, heading : heading, period : period, proximityNotificationRadius : proximityNotificationRadius);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2535434307,4),[0,0,0,0],(this.geoPoint.getBytes() as List<int>),(this.heading==null||this.heading==false)?new List<int>.empty():[readBufferFromBigInt(this.heading,4,little:true,signed:true)].expand((element) => element).toList(),(this.period==null||this.period==false)?new List<int>.empty():[readBufferFromBigInt(this.period,4,little:true,signed:true)].expand((element) => element).toList(),(this.proximityNotificationRadius==null||this.proximityNotificationRadius==false)?new List<int>.empty():[readBufferFromBigInt(this.proximityNotificationRadius,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputMediaPoll {
    static const CONSTRUCTOR_ID = 261416433;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 261416433;
	var poll;
	List<List<int>> correctAnswers;
	String solution;
	List<dynamic> solutionEntities;


	InputMediaPoll({required this.poll, required this.correctAnswers, required this.solution, required this.solutionEntities});

	static InputMediaPoll fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var poll = reader.tgReadObject();var correctAnswers;if ((flags & 1)==1){reader.readInt();
List<List<int>> correctAnswers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		correctAnswers.add(reader.tgReadBytes());
} } else {correctAnswers=null;}var solution;if ((flags & 2)==1){solution = reader.tgReadString(); } else {solution=null;}var solutionEntities;if ((flags & 2)==1){reader.readInt();
List<dynamic> solutionEntities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		solutionEntities.add(reader.tgReadObject());
} } else {solutionEntities=null;}		return new InputMediaPoll(poll : poll, correctAnswers : correctAnswers, solution : solution, solutionEntities : solutionEntities);
	}
	List<int> getBytes(){return [readBufferFromBigInt(261416433,4),[0,0,0,0],(this.poll.getBytes() as List<int>),(this.correctAnswers==null||this.correctAnswers==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.correctAnswers.length,4,little:true,signed:true),this.correctAnswers.map((x)=>serializeBytes(x)).expand((element) => element)].expand((element) => element).toList(),(this.solution==null||this.solution==false)?new List<int>.empty():[serializeBytes(this.solution)].expand((element) => element).toList(),(this.solutionEntities==null||this.solutionEntities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.solutionEntities.length,4,little:true,signed:true),this.solutionEntities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputMediaDice {
    static const CONSTRUCTOR_ID = 3866083195;
    static const SUBCLASS_OF_ID = 4210575092;
    final classType = "constructor";
    final ID = 3866083195;
	String emoticon;


	InputMediaDice({required this.emoticon});

	static InputMediaDice fromReader(BinaryReader reader) {
	var temp,len;var emoticon = reader.tgReadString();		return new InputMediaDice(emoticon : emoticon);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3866083195,4),serializeBytes(this.emoticon),].expand((element) => element).toList();}

}

class InputChatPhotoEmpty {
    static const CONSTRUCTOR_ID = 480546647;
    static const SUBCLASS_OF_ID = 3572182388;
    final classType = "constructor";
    final ID = 480546647;


	InputChatPhotoEmpty();

	static InputChatPhotoEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new InputChatPhotoEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(480546647,4),].expand((element) => element).toList();}

}

class InputChatUploadedPhoto {
    static const CONSTRUCTOR_ID = 3326243406;
    static const SUBCLASS_OF_ID = 3572182388;
    final classType = "constructor";
    final ID = 3326243406;
	var file;
	var video;
	double videoStartTs;


	InputChatUploadedPhoto({required this.file, required this.video, required this.videoStartTs});

	static InputChatUploadedPhoto fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var file;if ((flags & 1)==1){file = reader.tgReadObject(); } else {file=null;}var video;if ((flags & 2)==1){video = reader.tgReadObject(); } else {video=null;}var videoStartTs;if ((flags & 4)==1){videoStartTs = reader.readDouble(); } else {videoStartTs=null;}		return new InputChatUploadedPhoto(file : file, video : video, videoStartTs : videoStartTs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3326243406,4),[0,0,0,0],(this.file==null||this.file==false)?new List<int>.empty():[(this.file.getBytes() as List<int>)].expand((element) => element).toList(),(this.video==null||this.video==false)?new List<int>.empty():[(this.video.getBytes() as List<int>)].expand((element) => element).toList(),(this.videoStartTs==null||this.videoStartTs==false)?new List<int>.empty():[readBufferFromBigInt(this.videoStartTs,4)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputChatPhoto {
    static const CONSTRUCTOR_ID = 2303962423;
    static const SUBCLASS_OF_ID = 3572182388;
    final classType = "constructor";
    final ID = 2303962423;
	var id;


	InputChatPhoto({required this.id});

	static InputChatPhoto fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();		return new InputChatPhoto(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2303962423,4),(this.id.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputGeoPointEmpty {
    static const CONSTRUCTOR_ID = 3837862870;
    static const SUBCLASS_OF_ID = 70308389;
    final classType = "constructor";
    final ID = 3837862870;


	InputGeoPointEmpty();

	static InputGeoPointEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new InputGeoPointEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3837862870,4),].expand((element) => element).toList();}

}

class InputGeoPoint {
    static const CONSTRUCTOR_ID = 1210199983;
    static const SUBCLASS_OF_ID = 70308389;
    final classType = "constructor";
    final ID = 1210199983;
	double lat;
	double long;
	int accuracyRadius;


	InputGeoPoint({required this.lat, required this.long, required this.accuracyRadius});

	static InputGeoPoint fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var lat = reader.readDouble();var long = reader.readDouble();var accuracyRadius;if ((flags & 1)==1){accuracyRadius = reader.readInt(); } else {accuracyRadius=null;}		return new InputGeoPoint(lat : lat, long : long, accuracyRadius : accuracyRadius);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1210199983,4),[0,0,0,0],readBufferFromBigInt(this.lat,4),readBufferFromBigInt(this.long,4),(this.accuracyRadius==null||this.accuracyRadius==false)?new List<int>.empty():[readBufferFromBigInt(this.accuracyRadius,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputPhotoEmpty {
    static const CONSTRUCTOR_ID = 483901197;
    static const SUBCLASS_OF_ID = 2221106144;
    final classType = "constructor";
    final ID = 483901197;


	InputPhotoEmpty();

	static InputPhotoEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new InputPhotoEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(483901197,4),].expand((element) => element).toList();}

}

class InputPhoto {
    static const CONSTRUCTOR_ID = 1001634122;
    static const SUBCLASS_OF_ID = 2221106144;
    final classType = "constructor";
    final ID = 1001634122;
	BigInt id;
	BigInt accessHash;
	List<int> fileReference;


	InputPhoto({required this.id, required this.accessHash, required this.fileReference});

	static InputPhoto fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();var fileReference = reader.tgReadBytes();		return new InputPhoto(id : id, accessHash : accessHash, fileReference : fileReference);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1001634122,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),serializeBytes(this.fileReference),].expand((element) => element).toList();}

}

class InputFileLocation {
    static const CONSTRUCTOR_ID = 3755650017;
    static const SUBCLASS_OF_ID = 354669666;
    final classType = "constructor";
    final ID = 3755650017;
	BigInt volumeId;
	int localId;
	BigInt secret;
	List<int> fileReference;


	InputFileLocation({required this.volumeId, required this.localId, required this.secret, required this.fileReference});

	static InputFileLocation fromReader(BinaryReader reader) {
	var temp,len;var volumeId = reader.readLong();var localId = reader.readInt();var secret = reader.readLong();var fileReference = reader.tgReadBytes();		return new InputFileLocation(volumeId : volumeId, localId : localId, secret : secret, fileReference : fileReference);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3755650017,4),readBufferFromBigInt(this.volumeId,8,little:true,signed:true),readBufferFromBigInt(this.localId,4,little:true,signed:true),readBufferFromBigInt(this.secret,8,little:true,signed:true),serializeBytes(this.fileReference),].expand((element) => element).toList();}

}

class InputEncryptedFileLocation {
    static const CONSTRUCTOR_ID = 4112735573;
    static const SUBCLASS_OF_ID = 354669666;
    final classType = "constructor";
    final ID = 4112735573;
	BigInt id;
	BigInt accessHash;


	InputEncryptedFileLocation({required this.id, required this.accessHash});

	static InputEncryptedFileLocation fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();		return new InputEncryptedFileLocation(id : id, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4112735573,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputDocumentFileLocation {
    static const CONSTRUCTOR_ID = 3134223748;
    static const SUBCLASS_OF_ID = 354669666;
    final classType = "constructor";
    final ID = 3134223748;
	BigInt id;
	BigInt accessHash;
	List<int> fileReference;
	String thumbSize;


	InputDocumentFileLocation({required this.id, required this.accessHash, required this.fileReference, required this.thumbSize});

	static InputDocumentFileLocation fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();var fileReference = reader.tgReadBytes();var thumbSize = reader.tgReadString();		return new InputDocumentFileLocation(id : id, accessHash : accessHash, fileReference : fileReference, thumbSize : thumbSize);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3134223748,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),serializeBytes(this.fileReference),serializeBytes(this.thumbSize),].expand((element) => element).toList();}

}

class InputSecureFileLocation {
    static const CONSTRUCTOR_ID = 3418877480;
    static const SUBCLASS_OF_ID = 354669666;
    final classType = "constructor";
    final ID = 3418877480;
	BigInt id;
	BigInt accessHash;


	InputSecureFileLocation({required this.id, required this.accessHash});

	static InputSecureFileLocation fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();		return new InputSecureFileLocation(id : id, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3418877480,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputTakeoutFileLocation {
    static const CONSTRUCTOR_ID = 700340377;
    static const SUBCLASS_OF_ID = 354669666;
    final classType = "constructor";
    final ID = 700340377;


	InputTakeoutFileLocation();

	static InputTakeoutFileLocation fromReader(BinaryReader reader) {
	var temp,len;		return new InputTakeoutFileLocation();
	}
	List<int> getBytes(){return [readBufferFromBigInt(700340377,4),].expand((element) => element).toList();}

}

class InputPhotoFileLocation {
    static const CONSTRUCTOR_ID = 1075322878;
    static const SUBCLASS_OF_ID = 354669666;
    final classType = "constructor";
    final ID = 1075322878;
	BigInt id;
	BigInt accessHash;
	List<int> fileReference;
	String thumbSize;


	InputPhotoFileLocation({required this.id, required this.accessHash, required this.fileReference, required this.thumbSize});

	static InputPhotoFileLocation fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();var fileReference = reader.tgReadBytes();var thumbSize = reader.tgReadString();		return new InputPhotoFileLocation(id : id, accessHash : accessHash, fileReference : fileReference, thumbSize : thumbSize);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1075322878,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),serializeBytes(this.fileReference),serializeBytes(this.thumbSize),].expand((element) => element).toList();}

}

class InputPhotoLegacyFileLocation {
    static const CONSTRUCTOR_ID = 3627312883;
    static const SUBCLASS_OF_ID = 354669666;
    final classType = "constructor";
    final ID = 3627312883;
	BigInt id;
	BigInt accessHash;
	List<int> fileReference;
	BigInt volumeId;
	int localId;
	BigInt secret;


	InputPhotoLegacyFileLocation({required this.id, required this.accessHash, required this.fileReference, required this.volumeId, required this.localId, required this.secret});

	static InputPhotoLegacyFileLocation fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();var fileReference = reader.tgReadBytes();var volumeId = reader.readLong();var localId = reader.readInt();var secret = reader.readLong();		return new InputPhotoLegacyFileLocation(id : id, accessHash : accessHash, fileReference : fileReference, volumeId : volumeId, localId : localId, secret : secret);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3627312883,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),serializeBytes(this.fileReference),readBufferFromBigInt(this.volumeId,8,little:true,signed:true),readBufferFromBigInt(this.localId,4,little:true,signed:true),readBufferFromBigInt(this.secret,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputPeerPhotoFileLocation {
    static const CONSTRUCTOR_ID = 925204121;
    static const SUBCLASS_OF_ID = 354669666;
    final classType = "constructor";
    final ID = 925204121;
	bool big;
	var peer;
	BigInt photoId;


	InputPeerPhotoFileLocation({required this.big, required this.peer, required this.photoId});

	static InputPeerPhotoFileLocation fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final big = false;var peer = reader.tgReadObject();var photoId = reader.readLong();		return new InputPeerPhotoFileLocation(big : big, peer : peer, photoId : photoId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(925204121,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.photoId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputStickerSetThumb {
    static const CONSTRUCTOR_ID = 2642736091;
    static const SUBCLASS_OF_ID = 354669666;
    final classType = "constructor";
    final ID = 2642736091;
	var stickerset;
	int thumbVersion;


	InputStickerSetThumb({required this.stickerset, required this.thumbVersion});

	static InputStickerSetThumb fromReader(BinaryReader reader) {
	var temp,len;var stickerset = reader.tgReadObject();var thumbVersion = reader.readInt();		return new InputStickerSetThumb(stickerset : stickerset, thumbVersion : thumbVersion);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2642736091,4),(this.stickerset.getBytes() as List<int>),readBufferFromBigInt(this.thumbVersion,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputGroupCallStream {
    static const CONSTRUCTOR_ID = 93890858;
    static const SUBCLASS_OF_ID = 354669666;
    final classType = "constructor";
    final ID = 93890858;
	var call;
	BigInt timeMs;
	int scale;
	int videoChannel;
	int videoQuality;


	InputGroupCallStream({required this.call, required this.timeMs, required this.scale, required this.videoChannel, required this.videoQuality});

	static InputGroupCallStream fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var call = reader.tgReadObject();var timeMs = reader.readLong();var scale = reader.readInt();var videoChannel;if ((flags & 1)==1){videoChannel = reader.readInt(); } else {videoChannel=null;}var videoQuality;if ((flags & 1)==1){videoQuality = reader.readInt(); } else {videoQuality=null;}		return new InputGroupCallStream(call : call, timeMs : timeMs, scale : scale, videoChannel : videoChannel, videoQuality : videoQuality);
	}
	List<int> getBytes(){return [readBufferFromBigInt(93890858,4),[0,0,0,0],(this.call.getBytes() as List<int>),readBufferFromBigInt(this.timeMs,8,little:true,signed:true),readBufferFromBigInt(this.scale,4,little:true,signed:true),(this.videoChannel==null||this.videoChannel==false)?new List<int>.empty():[readBufferFromBigInt(this.videoChannel,4,little:true,signed:true)].expand((element) => element).toList(),(this.videoQuality==null||this.videoQuality==false)?new List<int>.empty():[readBufferFromBigInt(this.videoQuality,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PeerUser {
    static const CONSTRUCTOR_ID = 1498486562;
    static const SUBCLASS_OF_ID = 47470215;
    final classType = "constructor";
    final ID = 1498486562;
	BigInt userId;


	PeerUser({required this.userId});

	static PeerUser fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();		return new PeerUser(userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1498486562,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class PeerChat {
    static const CONSTRUCTOR_ID = 918946202;
    static const SUBCLASS_OF_ID = 47470215;
    final classType = "constructor";
    final ID = 918946202;
	BigInt chatId;


	PeerChat({required this.chatId});

	static PeerChat fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();		return new PeerChat(chatId : chatId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(918946202,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class PeerChannel {
    static const CONSTRUCTOR_ID = 2728736542;
    static const SUBCLASS_OF_ID = 47470215;
    final classType = "constructor";
    final ID = 2728736542;
	BigInt channelId;


	PeerChannel({required this.channelId});

	static PeerChannel fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();		return new PeerChannel(channelId : channelId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2728736542,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class UserEmpty {
    static const CONSTRUCTOR_ID = 3552332666;
    static const SUBCLASS_OF_ID = 765557111;
    final classType = "constructor";
    final ID = 3552332666;
	BigInt id;


	UserEmpty({required this.id});

	static UserEmpty fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();		return new UserEmpty(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3552332666,4),readBufferFromBigInt(this.id,8,little:true,signed:true),].expand((element) => element).toList();}

}

class User {
    static const CONSTRUCTOR_ID = 1073147056;
    static const SUBCLASS_OF_ID = 765557111;
    final classType = "constructor";
    final ID = 1073147056;
	bool self;
	bool contact;
	bool mutualContact;
	bool deleted;
	bool bot;
	bool botChatHistory;
	bool botNochats;
	bool verified;
	bool restricted;
	bool min;
	bool botInlineGeo;
	bool support;
	bool scam;
	bool applyMinPhoto;
	bool fake;
	bool botAttachMenu;
	bool premium;
	bool attachMenuEnabled;
	BigInt id;
	BigInt accessHash;
	String firstName;
	String lastName;
	String username;
	String phone;
	var photo;
	var status;
	int botInfoVersion;
	List<dynamic> restrictionReason;
	String botInlinePlaceholder;
	String langCode;


	User({required this.self, required this.contact, required this.mutualContact, required this.deleted, required this.bot, required this.botChatHistory, required this.botNochats, required this.verified, required this.restricted, required this.min, required this.botInlineGeo, required this.support, required this.scam, required this.applyMinPhoto, required this.fake, required this.botAttachMenu, required this.premium, required this.attachMenuEnabled, required this.id, required this.accessHash, required this.firstName, required this.lastName, required this.username, required this.phone, required this.photo, required this.status, required this.botInfoVersion, required this.restrictionReason, required this.botInlinePlaceholder, required this.langCode});

	static User fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final self = false;final contact = false;final mutualContact = false;final deleted = false;final bot = false;final botChatHistory = false;final botNochats = false;final verified = false;final restricted = false;final min = false;final botInlineGeo = false;final support = false;final scam = false;final applyMinPhoto = false;final fake = false;final botAttachMenu = false;final premium = false;final attachMenuEnabled = false;var id = reader.readLong();var accessHash;if ((flags & 1)==1){accessHash = reader.readLong(); } else {accessHash=null;}var firstName;if ((flags & 2)==1){firstName = reader.tgReadString(); } else {firstName=null;}var lastName;if ((flags & 4)==1){lastName = reader.tgReadString(); } else {lastName=null;}var username;if ((flags & 8)==1){username = reader.tgReadString(); } else {username=null;}var phone;if ((flags & 16)==1){phone = reader.tgReadString(); } else {phone=null;}var photo;if ((flags & 32)==1){photo = reader.tgReadObject(); } else {photo=null;}var status;if ((flags & 64)==1){status = reader.tgReadObject(); } else {status=null;}var botInfoVersion;if ((flags & 16384)==1){botInfoVersion = reader.readInt(); } else {botInfoVersion=null;}var restrictionReason;if ((flags & 262144)==1){reader.readInt();
List<dynamic> restrictionReason = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		restrictionReason.add(reader.tgReadObject());
} } else {restrictionReason=null;}var botInlinePlaceholder;if ((flags & 524288)==1){botInlinePlaceholder = reader.tgReadString(); } else {botInlinePlaceholder=null;}var langCode;if ((flags & 4194304)==1){langCode = reader.tgReadString(); } else {langCode=null;}		return new User(self : self, contact : contact, mutualContact : mutualContact, deleted : deleted, bot : bot, botChatHistory : botChatHistory, botNochats : botNochats, verified : verified, restricted : restricted, min : min, botInlineGeo : botInlineGeo, support : support, scam : scam, applyMinPhoto : applyMinPhoto, fake : fake, botAttachMenu : botAttachMenu, premium : premium, attachMenuEnabled : attachMenuEnabled, id : id, accessHash : accessHash, firstName : firstName, lastName : lastName, username : username, phone : phone, photo : photo, status : status, botInfoVersion : botInfoVersion, restrictionReason : restrictionReason, botInlinePlaceholder : botInlinePlaceholder, langCode : langCode);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1073147056,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),(this.accessHash==null||this.accessHash==false)?new List<int>.empty():[readBufferFromBigInt(this.accessHash,8,little:true,signed:true)].expand((element) => element).toList(),(this.firstName==null||this.firstName==false)?new List<int>.empty():[serializeBytes(this.firstName)].expand((element) => element).toList(),(this.lastName==null||this.lastName==false)?new List<int>.empty():[serializeBytes(this.lastName)].expand((element) => element).toList(),(this.username==null||this.username==false)?new List<int>.empty():[serializeBytes(this.username)].expand((element) => element).toList(),(this.phone==null||this.phone==false)?new List<int>.empty():[serializeBytes(this.phone)].expand((element) => element).toList(),(this.photo==null||this.photo==false)?new List<int>.empty():[(this.photo.getBytes() as List<int>)].expand((element) => element).toList(),(this.status==null||this.status==false)?new List<int>.empty():[(this.status.getBytes() as List<int>)].expand((element) => element).toList(),(this.botInfoVersion==null||this.botInfoVersion==false)?new List<int>.empty():[readBufferFromBigInt(this.botInfoVersion,4,little:true,signed:true)].expand((element) => element).toList(),(this.restrictionReason==null||this.restrictionReason==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.restrictionReason.length,4,little:true,signed:true),this.restrictionReason.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.botInlinePlaceholder==null||this.botInlinePlaceholder==false)?new List<int>.empty():[serializeBytes(this.botInlinePlaceholder)].expand((element) => element).toList(),(this.langCode==null||this.langCode==false)?new List<int>.empty():[serializeBytes(this.langCode)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class UserProfilePhotoEmpty {
    static const CONSTRUCTOR_ID = 1326562017;
    static const SUBCLASS_OF_ID = 3325267837;
    final classType = "constructor";
    final ID = 1326562017;


	UserProfilePhotoEmpty();

	static UserProfilePhotoEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new UserProfilePhotoEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1326562017,4),].expand((element) => element).toList();}

}

class UserProfilePhoto {
    static const CONSTRUCTOR_ID = 2194798342;
    static const SUBCLASS_OF_ID = 3325267837;
    final classType = "constructor";
    final ID = 2194798342;
	bool hasVideo;
	BigInt photoId;
	List<int> strippedThumb;
	int dcId;


	UserProfilePhoto({required this.hasVideo, required this.photoId, required this.strippedThumb, required this.dcId});

	static UserProfilePhoto fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final hasVideo = false;var photoId = reader.readLong();var strippedThumb;if ((flags & 2)==1){strippedThumb = reader.tgReadBytes(); } else {strippedThumb=null;}var dcId = reader.readInt();		return new UserProfilePhoto(hasVideo : hasVideo, photoId : photoId, strippedThumb : strippedThumb, dcId : dcId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2194798342,4),[0,0,0,0],readBufferFromBigInt(this.photoId,8,little:true,signed:true),(this.strippedThumb==null||this.strippedThumb==false)?new List<int>.empty():[serializeBytes(this.strippedThumb)].expand((element) => element).toList(),readBufferFromBigInt(this.dcId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UserStatusEmpty {
    static const CONSTRUCTOR_ID = 164646985;
    static const SUBCLASS_OF_ID = 1527477310;
    final classType = "constructor";
    final ID = 164646985;


	UserStatusEmpty();

	static UserStatusEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new UserStatusEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(164646985,4),].expand((element) => element).toList();}

}

class UserStatusOnline {
    static const CONSTRUCTOR_ID = 3988339017;
    static const SUBCLASS_OF_ID = 1527477310;
    final classType = "constructor";
    final ID = 3988339017;
	int expires;


	UserStatusOnline({required this.expires});

	static UserStatusOnline fromReader(BinaryReader reader) {
	var temp,len;var expires = reader.readInt();		return new UserStatusOnline(expires : expires);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3988339017,4),readBufferFromBigInt(this.expires,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UserStatusOffline {
    static const CONSTRUCTOR_ID = 9203775;
    static const SUBCLASS_OF_ID = 1527477310;
    final classType = "constructor";
    final ID = 9203775;
	int wasOnline;


	UserStatusOffline({required this.wasOnline});

	static UserStatusOffline fromReader(BinaryReader reader) {
	var temp,len;var wasOnline = reader.readInt();		return new UserStatusOffline(wasOnline : wasOnline);
	}
	List<int> getBytes(){return [readBufferFromBigInt(9203775,4),readBufferFromBigInt(this.wasOnline,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UserStatusRecently {
    static const CONSTRUCTOR_ID = 3798942449;
    static const SUBCLASS_OF_ID = 1527477310;
    final classType = "constructor";
    final ID = 3798942449;


	UserStatusRecently();

	static UserStatusRecently fromReader(BinaryReader reader) {
	var temp,len;		return new UserStatusRecently();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3798942449,4),].expand((element) => element).toList();}

}

class UserStatusLastWeek {
    static const CONSTRUCTOR_ID = 129960444;
    static const SUBCLASS_OF_ID = 1527477310;
    final classType = "constructor";
    final ID = 129960444;


	UserStatusLastWeek();

	static UserStatusLastWeek fromReader(BinaryReader reader) {
	var temp,len;		return new UserStatusLastWeek();
	}
	List<int> getBytes(){return [readBufferFromBigInt(129960444,4),].expand((element) => element).toList();}

}

class UserStatusLastMonth {
    static const CONSTRUCTOR_ID = 2011940674;
    static const SUBCLASS_OF_ID = 1527477310;
    final classType = "constructor";
    final ID = 2011940674;


	UserStatusLastMonth();

	static UserStatusLastMonth fromReader(BinaryReader reader) {
	var temp,len;		return new UserStatusLastMonth();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2011940674,4),].expand((element) => element).toList();}

}

class ChatEmpty {
    static const CONSTRUCTOR_ID = 693512293;
    static const SUBCLASS_OF_ID = 3316604308;
    final classType = "constructor";
    final ID = 693512293;
	BigInt id;


	ChatEmpty({required this.id});

	static ChatEmpty fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();		return new ChatEmpty(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(693512293,4),readBufferFromBigInt(this.id,8,little:true,signed:true),].expand((element) => element).toList();}

}

class Chat {
    static const CONSTRUCTOR_ID = 1103884886;
    static const SUBCLASS_OF_ID = 3316604308;
    final classType = "constructor";
    final ID = 1103884886;
	bool creator;
	bool left;
	bool deactivated;
	bool callActive;
	bool callNotEmpty;
	bool noforwards;
	BigInt id;
	String title;
	var photo;
	int participantsCount;
	int date;
	int version;
	var migratedTo;
	var adminRights;
	var defaultBannedRights;


	Chat({required this.creator, required this.left, required this.deactivated, required this.callActive, required this.callNotEmpty, required this.noforwards, required this.id, required this.title, required this.photo, required this.participantsCount, required this.date, required this.version, required this.migratedTo, required this.adminRights, required this.defaultBannedRights});

	static Chat fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final creator = false;final left = false;final deactivated = false;final callActive = false;final callNotEmpty = false;final noforwards = false;var id = reader.readLong();var title = reader.tgReadString();var photo = reader.tgReadObject();var participantsCount = reader.readInt();var date = reader.readInt();var version = reader.readInt();var migratedTo;if ((flags & 64)==1){migratedTo = reader.tgReadObject(); } else {migratedTo=null;}var adminRights;if ((flags & 16384)==1){adminRights = reader.tgReadObject(); } else {adminRights=null;}var defaultBannedRights;if ((flags & 262144)==1){defaultBannedRights = reader.tgReadObject(); } else {defaultBannedRights=null;}		return new Chat(creator : creator, left : left, deactivated : deactivated, callActive : callActive, callNotEmpty : callNotEmpty, noforwards : noforwards, id : id, title : title, photo : photo, participantsCount : participantsCount, date : date, version : version, migratedTo : migratedTo, adminRights : adminRights, defaultBannedRights : defaultBannedRights);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1103884886,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),serializeBytes(this.title),(this.photo.getBytes() as List<int>),readBufferFromBigInt(this.participantsCount,4,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.version,4,little:true,signed:true),(this.migratedTo==null||this.migratedTo==false)?new List<int>.empty():[(this.migratedTo.getBytes() as List<int>)].expand((element) => element).toList(),(this.adminRights==null||this.adminRights==false)?new List<int>.empty():[(this.adminRights.getBytes() as List<int>)].expand((element) => element).toList(),(this.defaultBannedRights==null||this.defaultBannedRights==false)?new List<int>.empty():[(this.defaultBannedRights.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChatForbidden {
    static const CONSTRUCTOR_ID = 1704108455;
    static const SUBCLASS_OF_ID = 3316604308;
    final classType = "constructor";
    final ID = 1704108455;
	BigInt id;
	String title;


	ChatForbidden({required this.id, required this.title});

	static ChatForbidden fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var title = reader.tgReadString();		return new ChatForbidden(id : id, title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1704108455,4),readBufferFromBigInt(this.id,8,little:true,signed:true),serializeBytes(this.title),].expand((element) => element).toList();}

}

class Channel {
    static const CONSTRUCTOR_ID = 2187439201;
    static const SUBCLASS_OF_ID = 3316604308;
    final classType = "constructor";
    final ID = 2187439201;
	bool creator;
	bool left;
	bool broadcast;
	bool verified;
	bool megagroup;
	bool restricted;
	bool signatures;
	bool min;
	bool scam;
	bool hasLink;
	bool hasGeo;
	bool slowmodeEnabled;
	bool callActive;
	bool callNotEmpty;
	bool fake;
	bool gigagroup;
	bool noforwards;
	bool joinToSend;
	bool joinRequest;
	BigInt id;
	BigInt accessHash;
	String title;
	String username;
	var photo;
	int date;
	List<dynamic> restrictionReason;
	var adminRights;
	var bannedRights;
	var defaultBannedRights;
	int participantsCount;


	Channel({required this.creator, required this.left, required this.broadcast, required this.verified, required this.megagroup, required this.restricted, required this.signatures, required this.min, required this.scam, required this.hasLink, required this.hasGeo, required this.slowmodeEnabled, required this.callActive, required this.callNotEmpty, required this.fake, required this.gigagroup, required this.noforwards, required this.joinToSend, required this.joinRequest, required this.id, required this.accessHash, required this.title, required this.username, required this.photo, required this.date, required this.restrictionReason, required this.adminRights, required this.bannedRights, required this.defaultBannedRights, required this.participantsCount});

	static Channel fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final creator = false;final left = false;final broadcast = false;final verified = false;final megagroup = false;final restricted = false;final signatures = false;final min = false;final scam = false;final hasLink = false;final hasGeo = false;final slowmodeEnabled = false;final callActive = false;final callNotEmpty = false;final fake = false;final gigagroup = false;final noforwards = false;final joinToSend = false;final joinRequest = false;var id = reader.readLong();var accessHash;if ((flags & 8192)==1){accessHash = reader.readLong(); } else {accessHash=null;}var title = reader.tgReadString();var username;if ((flags & 64)==1){username = reader.tgReadString(); } else {username=null;}var photo = reader.tgReadObject();var date = reader.readInt();var restrictionReason;if ((flags & 512)==1){reader.readInt();
List<dynamic> restrictionReason = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		restrictionReason.add(reader.tgReadObject());
} } else {restrictionReason=null;}var adminRights;if ((flags & 16384)==1){adminRights = reader.tgReadObject(); } else {adminRights=null;}var bannedRights;if ((flags & 32768)==1){bannedRights = reader.tgReadObject(); } else {bannedRights=null;}var defaultBannedRights;if ((flags & 262144)==1){defaultBannedRights = reader.tgReadObject(); } else {defaultBannedRights=null;}var participantsCount;if ((flags & 131072)==1){participantsCount = reader.readInt(); } else {participantsCount=null;}		return new Channel(creator : creator, left : left, broadcast : broadcast, verified : verified, megagroup : megagroup, restricted : restricted, signatures : signatures, min : min, scam : scam, hasLink : hasLink, hasGeo : hasGeo, slowmodeEnabled : slowmodeEnabled, callActive : callActive, callNotEmpty : callNotEmpty, fake : fake, gigagroup : gigagroup, noforwards : noforwards, joinToSend : joinToSend, joinRequest : joinRequest, id : id, accessHash : accessHash, title : title, username : username, photo : photo, date : date, restrictionReason : restrictionReason, adminRights : adminRights, bannedRights : bannedRights, defaultBannedRights : defaultBannedRights, participantsCount : participantsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2187439201,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),(this.accessHash==null||this.accessHash==false)?new List<int>.empty():[readBufferFromBigInt(this.accessHash,8,little:true,signed:true)].expand((element) => element).toList(),serializeBytes(this.title),(this.username==null||this.username==false)?new List<int>.empty():[serializeBytes(this.username)].expand((element) => element).toList(),(this.photo.getBytes() as List<int>),readBufferFromBigInt(this.date,4,little:true,signed:true),(this.restrictionReason==null||this.restrictionReason==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.restrictionReason.length,4,little:true,signed:true),this.restrictionReason.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.adminRights==null||this.adminRights==false)?new List<int>.empty():[(this.adminRights.getBytes() as List<int>)].expand((element) => element).toList(),(this.bannedRights==null||this.bannedRights==false)?new List<int>.empty():[(this.bannedRights.getBytes() as List<int>)].expand((element) => element).toList(),(this.defaultBannedRights==null||this.defaultBannedRights==false)?new List<int>.empty():[(this.defaultBannedRights.getBytes() as List<int>)].expand((element) => element).toList(),(this.participantsCount==null||this.participantsCount==false)?new List<int>.empty():[readBufferFromBigInt(this.participantsCount,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChannelForbidden {
    static const CONSTRUCTOR_ID = 399807445;
    static const SUBCLASS_OF_ID = 3316604308;
    final classType = "constructor";
    final ID = 399807445;
	bool broadcast;
	bool megagroup;
	BigInt id;
	BigInt accessHash;
	String title;
	int untilDate;


	ChannelForbidden({required this.broadcast, required this.megagroup, required this.id, required this.accessHash, required this.title, required this.untilDate});

	static ChannelForbidden fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final broadcast = false;final megagroup = false;var id = reader.readLong();var accessHash = reader.readLong();var title = reader.tgReadString();var untilDate;if ((flags & 65536)==1){untilDate = reader.readInt(); } else {untilDate=null;}		return new ChannelForbidden(broadcast : broadcast, megagroup : megagroup, id : id, accessHash : accessHash, title : title, untilDate : untilDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(399807445,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),serializeBytes(this.title),(this.untilDate==null||this.untilDate==false)?new List<int>.empty():[readBufferFromBigInt(this.untilDate,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChatFull {
    static const CONSTRUCTOR_ID = 3515802150;
    static const SUBCLASS_OF_ID = 3566872215;
    final classType = "constructor";
    final ID = 3515802150;
	bool canSetUsername;
	bool hasScheduled;
	BigInt id;
	String about;
	var participants;
	var chatPhoto;
	var notifySettings;
	var exportedInvite;
	List<dynamic> botInfo;
	int pinnedMsgId;
	int folderId;
	var call;
	int ttlPeriod;
	var groupcallDefaultJoinAs;
	String themeEmoticon;
	int requestsPending;
	List<BigInt> recentRequesters;
	List<String> availableReactions;


	ChatFull({required this.canSetUsername, required this.hasScheduled, required this.id, required this.about, required this.participants, required this.chatPhoto, required this.notifySettings, required this.exportedInvite, required this.botInfo, required this.pinnedMsgId, required this.folderId, required this.call, required this.ttlPeriod, required this.groupcallDefaultJoinAs, required this.themeEmoticon, required this.requestsPending, required this.recentRequesters, required this.availableReactions});

	static ChatFull fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final canSetUsername = false;final hasScheduled = false;var id = reader.readLong();var about = reader.tgReadString();var participants = reader.tgReadObject();var chatPhoto;if ((flags & 4)==1){chatPhoto = reader.tgReadObject(); } else {chatPhoto=null;}var notifySettings = reader.tgReadObject();var exportedInvite;if ((flags & 8192)==1){exportedInvite = reader.tgReadObject(); } else {exportedInvite=null;}var botInfo;if ((flags & 8)==1){reader.readInt();
List<dynamic> botInfo = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		botInfo.add(reader.tgReadObject());
} } else {botInfo=null;}var pinnedMsgId;if ((flags & 64)==1){pinnedMsgId = reader.readInt(); } else {pinnedMsgId=null;}var folderId;if ((flags & 2048)==1){folderId = reader.readInt(); } else {folderId=null;}var call;if ((flags & 4096)==1){call = reader.tgReadObject(); } else {call=null;}var ttlPeriod;if ((flags & 16384)==1){ttlPeriod = reader.readInt(); } else {ttlPeriod=null;}var groupcallDefaultJoinAs;if ((flags & 32768)==1){groupcallDefaultJoinAs = reader.tgReadObject(); } else {groupcallDefaultJoinAs=null;}var themeEmoticon;if ((flags & 65536)==1){themeEmoticon = reader.tgReadString(); } else {themeEmoticon=null;}var requestsPending;if ((flags & 131072)==1){requestsPending = reader.readInt(); } else {requestsPending=null;}var recentRequesters;if ((flags & 131072)==1){reader.readInt();
List<BigInt> recentRequesters = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		recentRequesters.add(reader.readLong());
} } else {recentRequesters=null;}var availableReactions;if ((flags & 262144)==1){reader.readInt();
List<String> availableReactions = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		availableReactions.add(reader.tgReadString());
} } else {availableReactions=null;}		return new ChatFull(canSetUsername : canSetUsername, hasScheduled : hasScheduled, id : id, about : about, participants : participants, chatPhoto : chatPhoto, notifySettings : notifySettings, exportedInvite : exportedInvite, botInfo : botInfo, pinnedMsgId : pinnedMsgId, folderId : folderId, call : call, ttlPeriod : ttlPeriod, groupcallDefaultJoinAs : groupcallDefaultJoinAs, themeEmoticon : themeEmoticon, requestsPending : requestsPending, recentRequesters : recentRequesters, availableReactions : availableReactions);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3515802150,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),serializeBytes(this.about),(this.participants.getBytes() as List<int>),(this.chatPhoto==null||this.chatPhoto==false)?new List<int>.empty():[(this.chatPhoto.getBytes() as List<int>)].expand((element) => element).toList(),(this.notifySettings.getBytes() as List<int>),(this.exportedInvite==null||this.exportedInvite==false)?new List<int>.empty():[(this.exportedInvite.getBytes() as List<int>)].expand((element) => element).toList(),(this.botInfo==null||this.botInfo==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.botInfo.length,4,little:true,signed:true),this.botInfo.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.pinnedMsgId==null||this.pinnedMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.pinnedMsgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.folderId==null||this.folderId==false)?new List<int>.empty():[readBufferFromBigInt(this.folderId,4,little:true,signed:true)].expand((element) => element).toList(),(this.call==null||this.call==false)?new List<int>.empty():[(this.call.getBytes() as List<int>)].expand((element) => element).toList(),(this.ttlPeriod==null||this.ttlPeriod==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlPeriod,4,little:true,signed:true)].expand((element) => element).toList(),(this.groupcallDefaultJoinAs==null||this.groupcallDefaultJoinAs==false)?new List<int>.empty():[(this.groupcallDefaultJoinAs.getBytes() as List<int>)].expand((element) => element).toList(),(this.themeEmoticon==null||this.themeEmoticon==false)?new List<int>.empty():[serializeBytes(this.themeEmoticon)].expand((element) => element).toList(),(this.requestsPending==null||this.requestsPending==false)?new List<int>.empty():[readBufferFromBigInt(this.requestsPending,4,little:true,signed:true)].expand((element) => element).toList(),(this.recentRequesters==null||this.recentRequesters==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.recentRequesters.length,4,little:true,signed:true),this.recentRequesters.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element)].expand((element) => element).toList(),(this.availableReactions==null||this.availableReactions==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.availableReactions.length,4,little:true,signed:true),this.availableReactions.map((x)=>serializeBytes(x)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChannelFull {
    static const CONSTRUCTOR_ID = 3932726809;
    static const SUBCLASS_OF_ID = 3566872215;
    final classType = "constructor";
    final ID = 3932726809;
	bool canViewParticipants;
	bool canSetUsername;
	bool canSetStickers;
	bool hiddenPrehistory;
	bool canSetLocation;
	bool hasScheduled;
	bool canViewStats;
	bool blocked;
	bool canDeleteChannel;
	BigInt id;
	String about;
	int participantsCount;
	int adminsCount;
	int kickedCount;
	int bannedCount;
	int onlineCount;
	int readInboxMaxId;
	int readOutboxMaxId;
	int unreadCount;
	var chatPhoto;
	var notifySettings;
	var exportedInvite;
	List<dynamic> botInfo;
	BigInt migratedFromChatId;
	int migratedFromMaxId;
	int pinnedMsgId;
	var stickerset;
	int availableMinId;
	int folderId;
	BigInt linkedChatId;
	var location;
	int slowmodeSeconds;
	int slowmodeNextSendDate;
	int statsDc;
	int pts;
	var call;
	int ttlPeriod;
	List<String> pendingSuggestions;
	var groupcallDefaultJoinAs;
	String themeEmoticon;
	int requestsPending;
	List<BigInt> recentRequesters;
	var defaultSendAs;
	List<String> availableReactions;


	ChannelFull({required this.canViewParticipants, required this.canSetUsername, required this.canSetStickers, required this.hiddenPrehistory, required this.canSetLocation, required this.hasScheduled, required this.canViewStats, required this.blocked, required this.canDeleteChannel, required this.id, required this.about, required this.participantsCount, required this.adminsCount, required this.kickedCount, required this.bannedCount, required this.onlineCount, required this.readInboxMaxId, required this.readOutboxMaxId, required this.unreadCount, required this.chatPhoto, required this.notifySettings, required this.exportedInvite, required this.botInfo, required this.migratedFromChatId, required this.migratedFromMaxId, required this.pinnedMsgId, required this.stickerset, required this.availableMinId, required this.folderId, required this.linkedChatId, required this.location, required this.slowmodeSeconds, required this.slowmodeNextSendDate, required this.statsDc, required this.pts, required this.call, required this.ttlPeriod, required this.pendingSuggestions, required this.groupcallDefaultJoinAs, required this.themeEmoticon, required this.requestsPending, required this.recentRequesters, required this.defaultSendAs, required this.availableReactions});

	static ChannelFull fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final canViewParticipants = false;final canSetUsername = false;final canSetStickers = false;final hiddenPrehistory = false;final canSetLocation = false;final hasScheduled = false;final canViewStats = false;final blocked = false;final flags2 = reader.readInt();final canDeleteChannel = false;var id = reader.readLong();var about = reader.tgReadString();var participantsCount;if ((flags & 1)==1){participantsCount = reader.readInt(); } else {participantsCount=null;}var adminsCount;if ((flags & 2)==1){adminsCount = reader.readInt(); } else {adminsCount=null;}var kickedCount;if ((flags & 4)==1){kickedCount = reader.readInt(); } else {kickedCount=null;}var bannedCount;if ((flags & 4)==1){bannedCount = reader.readInt(); } else {bannedCount=null;}var onlineCount;if ((flags & 8192)==1){onlineCount = reader.readInt(); } else {onlineCount=null;}var readInboxMaxId = reader.readInt();var readOutboxMaxId = reader.readInt();var unreadCount = reader.readInt();var chatPhoto = reader.tgReadObject();var notifySettings = reader.tgReadObject();var exportedInvite;if ((flags & 8388608)==1){exportedInvite = reader.tgReadObject(); } else {exportedInvite=null;}reader.readInt();
List<dynamic> botInfo = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		botInfo.add(reader.tgReadObject());
}var migratedFromChatId;if ((flags & 16)==1){migratedFromChatId = reader.readLong(); } else {migratedFromChatId=null;}var migratedFromMaxId;if ((flags & 16)==1){migratedFromMaxId = reader.readInt(); } else {migratedFromMaxId=null;}var pinnedMsgId;if ((flags & 32)==1){pinnedMsgId = reader.readInt(); } else {pinnedMsgId=null;}var stickerset;if ((flags & 256)==1){stickerset = reader.tgReadObject(); } else {stickerset=null;}var availableMinId;if ((flags & 512)==1){availableMinId = reader.readInt(); } else {availableMinId=null;}var folderId;if ((flags & 2048)==1){folderId = reader.readInt(); } else {folderId=null;}var linkedChatId;if ((flags & 16384)==1){linkedChatId = reader.readLong(); } else {linkedChatId=null;}var location;if ((flags & 32768)==1){location = reader.tgReadObject(); } else {location=null;}var slowmodeSeconds;if ((flags & 131072)==1){slowmodeSeconds = reader.readInt(); } else {slowmodeSeconds=null;}var slowmodeNextSendDate;if ((flags & 262144)==1){slowmodeNextSendDate = reader.readInt(); } else {slowmodeNextSendDate=null;}var statsDc;if ((flags & 4096)==1){statsDc = reader.readInt(); } else {statsDc=null;}var pts = reader.readInt();var call;if ((flags & 2097152)==1){call = reader.tgReadObject(); } else {call=null;}var ttlPeriod;if ((flags & 16777216)==1){ttlPeriod = reader.readInt(); } else {ttlPeriod=null;}var pendingSuggestions;if ((flags & 33554432)==1){reader.readInt();
List<String> pendingSuggestions = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		pendingSuggestions.add(reader.tgReadString());
} } else {pendingSuggestions=null;}var groupcallDefaultJoinAs;if ((flags & 67108864)==1){groupcallDefaultJoinAs = reader.tgReadObject(); } else {groupcallDefaultJoinAs=null;}var themeEmoticon;if ((flags & 134217728)==1){themeEmoticon = reader.tgReadString(); } else {themeEmoticon=null;}var requestsPending;if ((flags & 268435456)==1){requestsPending = reader.readInt(); } else {requestsPending=null;}var recentRequesters;if ((flags & 268435456)==1){reader.readInt();
List<BigInt> recentRequesters = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		recentRequesters.add(reader.readLong());
} } else {recentRequesters=null;}var defaultSendAs;if ((flags & 536870912)==1){defaultSendAs = reader.tgReadObject(); } else {defaultSendAs=null;}var availableReactions;if ((flags & 1073741824)==1){reader.readInt();
List<String> availableReactions = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		availableReactions.add(reader.tgReadString());
} } else {availableReactions=null;}		return new ChannelFull(canViewParticipants : canViewParticipants, canSetUsername : canSetUsername, canSetStickers : canSetStickers, hiddenPrehistory : hiddenPrehistory, canSetLocation : canSetLocation, hasScheduled : hasScheduled, canViewStats : canViewStats, blocked : blocked, canDeleteChannel : canDeleteChannel, id : id, about : about, participantsCount : participantsCount, adminsCount : adminsCount, kickedCount : kickedCount, bannedCount : bannedCount, onlineCount : onlineCount, readInboxMaxId : readInboxMaxId, readOutboxMaxId : readOutboxMaxId, unreadCount : unreadCount, chatPhoto : chatPhoto, notifySettings : notifySettings, exportedInvite : exportedInvite, botInfo : botInfo, migratedFromChatId : migratedFromChatId, migratedFromMaxId : migratedFromMaxId, pinnedMsgId : pinnedMsgId, stickerset : stickerset, availableMinId : availableMinId, folderId : folderId, linkedChatId : linkedChatId, location : location, slowmodeSeconds : slowmodeSeconds, slowmodeNextSendDate : slowmodeNextSendDate, statsDc : statsDc, pts : pts, call : call, ttlPeriod : ttlPeriod, pendingSuggestions : pendingSuggestions, groupcallDefaultJoinAs : groupcallDefaultJoinAs, themeEmoticon : themeEmoticon, requestsPending : requestsPending, recentRequesters : recentRequesters, defaultSendAs : defaultSendAs, availableReactions : availableReactions);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3932726809,4),[0,0,0,0],[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),serializeBytes(this.about),(this.participantsCount==null||this.participantsCount==false)?new List<int>.empty():[readBufferFromBigInt(this.participantsCount,4,little:true,signed:true)].expand((element) => element).toList(),(this.adminsCount==null||this.adminsCount==false)?new List<int>.empty():[readBufferFromBigInt(this.adminsCount,4,little:true,signed:true)].expand((element) => element).toList(),(this.kickedCount==null||this.kickedCount==false)?new List<int>.empty():[readBufferFromBigInt(this.kickedCount,4,little:true,signed:true)].expand((element) => element).toList(),(this.bannedCount==null||this.bannedCount==false)?new List<int>.empty():[readBufferFromBigInt(this.bannedCount,4,little:true,signed:true)].expand((element) => element).toList(),(this.onlineCount==null||this.onlineCount==false)?new List<int>.empty():[readBufferFromBigInt(this.onlineCount,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.readInboxMaxId,4,little:true,signed:true),readBufferFromBigInt(this.readOutboxMaxId,4,little:true,signed:true),readBufferFromBigInt(this.unreadCount,4,little:true,signed:true),(this.chatPhoto.getBytes() as List<int>),(this.notifySettings.getBytes() as List<int>),(this.exportedInvite==null||this.exportedInvite==false)?new List<int>.empty():[(this.exportedInvite.getBytes() as List<int>)].expand((element) => element).toList(),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.botInfo.length,4,little:true,signed:true),this.botInfo.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.migratedFromChatId==null||this.migratedFromChatId==false)?new List<int>.empty():[readBufferFromBigInt(this.migratedFromChatId,8,little:true,signed:true)].expand((element) => element).toList(),(this.migratedFromMaxId==null||this.migratedFromMaxId==false)?new List<int>.empty():[readBufferFromBigInt(this.migratedFromMaxId,4,little:true,signed:true)].expand((element) => element).toList(),(this.pinnedMsgId==null||this.pinnedMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.pinnedMsgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.stickerset==null||this.stickerset==false)?new List<int>.empty():[(this.stickerset.getBytes() as List<int>)].expand((element) => element).toList(),(this.availableMinId==null||this.availableMinId==false)?new List<int>.empty():[readBufferFromBigInt(this.availableMinId,4,little:true,signed:true)].expand((element) => element).toList(),(this.folderId==null||this.folderId==false)?new List<int>.empty():[readBufferFromBigInt(this.folderId,4,little:true,signed:true)].expand((element) => element).toList(),(this.linkedChatId==null||this.linkedChatId==false)?new List<int>.empty():[readBufferFromBigInt(this.linkedChatId,8,little:true,signed:true)].expand((element) => element).toList(),(this.location==null||this.location==false)?new List<int>.empty():[(this.location.getBytes() as List<int>)].expand((element) => element).toList(),(this.slowmodeSeconds==null||this.slowmodeSeconds==false)?new List<int>.empty():[readBufferFromBigInt(this.slowmodeSeconds,4,little:true,signed:true)].expand((element) => element).toList(),(this.slowmodeNextSendDate==null||this.slowmodeNextSendDate==false)?new List<int>.empty():[readBufferFromBigInt(this.slowmodeNextSendDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.statsDc==null||this.statsDc==false)?new List<int>.empty():[readBufferFromBigInt(this.statsDc,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.pts,4,little:true,signed:true),(this.call==null||this.call==false)?new List<int>.empty():[(this.call.getBytes() as List<int>)].expand((element) => element).toList(),(this.ttlPeriod==null||this.ttlPeriod==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlPeriod,4,little:true,signed:true)].expand((element) => element).toList(),(this.pendingSuggestions==null||this.pendingSuggestions==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.pendingSuggestions.length,4,little:true,signed:true),this.pendingSuggestions.map((x)=>serializeBytes(x)).expand((element) => element)].expand((element) => element).toList(),(this.groupcallDefaultJoinAs==null||this.groupcallDefaultJoinAs==false)?new List<int>.empty():[(this.groupcallDefaultJoinAs.getBytes() as List<int>)].expand((element) => element).toList(),(this.themeEmoticon==null||this.themeEmoticon==false)?new List<int>.empty():[serializeBytes(this.themeEmoticon)].expand((element) => element).toList(),(this.requestsPending==null||this.requestsPending==false)?new List<int>.empty():[readBufferFromBigInt(this.requestsPending,4,little:true,signed:true)].expand((element) => element).toList(),(this.recentRequesters==null||this.recentRequesters==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.recentRequesters.length,4,little:true,signed:true),this.recentRequesters.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element)].expand((element) => element).toList(),(this.defaultSendAs==null||this.defaultSendAs==false)?new List<int>.empty():[(this.defaultSendAs.getBytes() as List<int>)].expand((element) => element).toList(),(this.availableReactions==null||this.availableReactions==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.availableReactions.length,4,little:true,signed:true),this.availableReactions.map((x)=>serializeBytes(x)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChatParticipant {
    static const CONSTRUCTOR_ID = 3224190983;
    static const SUBCLASS_OF_ID = 2105307014;
    final classType = "constructor";
    final ID = 3224190983;
	BigInt userId;
	BigInt inviterId;
	int date;


	ChatParticipant({required this.userId, required this.inviterId, required this.date});

	static ChatParticipant fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var inviterId = reader.readLong();var date = reader.readInt();		return new ChatParticipant(userId : userId, inviterId : inviterId, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3224190983,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.inviterId,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ChatParticipantCreator {
    static const CONSTRUCTOR_ID = 3832270564;
    static const SUBCLASS_OF_ID = 2105307014;
    final classType = "constructor";
    final ID = 3832270564;
	BigInt userId;


	ChatParticipantCreator({required this.userId});

	static ChatParticipantCreator fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();		return new ChatParticipantCreator(userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3832270564,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class ChatParticipantAdmin {
    static const CONSTRUCTOR_ID = 2694004571;
    static const SUBCLASS_OF_ID = 2105307014;
    final classType = "constructor";
    final ID = 2694004571;
	BigInt userId;
	BigInt inviterId;
	int date;


	ChatParticipantAdmin({required this.userId, required this.inviterId, required this.date});

	static ChatParticipantAdmin fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var inviterId = reader.readLong();var date = reader.readInt();		return new ChatParticipantAdmin(userId : userId, inviterId : inviterId, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2694004571,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.inviterId,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ChatParticipantsForbidden {
    static const CONSTRUCTOR_ID = 2271466465;
    static const SUBCLASS_OF_ID = 531142001;
    final classType = "constructor";
    final ID = 2271466465;
	BigInt chatId;
	var selfParticipant;


	ChatParticipantsForbidden({required this.chatId, required this.selfParticipant});

	static ChatParticipantsForbidden fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var chatId = reader.readLong();var selfParticipant;if ((flags & 1)==1){selfParticipant = reader.tgReadObject(); } else {selfParticipant=null;}		return new ChatParticipantsForbidden(chatId : chatId, selfParticipant : selfParticipant);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2271466465,4),[0,0,0,0],readBufferFromBigInt(this.chatId,8,little:true,signed:true),(this.selfParticipant==null||this.selfParticipant==false)?new List<int>.empty():[(this.selfParticipant.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChatParticipants {
    static const CONSTRUCTOR_ID = 1018991608;
    static const SUBCLASS_OF_ID = 531142001;
    final classType = "constructor";
    final ID = 1018991608;
	BigInt chatId;
	List<dynamic> participants;
	int version;


	ChatParticipants({required this.chatId, required this.participants, required this.version});

	static ChatParticipants fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();reader.readInt();
List<dynamic> participants = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		participants.add(reader.tgReadObject());
}var version = reader.readInt();		return new ChatParticipants(chatId : chatId, participants : participants, version : version);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1018991608,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.participants.length,4,little:true,signed:true),this.participants.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(this.version,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ChatPhotoEmpty {
    static const CONSTRUCTOR_ID = 935395612;
    static const SUBCLASS_OF_ID = 2889794789;
    final classType = "constructor";
    final ID = 935395612;


	ChatPhotoEmpty();

	static ChatPhotoEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new ChatPhotoEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(935395612,4),].expand((element) => element).toList();}

}

class ChatPhoto {
    static const CONSTRUCTOR_ID = 476978193;
    static const SUBCLASS_OF_ID = 2889794789;
    final classType = "constructor";
    final ID = 476978193;
	bool hasVideo;
	BigInt photoId;
	List<int> strippedThumb;
	int dcId;


	ChatPhoto({required this.hasVideo, required this.photoId, required this.strippedThumb, required this.dcId});

	static ChatPhoto fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final hasVideo = false;var photoId = reader.readLong();var strippedThumb;if ((flags & 2)==1){strippedThumb = reader.tgReadBytes(); } else {strippedThumb=null;}var dcId = reader.readInt();		return new ChatPhoto(hasVideo : hasVideo, photoId : photoId, strippedThumb : strippedThumb, dcId : dcId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(476978193,4),[0,0,0,0],readBufferFromBigInt(this.photoId,8,little:true,signed:true),(this.strippedThumb==null||this.strippedThumb==false)?new List<int>.empty():[serializeBytes(this.strippedThumb)].expand((element) => element).toList(),readBufferFromBigInt(this.dcId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEmpty {
    static const CONSTRUCTOR_ID = 2426849924;
    static const SUBCLASS_OF_ID = 2030045667;
    final classType = "constructor";
    final ID = 2426849924;
	int id;
	var peerId;


	MessageEmpty({required this.id, required this.peerId});

	static MessageEmpty fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var id = reader.readInt();var peerId;if ((flags & 1)==1){peerId = reader.tgReadObject(); } else {peerId=null;}		return new MessageEmpty(id : id, peerId : peerId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2426849924,4),[0,0,0,0],readBufferFromBigInt(this.id,4,little:true,signed:true),(this.peerId==null||this.peerId==false)?new List<int>.empty():[(this.peerId.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class Message {
    static const CONSTRUCTOR_ID = 940666592;
    static const SUBCLASS_OF_ID = 2030045667;
    final classType = "constructor";
    final ID = 940666592;
	bool out;
	bool mentioned;
	bool mediaUnread;
	bool silent;
	bool post;
	bool fromScheduled;
	bool legacy;
	bool editHide;
	bool pinned;
	bool noforwards;
	int id;
	var fromId;
	var peerId;
	var fwdFrom;
	BigInt viaBotId;
	var replyTo;
	int date;
	String message;
	var media;
	var replyMarkup;
	List<dynamic> entities;
	int views;
	int forwards;
	var replies;
	int editDate;
	String postAuthor;
	BigInt groupedId;
	var reactions;
	List<dynamic> restrictionReason;
	int ttlPeriod;


	Message({required this.out, required this.mentioned, required this.mediaUnread, required this.silent, required this.post, required this.fromScheduled, required this.legacy, required this.editHide, required this.pinned, required this.noforwards, required this.id, required this.fromId, required this.peerId, required this.fwdFrom, required this.viaBotId, required this.replyTo, required this.date, required this.message, required this.media, required this.replyMarkup, required this.entities, required this.views, required this.forwards, required this.replies, required this.editDate, required this.postAuthor, required this.groupedId, required this.reactions, required this.restrictionReason, required this.ttlPeriod});

	static Message fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final out = false;final mentioned = false;final mediaUnread = false;final silent = false;final post = false;final fromScheduled = false;final legacy = false;final editHide = false;final pinned = false;final noforwards = false;var id = reader.readInt();var fromId;if ((flags & 256)==1){fromId = reader.tgReadObject(); } else {fromId=null;}var peerId = reader.tgReadObject();var fwdFrom;if ((flags & 4)==1){fwdFrom = reader.tgReadObject(); } else {fwdFrom=null;}var viaBotId;if ((flags & 2048)==1){viaBotId = reader.readLong(); } else {viaBotId=null;}var replyTo;if ((flags & 8)==1){replyTo = reader.tgReadObject(); } else {replyTo=null;}var date = reader.readInt();var message = reader.tgReadString();var media;if ((flags & 512)==1){media = reader.tgReadObject(); } else {media=null;}var replyMarkup;if ((flags & 64)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}var entities;if ((flags & 128)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}var views;if ((flags & 1024)==1){views = reader.readInt(); } else {views=null;}var forwards;if ((flags & 1024)==1){forwards = reader.readInt(); } else {forwards=null;}var replies;if ((flags & 8388608)==1){replies = reader.tgReadObject(); } else {replies=null;}var editDate;if ((flags & 32768)==1){editDate = reader.readInt(); } else {editDate=null;}var postAuthor;if ((flags & 65536)==1){postAuthor = reader.tgReadString(); } else {postAuthor=null;}var groupedId;if ((flags & 131072)==1){groupedId = reader.readLong(); } else {groupedId=null;}var reactions;if ((flags & 1048576)==1){reactions = reader.tgReadObject(); } else {reactions=null;}var restrictionReason;if ((flags & 4194304)==1){reader.readInt();
List<dynamic> restrictionReason = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		restrictionReason.add(reader.tgReadObject());
} } else {restrictionReason=null;}var ttlPeriod;if ((flags & 33554432)==1){ttlPeriod = reader.readInt(); } else {ttlPeriod=null;}		return new Message(out : out, mentioned : mentioned, mediaUnread : mediaUnread, silent : silent, post : post, fromScheduled : fromScheduled, legacy : legacy, editHide : editHide, pinned : pinned, noforwards : noforwards, id : id, fromId : fromId, peerId : peerId, fwdFrom : fwdFrom, viaBotId : viaBotId, replyTo : replyTo, date : date, message : message, media : media, replyMarkup : replyMarkup, entities : entities, views : views, forwards : forwards, replies : replies, editDate : editDate, postAuthor : postAuthor, groupedId : groupedId, reactions : reactions, restrictionReason : restrictionReason, ttlPeriod : ttlPeriod);
	}
	List<int> getBytes(){return [readBufferFromBigInt(940666592,4),[0,0,0,0],readBufferFromBigInt(this.id,4,little:true,signed:true),(this.fromId==null||this.fromId==false)?new List<int>.empty():[(this.fromId.getBytes() as List<int>)].expand((element) => element).toList(),(this.peerId.getBytes() as List<int>),(this.fwdFrom==null||this.fwdFrom==false)?new List<int>.empty():[(this.fwdFrom.getBytes() as List<int>)].expand((element) => element).toList(),(this.viaBotId==null||this.viaBotId==false)?new List<int>.empty():[readBufferFromBigInt(this.viaBotId,8,little:true,signed:true)].expand((element) => element).toList(),(this.replyTo==null||this.replyTo==false)?new List<int>.empty():[(this.replyTo.getBytes() as List<int>)].expand((element) => element).toList(),readBufferFromBigInt(this.date,4,little:true,signed:true),serializeBytes(this.message),(this.media==null||this.media==false)?new List<int>.empty():[(this.media.getBytes() as List<int>)].expand((element) => element).toList(),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.views==null||this.views==false)?new List<int>.empty():[readBufferFromBigInt(this.views,4,little:true,signed:true)].expand((element) => element).toList(),(this.forwards==null||this.forwards==false)?new List<int>.empty():[readBufferFromBigInt(this.forwards,4,little:true,signed:true)].expand((element) => element).toList(),(this.replies==null||this.replies==false)?new List<int>.empty():[(this.replies.getBytes() as List<int>)].expand((element) => element).toList(),(this.editDate==null||this.editDate==false)?new List<int>.empty():[readBufferFromBigInt(this.editDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.postAuthor==null||this.postAuthor==false)?new List<int>.empty():[serializeBytes(this.postAuthor)].expand((element) => element).toList(),(this.groupedId==null||this.groupedId==false)?new List<int>.empty():[readBufferFromBigInt(this.groupedId,8,little:true,signed:true)].expand((element) => element).toList(),(this.reactions==null||this.reactions==false)?new List<int>.empty():[(this.reactions.getBytes() as List<int>)].expand((element) => element).toList(),(this.restrictionReason==null||this.restrictionReason==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.restrictionReason.length,4,little:true,signed:true),this.restrictionReason.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.ttlPeriod==null||this.ttlPeriod==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlPeriod,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageService {
    static const CONSTRUCTOR_ID = 721967202;
    static const SUBCLASS_OF_ID = 2030045667;
    final classType = "constructor";
    final ID = 721967202;
	bool out;
	bool mentioned;
	bool mediaUnread;
	bool silent;
	bool post;
	bool legacy;
	int id;
	var fromId;
	var peerId;
	var replyTo;
	int date;
	var action;
	int ttlPeriod;


	MessageService({required this.out, required this.mentioned, required this.mediaUnread, required this.silent, required this.post, required this.legacy, required this.id, required this.fromId, required this.peerId, required this.replyTo, required this.date, required this.action, required this.ttlPeriod});

	static MessageService fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final out = false;final mentioned = false;final mediaUnread = false;final silent = false;final post = false;final legacy = false;var id = reader.readInt();var fromId;if ((flags & 256)==1){fromId = reader.tgReadObject(); } else {fromId=null;}var peerId = reader.tgReadObject();var replyTo;if ((flags & 8)==1){replyTo = reader.tgReadObject(); } else {replyTo=null;}var date = reader.readInt();var action = reader.tgReadObject();var ttlPeriod;if ((flags & 33554432)==1){ttlPeriod = reader.readInt(); } else {ttlPeriod=null;}		return new MessageService(out : out, mentioned : mentioned, mediaUnread : mediaUnread, silent : silent, post : post, legacy : legacy, id : id, fromId : fromId, peerId : peerId, replyTo : replyTo, date : date, action : action, ttlPeriod : ttlPeriod);
	}
	List<int> getBytes(){return [readBufferFromBigInt(721967202,4),[0,0,0,0],readBufferFromBigInt(this.id,4,little:true,signed:true),(this.fromId==null||this.fromId==false)?new List<int>.empty():[(this.fromId.getBytes() as List<int>)].expand((element) => element).toList(),(this.peerId.getBytes() as List<int>),(this.replyTo==null||this.replyTo==false)?new List<int>.empty():[(this.replyTo.getBytes() as List<int>)].expand((element) => element).toList(),readBufferFromBigInt(this.date,4,little:true,signed:true),(this.action.getBytes() as List<int>),(this.ttlPeriod==null||this.ttlPeriod==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlPeriod,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageMediaEmpty {
    static const CONSTRUCTOR_ID = 1038967584;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 1038967584;


	MessageMediaEmpty();

	static MessageMediaEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new MessageMediaEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1038967584,4),].expand((element) => element).toList();}

}

class MessageMediaPhoto {
    static const CONSTRUCTOR_ID = 1766936791;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 1766936791;
	var photo;
	int ttlSeconds;


	MessageMediaPhoto({required this.photo, required this.ttlSeconds});

	static MessageMediaPhoto fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var photo;if ((flags & 1)==1){photo = reader.tgReadObject(); } else {photo=null;}var ttlSeconds;if ((flags & 4)==1){ttlSeconds = reader.readInt(); } else {ttlSeconds=null;}		return new MessageMediaPhoto(photo : photo, ttlSeconds : ttlSeconds);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1766936791,4),[0,0,0,0],(this.photo==null||this.photo==false)?new List<int>.empty():[(this.photo.getBytes() as List<int>)].expand((element) => element).toList(),(this.ttlSeconds==null||this.ttlSeconds==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlSeconds,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageMediaGeo {
    static const CONSTRUCTOR_ID = 1457575028;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 1457575028;
	var geo;


	MessageMediaGeo({required this.geo});

	static MessageMediaGeo fromReader(BinaryReader reader) {
	var temp,len;var geo = reader.tgReadObject();		return new MessageMediaGeo(geo : geo);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1457575028,4),(this.geo.getBytes() as List<int>),].expand((element) => element).toList();}

}

class MessageMediaContact {
    static const CONSTRUCTOR_ID = 1882335561;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 1882335561;
	String phoneNumber;
	String firstName;
	String lastName;
	String vcard;
	BigInt userId;


	MessageMediaContact({required this.phoneNumber, required this.firstName, required this.lastName, required this.vcard, required this.userId});

	static MessageMediaContact fromReader(BinaryReader reader) {
	var temp,len;var phoneNumber = reader.tgReadString();var firstName = reader.tgReadString();var lastName = reader.tgReadString();var vcard = reader.tgReadString();var userId = reader.readLong();		return new MessageMediaContact(phoneNumber : phoneNumber, firstName : firstName, lastName : lastName, vcard : vcard, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1882335561,4),serializeBytes(this.phoneNumber),serializeBytes(this.firstName),serializeBytes(this.lastName),serializeBytes(this.vcard),readBufferFromBigInt(this.userId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageMediaUnsupported {
    static const CONSTRUCTOR_ID = 2676290718;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 2676290718;


	MessageMediaUnsupported();

	static MessageMediaUnsupported fromReader(BinaryReader reader) {
	var temp,len;		return new MessageMediaUnsupported();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2676290718,4),].expand((element) => element).toList();}

}

class MessageMediaDocument {
    static const CONSTRUCTOR_ID = 2628808919;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 2628808919;
	bool nopremium;
	var document;
	int ttlSeconds;


	MessageMediaDocument({required this.nopremium, required this.document, required this.ttlSeconds});

	static MessageMediaDocument fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final nopremium = false;var document;if ((flags & 1)==1){document = reader.tgReadObject(); } else {document=null;}var ttlSeconds;if ((flags & 4)==1){ttlSeconds = reader.readInt(); } else {ttlSeconds=null;}		return new MessageMediaDocument(nopremium : nopremium, document : document, ttlSeconds : ttlSeconds);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2628808919,4),[0,0,0,0],(this.document==null||this.document==false)?new List<int>.empty():[(this.document.getBytes() as List<int>)].expand((element) => element).toList(),(this.ttlSeconds==null||this.ttlSeconds==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlSeconds,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageMediaWebPage {
    static const CONSTRUCTOR_ID = 2737690112;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 2737690112;
	var webpage;


	MessageMediaWebPage({required this.webpage});

	static MessageMediaWebPage fromReader(BinaryReader reader) {
	var temp,len;var webpage = reader.tgReadObject();		return new MessageMediaWebPage(webpage : webpage);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2737690112,4),(this.webpage.getBytes() as List<int>),].expand((element) => element).toList();}

}

class MessageMediaVenue {
    static const CONSTRUCTOR_ID = 784356159;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 784356159;
	var geo;
	String title;
	String address;
	String provider;
	String venueId;
	String venueType;


	MessageMediaVenue({required this.geo, required this.title, required this.address, required this.provider, required this.venueId, required this.venueType});

	static MessageMediaVenue fromReader(BinaryReader reader) {
	var temp,len;var geo = reader.tgReadObject();var title = reader.tgReadString();var address = reader.tgReadString();var provider = reader.tgReadString();var venueId = reader.tgReadString();var venueType = reader.tgReadString();		return new MessageMediaVenue(geo : geo, title : title, address : address, provider : provider, venueId : venueId, venueType : venueType);
	}
	List<int> getBytes(){return [readBufferFromBigInt(784356159,4),(this.geo.getBytes() as List<int>),serializeBytes(this.title),serializeBytes(this.address),serializeBytes(this.provider),serializeBytes(this.venueId),serializeBytes(this.venueType),].expand((element) => element).toList();}

}

class MessageMediaGame {
    static const CONSTRUCTOR_ID = 4256272392;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 4256272392;
	var game;


	MessageMediaGame({required this.game});

	static MessageMediaGame fromReader(BinaryReader reader) {
	var temp,len;var game = reader.tgReadObject();		return new MessageMediaGame(game : game);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4256272392,4),(this.game.getBytes() as List<int>),].expand((element) => element).toList();}

}

class MessageMediaInvoice {
    static const CONSTRUCTOR_ID = 2220168007;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 2220168007;
	bool shippingAddressRequested;
	bool test;
	String title;
	String description;
	var photo;
	int receiptMsgId;
	String currency;
	BigInt totalAmount;
	String startParam;


	MessageMediaInvoice({required this.shippingAddressRequested, required this.test, required this.title, required this.description, required this.photo, required this.receiptMsgId, required this.currency, required this.totalAmount, required this.startParam});

	static MessageMediaInvoice fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final shippingAddressRequested = false;final test = false;var title = reader.tgReadString();var description = reader.tgReadString();var photo;if ((flags & 1)==1){photo = reader.tgReadObject(); } else {photo=null;}var receiptMsgId;if ((flags & 4)==1){receiptMsgId = reader.readInt(); } else {receiptMsgId=null;}var currency = reader.tgReadString();var totalAmount = reader.readLong();var startParam = reader.tgReadString();		return new MessageMediaInvoice(shippingAddressRequested : shippingAddressRequested, test : test, title : title, description : description, photo : photo, receiptMsgId : receiptMsgId, currency : currency, totalAmount : totalAmount, startParam : startParam);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2220168007,4),[0,0,0,0],serializeBytes(this.title),serializeBytes(this.description),(this.photo==null||this.photo==false)?new List<int>.empty():[(this.photo.getBytes() as List<int>)].expand((element) => element).toList(),(this.receiptMsgId==null||this.receiptMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.receiptMsgId,4,little:true,signed:true)].expand((element) => element).toList(),serializeBytes(this.currency),readBufferFromBigInt(this.totalAmount,8,little:true,signed:true),serializeBytes(this.startParam),].expand((element) => element).toList();}

}

class MessageMediaGeoLive {
    static const CONSTRUCTOR_ID = 3108030054;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 3108030054;
	var geo;
	int heading;
	int period;
	int proximityNotificationRadius;


	MessageMediaGeoLive({required this.geo, required this.heading, required this.period, required this.proximityNotificationRadius});

	static MessageMediaGeoLive fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var geo = reader.tgReadObject();var heading;if ((flags & 1)==1){heading = reader.readInt(); } else {heading=null;}var period = reader.readInt();var proximityNotificationRadius;if ((flags & 2)==1){proximityNotificationRadius = reader.readInt(); } else {proximityNotificationRadius=null;}		return new MessageMediaGeoLive(geo : geo, heading : heading, period : period, proximityNotificationRadius : proximityNotificationRadius);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3108030054,4),[0,0,0,0],(this.geo.getBytes() as List<int>),(this.heading==null||this.heading==false)?new List<int>.empty():[readBufferFromBigInt(this.heading,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.period,4,little:true,signed:true),(this.proximityNotificationRadius==null||this.proximityNotificationRadius==false)?new List<int>.empty():[readBufferFromBigInt(this.proximityNotificationRadius,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageMediaPoll {
    static const CONSTRUCTOR_ID = 1272375192;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 1272375192;
	var poll;
	var results;


	MessageMediaPoll({required this.poll, required this.results});

	static MessageMediaPoll fromReader(BinaryReader reader) {
	var temp,len;var poll = reader.tgReadObject();var results = reader.tgReadObject();		return new MessageMediaPoll(poll : poll, results : results);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1272375192,4),(this.poll.getBytes() as List<int>),(this.results.getBytes() as List<int>),].expand((element) => element).toList();}

}

class MessageMediaDice {
    static const CONSTRUCTOR_ID = 1065280907;
    static const SUBCLASS_OF_ID = 1198308914;
    final classType = "constructor";
    final ID = 1065280907;
	int value;
	String emoticon;


	MessageMediaDice({required this.value, required this.emoticon});

	static MessageMediaDice fromReader(BinaryReader reader) {
	var temp,len;var value = reader.readInt();var emoticon = reader.tgReadString();		return new MessageMediaDice(value : value, emoticon : emoticon);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1065280907,4),readBufferFromBigInt(this.value,4,little:true,signed:true),serializeBytes(this.emoticon),].expand((element) => element).toList();}

}

class MessageActionEmpty {
    static const CONSTRUCTOR_ID = 3064919984;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 3064919984;


	MessageActionEmpty();

	static MessageActionEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new MessageActionEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3064919984,4),].expand((element) => element).toList();}

}

class MessageActionChatCreate {
    static const CONSTRUCTOR_ID = 3175599021;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 3175599021;
	String title;
	List<BigInt> users;


	MessageActionChatCreate({required this.title, required this.users});

	static MessageActionChatCreate fromReader(BinaryReader reader) {
	var temp,len;var title = reader.tgReadString();reader.readInt();
List<BigInt> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.readLong());
}		return new MessageActionChatCreate(title : title, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3175599021,4),serializeBytes(this.title),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class MessageActionChatEditTitle {
    static const CONSTRUCTOR_ID = 3047280218;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 3047280218;
	String title;


	MessageActionChatEditTitle({required this.title});

	static MessageActionChatEditTitle fromReader(BinaryReader reader) {
	var temp,len;var title = reader.tgReadString();		return new MessageActionChatEditTitle(title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3047280218,4),serializeBytes(this.title),].expand((element) => element).toList();}

}

class MessageActionChatEditPhoto {
    static const CONSTRUCTOR_ID = 2144015272;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2144015272;
	var photo;


	MessageActionChatEditPhoto({required this.photo});

	static MessageActionChatEditPhoto fromReader(BinaryReader reader) {
	var temp,len;var photo = reader.tgReadObject();		return new MessageActionChatEditPhoto(photo : photo);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2144015272,4),(this.photo.getBytes() as List<int>),].expand((element) => element).toList();}

}

class MessageActionChatDeletePhoto {
    static const CONSTRUCTOR_ID = 2514746351;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2514746351;


	MessageActionChatDeletePhoto();

	static MessageActionChatDeletePhoto fromReader(BinaryReader reader) {
	var temp,len;		return new MessageActionChatDeletePhoto();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2514746351,4),].expand((element) => element).toList();}

}

class MessageActionChatAddUser {
    static const CONSTRUCTOR_ID = 365886720;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 365886720;
	List<BigInt> users;


	MessageActionChatAddUser({required this.users});

	static MessageActionChatAddUser fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.readLong());
}		return new MessageActionChatAddUser(users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(365886720,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class MessageActionChatDeleteUser {
    static const CONSTRUCTOR_ID = 2755604684;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2755604684;
	BigInt userId;


	MessageActionChatDeleteUser({required this.userId});

	static MessageActionChatDeleteUser fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();		return new MessageActionChatDeleteUser(userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2755604684,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageActionChatJoinedByLink {
    static const CONSTRUCTOR_ID = 51520707;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 51520707;
	BigInt inviterId;


	MessageActionChatJoinedByLink({required this.inviterId});

	static MessageActionChatJoinedByLink fromReader(BinaryReader reader) {
	var temp,len;var inviterId = reader.readLong();		return new MessageActionChatJoinedByLink(inviterId : inviterId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(51520707,4),readBufferFromBigInt(this.inviterId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageActionChannelCreate {
    static const CONSTRUCTOR_ID = 2513611922;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2513611922;
	String title;


	MessageActionChannelCreate({required this.title});

	static MessageActionChannelCreate fromReader(BinaryReader reader) {
	var temp,len;var title = reader.tgReadString();		return new MessageActionChannelCreate(title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2513611922,4),serializeBytes(this.title),].expand((element) => element).toList();}

}

class MessageActionChatMigrateTo {
    static const CONSTRUCTOR_ID = 3775102866;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 3775102866;
	BigInt channelId;


	MessageActionChatMigrateTo({required this.channelId});

	static MessageActionChatMigrateTo fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();		return new MessageActionChatMigrateTo(channelId : channelId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3775102866,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageActionChannelMigrateFrom {
    static const CONSTRUCTOR_ID = 3929622761;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 3929622761;
	String title;
	BigInt chatId;


	MessageActionChannelMigrateFrom({required this.title, required this.chatId});

	static MessageActionChannelMigrateFrom fromReader(BinaryReader reader) {
	var temp,len;var title = reader.tgReadString();var chatId = reader.readLong();		return new MessageActionChannelMigrateFrom(title : title, chatId : chatId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3929622761,4),serializeBytes(this.title),readBufferFromBigInt(this.chatId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageActionPinMessage {
    static const CONSTRUCTOR_ID = 2495428845;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2495428845;


	MessageActionPinMessage();

	static MessageActionPinMessage fromReader(BinaryReader reader) {
	var temp,len;		return new MessageActionPinMessage();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2495428845,4),].expand((element) => element).toList();}

}

class MessageActionHistoryClear {
    static const CONSTRUCTOR_ID = 2679813636;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2679813636;


	MessageActionHistoryClear();

	static MessageActionHistoryClear fromReader(BinaryReader reader) {
	var temp,len;		return new MessageActionHistoryClear();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2679813636,4),].expand((element) => element).toList();}

}

class MessageActionGameScore {
    static const CONSTRUCTOR_ID = 2460428406;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2460428406;
	BigInt gameId;
	int score;


	MessageActionGameScore({required this.gameId, required this.score});

	static MessageActionGameScore fromReader(BinaryReader reader) {
	var temp,len;var gameId = reader.readLong();var score = reader.readInt();		return new MessageActionGameScore(gameId : gameId, score : score);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2460428406,4),readBufferFromBigInt(this.gameId,8,little:true,signed:true),readBufferFromBigInt(this.score,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageActionPaymentSentMe {
    static const CONSTRUCTOR_ID = 2402399015;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2402399015;
	bool recurringInit;
	bool recurringUsed;
	String currency;
	BigInt totalAmount;
	List<int> payload;
	var info;
	String shippingOptionId;
	var charge;


	MessageActionPaymentSentMe({required this.recurringInit, required this.recurringUsed, required this.currency, required this.totalAmount, required this.payload, required this.info, required this.shippingOptionId, required this.charge});

	static MessageActionPaymentSentMe fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final recurringInit = false;final recurringUsed = false;var currency = reader.tgReadString();var totalAmount = reader.readLong();var payload = reader.tgReadBytes();var info;if ((flags & 1)==1){info = reader.tgReadObject(); } else {info=null;}var shippingOptionId;if ((flags & 2)==1){shippingOptionId = reader.tgReadString(); } else {shippingOptionId=null;}var charge = reader.tgReadObject();		return new MessageActionPaymentSentMe(recurringInit : recurringInit, recurringUsed : recurringUsed, currency : currency, totalAmount : totalAmount, payload : payload, info : info, shippingOptionId : shippingOptionId, charge : charge);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2402399015,4),[0,0,0,0],serializeBytes(this.currency),readBufferFromBigInt(this.totalAmount,8,little:true,signed:true),serializeBytes(this.payload),(this.info==null||this.info==false)?new List<int>.empty():[(this.info.getBytes() as List<int>)].expand((element) => element).toList(),(this.shippingOptionId==null||this.shippingOptionId==false)?new List<int>.empty():[serializeBytes(this.shippingOptionId)].expand((element) => element).toList(),(this.charge.getBytes() as List<int>),].expand((element) => element).toList();}

}

class MessageActionPaymentSent {
    static const CONSTRUCTOR_ID = 2518040406;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2518040406;
	bool recurringInit;
	bool recurringUsed;
	String currency;
	BigInt totalAmount;
	String invoiceSlug;


	MessageActionPaymentSent({required this.recurringInit, required this.recurringUsed, required this.currency, required this.totalAmount, required this.invoiceSlug});

	static MessageActionPaymentSent fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final recurringInit = false;final recurringUsed = false;var currency = reader.tgReadString();var totalAmount = reader.readLong();var invoiceSlug;if ((flags & 1)==1){invoiceSlug = reader.tgReadString(); } else {invoiceSlug=null;}		return new MessageActionPaymentSent(recurringInit : recurringInit, recurringUsed : recurringUsed, currency : currency, totalAmount : totalAmount, invoiceSlug : invoiceSlug);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2518040406,4),[0,0,0,0],serializeBytes(this.currency),readBufferFromBigInt(this.totalAmount,8,little:true,signed:true),(this.invoiceSlug==null||this.invoiceSlug==false)?new List<int>.empty():[serializeBytes(this.invoiceSlug)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageActionPhoneCall {
    static const CONSTRUCTOR_ID = 2162236031;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2162236031;
	bool video;
	BigInt callId;
	var reason;
	int duration;


	MessageActionPhoneCall({required this.video, required this.callId, required this.reason, required this.duration});

	static MessageActionPhoneCall fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final video = false;var callId = reader.readLong();var reason;if ((flags & 1)==1){reason = reader.tgReadObject(); } else {reason=null;}var duration;if ((flags & 2)==1){duration = reader.readInt(); } else {duration=null;}		return new MessageActionPhoneCall(video : video, callId : callId, reason : reason, duration : duration);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2162236031,4),[0,0,0,0],readBufferFromBigInt(this.callId,8,little:true,signed:true),(this.reason==null||this.reason==false)?new List<int>.empty():[(this.reason.getBytes() as List<int>)].expand((element) => element).toList(),(this.duration==null||this.duration==false)?new List<int>.empty():[readBufferFromBigInt(this.duration,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageActionScreenshotTaken {
    static const CONSTRUCTOR_ID = 1200788123;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 1200788123;


	MessageActionScreenshotTaken();

	static MessageActionScreenshotTaken fromReader(BinaryReader reader) {
	var temp,len;		return new MessageActionScreenshotTaken();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1200788123,4),].expand((element) => element).toList();}

}

class MessageActionCustomAction {
    static const CONSTRUCTOR_ID = 4209418070;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 4209418070;
	String message;


	MessageActionCustomAction({required this.message});

	static MessageActionCustomAction fromReader(BinaryReader reader) {
	var temp,len;var message = reader.tgReadString();		return new MessageActionCustomAction(message : message);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4209418070,4),serializeBytes(this.message),].expand((element) => element).toList();}

}

class MessageActionBotAllowed {
    static const CONSTRUCTOR_ID = 2884218878;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2884218878;
	String domain;


	MessageActionBotAllowed({required this.domain});

	static MessageActionBotAllowed fromReader(BinaryReader reader) {
	var temp,len;var domain = reader.tgReadString();		return new MessageActionBotAllowed(domain : domain);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2884218878,4),serializeBytes(this.domain),].expand((element) => element).toList();}

}

class MessageActionSecureValuesSentMe {
    static const CONSTRUCTOR_ID = 455635795;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 455635795;
	List<dynamic> values;
	var credentials;


	MessageActionSecureValuesSentMe({required this.values, required this.credentials});

	static MessageActionSecureValuesSentMe fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> values = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		values.add(reader.tgReadObject());
}var credentials = reader.tgReadObject();		return new MessageActionSecureValuesSentMe(values : values, credentials : credentials);
	}
	List<int> getBytes(){return [readBufferFromBigInt(455635795,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.values.length,4,little:true,signed:true),this.values.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.credentials.getBytes() as List<int>),].expand((element) => element).toList();}

}

class MessageActionSecureValuesSent {
    static const CONSTRUCTOR_ID = 3646710100;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 3646710100;
	List<dynamic> types;


	MessageActionSecureValuesSent({required this.types});

	static MessageActionSecureValuesSent fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> types = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		types.add(reader.tgReadObject());
}		return new MessageActionSecureValuesSent(types : types);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3646710100,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.types.length,4,little:true,signed:true),this.types.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class MessageActionContactSignUp {
    static const CONSTRUCTOR_ID = 4092747638;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 4092747638;


	MessageActionContactSignUp();

	static MessageActionContactSignUp fromReader(BinaryReader reader) {
	var temp,len;		return new MessageActionContactSignUp();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4092747638,4),].expand((element) => element).toList();}

}

class MessageActionGeoProximityReached {
    static const CONSTRUCTOR_ID = 2564871831;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2564871831;
	var fromId;
	var toId;
	int distance;


	MessageActionGeoProximityReached({required this.fromId, required this.toId, required this.distance});

	static MessageActionGeoProximityReached fromReader(BinaryReader reader) {
	var temp,len;var fromId = reader.tgReadObject();var toId = reader.tgReadObject();var distance = reader.readInt();		return new MessageActionGeoProximityReached(fromId : fromId, toId : toId, distance : distance);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2564871831,4),(this.fromId.getBytes() as List<int>),(this.toId.getBytes() as List<int>),readBufferFromBigInt(this.distance,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageActionGroupCall {
    static const CONSTRUCTOR_ID = 2047704898;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2047704898;
	var call;
	int duration;


	MessageActionGroupCall({required this.call, required this.duration});

	static MessageActionGroupCall fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var call = reader.tgReadObject();var duration;if ((flags & 1)==1){duration = reader.readInt(); } else {duration=null;}		return new MessageActionGroupCall(call : call, duration : duration);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2047704898,4),[0,0,0,0],(this.call.getBytes() as List<int>),(this.duration==null||this.duration==false)?new List<int>.empty():[readBufferFromBigInt(this.duration,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageActionInviteToGroupCall {
    static const CONSTRUCTOR_ID = 1345295095;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 1345295095;
	var call;
	List<BigInt> users;


	MessageActionInviteToGroupCall({required this.call, required this.users});

	static MessageActionInviteToGroupCall fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();reader.readInt();
List<BigInt> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.readLong());
}		return new MessageActionInviteToGroupCall(call : call, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1345295095,4),(this.call.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class MessageActionSetMessagesTTL {
    static const CONSTRUCTOR_ID = 2853895165;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2853895165;
	int period;


	MessageActionSetMessagesTTL({required this.period});

	static MessageActionSetMessagesTTL fromReader(BinaryReader reader) {
	var temp,len;var period = reader.readInt();		return new MessageActionSetMessagesTTL(period : period);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2853895165,4),readBufferFromBigInt(this.period,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageActionGroupCallScheduled {
    static const CONSTRUCTOR_ID = 3013637729;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 3013637729;
	var call;
	int scheduleDate;


	MessageActionGroupCallScheduled({required this.call, required this.scheduleDate});

	static MessageActionGroupCallScheduled fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();var scheduleDate = reader.readInt();		return new MessageActionGroupCallScheduled(call : call, scheduleDate : scheduleDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3013637729,4),(this.call.getBytes() as List<int>),readBufferFromBigInt(this.scheduleDate,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageActionSetChatTheme {
    static const CONSTRUCTOR_ID = 2860016453;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 2860016453;
	String emoticon;


	MessageActionSetChatTheme({required this.emoticon});

	static MessageActionSetChatTheme fromReader(BinaryReader reader) {
	var temp,len;var emoticon = reader.tgReadString();		return new MessageActionSetChatTheme(emoticon : emoticon);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2860016453,4),serializeBytes(this.emoticon),].expand((element) => element).toList();}

}

class MessageActionChatJoinedByRequest {
    static const CONSTRUCTOR_ID = 3955008459;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 3955008459;


	MessageActionChatJoinedByRequest();

	static MessageActionChatJoinedByRequest fromReader(BinaryReader reader) {
	var temp,len;		return new MessageActionChatJoinedByRequest();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3955008459,4),].expand((element) => element).toList();}

}

class MessageActionWebViewDataSentMe {
    static const CONSTRUCTOR_ID = 1205698681;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 1205698681;
	String text;
	String data;


	MessageActionWebViewDataSentMe({required this.text, required this.data});

	static MessageActionWebViewDataSentMe fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();var data = reader.tgReadString();		return new MessageActionWebViewDataSentMe(text : text, data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1205698681,4),serializeBytes(this.text),serializeBytes(this.data),].expand((element) => element).toList();}

}

class MessageActionWebViewDataSent {
    static const CONSTRUCTOR_ID = 3032714421;
    static const SUBCLASS_OF_ID = 2256589094;
    final classType = "constructor";
    final ID = 3032714421;
	String text;


	MessageActionWebViewDataSent({required this.text});

	static MessageActionWebViewDataSent fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();		return new MessageActionWebViewDataSent(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3032714421,4),serializeBytes(this.text),].expand((element) => element).toList();}

}

class Dialog {
    static const CONSTRUCTOR_ID = 2834157813;
    static const SUBCLASS_OF_ID = 1120787796;
    final classType = "constructor";
    final ID = 2834157813;
	bool pinned;
	bool unreadMark;
	var peer;
	int topMessage;
	int readInboxMaxId;
	int readOutboxMaxId;
	int unreadCount;
	int unreadMentionsCount;
	int unreadReactionsCount;
	var notifySettings;
	int pts;
	var draft;
	int folderId;


	Dialog({required this.pinned, required this.unreadMark, required this.peer, required this.topMessage, required this.readInboxMaxId, required this.readOutboxMaxId, required this.unreadCount, required this.unreadMentionsCount, required this.unreadReactionsCount, required this.notifySettings, required this.pts, required this.draft, required this.folderId});

	static Dialog fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final pinned = false;final unreadMark = false;var peer = reader.tgReadObject();var topMessage = reader.readInt();var readInboxMaxId = reader.readInt();var readOutboxMaxId = reader.readInt();var unreadCount = reader.readInt();var unreadMentionsCount = reader.readInt();var unreadReactionsCount = reader.readInt();var notifySettings = reader.tgReadObject();var pts;if ((flags & 1)==1){pts = reader.readInt(); } else {pts=null;}var draft;if ((flags & 2)==1){draft = reader.tgReadObject(); } else {draft=null;}var folderId;if ((flags & 16)==1){folderId = reader.readInt(); } else {folderId=null;}		return new Dialog(pinned : pinned, unreadMark : unreadMark, peer : peer, topMessage : topMessage, readInboxMaxId : readInboxMaxId, readOutboxMaxId : readOutboxMaxId, unreadCount : unreadCount, unreadMentionsCount : unreadMentionsCount, unreadReactionsCount : unreadReactionsCount, notifySettings : notifySettings, pts : pts, draft : draft, folderId : folderId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2834157813,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.topMessage,4,little:true,signed:true),readBufferFromBigInt(this.readInboxMaxId,4,little:true,signed:true),readBufferFromBigInt(this.readOutboxMaxId,4,little:true,signed:true),readBufferFromBigInt(this.unreadCount,4,little:true,signed:true),readBufferFromBigInt(this.unreadMentionsCount,4,little:true,signed:true),readBufferFromBigInt(this.unreadReactionsCount,4,little:true,signed:true),(this.notifySettings.getBytes() as List<int>),(this.pts==null||this.pts==false)?new List<int>.empty():[readBufferFromBigInt(this.pts,4,little:true,signed:true)].expand((element) => element).toList(),(this.draft==null||this.draft==false)?new List<int>.empty():[(this.draft.getBytes() as List<int>)].expand((element) => element).toList(),(this.folderId==null||this.folderId==false)?new List<int>.empty():[readBufferFromBigInt(this.folderId,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class DialogFolder {
    static const CONSTRUCTOR_ID = 1908216652;
    static const SUBCLASS_OF_ID = 1120787796;
    final classType = "constructor";
    final ID = 1908216652;
	bool pinned;
	var folder;
	var peer;
	int topMessage;
	int unreadMutedPeersCount;
	int unreadUnmutedPeersCount;
	int unreadMutedMessagesCount;
	int unreadUnmutedMessagesCount;


	DialogFolder({required this.pinned, required this.folder, required this.peer, required this.topMessage, required this.unreadMutedPeersCount, required this.unreadUnmutedPeersCount, required this.unreadMutedMessagesCount, required this.unreadUnmutedMessagesCount});

	static DialogFolder fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final pinned = false;var folder = reader.tgReadObject();var peer = reader.tgReadObject();var topMessage = reader.readInt();var unreadMutedPeersCount = reader.readInt();var unreadUnmutedPeersCount = reader.readInt();var unreadMutedMessagesCount = reader.readInt();var unreadUnmutedMessagesCount = reader.readInt();		return new DialogFolder(pinned : pinned, folder : folder, peer : peer, topMessage : topMessage, unreadMutedPeersCount : unreadMutedPeersCount, unreadUnmutedPeersCount : unreadUnmutedPeersCount, unreadMutedMessagesCount : unreadMutedMessagesCount, unreadUnmutedMessagesCount : unreadUnmutedMessagesCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1908216652,4),[0,0,0,0],(this.folder.getBytes() as List<int>),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.topMessage,4,little:true,signed:true),readBufferFromBigInt(this.unreadMutedPeersCount,4,little:true,signed:true),readBufferFromBigInt(this.unreadUnmutedPeersCount,4,little:true,signed:true),readBufferFromBigInt(this.unreadMutedMessagesCount,4,little:true,signed:true),readBufferFromBigInt(this.unreadUnmutedMessagesCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class PhotoEmpty {
    static const CONSTRUCTOR_ID = 590459437;
    static const SUBCLASS_OF_ID = 3581324060;
    final classType = "constructor";
    final ID = 590459437;
	BigInt id;


	PhotoEmpty({required this.id});

	static PhotoEmpty fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();		return new PhotoEmpty(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(590459437,4),readBufferFromBigInt(this.id,8,little:true,signed:true),].expand((element) => element).toList();}

}

class Photo {
    static const CONSTRUCTOR_ID = 4212750949;
    static const SUBCLASS_OF_ID = 3581324060;
    final classType = "constructor";
    final ID = 4212750949;
	bool hasStickers;
	BigInt id;
	BigInt accessHash;
	List<int> fileReference;
	int date;
	List<dynamic> sizes;
	List<dynamic> videoSizes;
	int dcId;


	Photo({required this.hasStickers, required this.id, required this.accessHash, required this.fileReference, required this.date, required this.sizes, required this.videoSizes, required this.dcId});

	static Photo fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final hasStickers = false;var id = reader.readLong();var accessHash = reader.readLong();var fileReference = reader.tgReadBytes();var date = reader.readInt();reader.readInt();
List<dynamic> sizes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		sizes.add(reader.tgReadObject());
}var videoSizes;if ((flags & 2)==1){reader.readInt();
List<dynamic> videoSizes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		videoSizes.add(reader.tgReadObject());
} } else {videoSizes=null;}var dcId = reader.readInt();		return new Photo(hasStickers : hasStickers, id : id, accessHash : accessHash, fileReference : fileReference, date : date, sizes : sizes, videoSizes : videoSizes, dcId : dcId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4212750949,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),serializeBytes(this.fileReference),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.sizes.length,4,little:true,signed:true),this.sizes.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.videoSizes==null||this.videoSizes==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.videoSizes.length,4,little:true,signed:true),this.videoSizes.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),readBufferFromBigInt(this.dcId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class PhotoSizeEmpty {
    static const CONSTRUCTOR_ID = 236446268;
    static const SUBCLASS_OF_ID = 399256025;
    final classType = "constructor";
    final ID = 236446268;
	String type;


	PhotoSizeEmpty({required this.type});

	static PhotoSizeEmpty fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadString();		return new PhotoSizeEmpty(type : type);
	}
	List<int> getBytes(){return [readBufferFromBigInt(236446268,4),serializeBytes(this.type),].expand((element) => element).toList();}

}

class PhotoSize {
    static const CONSTRUCTOR_ID = 1976012384;
    static const SUBCLASS_OF_ID = 399256025;
    final classType = "constructor";
    final ID = 1976012384;
	String type;
	int w;
	int h;
	int size;


	PhotoSize({required this.type, required this.w, required this.h, required this.size});

	static PhotoSize fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadString();var w = reader.readInt();var h = reader.readInt();var size = reader.readInt();		return new PhotoSize(type : type, w : w, h : h, size : size);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1976012384,4),serializeBytes(this.type),readBufferFromBigInt(this.w,4,little:true,signed:true),readBufferFromBigInt(this.h,4,little:true,signed:true),readBufferFromBigInt(this.size,4,little:true,signed:true),].expand((element) => element).toList();}

}

class PhotoCachedSize {
    static const CONSTRUCTOR_ID = 35527382;
    static const SUBCLASS_OF_ID = 399256025;
    final classType = "constructor";
    final ID = 35527382;
	String type;
	int w;
	int h;
	List<int> bytes;


	PhotoCachedSize({required this.type, required this.w, required this.h, required this.bytes});

	static PhotoCachedSize fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadString();var w = reader.readInt();var h = reader.readInt();var bytes = reader.tgReadBytes();		return new PhotoCachedSize(type : type, w : w, h : h, bytes : bytes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(35527382,4),serializeBytes(this.type),readBufferFromBigInt(this.w,4,little:true,signed:true),readBufferFromBigInt(this.h,4,little:true,signed:true),serializeBytes(this.bytes),].expand((element) => element).toList();}

}

class PhotoStrippedSize {
    static const CONSTRUCTOR_ID = 3769678894;
    static const SUBCLASS_OF_ID = 399256025;
    final classType = "constructor";
    final ID = 3769678894;
	String type;
	List<int> bytes;


	PhotoStrippedSize({required this.type, required this.bytes});

	static PhotoStrippedSize fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadString();var bytes = reader.tgReadBytes();		return new PhotoStrippedSize(type : type, bytes : bytes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3769678894,4),serializeBytes(this.type),serializeBytes(this.bytes),].expand((element) => element).toList();}

}

class PhotoSizeProgressive {
    static const CONSTRUCTOR_ID = 4198431637;
    static const SUBCLASS_OF_ID = 399256025;
    final classType = "constructor";
    final ID = 4198431637;
	String type;
	int w;
	int h;
	List<int> sizes;


	PhotoSizeProgressive({required this.type, required this.w, required this.h, required this.sizes});

	static PhotoSizeProgressive fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadString();var w = reader.readInt();var h = reader.readInt();reader.readInt();
List<int> sizes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		sizes.add(reader.readInt());
}		return new PhotoSizeProgressive(type : type, w : w, h : h, sizes : sizes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4198431637,4),serializeBytes(this.type),readBufferFromBigInt(this.w,4,little:true,signed:true),readBufferFromBigInt(this.h,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.sizes.length,4,little:true,signed:true),this.sizes.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class PhotoPathSize {
    static const CONSTRUCTOR_ID = 3626061121;
    static const SUBCLASS_OF_ID = 399256025;
    final classType = "constructor";
    final ID = 3626061121;
	String type;
	List<int> bytes;


	PhotoPathSize({required this.type, required this.bytes});

	static PhotoPathSize fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadString();var bytes = reader.tgReadBytes();		return new PhotoPathSize(type : type, bytes : bytes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3626061121,4),serializeBytes(this.type),serializeBytes(this.bytes),].expand((element) => element).toList();}

}

class GeoPointEmpty {
    static const CONSTRUCTOR_ID = 286776671;
    static const SUBCLASS_OF_ID = 3591430509;
    final classType = "constructor";
    final ID = 286776671;


	GeoPointEmpty();

	static GeoPointEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new GeoPointEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(286776671,4),].expand((element) => element).toList();}

}

class GeoPoint {
    static const CONSTRUCTOR_ID = 2997024355;
    static const SUBCLASS_OF_ID = 3591430509;
    final classType = "constructor";
    final ID = 2997024355;
	double long;
	double lat;
	BigInt accessHash;
	int accuracyRadius;


	GeoPoint({required this.long, required this.lat, required this.accessHash, required this.accuracyRadius});

	static GeoPoint fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var long = reader.readDouble();var lat = reader.readDouble();var accessHash = reader.readLong();var accuracyRadius;if ((flags & 1)==1){accuracyRadius = reader.readInt(); } else {accuracyRadius=null;}		return new GeoPoint(long : long, lat : lat, accessHash : accessHash, accuracyRadius : accuracyRadius);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2997024355,4),[0,0,0,0],readBufferFromBigInt(this.long,4),readBufferFromBigInt(this.lat,4),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),(this.accuracyRadius==null||this.accuracyRadius==false)?new List<int>.empty():[readBufferFromBigInt(this.accuracyRadius,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputNotifyPeer {
    static const CONSTRUCTOR_ID = 3099351820;
    static const SUBCLASS_OF_ID = 1486362133;
    final classType = "constructor";
    final ID = 3099351820;
	var peer;


	InputNotifyPeer({required this.peer});

	static InputNotifyPeer fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new InputNotifyPeer(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3099351820,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputNotifyUsers {
    static const CONSTRUCTOR_ID = 423314455;
    static const SUBCLASS_OF_ID = 1486362133;
    final classType = "constructor";
    final ID = 423314455;


	InputNotifyUsers();

	static InputNotifyUsers fromReader(BinaryReader reader) {
	var temp,len;		return new InputNotifyUsers();
	}
	List<int> getBytes(){return [readBufferFromBigInt(423314455,4),].expand((element) => element).toList();}

}

class InputNotifyChats {
    static const CONSTRUCTOR_ID = 1251338318;
    static const SUBCLASS_OF_ID = 1486362133;
    final classType = "constructor";
    final ID = 1251338318;


	InputNotifyChats();

	static InputNotifyChats fromReader(BinaryReader reader) {
	var temp,len;		return new InputNotifyChats();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1251338318,4),].expand((element) => element).toList();}

}

class InputNotifyBroadcasts {
    static const CONSTRUCTOR_ID = 2983951486;
    static const SUBCLASS_OF_ID = 1486362133;
    final classType = "constructor";
    final ID = 2983951486;


	InputNotifyBroadcasts();

	static InputNotifyBroadcasts fromReader(BinaryReader reader) {
	var temp,len;		return new InputNotifyBroadcasts();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2983951486,4),].expand((element) => element).toList();}

}

class InputPeerNotifySettings {
    static const CONSTRUCTOR_ID = 3743350827;
    static const SUBCLASS_OF_ID = 2430274317;
    final classType = "constructor";
    final ID = 3743350827;
	bool showPreviews;
	bool silent;
	int muteUntil;
	var sound;


	InputPeerNotifySettings({required this.showPreviews, required this.silent, required this.muteUntil, required this.sound});

	static InputPeerNotifySettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var showPreviews;if ((flags & 1)==1){showPreviews = reader.tgReadBool(); } else {showPreviews=null;}var silent;if ((flags & 2)==1){silent = reader.tgReadBool(); } else {silent=null;}var muteUntil;if ((flags & 4)==1){muteUntil = reader.readInt(); } else {muteUntil=null;}var sound;if ((flags & 8)==1){sound = reader.tgReadObject(); } else {sound=null;}		return new InputPeerNotifySettings(showPreviews : showPreviews, silent : silent, muteUntil : muteUntil, sound : sound);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3743350827,4),[0,0,0,0],(this.showPreviews==null||this.showPreviews==false)?new List<int>.empty():[[this.showPreviews ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),(this.silent==null||this.silent==false)?new List<int>.empty():[[this.silent ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),(this.muteUntil==null||this.muteUntil==false)?new List<int>.empty():[readBufferFromBigInt(this.muteUntil,4,little:true,signed:true)].expand((element) => element).toList(),(this.sound==null||this.sound==false)?new List<int>.empty():[(this.sound.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PeerNotifySettings {
    static const CONSTRUCTOR_ID = 2822439974;
    static const SUBCLASS_OF_ID = 3475030132;
    final classType = "constructor";
    final ID = 2822439974;
	bool showPreviews;
	bool silent;
	int muteUntil;
	var iosSound;
	var androidSound;
	var otherSound;


	PeerNotifySettings({required this.showPreviews, required this.silent, required this.muteUntil, required this.iosSound, required this.androidSound, required this.otherSound});

	static PeerNotifySettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var showPreviews;if ((flags & 1)==1){showPreviews = reader.tgReadBool(); } else {showPreviews=null;}var silent;if ((flags & 2)==1){silent = reader.tgReadBool(); } else {silent=null;}var muteUntil;if ((flags & 4)==1){muteUntil = reader.readInt(); } else {muteUntil=null;}var iosSound;if ((flags & 8)==1){iosSound = reader.tgReadObject(); } else {iosSound=null;}var androidSound;if ((flags & 16)==1){androidSound = reader.tgReadObject(); } else {androidSound=null;}var otherSound;if ((flags & 32)==1){otherSound = reader.tgReadObject(); } else {otherSound=null;}		return new PeerNotifySettings(showPreviews : showPreviews, silent : silent, muteUntil : muteUntil, iosSound : iosSound, androidSound : androidSound, otherSound : otherSound);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2822439974,4),[0,0,0,0],(this.showPreviews==null||this.showPreviews==false)?new List<int>.empty():[[this.showPreviews ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),(this.silent==null||this.silent==false)?new List<int>.empty():[[this.silent ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),(this.muteUntil==null||this.muteUntil==false)?new List<int>.empty():[readBufferFromBigInt(this.muteUntil,4,little:true,signed:true)].expand((element) => element).toList(),(this.iosSound==null||this.iosSound==false)?new List<int>.empty():[(this.iosSound.getBytes() as List<int>)].expand((element) => element).toList(),(this.androidSound==null||this.androidSound==false)?new List<int>.empty():[(this.androidSound.getBytes() as List<int>)].expand((element) => element).toList(),(this.otherSound==null||this.otherSound==false)?new List<int>.empty():[(this.otherSound.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PeerSettings {
    static const CONSTRUCTOR_ID = 2769817869;
    static const SUBCLASS_OF_ID = 4138180484;
    final classType = "constructor";
    final ID = 2769817869;
	bool reportSpam;
	bool addContact;
	bool blockContact;
	bool shareContact;
	bool needContactsException;
	bool reportGeo;
	bool autoarchived;
	bool inviteMembers;
	bool requestChatBroadcast;
	int geoDistance;
	String requestChatTitle;
	int requestChatDate;


	PeerSettings({required this.reportSpam, required this.addContact, required this.blockContact, required this.shareContact, required this.needContactsException, required this.reportGeo, required this.autoarchived, required this.inviteMembers, required this.requestChatBroadcast, required this.geoDistance, required this.requestChatTitle, required this.requestChatDate});

	static PeerSettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final reportSpam = false;final addContact = false;final blockContact = false;final shareContact = false;final needContactsException = false;final reportGeo = false;final autoarchived = false;final inviteMembers = false;final requestChatBroadcast = false;var geoDistance;if ((flags & 64)==1){geoDistance = reader.readInt(); } else {geoDistance=null;}var requestChatTitle;if ((flags & 512)==1){requestChatTitle = reader.tgReadString(); } else {requestChatTitle=null;}var requestChatDate;if ((flags & 512)==1){requestChatDate = reader.readInt(); } else {requestChatDate=null;}		return new PeerSettings(reportSpam : reportSpam, addContact : addContact, blockContact : blockContact, shareContact : shareContact, needContactsException : needContactsException, reportGeo : reportGeo, autoarchived : autoarchived, inviteMembers : inviteMembers, requestChatBroadcast : requestChatBroadcast, geoDistance : geoDistance, requestChatTitle : requestChatTitle, requestChatDate : requestChatDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2769817869,4),[0,0,0,0],(this.geoDistance==null||this.geoDistance==false)?new List<int>.empty():[readBufferFromBigInt(this.geoDistance,4,little:true,signed:true)].expand((element) => element).toList(),(this.requestChatTitle==null||this.requestChatTitle==false)?new List<int>.empty():[serializeBytes(this.requestChatTitle)].expand((element) => element).toList(),(this.requestChatDate==null||this.requestChatDate==false)?new List<int>.empty():[readBufferFromBigInt(this.requestChatDate,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class WallPaper {
    static const CONSTRUCTOR_ID = 2755118061;
    static const SUBCLASS_OF_ID = 2527250827;
    final classType = "constructor";
    final ID = 2755118061;
	BigInt id;
	bool creator;
	bool defaultVar;
	bool pattern;
	bool dark;
	BigInt accessHash;
	String slug;
	var document;
	var settings;


	WallPaper({required this.id, required this.creator, required this.defaultVar, required this.pattern, required this.dark, required this.accessHash, required this.slug, required this.document, required this.settings});

	static WallPaper fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();final flags = reader.readInt();final creator = false;final defaultVar = false;final pattern = false;final dark = false;var accessHash = reader.readLong();var slug = reader.tgReadString();var document = reader.tgReadObject();var settings;if ((flags & 4)==1){settings = reader.tgReadObject(); } else {settings=null;}		return new WallPaper(id : id, creator : creator, defaultVar : defaultVar, pattern : pattern, dark : dark, accessHash : accessHash, slug : slug, document : document, settings : settings);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2755118061,4),readBufferFromBigInt(this.id,8,little:true,signed:true),[0,0,0,0],readBufferFromBigInt(this.accessHash,8,little:true,signed:true),serializeBytes(this.slug),(this.document.getBytes() as List<int>),(this.settings==null||this.settings==false)?new List<int>.empty():[(this.settings.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class WallPaperNoFile {
    static const CONSTRUCTOR_ID = 3766501654;
    static const SUBCLASS_OF_ID = 2527250827;
    final classType = "constructor";
    final ID = 3766501654;
	BigInt id;
	bool defaultVar;
	bool dark;
	var settings;


	WallPaperNoFile({required this.id, required this.defaultVar, required this.dark, required this.settings});

	static WallPaperNoFile fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();final flags = reader.readInt();final defaultVar = false;final dark = false;var settings;if ((flags & 4)==1){settings = reader.tgReadObject(); } else {settings=null;}		return new WallPaperNoFile(id : id, defaultVar : defaultVar, dark : dark, settings : settings);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3766501654,4),readBufferFromBigInt(this.id,8,little:true,signed:true),[0,0,0,0],(this.settings==null||this.settings==false)?new List<int>.empty():[(this.settings.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputReportReasonSpam {
    static const CONSTRUCTOR_ID = 1490799288;
    static const SUBCLASS_OF_ID = 2214706471;
    final classType = "constructor";
    final ID = 1490799288;


	InputReportReasonSpam();

	static InputReportReasonSpam fromReader(BinaryReader reader) {
	var temp,len;		return new InputReportReasonSpam();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1490799288,4),].expand((element) => element).toList();}

}

class InputReportReasonViolence {
    static const CONSTRUCTOR_ID = 505595789;
    static const SUBCLASS_OF_ID = 2214706471;
    final classType = "constructor";
    final ID = 505595789;


	InputReportReasonViolence();

	static InputReportReasonViolence fromReader(BinaryReader reader) {
	var temp,len;		return new InputReportReasonViolence();
	}
	List<int> getBytes(){return [readBufferFromBigInt(505595789,4),].expand((element) => element).toList();}

}

class InputReportReasonPornography {
    static const CONSTRUCTOR_ID = 777640226;
    static const SUBCLASS_OF_ID = 2214706471;
    final classType = "constructor";
    final ID = 777640226;


	InputReportReasonPornography();

	static InputReportReasonPornography fromReader(BinaryReader reader) {
	var temp,len;		return new InputReportReasonPornography();
	}
	List<int> getBytes(){return [readBufferFromBigInt(777640226,4),].expand((element) => element).toList();}

}

class InputReportReasonChildAbuse {
    static const CONSTRUCTOR_ID = 2918469347;
    static const SUBCLASS_OF_ID = 2214706471;
    final classType = "constructor";
    final ID = 2918469347;


	InputReportReasonChildAbuse();

	static InputReportReasonChildAbuse fromReader(BinaryReader reader) {
	var temp,len;		return new InputReportReasonChildAbuse();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2918469347,4),].expand((element) => element).toList();}

}

class InputReportReasonOther {
    static const CONSTRUCTOR_ID = 3252986545;
    static const SUBCLASS_OF_ID = 2214706471;
    final classType = "constructor";
    final ID = 3252986545;


	InputReportReasonOther();

	static InputReportReasonOther fromReader(BinaryReader reader) {
	var temp,len;		return new InputReportReasonOther();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3252986545,4),].expand((element) => element).toList();}

}

class InputReportReasonCopyright {
    static const CONSTRUCTOR_ID = 2609510714;
    static const SUBCLASS_OF_ID = 2214706471;
    final classType = "constructor";
    final ID = 2609510714;


	InputReportReasonCopyright();

	static InputReportReasonCopyright fromReader(BinaryReader reader) {
	var temp,len;		return new InputReportReasonCopyright();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2609510714,4),].expand((element) => element).toList();}

}

class InputReportReasonGeoIrrelevant {
    static const CONSTRUCTOR_ID = 3688169197;
    static const SUBCLASS_OF_ID = 2214706471;
    final classType = "constructor";
    final ID = 3688169197;


	InputReportReasonGeoIrrelevant();

	static InputReportReasonGeoIrrelevant fromReader(BinaryReader reader) {
	var temp,len;		return new InputReportReasonGeoIrrelevant();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3688169197,4),].expand((element) => element).toList();}

}

class InputReportReasonFake {
    static const CONSTRUCTOR_ID = 4124956391;
    static const SUBCLASS_OF_ID = 2214706471;
    final classType = "constructor";
    final ID = 4124956391;


	InputReportReasonFake();

	static InputReportReasonFake fromReader(BinaryReader reader) {
	var temp,len;		return new InputReportReasonFake();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4124956391,4),].expand((element) => element).toList();}

}

class InputReportReasonIllegalDrugs {
    static const CONSTRUCTOR_ID = 177124030;
    static const SUBCLASS_OF_ID = 2214706471;
    final classType = "constructor";
    final ID = 177124030;


	InputReportReasonIllegalDrugs();

	static InputReportReasonIllegalDrugs fromReader(BinaryReader reader) {
	var temp,len;		return new InputReportReasonIllegalDrugs();
	}
	List<int> getBytes(){return [readBufferFromBigInt(177124030,4),].expand((element) => element).toList();}

}

class InputReportReasonPersonalDetails {
    static const CONSTRUCTOR_ID = 2663876157;
    static const SUBCLASS_OF_ID = 2214706471;
    final classType = "constructor";
    final ID = 2663876157;


	InputReportReasonPersonalDetails();

	static InputReportReasonPersonalDetails fromReader(BinaryReader reader) {
	var temp,len;		return new InputReportReasonPersonalDetails();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2663876157,4),].expand((element) => element).toList();}

}

class UserFull {
    static const CONSTRUCTOR_ID = 2356341377;
    static const SUBCLASS_OF_ID = 524706233;
    final classType = "constructor";
    final ID = 2356341377;
	bool blocked;
	bool phoneCallsAvailable;
	bool phoneCallsPrivate;
	bool canPinMessage;
	bool hasScheduled;
	bool videoCallsAvailable;
	BigInt id;
	String about;
	var settings;
	var profilePhoto;
	var notifySettings;
	var botInfo;
	int pinnedMsgId;
	int commonChatsCount;
	int folderId;
	int ttlPeriod;
	String themeEmoticon;
	String privateForwardName;
	var botGroupAdminRights;
	var botBroadcastAdminRights;


	UserFull({required this.blocked, required this.phoneCallsAvailable, required this.phoneCallsPrivate, required this.canPinMessage, required this.hasScheduled, required this.videoCallsAvailable, required this.id, required this.about, required this.settings, required this.profilePhoto, required this.notifySettings, required this.botInfo, required this.pinnedMsgId, required this.commonChatsCount, required this.folderId, required this.ttlPeriod, required this.themeEmoticon, required this.privateForwardName, required this.botGroupAdminRights, required this.botBroadcastAdminRights});

	static UserFull fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final blocked = false;final phoneCallsAvailable = false;final phoneCallsPrivate = false;final canPinMessage = false;final hasScheduled = false;final videoCallsAvailable = false;var id = reader.readLong();var about;if ((flags & 2)==1){about = reader.tgReadString(); } else {about=null;}var settings = reader.tgReadObject();var profilePhoto;if ((flags & 4)==1){profilePhoto = reader.tgReadObject(); } else {profilePhoto=null;}var notifySettings = reader.tgReadObject();var botInfo;if ((flags & 8)==1){botInfo = reader.tgReadObject(); } else {botInfo=null;}var pinnedMsgId;if ((flags & 64)==1){pinnedMsgId = reader.readInt(); } else {pinnedMsgId=null;}var commonChatsCount = reader.readInt();var folderId;if ((flags & 2048)==1){folderId = reader.readInt(); } else {folderId=null;}var ttlPeriod;if ((flags & 16384)==1){ttlPeriod = reader.readInt(); } else {ttlPeriod=null;}var themeEmoticon;if ((flags & 32768)==1){themeEmoticon = reader.tgReadString(); } else {themeEmoticon=null;}var privateForwardName;if ((flags & 65536)==1){privateForwardName = reader.tgReadString(); } else {privateForwardName=null;}var botGroupAdminRights;if ((flags & 131072)==1){botGroupAdminRights = reader.tgReadObject(); } else {botGroupAdminRights=null;}var botBroadcastAdminRights;if ((flags & 262144)==1){botBroadcastAdminRights = reader.tgReadObject(); } else {botBroadcastAdminRights=null;}		return new UserFull(blocked : blocked, phoneCallsAvailable : phoneCallsAvailable, phoneCallsPrivate : phoneCallsPrivate, canPinMessage : canPinMessage, hasScheduled : hasScheduled, videoCallsAvailable : videoCallsAvailable, id : id, about : about, settings : settings, profilePhoto : profilePhoto, notifySettings : notifySettings, botInfo : botInfo, pinnedMsgId : pinnedMsgId, commonChatsCount : commonChatsCount, folderId : folderId, ttlPeriod : ttlPeriod, themeEmoticon : themeEmoticon, privateForwardName : privateForwardName, botGroupAdminRights : botGroupAdminRights, botBroadcastAdminRights : botBroadcastAdminRights);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2356341377,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),(this.about==null||this.about==false)?new List<int>.empty():[serializeBytes(this.about)].expand((element) => element).toList(),(this.settings.getBytes() as List<int>),(this.profilePhoto==null||this.profilePhoto==false)?new List<int>.empty():[(this.profilePhoto.getBytes() as List<int>)].expand((element) => element).toList(),(this.notifySettings.getBytes() as List<int>),(this.botInfo==null||this.botInfo==false)?new List<int>.empty():[(this.botInfo.getBytes() as List<int>)].expand((element) => element).toList(),(this.pinnedMsgId==null||this.pinnedMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.pinnedMsgId,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.commonChatsCount,4,little:true,signed:true),(this.folderId==null||this.folderId==false)?new List<int>.empty():[readBufferFromBigInt(this.folderId,4,little:true,signed:true)].expand((element) => element).toList(),(this.ttlPeriod==null||this.ttlPeriod==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlPeriod,4,little:true,signed:true)].expand((element) => element).toList(),(this.themeEmoticon==null||this.themeEmoticon==false)?new List<int>.empty():[serializeBytes(this.themeEmoticon)].expand((element) => element).toList(),(this.privateForwardName==null||this.privateForwardName==false)?new List<int>.empty():[serializeBytes(this.privateForwardName)].expand((element) => element).toList(),(this.botGroupAdminRights==null||this.botGroupAdminRights==false)?new List<int>.empty():[(this.botGroupAdminRights.getBytes() as List<int>)].expand((element) => element).toList(),(this.botBroadcastAdminRights==null||this.botBroadcastAdminRights==false)?new List<int>.empty():[(this.botBroadcastAdminRights.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class Contact {
    static const CONSTRUCTOR_ID = 341499403;
    static const SUBCLASS_OF_ID = 2212487076;
    final classType = "constructor";
    final ID = 341499403;
	BigInt userId;
	bool mutual;


	Contact({required this.userId, required this.mutual});

	static Contact fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var mutual = reader.tgReadBool();		return new Contact(userId : userId, mutual : mutual);
	}
	List<int> getBytes(){return [readBufferFromBigInt(341499403,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),[this.mutual ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}

}

class ImportedContact {
    static const CONSTRUCTOR_ID = 3242081360;
    static const SUBCLASS_OF_ID = 3041246170;
    final classType = "constructor";
    final ID = 3242081360;
	BigInt userId;
	BigInt clientId;


	ImportedContact({required this.userId, required this.clientId});

	static ImportedContact fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var clientId = reader.readLong();		return new ImportedContact(userId : userId, clientId : clientId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3242081360,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.clientId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class ContactStatus {
    static const CONSTRUCTOR_ID = 383348795;
    static const SUBCLASS_OF_ID = 1757468492;
    final classType = "constructor";
    final ID = 383348795;
	BigInt userId;
	var status;


	ContactStatus({required this.userId, required this.status});

	static ContactStatus fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var status = reader.tgReadObject();		return new ContactStatus(userId : userId, status : status);
	}
	List<int> getBytes(){return [readBufferFromBigInt(383348795,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),(this.status.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputMessagesFilterEmpty {
    static const CONSTRUCTOR_ID = 1474492012;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 1474492012;


	InputMessagesFilterEmpty();

	static InputMessagesFilterEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1474492012,4),].expand((element) => element).toList();}

}

class InputMessagesFilterPhotos {
    static const CONSTRUCTOR_ID = 2517214492;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 2517214492;


	InputMessagesFilterPhotos();

	static InputMessagesFilterPhotos fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterPhotos();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2517214492,4),].expand((element) => element).toList();}

}

class InputMessagesFilterVideo {
    static const CONSTRUCTOR_ID = 2680163941;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 2680163941;


	InputMessagesFilterVideo();

	static InputMessagesFilterVideo fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterVideo();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2680163941,4),].expand((element) => element).toList();}

}

class InputMessagesFilterPhotoVideo {
    static const CONSTRUCTOR_ID = 1458172132;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 1458172132;


	InputMessagesFilterPhotoVideo();

	static InputMessagesFilterPhotoVideo fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterPhotoVideo();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1458172132,4),].expand((element) => element).toList();}

}

class InputMessagesFilterDocument {
    static const CONSTRUCTOR_ID = 2665345416;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 2665345416;


	InputMessagesFilterDocument();

	static InputMessagesFilterDocument fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterDocument();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2665345416,4),].expand((element) => element).toList();}

}

class InputMessagesFilterUrl {
    static const CONSTRUCTOR_ID = 2129714567;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 2129714567;


	InputMessagesFilterUrl();

	static InputMessagesFilterUrl fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterUrl();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2129714567,4),].expand((element) => element).toList();}

}

class InputMessagesFilterGif {
    static const CONSTRUCTOR_ID = 4291323271;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 4291323271;


	InputMessagesFilterGif();

	static InputMessagesFilterGif fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterGif();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4291323271,4),].expand((element) => element).toList();}

}

class InputMessagesFilterVoice {
    static const CONSTRUCTOR_ID = 1358283666;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 1358283666;


	InputMessagesFilterVoice();

	static InputMessagesFilterVoice fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterVoice();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1358283666,4),].expand((element) => element).toList();}

}

class InputMessagesFilterMusic {
    static const CONSTRUCTOR_ID = 928101534;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 928101534;


	InputMessagesFilterMusic();

	static InputMessagesFilterMusic fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterMusic();
	}
	List<int> getBytes(){return [readBufferFromBigInt(928101534,4),].expand((element) => element).toList();}

}

class InputMessagesFilterChatPhotos {
    static const CONSTRUCTOR_ID = 975236280;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 975236280;


	InputMessagesFilterChatPhotos();

	static InputMessagesFilterChatPhotos fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterChatPhotos();
	}
	List<int> getBytes(){return [readBufferFromBigInt(975236280,4),].expand((element) => element).toList();}

}

class InputMessagesFilterPhoneCalls {
    static const CONSTRUCTOR_ID = 2160695144;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 2160695144;
	bool missed;


	InputMessagesFilterPhoneCalls({required this.missed});

	static InputMessagesFilterPhoneCalls fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final missed = false;		return new InputMessagesFilterPhoneCalls(missed : missed);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2160695144,4),[0,0,0,0],].expand((element) => element).toList();}

}

class InputMessagesFilterRoundVoice {
    static const CONSTRUCTOR_ID = 2054952868;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 2054952868;


	InputMessagesFilterRoundVoice();

	static InputMessagesFilterRoundVoice fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterRoundVoice();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2054952868,4),].expand((element) => element).toList();}

}

class InputMessagesFilterRoundVideo {
    static const CONSTRUCTOR_ID = 3041516115;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 3041516115;


	InputMessagesFilterRoundVideo();

	static InputMessagesFilterRoundVideo fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterRoundVideo();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3041516115,4),].expand((element) => element).toList();}

}

class InputMessagesFilterMyMentions {
    static const CONSTRUCTOR_ID = 3254314650;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 3254314650;


	InputMessagesFilterMyMentions();

	static InputMessagesFilterMyMentions fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterMyMentions();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3254314650,4),].expand((element) => element).toList();}

}

class InputMessagesFilterGeo {
    static const CONSTRUCTOR_ID = 3875695885;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 3875695885;


	InputMessagesFilterGeo();

	static InputMessagesFilterGeo fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterGeo();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3875695885,4),].expand((element) => element).toList();}

}

class InputMessagesFilterContacts {
    static const CONSTRUCTOR_ID = 3764575107;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 3764575107;


	InputMessagesFilterContacts();

	static InputMessagesFilterContacts fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterContacts();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3764575107,4),].expand((element) => element).toList();}

}

class InputMessagesFilterPinned {
    static const CONSTRUCTOR_ID = 464520273;
    static const SUBCLASS_OF_ID = 2318855188;
    final classType = "constructor";
    final ID = 464520273;


	InputMessagesFilterPinned();

	static InputMessagesFilterPinned fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagesFilterPinned();
	}
	List<int> getBytes(){return [readBufferFromBigInt(464520273,4),].expand((element) => element).toList();}

}

class UpdateNewMessage {
    static const CONSTRUCTOR_ID = 522914557;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 522914557;
	var message;
	int pts;
	int ptsCount;


	UpdateNewMessage({required this.message, required this.pts, required this.ptsCount});

	static UpdateNewMessage fromReader(BinaryReader reader) {
	var temp,len;var message = reader.tgReadObject();var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdateNewMessage(message : message, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(522914557,4),(this.message.getBytes() as List<int>),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateMessageID {
    static const CONSTRUCTOR_ID = 1318109142;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1318109142;
	int id;
	BigInt randomId;


	UpdateMessageID({required this.id, required this.randomId});

	static UpdateMessageID fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readInt();var randomId = reader.readLong();		return new UpdateMessageID(id : id, randomId : randomId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1318109142,4),readBufferFromBigInt(this.id,4,little:true,signed:true),readBufferFromBigInt(this.randomId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateDeleteMessages {
    static const CONSTRUCTOR_ID = 2718806245;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2718806245;
	List<int> messages;
	int pts;
	int ptsCount;


	UpdateDeleteMessages({required this.messages, required this.pts, required this.ptsCount});

	static UpdateDeleteMessages fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<int> messages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		messages.add(reader.readInt());
}var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdateDeleteMessages(messages : messages, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2718806245,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.messages.length,4,little:true,signed:true),this.messages.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateUserTyping {
    static const CONSTRUCTOR_ID = 3223225727;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3223225727;
	BigInt userId;
	var action;


	UpdateUserTyping({required this.userId, required this.action});

	static UpdateUserTyping fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var action = reader.tgReadObject();		return new UpdateUserTyping(userId : userId, action : action);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3223225727,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),(this.action.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateChatUserTyping {
    static const CONSTRUCTOR_ID = 2202565360;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2202565360;
	BigInt chatId;
	var fromId;
	var action;


	UpdateChatUserTyping({required this.chatId, required this.fromId, required this.action});

	static UpdateChatUserTyping fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();var fromId = reader.tgReadObject();var action = reader.tgReadObject();		return new UpdateChatUserTyping(chatId : chatId, fromId : fromId, action : action);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2202565360,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),(this.fromId.getBytes() as List<int>),(this.action.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateChatParticipants {
    static const CONSTRUCTOR_ID = 125178264;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 125178264;
	var participants;


	UpdateChatParticipants({required this.participants});

	static UpdateChatParticipants fromReader(BinaryReader reader) {
	var temp,len;var participants = reader.tgReadObject();		return new UpdateChatParticipants(participants : participants);
	}
	List<int> getBytes(){return [readBufferFromBigInt(125178264,4),(this.participants.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateUserStatus {
    static const CONSTRUCTOR_ID = 3854432478;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3854432478;
	BigInt userId;
	var status;


	UpdateUserStatus({required this.userId, required this.status});

	static UpdateUserStatus fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var status = reader.tgReadObject();		return new UpdateUserStatus(userId : userId, status : status);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3854432478,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),(this.status.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateUserName {
    static const CONSTRUCTOR_ID = 3287417568;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3287417568;
	BigInt userId;
	String firstName;
	String lastName;
	String username;


	UpdateUserName({required this.userId, required this.firstName, required this.lastName, required this.username});

	static UpdateUserName fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var firstName = reader.tgReadString();var lastName = reader.tgReadString();var username = reader.tgReadString();		return new UpdateUserName(userId : userId, firstName : firstName, lastName : lastName, username : username);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3287417568,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),serializeBytes(this.firstName),serializeBytes(this.lastName),serializeBytes(this.username),].expand((element) => element).toList();}

}

class UpdateUserPhoto {
    static const CONSTRUCTOR_ID = 4062676620;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 4062676620;
	BigInt userId;
	int date;
	var photo;
	bool previous;


	UpdateUserPhoto({required this.userId, required this.date, required this.photo, required this.previous});

	static UpdateUserPhoto fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var date = reader.readInt();var photo = reader.tgReadObject();var previous = reader.tgReadBool();		return new UpdateUserPhoto(userId : userId, date : date, photo : photo, previous : previous);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4062676620,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),(this.photo.getBytes() as List<int>),[this.previous ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}

}

class UpdateNewEncryptedMessage {
    static const CONSTRUCTOR_ID = 314359194;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 314359194;
	var message;
	int qts;


	UpdateNewEncryptedMessage({required this.message, required this.qts});

	static UpdateNewEncryptedMessage fromReader(BinaryReader reader) {
	var temp,len;var message = reader.tgReadObject();var qts = reader.readInt();		return new UpdateNewEncryptedMessage(message : message, qts : qts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(314359194,4),(this.message.getBytes() as List<int>),readBufferFromBigInt(this.qts,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateEncryptedChatTyping {
    static const CONSTRUCTOR_ID = 386986326;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 386986326;
	int chatId;


	UpdateEncryptedChatTyping({required this.chatId});

	static UpdateEncryptedChatTyping fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readInt();		return new UpdateEncryptedChatTyping(chatId : chatId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(386986326,4),readBufferFromBigInt(this.chatId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateEncryption {
    static const CONSTRUCTOR_ID = 3030575245;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3030575245;
	var chat;
	int date;


	UpdateEncryption({required this.chat, required this.date});

	static UpdateEncryption fromReader(BinaryReader reader) {
	var temp,len;var chat = reader.tgReadObject();var date = reader.readInt();		return new UpdateEncryption(chat : chat, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3030575245,4),(this.chat.getBytes() as List<int>),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateEncryptedMessagesRead {
    static const CONSTRUCTOR_ID = 956179895;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 956179895;
	int chatId;
	int maxDate;
	int date;


	UpdateEncryptedMessagesRead({required this.chatId, required this.maxDate, required this.date});

	static UpdateEncryptedMessagesRead fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readInt();var maxDate = reader.readInt();var date = reader.readInt();		return new UpdateEncryptedMessagesRead(chatId : chatId, maxDate : maxDate, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(956179895,4),readBufferFromBigInt(this.chatId,4,little:true,signed:true),readBufferFromBigInt(this.maxDate,4,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateChatParticipantAdd {
    static const CONSTRUCTOR_ID = 1037718609;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1037718609;
	BigInt chatId;
	BigInt userId;
	BigInt inviterId;
	int date;
	int version;


	UpdateChatParticipantAdd({required this.chatId, required this.userId, required this.inviterId, required this.date, required this.version});

	static UpdateChatParticipantAdd fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();var userId = reader.readLong();var inviterId = reader.readLong();var date = reader.readInt();var version = reader.readInt();		return new UpdateChatParticipantAdd(chatId : chatId, userId : userId, inviterId : inviterId, date : date, version : version);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1037718609,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.inviterId,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.version,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateChatParticipantDelete {
    static const CONSTRUCTOR_ID = 3811523959;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3811523959;
	BigInt chatId;
	BigInt userId;
	int version;


	UpdateChatParticipantDelete({required this.chatId, required this.userId, required this.version});

	static UpdateChatParticipantDelete fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();var userId = reader.readLong();var version = reader.readInt();		return new UpdateChatParticipantDelete(chatId : chatId, userId : userId, version : version);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3811523959,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.version,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateDcOptions {
    static const CONSTRUCTOR_ID = 2388564083;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2388564083;
	List<dynamic> dcOptions;


	UpdateDcOptions({required this.dcOptions});

	static UpdateDcOptions fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> dcOptions = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		dcOptions.add(reader.tgReadObject());
}		return new UpdateDcOptions(dcOptions : dcOptions);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2388564083,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.dcOptions.length,4,little:true,signed:true),this.dcOptions.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class UpdateNotifySettings {
    static const CONSTRUCTOR_ID = 3200411887;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3200411887;
	var peer;
	var notifySettings;


	UpdateNotifySettings({required this.peer, required this.notifySettings});

	static UpdateNotifySettings fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var notifySettings = reader.tgReadObject();		return new UpdateNotifySettings(peer : peer, notifySettings : notifySettings);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3200411887,4),(this.peer.getBytes() as List<int>),(this.notifySettings.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateServiceNotification {
    static const CONSTRUCTOR_ID = 3957614617;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3957614617;
	bool popup;
	int inboxDate;
	String type;
	String message;
	var media;
	List<dynamic> entities;


	UpdateServiceNotification({required this.popup, required this.inboxDate, required this.type, required this.message, required this.media, required this.entities});

	static UpdateServiceNotification fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final popup = false;var inboxDate;if ((flags & 2)==1){inboxDate = reader.readInt(); } else {inboxDate=null;}var type = reader.tgReadString();var message = reader.tgReadString();var media = reader.tgReadObject();reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
}		return new UpdateServiceNotification(popup : popup, inboxDate : inboxDate, type : type, message : message, media : media, entities : entities);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3957614617,4),[0,0,0,0],(this.inboxDate==null||this.inboxDate==false)?new List<int>.empty():[readBufferFromBigInt(this.inboxDate,4,little:true,signed:true)].expand((element) => element).toList(),serializeBytes(this.type),serializeBytes(this.message),(this.media.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class UpdatePrivacy {
    static const CONSTRUCTOR_ID = 3996854058;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3996854058;
	var key;
	List<dynamic> rules;


	UpdatePrivacy({required this.key, required this.rules});

	static UpdatePrivacy fromReader(BinaryReader reader) {
	var temp,len;var key = reader.tgReadObject();reader.readInt();
List<dynamic> rules = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		rules.add(reader.tgReadObject());
}		return new UpdatePrivacy(key : key, rules : rules);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3996854058,4),(this.key.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.rules.length,4,little:true,signed:true),this.rules.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class UpdateUserPhone {
    static const CONSTRUCTOR_ID = 88680979;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 88680979;
	BigInt userId;
	String phone;


	UpdateUserPhone({required this.userId, required this.phone});

	static UpdateUserPhone fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var phone = reader.tgReadString();		return new UpdateUserPhone(userId : userId, phone : phone);
	}
	List<int> getBytes(){return [readBufferFromBigInt(88680979,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),serializeBytes(this.phone),].expand((element) => element).toList();}

}

class UpdateReadHistoryInbox {
    static const CONSTRUCTOR_ID = 2627162079;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2627162079;
	int folderId;
	var peer;
	int maxId;
	int stillUnreadCount;
	int pts;
	int ptsCount;


	UpdateReadHistoryInbox({required this.folderId, required this.peer, required this.maxId, required this.stillUnreadCount, required this.pts, required this.ptsCount});

	static UpdateReadHistoryInbox fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var folderId;if ((flags & 1)==1){folderId = reader.readInt(); } else {folderId=null;}var peer = reader.tgReadObject();var maxId = reader.readInt();var stillUnreadCount = reader.readInt();var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdateReadHistoryInbox(folderId : folderId, peer : peer, maxId : maxId, stillUnreadCount : stillUnreadCount, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2627162079,4),[0,0,0,0],(this.folderId==null||this.folderId==false)?new List<int>.empty():[readBufferFromBigInt(this.folderId,4,little:true,signed:true)].expand((element) => element).toList(),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.maxId,4,little:true,signed:true),readBufferFromBigInt(this.stillUnreadCount,4,little:true,signed:true),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateReadHistoryOutbox {
    static const CONSTRUCTOR_ID = 791617983;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 791617983;
	var peer;
	int maxId;
	int pts;
	int ptsCount;


	UpdateReadHistoryOutbox({required this.peer, required this.maxId, required this.pts, required this.ptsCount});

	static UpdateReadHistoryOutbox fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var maxId = reader.readInt();var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdateReadHistoryOutbox(peer : peer, maxId : maxId, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(791617983,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.maxId,4,little:true,signed:true),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateWebPage {
    static const CONSTRUCTOR_ID = 2139689491;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2139689491;
	var webpage;
	int pts;
	int ptsCount;


	UpdateWebPage({required this.webpage, required this.pts, required this.ptsCount});

	static UpdateWebPage fromReader(BinaryReader reader) {
	var temp,len;var webpage = reader.tgReadObject();var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdateWebPage(webpage : webpage, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2139689491,4),(this.webpage.getBytes() as List<int>),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateReadMessagesContents {
    static const CONSTRUCTOR_ID = 1757493555;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1757493555;
	List<int> messages;
	int pts;
	int ptsCount;


	UpdateReadMessagesContents({required this.messages, required this.pts, required this.ptsCount});

	static UpdateReadMessagesContents fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<int> messages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		messages.add(reader.readInt());
}var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdateReadMessagesContents(messages : messages, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1757493555,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.messages.length,4,little:true,signed:true),this.messages.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateChannelTooLong {
    static const CONSTRUCTOR_ID = 277713951;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 277713951;
	BigInt channelId;
	int pts;


	UpdateChannelTooLong({required this.channelId, required this.pts});

	static UpdateChannelTooLong fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var channelId = reader.readLong();var pts;if ((flags & 1)==1){pts = reader.readInt(); } else {pts=null;}		return new UpdateChannelTooLong(channelId : channelId, pts : pts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(277713951,4),[0,0,0,0],readBufferFromBigInt(this.channelId,8,little:true,signed:true),(this.pts==null||this.pts==false)?new List<int>.empty():[readBufferFromBigInt(this.pts,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class UpdateChannel {
    static const CONSTRUCTOR_ID = 1666927625;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1666927625;
	BigInt channelId;


	UpdateChannel({required this.channelId});

	static UpdateChannel fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();		return new UpdateChannel(channelId : channelId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1666927625,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateNewChannelMessage {
    static const CONSTRUCTOR_ID = 1656358105;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1656358105;
	var message;
	int pts;
	int ptsCount;


	UpdateNewChannelMessage({required this.message, required this.pts, required this.ptsCount});

	static UpdateNewChannelMessage fromReader(BinaryReader reader) {
	var temp,len;var message = reader.tgReadObject();var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdateNewChannelMessage(message : message, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1656358105,4),(this.message.getBytes() as List<int>),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateReadChannelInbox {
    static const CONSTRUCTOR_ID = 2452516368;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2452516368;
	int folderId;
	BigInt channelId;
	int maxId;
	int stillUnreadCount;
	int pts;


	UpdateReadChannelInbox({required this.folderId, required this.channelId, required this.maxId, required this.stillUnreadCount, required this.pts});

	static UpdateReadChannelInbox fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var folderId;if ((flags & 1)==1){folderId = reader.readInt(); } else {folderId=null;}var channelId = reader.readLong();var maxId = reader.readInt();var stillUnreadCount = reader.readInt();var pts = reader.readInt();		return new UpdateReadChannelInbox(folderId : folderId, channelId : channelId, maxId : maxId, stillUnreadCount : stillUnreadCount, pts : pts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2452516368,4),[0,0,0,0],(this.folderId==null||this.folderId==false)?new List<int>.empty():[readBufferFromBigInt(this.folderId,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(this.maxId,4,little:true,signed:true),readBufferFromBigInt(this.stillUnreadCount,4,little:true,signed:true),readBufferFromBigInt(this.pts,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateDeleteChannelMessages {
    static const CONSTRUCTOR_ID = 3274529554;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3274529554;
	BigInt channelId;
	List<int> messages;
	int pts;
	int ptsCount;


	UpdateDeleteChannelMessages({required this.channelId, required this.messages, required this.pts, required this.ptsCount});

	static UpdateDeleteChannelMessages fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();reader.readInt();
List<int> messages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		messages.add(reader.readInt());
}var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdateDeleteChannelMessages(channelId : channelId, messages : messages, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3274529554,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.messages.length,4,little:true,signed:true),this.messages.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateChannelMessageViews {
    static const CONSTRUCTOR_ID = 4062620680;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 4062620680;
	BigInt channelId;
	int id;
	int views;


	UpdateChannelMessageViews({required this.channelId, required this.id, required this.views});

	static UpdateChannelMessageViews fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();var id = reader.readInt();var views = reader.readInt();		return new UpdateChannelMessageViews(channelId : channelId, id : id, views : views);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4062620680,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(this.id,4,little:true,signed:true),readBufferFromBigInt(this.views,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateChatParticipantAdmin {
    static const CONSTRUCTOR_ID = 3620364706;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3620364706;
	BigInt chatId;
	BigInt userId;
	bool isAdmin;
	int version;


	UpdateChatParticipantAdmin({required this.chatId, required this.userId, required this.isAdmin, required this.version});

	static UpdateChatParticipantAdmin fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();var userId = reader.readLong();var isAdmin = reader.tgReadBool();var version = reader.readInt();		return new UpdateChatParticipantAdmin(chatId : chatId, userId : userId, isAdmin : isAdmin, version : version);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3620364706,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),[this.isAdmin ? 0xb5757299 : 0x379779bc],readBufferFromBigInt(this.version,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateNewStickerSet {
    static const CONSTRUCTOR_ID = 1753886890;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1753886890;
	var stickerset;


	UpdateNewStickerSet({required this.stickerset});

	static UpdateNewStickerSet fromReader(BinaryReader reader) {
	var temp,len;var stickerset = reader.tgReadObject();		return new UpdateNewStickerSet(stickerset : stickerset);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1753886890,4),(this.stickerset.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateStickerSetsOrder {
    static const CONSTRUCTOR_ID = 196268545;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 196268545;
	bool masks;
	List<BigInt> order;


	UpdateStickerSetsOrder({required this.masks, required this.order});

	static UpdateStickerSetsOrder fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final masks = false;reader.readInt();
List<BigInt> order = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		order.add(reader.readLong());
}		return new UpdateStickerSetsOrder(masks : masks, order : order);
	}
	List<int> getBytes(){return [readBufferFromBigInt(196268545,4),[0,0,0,0],readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.order.length,4,little:true,signed:true),this.order.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class UpdateStickerSets {
    static const CONSTRUCTOR_ID = 1135492588;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1135492588;


	UpdateStickerSets();

	static UpdateStickerSets fromReader(BinaryReader reader) {
	var temp,len;		return new UpdateStickerSets();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1135492588,4),].expand((element) => element).toList();}

}

class UpdateSavedGifs {
    static const CONSTRUCTOR_ID = 2473931806;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2473931806;


	UpdateSavedGifs();

	static UpdateSavedGifs fromReader(BinaryReader reader) {
	var temp,len;		return new UpdateSavedGifs();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2473931806,4),].expand((element) => element).toList();}

}

class UpdateBotInlineQuery {
    static const CONSTRUCTOR_ID = 1232025500;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1232025500;
	BigInt queryId;
	BigInt userId;
	String query;
	var geo;
	var peerType;
	String offset;


	UpdateBotInlineQuery({required this.queryId, required this.userId, required this.query, required this.geo, required this.peerType, required this.offset});

	static UpdateBotInlineQuery fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var queryId = reader.readLong();var userId = reader.readLong();var query = reader.tgReadString();var geo;if ((flags & 1)==1){geo = reader.tgReadObject(); } else {geo=null;}var peerType;if ((flags & 2)==1){peerType = reader.tgReadObject(); } else {peerType=null;}var offset = reader.tgReadString();		return new UpdateBotInlineQuery(queryId : queryId, userId : userId, query : query, geo : geo, peerType : peerType, offset : offset);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1232025500,4),[0,0,0,0],readBufferFromBigInt(this.queryId,8,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),serializeBytes(this.query),(this.geo==null||this.geo==false)?new List<int>.empty():[(this.geo.getBytes() as List<int>)].expand((element) => element).toList(),(this.peerType==null||this.peerType==false)?new List<int>.empty():[(this.peerType.getBytes() as List<int>)].expand((element) => element).toList(),serializeBytes(this.offset),].expand((element) => element).toList();}

}

class UpdateBotInlineSend {
    static const CONSTRUCTOR_ID = 317794823;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 317794823;
	BigInt userId;
	String query;
	var geo;
	String id;
	var msgId;


	UpdateBotInlineSend({required this.userId, required this.query, required this.geo, required this.id, required this.msgId});

	static UpdateBotInlineSend fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var userId = reader.readLong();var query = reader.tgReadString();var geo;if ((flags & 1)==1){geo = reader.tgReadObject(); } else {geo=null;}var id = reader.tgReadString();var msgId;if ((flags & 2)==1){msgId = reader.tgReadObject(); } else {msgId=null;}		return new UpdateBotInlineSend(userId : userId, query : query, geo : geo, id : id, msgId : msgId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(317794823,4),[0,0,0,0],readBufferFromBigInt(this.userId,8,little:true,signed:true),serializeBytes(this.query),(this.geo==null||this.geo==false)?new List<int>.empty():[(this.geo.getBytes() as List<int>)].expand((element) => element).toList(),serializeBytes(this.id),(this.msgId==null||this.msgId==false)?new List<int>.empty():[(this.msgId.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class UpdateEditChannelMessage {
    static const CONSTRUCTOR_ID = 457133559;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 457133559;
	var message;
	int pts;
	int ptsCount;


	UpdateEditChannelMessage({required this.message, required this.pts, required this.ptsCount});

	static UpdateEditChannelMessage fromReader(BinaryReader reader) {
	var temp,len;var message = reader.tgReadObject();var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdateEditChannelMessage(message : message, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(457133559,4),(this.message.getBytes() as List<int>),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateBotCallbackQuery {
    static const CONSTRUCTOR_ID = 3117401229;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3117401229;
	BigInt queryId;
	BigInt userId;
	var peer;
	int msgId;
	BigInt chatInstance;
	List<int> data;
	String gameShortName;


	UpdateBotCallbackQuery({required this.queryId, required this.userId, required this.peer, required this.msgId, required this.chatInstance, required this.data, required this.gameShortName});

	static UpdateBotCallbackQuery fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var queryId = reader.readLong();var userId = reader.readLong();var peer = reader.tgReadObject();var msgId = reader.readInt();var chatInstance = reader.readLong();var data;if ((flags & 1)==1){data = reader.tgReadBytes(); } else {data=null;}var gameShortName;if ((flags & 2)==1){gameShortName = reader.tgReadString(); } else {gameShortName=null;}		return new UpdateBotCallbackQuery(queryId : queryId, userId : userId, peer : peer, msgId : msgId, chatInstance : chatInstance, data : data, gameShortName : gameShortName);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3117401229,4),[0,0,0,0],readBufferFromBigInt(this.queryId,8,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),readBufferFromBigInt(this.chatInstance,8,little:true,signed:true),(this.data==null||this.data==false)?new List<int>.empty():[serializeBytes(this.data)].expand((element) => element).toList(),(this.gameShortName==null||this.gameShortName==false)?new List<int>.empty():[serializeBytes(this.gameShortName)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class UpdateEditMessage {
    static const CONSTRUCTOR_ID = 3825430691;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3825430691;
	var message;
	int pts;
	int ptsCount;


	UpdateEditMessage({required this.message, required this.pts, required this.ptsCount});

	static UpdateEditMessage fromReader(BinaryReader reader) {
	var temp,len;var message = reader.tgReadObject();var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdateEditMessage(message : message, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3825430691,4),(this.message.getBytes() as List<int>),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateInlineBotCallbackQuery {
    static const CONSTRUCTOR_ID = 1763610706;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1763610706;
	BigInt queryId;
	BigInt userId;
	var msgId;
	BigInt chatInstance;
	List<int> data;
	String gameShortName;


	UpdateInlineBotCallbackQuery({required this.queryId, required this.userId, required this.msgId, required this.chatInstance, required this.data, required this.gameShortName});

	static UpdateInlineBotCallbackQuery fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var queryId = reader.readLong();var userId = reader.readLong();var msgId = reader.tgReadObject();var chatInstance = reader.readLong();var data;if ((flags & 1)==1){data = reader.tgReadBytes(); } else {data=null;}var gameShortName;if ((flags & 2)==1){gameShortName = reader.tgReadString(); } else {gameShortName=null;}		return new UpdateInlineBotCallbackQuery(queryId : queryId, userId : userId, msgId : msgId, chatInstance : chatInstance, data : data, gameShortName : gameShortName);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1763610706,4),[0,0,0,0],readBufferFromBigInt(this.queryId,8,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),(this.msgId.getBytes() as List<int>),readBufferFromBigInt(this.chatInstance,8,little:true,signed:true),(this.data==null||this.data==false)?new List<int>.empty():[serializeBytes(this.data)].expand((element) => element).toList(),(this.gameShortName==null||this.gameShortName==false)?new List<int>.empty():[serializeBytes(this.gameShortName)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class UpdateReadChannelOutbox {
    static const CONSTRUCTOR_ID = 3076495785;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3076495785;
	BigInt channelId;
	int maxId;


	UpdateReadChannelOutbox({required this.channelId, required this.maxId});

	static UpdateReadChannelOutbox fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();var maxId = reader.readInt();		return new UpdateReadChannelOutbox(channelId : channelId, maxId : maxId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3076495785,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(this.maxId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateDraftMessage {
    static const CONSTRUCTOR_ID = 3995842921;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3995842921;
	var peer;
	var draft;


	UpdateDraftMessage({required this.peer, required this.draft});

	static UpdateDraftMessage fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var draft = reader.tgReadObject();		return new UpdateDraftMessage(peer : peer, draft : draft);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3995842921,4),(this.peer.getBytes() as List<int>),(this.draft.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateReadFeaturedStickers {
    static const CONSTRUCTOR_ID = 1461528386;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1461528386;


	UpdateReadFeaturedStickers();

	static UpdateReadFeaturedStickers fromReader(BinaryReader reader) {
	var temp,len;		return new UpdateReadFeaturedStickers();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1461528386,4),].expand((element) => element).toList();}

}

class UpdateRecentStickers {
    static const CONSTRUCTOR_ID = 2588027936;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2588027936;


	UpdateRecentStickers();

	static UpdateRecentStickers fromReader(BinaryReader reader) {
	var temp,len;		return new UpdateRecentStickers();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2588027936,4),].expand((element) => element).toList();}

}

class UpdateConfig {
    static const CONSTRUCTOR_ID = 2720652550;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2720652550;


	UpdateConfig();

	static UpdateConfig fromReader(BinaryReader reader) {
	var temp,len;		return new UpdateConfig();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2720652550,4),].expand((element) => element).toList();}

}

class UpdatePtsChanged {
    static const CONSTRUCTOR_ID = 861169551;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 861169551;


	UpdatePtsChanged();

	static UpdatePtsChanged fromReader(BinaryReader reader) {
	var temp,len;		return new UpdatePtsChanged();
	}
	List<int> getBytes(){return [readBufferFromBigInt(861169551,4),].expand((element) => element).toList();}

}

class UpdateChannelWebPage {
    static const CONSTRUCTOR_ID = 791390623;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 791390623;
	BigInt channelId;
	var webpage;
	int pts;
	int ptsCount;


	UpdateChannelWebPage({required this.channelId, required this.webpage, required this.pts, required this.ptsCount});

	static UpdateChannelWebPage fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();var webpage = reader.tgReadObject();var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdateChannelWebPage(channelId : channelId, webpage : webpage, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(791390623,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),(this.webpage.getBytes() as List<int>),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateDialogPinned {
    static const CONSTRUCTOR_ID = 1852826908;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1852826908;
	bool pinned;
	int folderId;
	var peer;


	UpdateDialogPinned({required this.pinned, required this.folderId, required this.peer});

	static UpdateDialogPinned fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final pinned = false;var folderId;if ((flags & 2)==1){folderId = reader.readInt(); } else {folderId=null;}var peer = reader.tgReadObject();		return new UpdateDialogPinned(pinned : pinned, folderId : folderId, peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1852826908,4),[0,0,0,0],(this.folderId==null||this.folderId==false)?new List<int>.empty():[readBufferFromBigInt(this.folderId,4,little:true,signed:true)].expand((element) => element).toList(),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdatePinnedDialogs {
    static const CONSTRUCTOR_ID = 4195302562;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 4195302562;
	int folderId;
	List<dynamic> order;


	UpdatePinnedDialogs({required this.folderId, required this.order});

	static UpdatePinnedDialogs fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var folderId;if ((flags & 2)==1){folderId = reader.readInt(); } else {folderId=null;}var order;if ((flags & 1)==1){reader.readInt();
List<dynamic> order = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		order.add(reader.tgReadObject());
} } else {order=null;}		return new UpdatePinnedDialogs(folderId : folderId, order : order);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4195302562,4),[0,0,0,0],(this.folderId==null||this.folderId==false)?new List<int>.empty():[readBufferFromBigInt(this.folderId,4,little:true,signed:true)].expand((element) => element).toList(),(this.order==null||this.order==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.order.length,4,little:true,signed:true),this.order.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class UpdateBotWebhookJSON {
    static const CONSTRUCTOR_ID = 2199371971;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2199371971;
	var data;


	UpdateBotWebhookJSON({required this.data});

	static UpdateBotWebhookJSON fromReader(BinaryReader reader) {
	var temp,len;var data = reader.tgReadObject();		return new UpdateBotWebhookJSON(data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2199371971,4),(this.data.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateBotWebhookJSONQuery {
    static const CONSTRUCTOR_ID = 2610053286;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2610053286;
	BigInt queryId;
	var data;
	int timeout;


	UpdateBotWebhookJSONQuery({required this.queryId, required this.data, required this.timeout});

	static UpdateBotWebhookJSONQuery fromReader(BinaryReader reader) {
	var temp,len;var queryId = reader.readLong();var data = reader.tgReadObject();var timeout = reader.readInt();		return new UpdateBotWebhookJSONQuery(queryId : queryId, data : data, timeout : timeout);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2610053286,4),readBufferFromBigInt(this.queryId,8,little:true,signed:true),(this.data.getBytes() as List<int>),readBufferFromBigInt(this.timeout,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateBotShippingQuery {
    static const CONSTRUCTOR_ID = 3048144253;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3048144253;
	BigInt queryId;
	BigInt userId;
	List<int> payload;
	var shippingAddress;


	UpdateBotShippingQuery({required this.queryId, required this.userId, required this.payload, required this.shippingAddress});

	static UpdateBotShippingQuery fromReader(BinaryReader reader) {
	var temp,len;var queryId = reader.readLong();var userId = reader.readLong();var payload = reader.tgReadBytes();var shippingAddress = reader.tgReadObject();		return new UpdateBotShippingQuery(queryId : queryId, userId : userId, payload : payload, shippingAddress : shippingAddress);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3048144253,4),readBufferFromBigInt(this.queryId,8,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),serializeBytes(this.payload),(this.shippingAddress.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateBotPrecheckoutQuery {
    static const CONSTRUCTOR_ID = 2359990934;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2359990934;
	BigInt queryId;
	BigInt userId;
	List<int> payload;
	var info;
	String shippingOptionId;
	String currency;
	BigInt totalAmount;


	UpdateBotPrecheckoutQuery({required this.queryId, required this.userId, required this.payload, required this.info, required this.shippingOptionId, required this.currency, required this.totalAmount});

	static UpdateBotPrecheckoutQuery fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var queryId = reader.readLong();var userId = reader.readLong();var payload = reader.tgReadBytes();var info;if ((flags & 1)==1){info = reader.tgReadObject(); } else {info=null;}var shippingOptionId;if ((flags & 2)==1){shippingOptionId = reader.tgReadString(); } else {shippingOptionId=null;}var currency = reader.tgReadString();var totalAmount = reader.readLong();		return new UpdateBotPrecheckoutQuery(queryId : queryId, userId : userId, payload : payload, info : info, shippingOptionId : shippingOptionId, currency : currency, totalAmount : totalAmount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2359990934,4),[0,0,0,0],readBufferFromBigInt(this.queryId,8,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),serializeBytes(this.payload),(this.info==null||this.info==false)?new List<int>.empty():[(this.info.getBytes() as List<int>)].expand((element) => element).toList(),(this.shippingOptionId==null||this.shippingOptionId==false)?new List<int>.empty():[serializeBytes(this.shippingOptionId)].expand((element) => element).toList(),serializeBytes(this.currency),readBufferFromBigInt(this.totalAmount,8,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdatePhoneCall {
    static const CONSTRUCTOR_ID = 2869914398;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2869914398;
	var phoneCall;


	UpdatePhoneCall({required this.phoneCall});

	static UpdatePhoneCall fromReader(BinaryReader reader) {
	var temp,len;var phoneCall = reader.tgReadObject();		return new UpdatePhoneCall(phoneCall : phoneCall);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2869914398,4),(this.phoneCall.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateLangPackTooLong {
    static const CONSTRUCTOR_ID = 1180041828;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1180041828;
	String langCode;


	UpdateLangPackTooLong({required this.langCode});

	static UpdateLangPackTooLong fromReader(BinaryReader reader) {
	var temp,len;var langCode = reader.tgReadString();		return new UpdateLangPackTooLong(langCode : langCode);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1180041828,4),serializeBytes(this.langCode),].expand((element) => element).toList();}

}

class UpdateLangPack {
    static const CONSTRUCTOR_ID = 1442983757;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1442983757;
	var difference;


	UpdateLangPack({required this.difference});

	static UpdateLangPack fromReader(BinaryReader reader) {
	var temp,len;var difference = reader.tgReadObject();		return new UpdateLangPack(difference : difference);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1442983757,4),(this.difference.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateFavedStickers {
    static const CONSTRUCTOR_ID = 3843135853;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3843135853;


	UpdateFavedStickers();

	static UpdateFavedStickers fromReader(BinaryReader reader) {
	var temp,len;		return new UpdateFavedStickers();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3843135853,4),].expand((element) => element).toList();}

}

class UpdateChannelReadMessagesContents {
    static const CONSTRUCTOR_ID = 1153291573;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1153291573;
	BigInt channelId;
	List<int> messages;


	UpdateChannelReadMessagesContents({required this.channelId, required this.messages});

	static UpdateChannelReadMessagesContents fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();reader.readInt();
List<int> messages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		messages.add(reader.readInt());
}		return new UpdateChannelReadMessagesContents(channelId : channelId, messages : messages);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1153291573,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.messages.length,4,little:true,signed:true),this.messages.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class UpdateContactsReset {
    static const CONSTRUCTOR_ID = 1887741886;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1887741886;


	UpdateContactsReset();

	static UpdateContactsReset fromReader(BinaryReader reader) {
	var temp,len;		return new UpdateContactsReset();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1887741886,4),].expand((element) => element).toList();}

}

class UpdateChannelAvailableMessages {
    static const CONSTRUCTOR_ID = 2990524056;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2990524056;
	BigInt channelId;
	int availableMinId;


	UpdateChannelAvailableMessages({required this.channelId, required this.availableMinId});

	static UpdateChannelAvailableMessages fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();var availableMinId = reader.readInt();		return new UpdateChannelAvailableMessages(channelId : channelId, availableMinId : availableMinId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2990524056,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(this.availableMinId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateDialogUnreadMark {
    static const CONSTRUCTOR_ID = 3781450179;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3781450179;
	bool unread;
	var peer;


	UpdateDialogUnreadMark({required this.unread, required this.peer});

	static UpdateDialogUnreadMark fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final unread = false;var peer = reader.tgReadObject();		return new UpdateDialogUnreadMark(unread : unread, peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3781450179,4),[0,0,0,0],(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateMessagePoll {
    static const CONSTRUCTOR_ID = 2896258427;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2896258427;
	BigInt pollId;
	var poll;
	var results;


	UpdateMessagePoll({required this.pollId, required this.poll, required this.results});

	static UpdateMessagePoll fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var pollId = reader.readLong();var poll;if ((flags & 1)==1){poll = reader.tgReadObject(); } else {poll=null;}var results = reader.tgReadObject();		return new UpdateMessagePoll(pollId : pollId, poll : poll, results : results);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2896258427,4),[0,0,0,0],readBufferFromBigInt(this.pollId,8,little:true,signed:true),(this.poll==null||this.poll==false)?new List<int>.empty():[(this.poll.getBytes() as List<int>)].expand((element) => element).toList(),(this.results.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateChatDefaultBannedRights {
    static const CONSTRUCTOR_ID = 1421875280;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1421875280;
	var peer;
	var defaultBannedRights;
	int version;


	UpdateChatDefaultBannedRights({required this.peer, required this.defaultBannedRights, required this.version});

	static UpdateChatDefaultBannedRights fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var defaultBannedRights = reader.tgReadObject();var version = reader.readInt();		return new UpdateChatDefaultBannedRights(peer : peer, defaultBannedRights : defaultBannedRights, version : version);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1421875280,4),(this.peer.getBytes() as List<int>),(this.defaultBannedRights.getBytes() as List<int>),readBufferFromBigInt(this.version,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateFolderPeers {
    static const CONSTRUCTOR_ID = 422972864;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 422972864;
	List<dynamic> folderPeers;
	int pts;
	int ptsCount;


	UpdateFolderPeers({required this.folderPeers, required this.pts, required this.ptsCount});

	static UpdateFolderPeers fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> folderPeers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		folderPeers.add(reader.tgReadObject());
}var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdateFolderPeers(folderPeers : folderPeers, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(422972864,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.folderPeers.length,4,little:true,signed:true),this.folderPeers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdatePeerSettings {
    static const CONSTRUCTOR_ID = 1786671974;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1786671974;
	var peer;
	var settings;


	UpdatePeerSettings({required this.peer, required this.settings});

	static UpdatePeerSettings fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var settings = reader.tgReadObject();		return new UpdatePeerSettings(peer : peer, settings : settings);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1786671974,4),(this.peer.getBytes() as List<int>),(this.settings.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdatePeerLocated {
    static const CONSTRUCTOR_ID = 3031420848;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3031420848;
	List<dynamic> peers;


	UpdatePeerLocated({required this.peers});

	static UpdatePeerLocated fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> peers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		peers.add(reader.tgReadObject());
}		return new UpdatePeerLocated(peers : peers);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3031420848,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.peers.length,4,little:true,signed:true),this.peers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class UpdateNewScheduledMessage {
    static const CONSTRUCTOR_ID = 967122427;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 967122427;
	var message;


	UpdateNewScheduledMessage({required this.message});

	static UpdateNewScheduledMessage fromReader(BinaryReader reader) {
	var temp,len;var message = reader.tgReadObject();		return new UpdateNewScheduledMessage(message : message);
	}
	List<int> getBytes(){return [readBufferFromBigInt(967122427,4),(this.message.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateDeleteScheduledMessages {
    static const CONSTRUCTOR_ID = 2424728814;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2424728814;
	var peer;
	List<int> messages;


	UpdateDeleteScheduledMessages({required this.peer, required this.messages});

	static UpdateDeleteScheduledMessages fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();reader.readInt();
List<int> messages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		messages.add(reader.readInt());
}		return new UpdateDeleteScheduledMessages(peer : peer, messages : messages);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2424728814,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.messages.length,4,little:true,signed:true),this.messages.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class UpdateTheme {
    static const CONSTRUCTOR_ID = 2182544291;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2182544291;
	var theme;


	UpdateTheme({required this.theme});

	static UpdateTheme fromReader(BinaryReader reader) {
	var temp,len;var theme = reader.tgReadObject();		return new UpdateTheme(theme : theme);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2182544291,4),(this.theme.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateGeoLiveViewed {
    static const CONSTRUCTOR_ID = 2267003193;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2267003193;
	var peer;
	int msgId;


	UpdateGeoLiveViewed({required this.peer, required this.msgId});

	static UpdateGeoLiveViewed fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();		return new UpdateGeoLiveViewed(peer : peer, msgId : msgId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2267003193,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateLoginToken {
    static const CONSTRUCTOR_ID = 1448076945;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1448076945;


	UpdateLoginToken();

	static UpdateLoginToken fromReader(BinaryReader reader) {
	var temp,len;		return new UpdateLoginToken();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1448076945,4),].expand((element) => element).toList();}

}

class UpdateMessagePollVote {
    static const CONSTRUCTOR_ID = 274961865;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 274961865;
	BigInt pollId;
	BigInt userId;
	List<List<int>> options;
	int qts;


	UpdateMessagePollVote({required this.pollId, required this.userId, required this.options, required this.qts});

	static UpdateMessagePollVote fromReader(BinaryReader reader) {
	var temp,len;var pollId = reader.readLong();var userId = reader.readLong();reader.readInt();
List<List<int>> options = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		options.add(reader.tgReadBytes());
}var qts = reader.readInt();		return new UpdateMessagePollVote(pollId : pollId, userId : userId, options : options, qts : qts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(274961865,4),readBufferFromBigInt(this.pollId,8,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.options.length,4,little:true,signed:true),this.options.map((x)=>serializeBytes(x)).expand((element) => element),readBufferFromBigInt(this.qts,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateDialogFilter {
    static const CONSTRUCTOR_ID = 654302845;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 654302845;
	int id;
	var filter;


	UpdateDialogFilter({required this.id, required this.filter});

	static UpdateDialogFilter fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var id = reader.readInt();var filter;if ((flags & 1)==1){filter = reader.tgReadObject(); } else {filter=null;}		return new UpdateDialogFilter(id : id, filter : filter);
	}
	List<int> getBytes(){return [readBufferFromBigInt(654302845,4),[0,0,0,0],readBufferFromBigInt(this.id,4,little:true,signed:true),(this.filter==null||this.filter==false)?new List<int>.empty():[(this.filter.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class UpdateDialogFilterOrder {
    static const CONSTRUCTOR_ID = 2782339333;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2782339333;
	List<int> order;


	UpdateDialogFilterOrder({required this.order});

	static UpdateDialogFilterOrder fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<int> order = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		order.add(reader.readInt());
}		return new UpdateDialogFilterOrder(order : order);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2782339333,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.order.length,4,little:true,signed:true),this.order.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class UpdateDialogFilters {
    static const CONSTRUCTOR_ID = 889491791;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 889491791;


	UpdateDialogFilters();

	static UpdateDialogFilters fromReader(BinaryReader reader) {
	var temp,len;		return new UpdateDialogFilters();
	}
	List<int> getBytes(){return [readBufferFromBigInt(889491791,4),].expand((element) => element).toList();}

}

class UpdatePhoneCallSignalingData {
    static const CONSTRUCTOR_ID = 643940105;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 643940105;
	BigInt phoneCallId;
	List<int> data;


	UpdatePhoneCallSignalingData({required this.phoneCallId, required this.data});

	static UpdatePhoneCallSignalingData fromReader(BinaryReader reader) {
	var temp,len;var phoneCallId = reader.readLong();var data = reader.tgReadBytes();		return new UpdatePhoneCallSignalingData(phoneCallId : phoneCallId, data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(643940105,4),readBufferFromBigInt(this.phoneCallId,8,little:true,signed:true),serializeBytes(this.data),].expand((element) => element).toList();}

}

class UpdateChannelMessageForwards {
    static const CONSTRUCTOR_ID = 3533318132;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3533318132;
	BigInt channelId;
	int id;
	int forwards;


	UpdateChannelMessageForwards({required this.channelId, required this.id, required this.forwards});

	static UpdateChannelMessageForwards fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();var id = reader.readInt();var forwards = reader.readInt();		return new UpdateChannelMessageForwards(channelId : channelId, id : id, forwards : forwards);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3533318132,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(this.id,4,little:true,signed:true),readBufferFromBigInt(this.forwards,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateReadChannelDiscussionInbox {
    static const CONSTRUCTOR_ID = 3601962310;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3601962310;
	BigInt channelId;
	int topMsgId;
	int readMaxId;
	BigInt broadcastId;
	int broadcastPost;


	UpdateReadChannelDiscussionInbox({required this.channelId, required this.topMsgId, required this.readMaxId, required this.broadcastId, required this.broadcastPost});

	static UpdateReadChannelDiscussionInbox fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var channelId = reader.readLong();var topMsgId = reader.readInt();var readMaxId = reader.readInt();var broadcastId;if ((flags & 1)==1){broadcastId = reader.readLong(); } else {broadcastId=null;}var broadcastPost;if ((flags & 1)==1){broadcastPost = reader.readInt(); } else {broadcastPost=null;}		return new UpdateReadChannelDiscussionInbox(channelId : channelId, topMsgId : topMsgId, readMaxId : readMaxId, broadcastId : broadcastId, broadcastPost : broadcastPost);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3601962310,4),[0,0,0,0],readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(this.topMsgId,4,little:true,signed:true),readBufferFromBigInt(this.readMaxId,4,little:true,signed:true),(this.broadcastId==null||this.broadcastId==false)?new List<int>.empty():[readBufferFromBigInt(this.broadcastId,8,little:true,signed:true)].expand((element) => element).toList(),(this.broadcastPost==null||this.broadcastPost==false)?new List<int>.empty():[readBufferFromBigInt(this.broadcastPost,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class UpdateReadChannelDiscussionOutbox {
    static const CONSTRUCTOR_ID = 1767677564;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1767677564;
	BigInt channelId;
	int topMsgId;
	int readMaxId;


	UpdateReadChannelDiscussionOutbox({required this.channelId, required this.topMsgId, required this.readMaxId});

	static UpdateReadChannelDiscussionOutbox fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();var topMsgId = reader.readInt();var readMaxId = reader.readInt();		return new UpdateReadChannelDiscussionOutbox(channelId : channelId, topMsgId : topMsgId, readMaxId : readMaxId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1767677564,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(this.topMsgId,4,little:true,signed:true),readBufferFromBigInt(this.readMaxId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdatePeerBlocked {
    static const CONSTRUCTOR_ID = 610945826;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 610945826;
	var peerId;
	bool blocked;


	UpdatePeerBlocked({required this.peerId, required this.blocked});

	static UpdatePeerBlocked fromReader(BinaryReader reader) {
	var temp,len;var peerId = reader.tgReadObject();var blocked = reader.tgReadBool();		return new UpdatePeerBlocked(peerId : peerId, blocked : blocked);
	}
	List<int> getBytes(){return [readBufferFromBigInt(610945826,4),(this.peerId.getBytes() as List<int>),[this.blocked ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}

}

class UpdateChannelUserTyping {
    static const CONSTRUCTOR_ID = 2357774627;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2357774627;
	BigInt channelId;
	int topMsgId;
	var fromId;
	var action;


	UpdateChannelUserTyping({required this.channelId, required this.topMsgId, required this.fromId, required this.action});

	static UpdateChannelUserTyping fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var channelId = reader.readLong();var topMsgId;if ((flags & 1)==1){topMsgId = reader.readInt(); } else {topMsgId=null;}var fromId = reader.tgReadObject();var action = reader.tgReadObject();		return new UpdateChannelUserTyping(channelId : channelId, topMsgId : topMsgId, fromId : fromId, action : action);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2357774627,4),[0,0,0,0],readBufferFromBigInt(this.channelId,8,little:true,signed:true),(this.topMsgId==null||this.topMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.topMsgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.fromId.getBytes() as List<int>),(this.action.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdatePinnedMessages {
    static const CONSTRUCTOR_ID = 3984976565;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3984976565;
	bool pinned;
	var peer;
	List<int> messages;
	int pts;
	int ptsCount;


	UpdatePinnedMessages({required this.pinned, required this.peer, required this.messages, required this.pts, required this.ptsCount});

	static UpdatePinnedMessages fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final pinned = false;var peer = reader.tgReadObject();reader.readInt();
List<int> messages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		messages.add(reader.readInt());
}var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdatePinnedMessages(pinned : pinned, peer : peer, messages : messages, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3984976565,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.messages.length,4,little:true,signed:true),this.messages.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdatePinnedChannelMessages {
    static const CONSTRUCTOR_ID = 1538885128;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1538885128;
	bool pinned;
	BigInt channelId;
	List<int> messages;
	int pts;
	int ptsCount;


	UpdatePinnedChannelMessages({required this.pinned, required this.channelId, required this.messages, required this.pts, required this.ptsCount});

	static UpdatePinnedChannelMessages fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final pinned = false;var channelId = reader.readLong();reader.readInt();
List<int> messages = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		messages.add(reader.readInt());
}var pts = reader.readInt();var ptsCount = reader.readInt();		return new UpdatePinnedChannelMessages(pinned : pinned, channelId : channelId, messages : messages, pts : pts, ptsCount : ptsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1538885128,4),[0,0,0,0],readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.messages.length,4,little:true,signed:true),this.messages.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateChat {
    static const CONSTRUCTOR_ID = 4170869326;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 4170869326;
	BigInt chatId;


	UpdateChat({required this.chatId});

	static UpdateChat fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();		return new UpdateChat(chatId : chatId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4170869326,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateGroupCallParticipants {
    static const CONSTRUCTOR_ID = 4075543374;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 4075543374;
	var call;
	List<dynamic> participants;
	int version;


	UpdateGroupCallParticipants({required this.call, required this.participants, required this.version});

	static UpdateGroupCallParticipants fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();reader.readInt();
List<dynamic> participants = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		participants.add(reader.tgReadObject());
}var version = reader.readInt();		return new UpdateGroupCallParticipants(call : call, participants : participants, version : version);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4075543374,4),(this.call.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.participants.length,4,little:true,signed:true),this.participants.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(this.version,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateGroupCall {
    static const CONSTRUCTOR_ID = 347227392;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 347227392;
	BigInt chatId;
	var call;


	UpdateGroupCall({required this.chatId, required this.call});

	static UpdateGroupCall fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readLong();var call = reader.tgReadObject();		return new UpdateGroupCall(chatId : chatId, call : call);
	}
	List<int> getBytes(){return [readBufferFromBigInt(347227392,4),readBufferFromBigInt(this.chatId,8,little:true,signed:true),(this.call.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdatePeerHistoryTTL {
    static const CONSTRUCTOR_ID = 3147544997;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3147544997;
	var peer;
	int ttlPeriod;


	UpdatePeerHistoryTTL({required this.peer, required this.ttlPeriod});

	static UpdatePeerHistoryTTL fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var peer = reader.tgReadObject();var ttlPeriod;if ((flags & 1)==1){ttlPeriod = reader.readInt(); } else {ttlPeriod=null;}		return new UpdatePeerHistoryTTL(peer : peer, ttlPeriod : ttlPeriod);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3147544997,4),[0,0,0,0],(this.peer.getBytes() as List<int>),(this.ttlPeriod==null||this.ttlPeriod==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlPeriod,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class UpdateChatParticipant {
    static const CONSTRUCTOR_ID = 3498534458;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3498534458;
	BigInt chatId;
	int date;
	BigInt actorId;
	BigInt userId;
	var prevParticipant;
	var newParticipant;
	var invite;
	int qts;


	UpdateChatParticipant({required this.chatId, required this.date, required this.actorId, required this.userId, required this.prevParticipant, required this.newParticipant, required this.invite, required this.qts});

	static UpdateChatParticipant fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var chatId = reader.readLong();var date = reader.readInt();var actorId = reader.readLong();var userId = reader.readLong();var prevParticipant;if ((flags & 1)==1){prevParticipant = reader.tgReadObject(); } else {prevParticipant=null;}var newParticipant;if ((flags & 2)==1){newParticipant = reader.tgReadObject(); } else {newParticipant=null;}var invite;if ((flags & 4)==1){invite = reader.tgReadObject(); } else {invite=null;}var qts = reader.readInt();		return new UpdateChatParticipant(chatId : chatId, date : date, actorId : actorId, userId : userId, prevParticipant : prevParticipant, newParticipant : newParticipant, invite : invite, qts : qts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3498534458,4),[0,0,0,0],readBufferFromBigInt(this.chatId,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.actorId,8,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),(this.prevParticipant==null||this.prevParticipant==false)?new List<int>.empty():[(this.prevParticipant.getBytes() as List<int>)].expand((element) => element).toList(),(this.newParticipant==null||this.newParticipant==false)?new List<int>.empty():[(this.newParticipant.getBytes() as List<int>)].expand((element) => element).toList(),(this.invite==null||this.invite==false)?new List<int>.empty():[(this.invite.getBytes() as List<int>)].expand((element) => element).toList(),readBufferFromBigInt(this.qts,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateChannelParticipant {
    static const CONSTRUCTOR_ID = 2556246715;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 2556246715;
	BigInt channelId;
	int date;
	BigInt actorId;
	BigInt userId;
	var prevParticipant;
	var newParticipant;
	var invite;
	int qts;


	UpdateChannelParticipant({required this.channelId, required this.date, required this.actorId, required this.userId, required this.prevParticipant, required this.newParticipant, required this.invite, required this.qts});

	static UpdateChannelParticipant fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var channelId = reader.readLong();var date = reader.readInt();var actorId = reader.readLong();var userId = reader.readLong();var prevParticipant;if ((flags & 1)==1){prevParticipant = reader.tgReadObject(); } else {prevParticipant=null;}var newParticipant;if ((flags & 2)==1){newParticipant = reader.tgReadObject(); } else {newParticipant=null;}var invite;if ((flags & 4)==1){invite = reader.tgReadObject(); } else {invite=null;}var qts = reader.readInt();		return new UpdateChannelParticipant(channelId : channelId, date : date, actorId : actorId, userId : userId, prevParticipant : prevParticipant, newParticipant : newParticipant, invite : invite, qts : qts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2556246715,4),[0,0,0,0],readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.actorId,8,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),(this.prevParticipant==null||this.prevParticipant==false)?new List<int>.empty():[(this.prevParticipant.getBytes() as List<int>)].expand((element) => element).toList(),(this.newParticipant==null||this.newParticipant==false)?new List<int>.empty():[(this.newParticipant.getBytes() as List<int>)].expand((element) => element).toList(),(this.invite==null||this.invite==false)?new List<int>.empty():[(this.invite.getBytes() as List<int>)].expand((element) => element).toList(),readBufferFromBigInt(this.qts,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateBotStopped {
    static const CONSTRUCTOR_ID = 3297184329;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 3297184329;
	BigInt userId;
	int date;
	bool stopped;
	int qts;


	UpdateBotStopped({required this.userId, required this.date, required this.stopped, required this.qts});

	static UpdateBotStopped fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var date = reader.readInt();var stopped = reader.tgReadBool();var qts = reader.readInt();		return new UpdateBotStopped(userId : userId, date : date, stopped : stopped, qts : qts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3297184329,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),[this.stopped ? 0xb5757299 : 0x379779bc],readBufferFromBigInt(this.qts,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateGroupCallConnection {
    static const CONSTRUCTOR_ID = 192428418;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 192428418;
	bool presentation;
	var params;


	UpdateGroupCallConnection({required this.presentation, required this.params});

	static UpdateGroupCallConnection fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final presentation = false;var params = reader.tgReadObject();		return new UpdateGroupCallConnection(presentation : presentation, params : params);
	}
	List<int> getBytes(){return [readBufferFromBigInt(192428418,4),[0,0,0,0],(this.params.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateBotCommands {
    static const CONSTRUCTOR_ID = 1299263278;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1299263278;
	var peer;
	BigInt botId;
	List<dynamic> commands;


	UpdateBotCommands({required this.peer, required this.botId, required this.commands});

	static UpdateBotCommands fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var botId = reader.readLong();reader.readInt();
List<dynamic> commands = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		commands.add(reader.tgReadObject());
}		return new UpdateBotCommands(peer : peer, botId : botId, commands : commands);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1299263278,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.botId,8,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.commands.length,4,little:true,signed:true),this.commands.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class UpdatePendingJoinRequests {
    static const CONSTRUCTOR_ID = 1885586395;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1885586395;
	var peer;
	int requestsPending;
	List<BigInt> recentRequesters;


	UpdatePendingJoinRequests({required this.peer, required this.requestsPending, required this.recentRequesters});

	static UpdatePendingJoinRequests fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var requestsPending = reader.readInt();reader.readInt();
List<BigInt> recentRequesters = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		recentRequesters.add(reader.readLong());
}		return new UpdatePendingJoinRequests(peer : peer, requestsPending : requestsPending, recentRequesters : recentRequesters);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1885586395,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.requestsPending,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.recentRequesters.length,4,little:true,signed:true),this.recentRequesters.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class UpdateBotChatInviteRequester {
    static const CONSTRUCTOR_ID = 299870598;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 299870598;
	var peer;
	int date;
	BigInt userId;
	String about;
	var invite;
	int qts;


	UpdateBotChatInviteRequester({required this.peer, required this.date, required this.userId, required this.about, required this.invite, required this.qts});

	static UpdateBotChatInviteRequester fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var date = reader.readInt();var userId = reader.readLong();var about = reader.tgReadString();var invite = reader.tgReadObject();var qts = reader.readInt();		return new UpdateBotChatInviteRequester(peer : peer, date : date, userId : userId, about : about, invite : invite, qts : qts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(299870598,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),serializeBytes(this.about),(this.invite.getBytes() as List<int>),readBufferFromBigInt(this.qts,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateMessageReactions {
    static const CONSTRUCTOR_ID = 357013699;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 357013699;
	var peer;
	int msgId;
	var reactions;


	UpdateMessageReactions({required this.peer, required this.msgId, required this.reactions});

	static UpdateMessageReactions fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();var reactions = reader.tgReadObject();		return new UpdateMessageReactions(peer : peer, msgId : msgId, reactions : reactions);
	}
	List<int> getBytes(){return [readBufferFromBigInt(357013699,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),(this.reactions.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateAttachMenuBots {
    static const CONSTRUCTOR_ID = 397910539;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 397910539;


	UpdateAttachMenuBots();

	static UpdateAttachMenuBots fromReader(BinaryReader reader) {
	var temp,len;		return new UpdateAttachMenuBots();
	}
	List<int> getBytes(){return [readBufferFromBigInt(397910539,4),].expand((element) => element).toList();}

}

class UpdateWebViewResultSent {
    static const CONSTRUCTOR_ID = 361936797;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 361936797;
	BigInt queryId;


	UpdateWebViewResultSent({required this.queryId});

	static UpdateWebViewResultSent fromReader(BinaryReader reader) {
	var temp,len;var queryId = reader.readLong();		return new UpdateWebViewResultSent(queryId : queryId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(361936797,4),readBufferFromBigInt(this.queryId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateBotMenuButton {
    static const CONSTRUCTOR_ID = 347625491;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 347625491;
	BigInt botId;
	var button;


	UpdateBotMenuButton({required this.botId, required this.button});

	static UpdateBotMenuButton fromReader(BinaryReader reader) {
	var temp,len;var botId = reader.readLong();var button = reader.tgReadObject();		return new UpdateBotMenuButton(botId : botId, button : button);
	}
	List<int> getBytes(){return [readBufferFromBigInt(347625491,4),readBufferFromBigInt(this.botId,8,little:true,signed:true),(this.button.getBytes() as List<int>),].expand((element) => element).toList();}

}

class UpdateSavedRingtones {
    static const CONSTRUCTOR_ID = 1960361625;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 1960361625;


	UpdateSavedRingtones();

	static UpdateSavedRingtones fromReader(BinaryReader reader) {
	var temp,len;		return new UpdateSavedRingtones();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1960361625,4),].expand((element) => element).toList();}

}

class UpdateTranscribedAudio {
    static const CONSTRUCTOR_ID = 8703322;
    static const SUBCLASS_OF_ID = 2676568142;
    final classType = "constructor";
    final ID = 8703322;
	bool pending;
	var peer;
	int msgId;
	BigInt transcriptionId;
	String text;


	UpdateTranscribedAudio({required this.pending, required this.peer, required this.msgId, required this.transcriptionId, required this.text});

	static UpdateTranscribedAudio fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final pending = false;var peer = reader.tgReadObject();var msgId = reader.readInt();var transcriptionId = reader.readLong();var text = reader.tgReadString();		return new UpdateTranscribedAudio(pending : pending, peer : peer, msgId : msgId, transcriptionId : transcriptionId, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(8703322,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),readBufferFromBigInt(this.transcriptionId,8,little:true,signed:true),serializeBytes(this.text),].expand((element) => element).toList();}

}

class UpdatesTooLong {
    static const CONSTRUCTOR_ID = 3809980286;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "constructor";
    final ID = 3809980286;


	UpdatesTooLong();

	static UpdatesTooLong fromReader(BinaryReader reader) {
	var temp,len;		return new UpdatesTooLong();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3809980286,4),].expand((element) => element).toList();}

}

class UpdateShortMessage {
    static const CONSTRUCTOR_ID = 826001400;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "constructor";
    final ID = 826001400;
	bool out;
	bool mentioned;
	bool mediaUnread;
	bool silent;
	int id;
	BigInt userId;
	String message;
	int pts;
	int ptsCount;
	int date;
	var fwdFrom;
	BigInt viaBotId;
	var replyTo;
	List<dynamic> entities;
	int ttlPeriod;


	UpdateShortMessage({required this.out, required this.mentioned, required this.mediaUnread, required this.silent, required this.id, required this.userId, required this.message, required this.pts, required this.ptsCount, required this.date, required this.fwdFrom, required this.viaBotId, required this.replyTo, required this.entities, required this.ttlPeriod});

	static UpdateShortMessage fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final out = false;final mentioned = false;final mediaUnread = false;final silent = false;var id = reader.readInt();var userId = reader.readLong();var message = reader.tgReadString();var pts = reader.readInt();var ptsCount = reader.readInt();var date = reader.readInt();var fwdFrom;if ((flags & 4)==1){fwdFrom = reader.tgReadObject(); } else {fwdFrom=null;}var viaBotId;if ((flags & 2048)==1){viaBotId = reader.readLong(); } else {viaBotId=null;}var replyTo;if ((flags & 8)==1){replyTo = reader.tgReadObject(); } else {replyTo=null;}var entities;if ((flags & 128)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}var ttlPeriod;if ((flags & 33554432)==1){ttlPeriod = reader.readInt(); } else {ttlPeriod=null;}		return new UpdateShortMessage(out : out, mentioned : mentioned, mediaUnread : mediaUnread, silent : silent, id : id, userId : userId, message : message, pts : pts, ptsCount : ptsCount, date : date, fwdFrom : fwdFrom, viaBotId : viaBotId, replyTo : replyTo, entities : entities, ttlPeriod : ttlPeriod);
	}
	List<int> getBytes(){return [readBufferFromBigInt(826001400,4),[0,0,0,0],readBufferFromBigInt(this.id,4,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),serializeBytes(this.message),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),(this.fwdFrom==null||this.fwdFrom==false)?new List<int>.empty():[(this.fwdFrom.getBytes() as List<int>)].expand((element) => element).toList(),(this.viaBotId==null||this.viaBotId==false)?new List<int>.empty():[readBufferFromBigInt(this.viaBotId,8,little:true,signed:true)].expand((element) => element).toList(),(this.replyTo==null||this.replyTo==false)?new List<int>.empty():[(this.replyTo.getBytes() as List<int>)].expand((element) => element).toList(),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.ttlPeriod==null||this.ttlPeriod==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlPeriod,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class UpdateShortChatMessage {
    static const CONSTRUCTOR_ID = 1299050149;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "constructor";
    final ID = 1299050149;
	bool out;
	bool mentioned;
	bool mediaUnread;
	bool silent;
	int id;
	BigInt fromId;
	BigInt chatId;
	String message;
	int pts;
	int ptsCount;
	int date;
	var fwdFrom;
	BigInt viaBotId;
	var replyTo;
	List<dynamic> entities;
	int ttlPeriod;


	UpdateShortChatMessage({required this.out, required this.mentioned, required this.mediaUnread, required this.silent, required this.id, required this.fromId, required this.chatId, required this.message, required this.pts, required this.ptsCount, required this.date, required this.fwdFrom, required this.viaBotId, required this.replyTo, required this.entities, required this.ttlPeriod});

	static UpdateShortChatMessage fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final out = false;final mentioned = false;final mediaUnread = false;final silent = false;var id = reader.readInt();var fromId = reader.readLong();var chatId = reader.readLong();var message = reader.tgReadString();var pts = reader.readInt();var ptsCount = reader.readInt();var date = reader.readInt();var fwdFrom;if ((flags & 4)==1){fwdFrom = reader.tgReadObject(); } else {fwdFrom=null;}var viaBotId;if ((flags & 2048)==1){viaBotId = reader.readLong(); } else {viaBotId=null;}var replyTo;if ((flags & 8)==1){replyTo = reader.tgReadObject(); } else {replyTo=null;}var entities;if ((flags & 128)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}var ttlPeriod;if ((flags & 33554432)==1){ttlPeriod = reader.readInt(); } else {ttlPeriod=null;}		return new UpdateShortChatMessage(out : out, mentioned : mentioned, mediaUnread : mediaUnread, silent : silent, id : id, fromId : fromId, chatId : chatId, message : message, pts : pts, ptsCount : ptsCount, date : date, fwdFrom : fwdFrom, viaBotId : viaBotId, replyTo : replyTo, entities : entities, ttlPeriod : ttlPeriod);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1299050149,4),[0,0,0,0],readBufferFromBigInt(this.id,4,little:true,signed:true),readBufferFromBigInt(this.fromId,8,little:true,signed:true),readBufferFromBigInt(this.chatId,8,little:true,signed:true),serializeBytes(this.message),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),(this.fwdFrom==null||this.fwdFrom==false)?new List<int>.empty():[(this.fwdFrom.getBytes() as List<int>)].expand((element) => element).toList(),(this.viaBotId==null||this.viaBotId==false)?new List<int>.empty():[readBufferFromBigInt(this.viaBotId,8,little:true,signed:true)].expand((element) => element).toList(),(this.replyTo==null||this.replyTo==false)?new List<int>.empty():[(this.replyTo.getBytes() as List<int>)].expand((element) => element).toList(),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.ttlPeriod==null||this.ttlPeriod==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlPeriod,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class UpdateShort {
    static const CONSTRUCTOR_ID = 2027216577;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "constructor";
    final ID = 2027216577;
	var update;
	int date;


	UpdateShort({required this.update, required this.date});

	static UpdateShort fromReader(BinaryReader reader) {
	var temp,len;var update = reader.tgReadObject();var date = reader.readInt();		return new UpdateShort(update : update, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2027216577,4),(this.update.getBytes() as List<int>),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdatesCombined {
    static const CONSTRUCTOR_ID = 1918567619;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "constructor";
    final ID = 1918567619;
	List<dynamic> updates;
	List<dynamic> users;
	List<dynamic> chats;
	int date;
	int seqStart;
	int seq;


	UpdatesCombined({required this.updates, required this.users, required this.chats, required this.date, required this.seqStart, required this.seq});

	static UpdatesCombined fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> updates = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		updates.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}var date = reader.readInt();var seqStart = reader.readInt();var seq = reader.readInt();		return new UpdatesCombined(updates : updates, users : users, chats : chats, date : date, seqStart : seqStart, seq : seq);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1918567619,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.updates.length,4,little:true,signed:true),this.updates.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.seqStart,4,little:true,signed:true),readBufferFromBigInt(this.seq,4,little:true,signed:true),].expand((element) => element).toList();}

}

class Updates {
    static const CONSTRUCTOR_ID = 1957577280;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "constructor";
    final ID = 1957577280;
	List<dynamic> updates;
	List<dynamic> users;
	List<dynamic> chats;
	int date;
	int seq;


	Updates({required this.updates, required this.users, required this.chats, required this.date, required this.seq});

	static Updates fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> updates = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		updates.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}var date = reader.readInt();var seq = reader.readInt();		return new Updates(updates : updates, users : users, chats : chats, date : date, seq : seq);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1957577280,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.updates.length,4,little:true,signed:true),this.updates.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.seq,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UpdateShortSentMessage {
    static const CONSTRUCTOR_ID = 2417352961;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "constructor";
    final ID = 2417352961;
	bool out;
	int id;
	int pts;
	int ptsCount;
	int date;
	var media;
	List<dynamic> entities;
	int ttlPeriod;


	UpdateShortSentMessage({required this.out, required this.id, required this.pts, required this.ptsCount, required this.date, required this.media, required this.entities, required this.ttlPeriod});

	static UpdateShortSentMessage fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final out = false;var id = reader.readInt();var pts = reader.readInt();var ptsCount = reader.readInt();var date = reader.readInt();var media;if ((flags & 512)==1){media = reader.tgReadObject(); } else {media=null;}var entities;if ((flags & 128)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}var ttlPeriod;if ((flags & 33554432)==1){ttlPeriod = reader.readInt(); } else {ttlPeriod=null;}		return new UpdateShortSentMessage(out : out, id : id, pts : pts, ptsCount : ptsCount, date : date, media : media, entities : entities, ttlPeriod : ttlPeriod);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2417352961,4),[0,0,0,0],readBufferFromBigInt(this.id,4,little:true,signed:true),readBufferFromBigInt(this.pts,4,little:true,signed:true),readBufferFromBigInt(this.ptsCount,4,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),(this.media==null||this.media==false)?new List<int>.empty():[(this.media.getBytes() as List<int>)].expand((element) => element).toList(),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.ttlPeriod==null||this.ttlPeriod==false)?new List<int>.empty():[readBufferFromBigInt(this.ttlPeriod,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class DcOption {
    static const CONSTRUCTOR_ID = 414687501;
    static const SUBCLASS_OF_ID = 2655248675;
    final classType = "constructor";
    final ID = 414687501;
	bool ipv6;
	bool mediaOnly;
	bool tcpoOnly;
	bool cdn;
	bool static;
	bool thisPortOnly;
	int id;
	String ipAddress;
	int port;
	List<int> secret;


	DcOption({required this.ipv6, required this.mediaOnly, required this.tcpoOnly, required this.cdn, required this.static, required this.thisPortOnly, required this.id, required this.ipAddress, required this.port, required this.secret});

	static DcOption fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final ipv6 = false;final mediaOnly = false;final tcpoOnly = false;final cdn = false;final static = false;final thisPortOnly = false;var id = reader.readInt();var ipAddress = reader.tgReadString();var port = reader.readInt();var secret;if ((flags & 1024)==1){secret = reader.tgReadBytes(); } else {secret=null;}		return new DcOption(ipv6 : ipv6, mediaOnly : mediaOnly, tcpoOnly : tcpoOnly, cdn : cdn, static : static, thisPortOnly : thisPortOnly, id : id, ipAddress : ipAddress, port : port, secret : secret);
	}
	List<int> getBytes(){return [readBufferFromBigInt(414687501,4),[0,0,0,0],readBufferFromBigInt(this.id,4,little:true,signed:true),serializeBytes(this.ipAddress),readBufferFromBigInt(this.port,4,little:true,signed:true),(this.secret==null||this.secret==false)?new List<int>.empty():[serializeBytes(this.secret)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class Config {
    static const CONSTRUCTOR_ID = 856375399;
    static const SUBCLASS_OF_ID = 3542493770;
    final classType = "constructor";
    final ID = 856375399;
	bool phonecallsEnabled;
	bool defaultP2pContacts;
	bool preloadFeaturedStickers;
	bool ignorePhoneEntities;
	bool revokePmInbox;
	bool blockedMode;
	bool pfsEnabled;
	bool forceTryIpv6;
	int date;
	int expires;
	bool testMode;
	int thisDc;
	List<dynamic> dcOptions;
	String dcTxtDomainName;
	int chatSizeMax;
	int megagroupSizeMax;
	int forwardedCountMax;
	int onlineUpdatePeriodMs;
	int offlineBlurTimeoutMs;
	int offlineIdleTimeoutMs;
	int onlineCloudTimeoutMs;
	int notifyCloudDelayMs;
	int notifyDefaultDelayMs;
	int pushChatPeriodMs;
	int pushChatLimit;
	int savedGifsLimit;
	int editTimeLimit;
	int revokeTimeLimit;
	int revokePmTimeLimit;
	int ratingEDecay;
	int stickersRecentLimit;
	int stickersFavedLimit;
	int channelsReadMediaPeriod;
	int tmpSessions;
	int pinnedDialogsCountMax;
	int pinnedInfolderCountMax;
	int callReceiveTimeoutMs;
	int callRingTimeoutMs;
	int callConnectTimeoutMs;
	int callPacketTimeoutMs;
	String meUrlPrefix;
	String autoupdateUrlPrefix;
	String gifSearchUsername;
	String venueSearchUsername;
	String imgSearchUsername;
	String staticMapsProvider;
	int captionLengthMax;
	int messageLengthMax;
	int webfileDcId;
	String suggestedLangCode;
	int langPackVersion;
	int baseLangPackVersion;


	Config({required this.phonecallsEnabled, required this.defaultP2pContacts, required this.preloadFeaturedStickers, required this.ignorePhoneEntities, required this.revokePmInbox, required this.blockedMode, required this.pfsEnabled, required this.forceTryIpv6, required this.date, required this.expires, required this.testMode, required this.thisDc, required this.dcOptions, required this.dcTxtDomainName, required this.chatSizeMax, required this.megagroupSizeMax, required this.forwardedCountMax, required this.onlineUpdatePeriodMs, required this.offlineBlurTimeoutMs, required this.offlineIdleTimeoutMs, required this.onlineCloudTimeoutMs, required this.notifyCloudDelayMs, required this.notifyDefaultDelayMs, required this.pushChatPeriodMs, required this.pushChatLimit, required this.savedGifsLimit, required this.editTimeLimit, required this.revokeTimeLimit, required this.revokePmTimeLimit, required this.ratingEDecay, required this.stickersRecentLimit, required this.stickersFavedLimit, required this.channelsReadMediaPeriod, required this.tmpSessions, required this.pinnedDialogsCountMax, required this.pinnedInfolderCountMax, required this.callReceiveTimeoutMs, required this.callRingTimeoutMs, required this.callConnectTimeoutMs, required this.callPacketTimeoutMs, required this.meUrlPrefix, required this.autoupdateUrlPrefix, required this.gifSearchUsername, required this.venueSearchUsername, required this.imgSearchUsername, required this.staticMapsProvider, required this.captionLengthMax, required this.messageLengthMax, required this.webfileDcId, required this.suggestedLangCode, required this.langPackVersion, required this.baseLangPackVersion});

	static Config fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final phonecallsEnabled = false;final defaultP2pContacts = false;final preloadFeaturedStickers = false;final ignorePhoneEntities = false;final revokePmInbox = false;final blockedMode = false;final pfsEnabled = false;final forceTryIpv6 = false;var date = reader.readInt();var expires = reader.readInt();var testMode = reader.tgReadBool();var thisDc = reader.readInt();reader.readInt();
List<dynamic> dcOptions = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		dcOptions.add(reader.tgReadObject());
}var dcTxtDomainName = reader.tgReadString();var chatSizeMax = reader.readInt();var megagroupSizeMax = reader.readInt();var forwardedCountMax = reader.readInt();var onlineUpdatePeriodMs = reader.readInt();var offlineBlurTimeoutMs = reader.readInt();var offlineIdleTimeoutMs = reader.readInt();var onlineCloudTimeoutMs = reader.readInt();var notifyCloudDelayMs = reader.readInt();var notifyDefaultDelayMs = reader.readInt();var pushChatPeriodMs = reader.readInt();var pushChatLimit = reader.readInt();var savedGifsLimit = reader.readInt();var editTimeLimit = reader.readInt();var revokeTimeLimit = reader.readInt();var revokePmTimeLimit = reader.readInt();var ratingEDecay = reader.readInt();var stickersRecentLimit = reader.readInt();var stickersFavedLimit = reader.readInt();var channelsReadMediaPeriod = reader.readInt();var tmpSessions;if ((flags & 1)==1){tmpSessions = reader.readInt(); } else {tmpSessions=null;}var pinnedDialogsCountMax = reader.readInt();var pinnedInfolderCountMax = reader.readInt();var callReceiveTimeoutMs = reader.readInt();var callRingTimeoutMs = reader.readInt();var callConnectTimeoutMs = reader.readInt();var callPacketTimeoutMs = reader.readInt();var meUrlPrefix = reader.tgReadString();var autoupdateUrlPrefix;if ((flags & 128)==1){autoupdateUrlPrefix = reader.tgReadString(); } else {autoupdateUrlPrefix=null;}var gifSearchUsername;if ((flags & 512)==1){gifSearchUsername = reader.tgReadString(); } else {gifSearchUsername=null;}var venueSearchUsername;if ((flags & 1024)==1){venueSearchUsername = reader.tgReadString(); } else {venueSearchUsername=null;}var imgSearchUsername;if ((flags & 2048)==1){imgSearchUsername = reader.tgReadString(); } else {imgSearchUsername=null;}var staticMapsProvider;if ((flags & 4096)==1){staticMapsProvider = reader.tgReadString(); } else {staticMapsProvider=null;}var captionLengthMax = reader.readInt();var messageLengthMax = reader.readInt();var webfileDcId = reader.readInt();var suggestedLangCode;if ((flags & 4)==1){suggestedLangCode = reader.tgReadString(); } else {suggestedLangCode=null;}var langPackVersion;if ((flags & 4)==1){langPackVersion = reader.readInt(); } else {langPackVersion=null;}var baseLangPackVersion;if ((flags & 4)==1){baseLangPackVersion = reader.readInt(); } else {baseLangPackVersion=null;}		return new Config(phonecallsEnabled : phonecallsEnabled, defaultP2pContacts : defaultP2pContacts, preloadFeaturedStickers : preloadFeaturedStickers, ignorePhoneEntities : ignorePhoneEntities, revokePmInbox : revokePmInbox, blockedMode : blockedMode, pfsEnabled : pfsEnabled, forceTryIpv6 : forceTryIpv6, date : date, expires : expires, testMode : testMode, thisDc : thisDc, dcOptions : dcOptions, dcTxtDomainName : dcTxtDomainName, chatSizeMax : chatSizeMax, megagroupSizeMax : megagroupSizeMax, forwardedCountMax : forwardedCountMax, onlineUpdatePeriodMs : onlineUpdatePeriodMs, offlineBlurTimeoutMs : offlineBlurTimeoutMs, offlineIdleTimeoutMs : offlineIdleTimeoutMs, onlineCloudTimeoutMs : onlineCloudTimeoutMs, notifyCloudDelayMs : notifyCloudDelayMs, notifyDefaultDelayMs : notifyDefaultDelayMs, pushChatPeriodMs : pushChatPeriodMs, pushChatLimit : pushChatLimit, savedGifsLimit : savedGifsLimit, editTimeLimit : editTimeLimit, revokeTimeLimit : revokeTimeLimit, revokePmTimeLimit : revokePmTimeLimit, ratingEDecay : ratingEDecay, stickersRecentLimit : stickersRecentLimit, stickersFavedLimit : stickersFavedLimit, channelsReadMediaPeriod : channelsReadMediaPeriod, tmpSessions : tmpSessions, pinnedDialogsCountMax : pinnedDialogsCountMax, pinnedInfolderCountMax : pinnedInfolderCountMax, callReceiveTimeoutMs : callReceiveTimeoutMs, callRingTimeoutMs : callRingTimeoutMs, callConnectTimeoutMs : callConnectTimeoutMs, callPacketTimeoutMs : callPacketTimeoutMs, meUrlPrefix : meUrlPrefix, autoupdateUrlPrefix : autoupdateUrlPrefix, gifSearchUsername : gifSearchUsername, venueSearchUsername : venueSearchUsername, imgSearchUsername : imgSearchUsername, staticMapsProvider : staticMapsProvider, captionLengthMax : captionLengthMax, messageLengthMax : messageLengthMax, webfileDcId : webfileDcId, suggestedLangCode : suggestedLangCode, langPackVersion : langPackVersion, baseLangPackVersion : baseLangPackVersion);
	}
	List<int> getBytes(){return [readBufferFromBigInt(856375399,4),[0,0,0,0],readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.expires,4,little:true,signed:true),[this.testMode ? 0xb5757299 : 0x379779bc],readBufferFromBigInt(this.thisDc,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.dcOptions.length,4,little:true,signed:true),this.dcOptions.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),serializeBytes(this.dcTxtDomainName),readBufferFromBigInt(this.chatSizeMax,4,little:true,signed:true),readBufferFromBigInt(this.megagroupSizeMax,4,little:true,signed:true),readBufferFromBigInt(this.forwardedCountMax,4,little:true,signed:true),readBufferFromBigInt(this.onlineUpdatePeriodMs,4,little:true,signed:true),readBufferFromBigInt(this.offlineBlurTimeoutMs,4,little:true,signed:true),readBufferFromBigInt(this.offlineIdleTimeoutMs,4,little:true,signed:true),readBufferFromBigInt(this.onlineCloudTimeoutMs,4,little:true,signed:true),readBufferFromBigInt(this.notifyCloudDelayMs,4,little:true,signed:true),readBufferFromBigInt(this.notifyDefaultDelayMs,4,little:true,signed:true),readBufferFromBigInt(this.pushChatPeriodMs,4,little:true,signed:true),readBufferFromBigInt(this.pushChatLimit,4,little:true,signed:true),readBufferFromBigInt(this.savedGifsLimit,4,little:true,signed:true),readBufferFromBigInt(this.editTimeLimit,4,little:true,signed:true),readBufferFromBigInt(this.revokeTimeLimit,4,little:true,signed:true),readBufferFromBigInt(this.revokePmTimeLimit,4,little:true,signed:true),readBufferFromBigInt(this.ratingEDecay,4,little:true,signed:true),readBufferFromBigInt(this.stickersRecentLimit,4,little:true,signed:true),readBufferFromBigInt(this.stickersFavedLimit,4,little:true,signed:true),readBufferFromBigInt(this.channelsReadMediaPeriod,4,little:true,signed:true),(this.tmpSessions==null||this.tmpSessions==false)?new List<int>.empty():[readBufferFromBigInt(this.tmpSessions,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.pinnedDialogsCountMax,4,little:true,signed:true),readBufferFromBigInt(this.pinnedInfolderCountMax,4,little:true,signed:true),readBufferFromBigInt(this.callReceiveTimeoutMs,4,little:true,signed:true),readBufferFromBigInt(this.callRingTimeoutMs,4,little:true,signed:true),readBufferFromBigInt(this.callConnectTimeoutMs,4,little:true,signed:true),readBufferFromBigInt(this.callPacketTimeoutMs,4,little:true,signed:true),serializeBytes(this.meUrlPrefix),(this.autoupdateUrlPrefix==null||this.autoupdateUrlPrefix==false)?new List<int>.empty():[serializeBytes(this.autoupdateUrlPrefix)].expand((element) => element).toList(),(this.gifSearchUsername==null||this.gifSearchUsername==false)?new List<int>.empty():[serializeBytes(this.gifSearchUsername)].expand((element) => element).toList(),(this.venueSearchUsername==null||this.venueSearchUsername==false)?new List<int>.empty():[serializeBytes(this.venueSearchUsername)].expand((element) => element).toList(),(this.imgSearchUsername==null||this.imgSearchUsername==false)?new List<int>.empty():[serializeBytes(this.imgSearchUsername)].expand((element) => element).toList(),(this.staticMapsProvider==null||this.staticMapsProvider==false)?new List<int>.empty():[serializeBytes(this.staticMapsProvider)].expand((element) => element).toList(),readBufferFromBigInt(this.captionLengthMax,4,little:true,signed:true),readBufferFromBigInt(this.messageLengthMax,4,little:true,signed:true),readBufferFromBigInt(this.webfileDcId,4,little:true,signed:true),(this.suggestedLangCode==null||this.suggestedLangCode==false)?new List<int>.empty():[serializeBytes(this.suggestedLangCode)].expand((element) => element).toList(),(this.langPackVersion==null||this.langPackVersion==false)?new List<int>.empty():[readBufferFromBigInt(this.langPackVersion,4,little:true,signed:true)].expand((element) => element).toList(),(this.baseLangPackVersion==null||this.baseLangPackVersion==false)?new List<int>.empty():[readBufferFromBigInt(this.baseLangPackVersion,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class NearestDc {
    static const CONSTRUCTOR_ID = 2384074613;
    static const SUBCLASS_OF_ID = 947323999;
    final classType = "constructor";
    final ID = 2384074613;
	String country;
	int thisDc;
	int nearestDc;


	NearestDc({required this.country, required this.thisDc, required this.nearestDc});

	static NearestDc fromReader(BinaryReader reader) {
	var temp,len;var country = reader.tgReadString();var thisDc = reader.readInt();var nearestDc = reader.readInt();		return new NearestDc(country : country, thisDc : thisDc, nearestDc : nearestDc);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2384074613,4),serializeBytes(this.country),readBufferFromBigInt(this.thisDc,4,little:true,signed:true),readBufferFromBigInt(this.nearestDc,4,little:true,signed:true),].expand((element) => element).toList();}

}

class EncryptedChatEmpty {
    static const CONSTRUCTOR_ID = 2877210784;
    static const SUBCLASS_OF_ID = 1831379834;
    final classType = "constructor";
    final ID = 2877210784;
	int id;


	EncryptedChatEmpty({required this.id});

	static EncryptedChatEmpty fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readInt();		return new EncryptedChatEmpty(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2877210784,4),readBufferFromBigInt(this.id,4,little:true,signed:true),].expand((element) => element).toList();}

}

class EncryptedChatWaiting {
    static const CONSTRUCTOR_ID = 1722964307;
    static const SUBCLASS_OF_ID = 1831379834;
    final classType = "constructor";
    final ID = 1722964307;
	int id;
	BigInt accessHash;
	int date;
	BigInt adminId;
	BigInt participantId;


	EncryptedChatWaiting({required this.id, required this.accessHash, required this.date, required this.adminId, required this.participantId});

	static EncryptedChatWaiting fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readInt();var accessHash = reader.readLong();var date = reader.readInt();var adminId = reader.readLong();var participantId = reader.readLong();		return new EncryptedChatWaiting(id : id, accessHash : accessHash, date : date, adminId : adminId, participantId : participantId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1722964307,4),readBufferFromBigInt(this.id,4,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.adminId,8,little:true,signed:true),readBufferFromBigInt(this.participantId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class EncryptedChatRequested {
    static const CONSTRUCTOR_ID = 1223809356;
    static const SUBCLASS_OF_ID = 1831379834;
    final classType = "constructor";
    final ID = 1223809356;
	int folderId;
	int id;
	BigInt accessHash;
	int date;
	BigInt adminId;
	BigInt participantId;
	List<int> gA;


	EncryptedChatRequested({required this.folderId, required this.id, required this.accessHash, required this.date, required this.adminId, required this.participantId, required this.gA});

	static EncryptedChatRequested fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var folderId;if ((flags & 1)==1){folderId = reader.readInt(); } else {folderId=null;}var id = reader.readInt();var accessHash = reader.readLong();var date = reader.readInt();var adminId = reader.readLong();var participantId = reader.readLong();var gA = reader.tgReadBytes();		return new EncryptedChatRequested(folderId : folderId, id : id, accessHash : accessHash, date : date, adminId : adminId, participantId : participantId, gA : gA);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1223809356,4),[0,0,0,0],(this.folderId==null||this.folderId==false)?new List<int>.empty():[readBufferFromBigInt(this.folderId,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.id,4,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.adminId,8,little:true,signed:true),readBufferFromBigInt(this.participantId,8,little:true,signed:true),serializeBytes(this.gA),].expand((element) => element).toList();}

}

class EncryptedChat {
    static const CONSTRUCTOR_ID = 1643173063;
    static const SUBCLASS_OF_ID = 1831379834;
    final classType = "constructor";
    final ID = 1643173063;
	int id;
	BigInt accessHash;
	int date;
	BigInt adminId;
	BigInt participantId;
	List<int> gAOrB;
	BigInt keyFingerprint;


	EncryptedChat({required this.id, required this.accessHash, required this.date, required this.adminId, required this.participantId, required this.gAOrB, required this.keyFingerprint});

	static EncryptedChat fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readInt();var accessHash = reader.readLong();var date = reader.readInt();var adminId = reader.readLong();var participantId = reader.readLong();var gAOrB = reader.tgReadBytes();var keyFingerprint = reader.readLong();		return new EncryptedChat(id : id, accessHash : accessHash, date : date, adminId : adminId, participantId : participantId, gAOrB : gAOrB, keyFingerprint : keyFingerprint);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1643173063,4),readBufferFromBigInt(this.id,4,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.adminId,8,little:true,signed:true),readBufferFromBigInt(this.participantId,8,little:true,signed:true),serializeBytes(this.gAOrB),readBufferFromBigInt(this.keyFingerprint,8,little:true,signed:true),].expand((element) => element).toList();}

}

class EncryptedChatDiscarded {
    static const CONSTRUCTOR_ID = 505183301;
    static const SUBCLASS_OF_ID = 1831379834;
    final classType = "constructor";
    final ID = 505183301;
	bool historyDeleted;
	int id;


	EncryptedChatDiscarded({required this.historyDeleted, required this.id});

	static EncryptedChatDiscarded fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final historyDeleted = false;var id = reader.readInt();		return new EncryptedChatDiscarded(historyDeleted : historyDeleted, id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(505183301,4),[0,0,0,0],readBufferFromBigInt(this.id,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputEncryptedChat {
    static const CONSTRUCTOR_ID = 4047615457;
    static const SUBCLASS_OF_ID = 1819674304;
    final classType = "constructor";
    final ID = 4047615457;
	int chatId;
	BigInt accessHash;


	InputEncryptedChat({required this.chatId, required this.accessHash});

	static InputEncryptedChat fromReader(BinaryReader reader) {
	var temp,len;var chatId = reader.readInt();var accessHash = reader.readLong();		return new InputEncryptedChat(chatId : chatId, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4047615457,4),readBufferFromBigInt(this.chatId,4,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class EncryptedFileEmpty {
    static const CONSTRUCTOR_ID = 3256830334;
    static const SUBCLASS_OF_ID = 2217371584;
    final classType = "constructor";
    final ID = 3256830334;


	EncryptedFileEmpty();

	static EncryptedFileEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new EncryptedFileEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3256830334,4),].expand((element) => element).toList();}

}

class EncryptedFile {
    static const CONSTRUCTOR_ID = 2818608344;
    static const SUBCLASS_OF_ID = 2217371584;
    final classType = "constructor";
    final ID = 2818608344;
	BigInt id;
	BigInt accessHash;
	BigInt size;
	int dcId;
	int keyFingerprint;


	EncryptedFile({required this.id, required this.accessHash, required this.size, required this.dcId, required this.keyFingerprint});

	static EncryptedFile fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();var size = reader.readLong();var dcId = reader.readInt();var keyFingerprint = reader.readInt();		return new EncryptedFile(id : id, accessHash : accessHash, size : size, dcId : dcId, keyFingerprint : keyFingerprint);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2818608344,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.size,8,little:true,signed:true),readBufferFromBigInt(this.dcId,4,little:true,signed:true),readBufferFromBigInt(this.keyFingerprint,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputEncryptedFileEmpty {
    static const CONSTRUCTOR_ID = 406307684;
    static const SUBCLASS_OF_ID = 2239021690;
    final classType = "constructor";
    final ID = 406307684;


	InputEncryptedFileEmpty();

	static InputEncryptedFileEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new InputEncryptedFileEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(406307684,4),].expand((element) => element).toList();}

}

class InputEncryptedFileUploaded {
    static const CONSTRUCTOR_ID = 1690108678;
    static const SUBCLASS_OF_ID = 2239021690;
    final classType = "constructor";
    final ID = 1690108678;
	BigInt id;
	int parts;
	String md5Checksum;
	int keyFingerprint;


	InputEncryptedFileUploaded({required this.id, required this.parts, required this.md5Checksum, required this.keyFingerprint});

	static InputEncryptedFileUploaded fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var parts = reader.readInt();var md5Checksum = reader.tgReadString();var keyFingerprint = reader.readInt();		return new InputEncryptedFileUploaded(id : id, parts : parts, md5Checksum : md5Checksum, keyFingerprint : keyFingerprint);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1690108678,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.parts,4,little:true,signed:true),serializeBytes(this.md5Checksum),readBufferFromBigInt(this.keyFingerprint,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputEncryptedFile {
    static const CONSTRUCTOR_ID = 1511503333;
    static const SUBCLASS_OF_ID = 2239021690;
    final classType = "constructor";
    final ID = 1511503333;
	BigInt id;
	BigInt accessHash;


	InputEncryptedFile({required this.id, required this.accessHash});

	static InputEncryptedFile fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();		return new InputEncryptedFile(id : id, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1511503333,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputEncryptedFileBigUploaded {
    static const CONSTRUCTOR_ID = 767652808;
    static const SUBCLASS_OF_ID = 2239021690;
    final classType = "constructor";
    final ID = 767652808;
	BigInt id;
	int parts;
	int keyFingerprint;


	InputEncryptedFileBigUploaded({required this.id, required this.parts, required this.keyFingerprint});

	static InputEncryptedFileBigUploaded fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var parts = reader.readInt();var keyFingerprint = reader.readInt();		return new InputEncryptedFileBigUploaded(id : id, parts : parts, keyFingerprint : keyFingerprint);
	}
	List<int> getBytes(){return [readBufferFromBigInt(767652808,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.parts,4,little:true,signed:true),readBufferFromBigInt(this.keyFingerprint,4,little:true,signed:true),].expand((element) => element).toList();}

}

class EncryptedMessage {
    static const CONSTRUCTOR_ID = 3977822488;
    static const SUBCLASS_OF_ID = 597634641;
    final classType = "constructor";
    final ID = 3977822488;
	BigInt randomId;
	int chatId;
	int date;
	List<int> bytes;
	var file;


	EncryptedMessage({required this.randomId, required this.chatId, required this.date, required this.bytes, required this.file});

	static EncryptedMessage fromReader(BinaryReader reader) {
	var temp,len;var randomId = reader.readLong();var chatId = reader.readInt();var date = reader.readInt();var bytes = reader.tgReadBytes();var file = reader.tgReadObject();		return new EncryptedMessage(randomId : randomId, chatId : chatId, date : date, bytes : bytes, file : file);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3977822488,4),readBufferFromBigInt(this.randomId,8,little:true,signed:true),readBufferFromBigInt(this.chatId,4,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),serializeBytes(this.bytes),(this.file.getBytes() as List<int>),].expand((element) => element).toList();}

}

class EncryptedMessageService {
    static const CONSTRUCTOR_ID = 594758406;
    static const SUBCLASS_OF_ID = 597634641;
    final classType = "constructor";
    final ID = 594758406;
	BigInt randomId;
	int chatId;
	int date;
	List<int> bytes;


	EncryptedMessageService({required this.randomId, required this.chatId, required this.date, required this.bytes});

	static EncryptedMessageService fromReader(BinaryReader reader) {
	var temp,len;var randomId = reader.readLong();var chatId = reader.readInt();var date = reader.readInt();var bytes = reader.tgReadBytes();		return new EncryptedMessageService(randomId : randomId, chatId : chatId, date : date, bytes : bytes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(594758406,4),readBufferFromBigInt(this.randomId,8,little:true,signed:true),readBufferFromBigInt(this.chatId,4,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),serializeBytes(this.bytes),].expand((element) => element).toList();}

}

class InputDocumentEmpty {
    static const CONSTRUCTOR_ID = 1928391342;
    static const SUBCLASS_OF_ID = 4081048424;
    final classType = "constructor";
    final ID = 1928391342;


	InputDocumentEmpty();

	static InputDocumentEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new InputDocumentEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1928391342,4),].expand((element) => element).toList();}

}

class InputDocument {
    static const CONSTRUCTOR_ID = 448771445;
    static const SUBCLASS_OF_ID = 4081048424;
    final classType = "constructor";
    final ID = 448771445;
	BigInt id;
	BigInt accessHash;
	List<int> fileReference;


	InputDocument({required this.id, required this.accessHash, required this.fileReference});

	static InputDocument fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();var fileReference = reader.tgReadBytes();		return new InputDocument(id : id, accessHash : accessHash, fileReference : fileReference);
	}
	List<int> getBytes(){return [readBufferFromBigInt(448771445,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),serializeBytes(this.fileReference),].expand((element) => element).toList();}

}

class DocumentEmpty {
    static const CONSTRUCTOR_ID = 922273905;
    static const SUBCLASS_OF_ID = 555739168;
    final classType = "constructor";
    final ID = 922273905;
	BigInt id;


	DocumentEmpty({required this.id});

	static DocumentEmpty fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();		return new DocumentEmpty(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(922273905,4),readBufferFromBigInt(this.id,8,little:true,signed:true),].expand((element) => element).toList();}

}

class Document {
    static const CONSTRUCTOR_ID = 2413085912;
    static const SUBCLASS_OF_ID = 555739168;
    final classType = "constructor";
    final ID = 2413085912;
	BigInt id;
	BigInt accessHash;
	List<int> fileReference;
	int date;
	String mimeType;
	BigInt size;
	List<dynamic> thumbs;
	List<dynamic> videoThumbs;
	int dcId;
	List<dynamic> attributes;


	Document({required this.id, required this.accessHash, required this.fileReference, required this.date, required this.mimeType, required this.size, required this.thumbs, required this.videoThumbs, required this.dcId, required this.attributes});

	static Document fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var id = reader.readLong();var accessHash = reader.readLong();var fileReference = reader.tgReadBytes();var date = reader.readInt();var mimeType = reader.tgReadString();var size = reader.readLong();var thumbs;if ((flags & 1)==1){reader.readInt();
List<dynamic> thumbs = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		thumbs.add(reader.tgReadObject());
} } else {thumbs=null;}var videoThumbs;if ((flags & 2)==1){reader.readInt();
List<dynamic> videoThumbs = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		videoThumbs.add(reader.tgReadObject());
} } else {videoThumbs=null;}var dcId = reader.readInt();reader.readInt();
List<dynamic> attributes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		attributes.add(reader.tgReadObject());
}		return new Document(id : id, accessHash : accessHash, fileReference : fileReference, date : date, mimeType : mimeType, size : size, thumbs : thumbs, videoThumbs : videoThumbs, dcId : dcId, attributes : attributes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2413085912,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),serializeBytes(this.fileReference),readBufferFromBigInt(this.date,4,little:true,signed:true),serializeBytes(this.mimeType),readBufferFromBigInt(this.size,8,little:true,signed:true),(this.thumbs==null||this.thumbs==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.thumbs.length,4,little:true,signed:true),this.thumbs.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.videoThumbs==null||this.videoThumbs==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.videoThumbs.length,4,little:true,signed:true),this.videoThumbs.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),readBufferFromBigInt(this.dcId,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.attributes.length,4,little:true,signed:true),this.attributes.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class NotifyPeer {
    static const CONSTRUCTOR_ID = 2681474008;
    static const SUBCLASS_OF_ID = 3756548142;
    final classType = "constructor";
    final ID = 2681474008;
	var peer;


	NotifyPeer({required this.peer});

	static NotifyPeer fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new NotifyPeer(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2681474008,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}

}

class NotifyUsers {
    static const CONSTRUCTOR_ID = 3033021260;
    static const SUBCLASS_OF_ID = 3756548142;
    final classType = "constructor";
    final ID = 3033021260;


	NotifyUsers();

	static NotifyUsers fromReader(BinaryReader reader) {
	var temp,len;		return new NotifyUsers();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3033021260,4),].expand((element) => element).toList();}

}

class NotifyChats {
    static const CONSTRUCTOR_ID = 3221737155;
    static const SUBCLASS_OF_ID = 3756548142;
    final classType = "constructor";
    final ID = 3221737155;


	NotifyChats();

	static NotifyChats fromReader(BinaryReader reader) {
	var temp,len;		return new NotifyChats();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3221737155,4),].expand((element) => element).toList();}

}

class NotifyBroadcasts {
    static const CONSTRUCTOR_ID = 3591563503;
    static const SUBCLASS_OF_ID = 3756548142;
    final classType = "constructor";
    final ID = 3591563503;


	NotifyBroadcasts();

	static NotifyBroadcasts fromReader(BinaryReader reader) {
	var temp,len;		return new NotifyBroadcasts();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3591563503,4),].expand((element) => element).toList();}

}

class SendMessageTypingAction {
    static const CONSTRUCTOR_ID = 381645902;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 381645902;


	SendMessageTypingAction();

	static SendMessageTypingAction fromReader(BinaryReader reader) {
	var temp,len;		return new SendMessageTypingAction();
	}
	List<int> getBytes(){return [readBufferFromBigInt(381645902,4),].expand((element) => element).toList();}

}

class SendMessageCancelAction {
    static const CONSTRUCTOR_ID = 4250847477;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 4250847477;


	SendMessageCancelAction();

	static SendMessageCancelAction fromReader(BinaryReader reader) {
	var temp,len;		return new SendMessageCancelAction();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4250847477,4),].expand((element) => element).toList();}

}

class SendMessageRecordVideoAction {
    static const CONSTRUCTOR_ID = 2710034031;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 2710034031;


	SendMessageRecordVideoAction();

	static SendMessageRecordVideoAction fromReader(BinaryReader reader) {
	var temp,len;		return new SendMessageRecordVideoAction();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2710034031,4),].expand((element) => element).toList();}

}

class SendMessageUploadVideoAction {
    static const CONSTRUCTOR_ID = 3916839660;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 3916839660;
	int progress;


	SendMessageUploadVideoAction({required this.progress});

	static SendMessageUploadVideoAction fromReader(BinaryReader reader) {
	var temp,len;var progress = reader.readInt();		return new SendMessageUploadVideoAction(progress : progress);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3916839660,4),readBufferFromBigInt(this.progress,4,little:true,signed:true),].expand((element) => element).toList();}

}

class SendMessageRecordAudioAction {
    static const CONSTRUCTOR_ID = 3576656887;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 3576656887;


	SendMessageRecordAudioAction();

	static SendMessageRecordAudioAction fromReader(BinaryReader reader) {
	var temp,len;		return new SendMessageRecordAudioAction();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3576656887,4),].expand((element) => element).toList();}

}

class SendMessageUploadAudioAction {
    static const CONSTRUCTOR_ID = 4082227115;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 4082227115;
	int progress;


	SendMessageUploadAudioAction({required this.progress});

	static SendMessageUploadAudioAction fromReader(BinaryReader reader) {
	var temp,len;var progress = reader.readInt();		return new SendMessageUploadAudioAction(progress : progress);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4082227115,4),readBufferFromBigInt(this.progress,4,little:true,signed:true),].expand((element) => element).toList();}

}

class SendMessageUploadPhotoAction {
    static const CONSTRUCTOR_ID = 3520285222;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 3520285222;
	int progress;


	SendMessageUploadPhotoAction({required this.progress});

	static SendMessageUploadPhotoAction fromReader(BinaryReader reader) {
	var temp,len;var progress = reader.readInt();		return new SendMessageUploadPhotoAction(progress : progress);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3520285222,4),readBufferFromBigInt(this.progress,4,little:true,signed:true),].expand((element) => element).toList();}

}

class SendMessageUploadDocumentAction {
    static const CONSTRUCTOR_ID = 2852968932;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 2852968932;
	int progress;


	SendMessageUploadDocumentAction({required this.progress});

	static SendMessageUploadDocumentAction fromReader(BinaryReader reader) {
	var temp,len;var progress = reader.readInt();		return new SendMessageUploadDocumentAction(progress : progress);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2852968932,4),readBufferFromBigInt(this.progress,4,little:true,signed:true),].expand((element) => element).toList();}

}

class SendMessageGeoLocationAction {
    static const CONSTRUCTOR_ID = 393186209;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 393186209;


	SendMessageGeoLocationAction();

	static SendMessageGeoLocationAction fromReader(BinaryReader reader) {
	var temp,len;		return new SendMessageGeoLocationAction();
	}
	List<int> getBytes(){return [readBufferFromBigInt(393186209,4),].expand((element) => element).toList();}

}

class SendMessageChooseContactAction {
    static const CONSTRUCTOR_ID = 1653390447;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 1653390447;


	SendMessageChooseContactAction();

	static SendMessageChooseContactAction fromReader(BinaryReader reader) {
	var temp,len;		return new SendMessageChooseContactAction();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1653390447,4),].expand((element) => element).toList();}

}

class SendMessageGamePlayAction {
    static const CONSTRUCTOR_ID = 3714748232;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 3714748232;


	SendMessageGamePlayAction();

	static SendMessageGamePlayAction fromReader(BinaryReader reader) {
	var temp,len;		return new SendMessageGamePlayAction();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3714748232,4),].expand((element) => element).toList();}

}

class SendMessageRecordRoundAction {
    static const CONSTRUCTOR_ID = 2297593788;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 2297593788;


	SendMessageRecordRoundAction();

	static SendMessageRecordRoundAction fromReader(BinaryReader reader) {
	var temp,len;		return new SendMessageRecordRoundAction();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2297593788,4),].expand((element) => element).toList();}

}

class SendMessageUploadRoundAction {
    static const CONSTRUCTOR_ID = 608050278;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 608050278;
	int progress;


	SendMessageUploadRoundAction({required this.progress});

	static SendMessageUploadRoundAction fromReader(BinaryReader reader) {
	var temp,len;var progress = reader.readInt();		return new SendMessageUploadRoundAction(progress : progress);
	}
	List<int> getBytes(){return [readBufferFromBigInt(608050278,4),readBufferFromBigInt(this.progress,4,little:true,signed:true),].expand((element) => element).toList();}

}

class SpeakingInGroupCallAction {
    static const CONSTRUCTOR_ID = 3643548293;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 3643548293;


	SpeakingInGroupCallAction();

	static SpeakingInGroupCallAction fromReader(BinaryReader reader) {
	var temp,len;		return new SpeakingInGroupCallAction();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3643548293,4),].expand((element) => element).toList();}

}

class SendMessageHistoryImportAction {
    static const CONSTRUCTOR_ID = 3688534598;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 3688534598;
	int progress;


	SendMessageHistoryImportAction({required this.progress});

	static SendMessageHistoryImportAction fromReader(BinaryReader reader) {
	var temp,len;var progress = reader.readInt();		return new SendMessageHistoryImportAction(progress : progress);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3688534598,4),readBufferFromBigInt(this.progress,4,little:true,signed:true),].expand((element) => element).toList();}

}

class SendMessageChooseStickerAction {
    static const CONSTRUCTOR_ID = 2958739121;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 2958739121;


	SendMessageChooseStickerAction();

	static SendMessageChooseStickerAction fromReader(BinaryReader reader) {
	var temp,len;		return new SendMessageChooseStickerAction();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2958739121,4),].expand((element) => element).toList();}

}

class SendMessageEmojiInteraction {
    static const CONSTRUCTOR_ID = 630664139;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 630664139;
	String emoticon;
	int msgId;
	var interaction;


	SendMessageEmojiInteraction({required this.emoticon, required this.msgId, required this.interaction});

	static SendMessageEmojiInteraction fromReader(BinaryReader reader) {
	var temp,len;var emoticon = reader.tgReadString();var msgId = reader.readInt();var interaction = reader.tgReadObject();		return new SendMessageEmojiInteraction(emoticon : emoticon, msgId : msgId, interaction : interaction);
	}
	List<int> getBytes(){return [readBufferFromBigInt(630664139,4),serializeBytes(this.emoticon),readBufferFromBigInt(this.msgId,4,little:true,signed:true),(this.interaction.getBytes() as List<int>),].expand((element) => element).toList();}

}

class SendMessageEmojiInteractionSeen {
    static const CONSTRUCTOR_ID = 3060109358;
    static const SUBCLASS_OF_ID = 548588577;
    final classType = "constructor";
    final ID = 3060109358;
	String emoticon;


	SendMessageEmojiInteractionSeen({required this.emoticon});

	static SendMessageEmojiInteractionSeen fromReader(BinaryReader reader) {
	var temp,len;var emoticon = reader.tgReadString();		return new SendMessageEmojiInteractionSeen(emoticon : emoticon);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3060109358,4),serializeBytes(this.emoticon),].expand((element) => element).toList();}

}

class InputPrivacyKeyStatusTimestamp {
    static const CONSTRUCTOR_ID = 1335282456;
    static const SUBCLASS_OF_ID = 87435256;
    final classType = "constructor";
    final ID = 1335282456;


	InputPrivacyKeyStatusTimestamp();

	static InputPrivacyKeyStatusTimestamp fromReader(BinaryReader reader) {
	var temp,len;		return new InputPrivacyKeyStatusTimestamp();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1335282456,4),].expand((element) => element).toList();}

}

class InputPrivacyKeyChatInvite {
    static const CONSTRUCTOR_ID = 3187344422;
    static const SUBCLASS_OF_ID = 87435256;
    final classType = "constructor";
    final ID = 3187344422;


	InputPrivacyKeyChatInvite();

	static InputPrivacyKeyChatInvite fromReader(BinaryReader reader) {
	var temp,len;		return new InputPrivacyKeyChatInvite();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3187344422,4),].expand((element) => element).toList();}

}

class InputPrivacyKeyPhoneCall {
    static const CONSTRUCTOR_ID = 4206550111;
    static const SUBCLASS_OF_ID = 87435256;
    final classType = "constructor";
    final ID = 4206550111;


	InputPrivacyKeyPhoneCall();

	static InputPrivacyKeyPhoneCall fromReader(BinaryReader reader) {
	var temp,len;		return new InputPrivacyKeyPhoneCall();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4206550111,4),].expand((element) => element).toList();}

}

class InputPrivacyKeyPhoneP2P {
    static const CONSTRUCTOR_ID = 3684593874;
    static const SUBCLASS_OF_ID = 87435256;
    final classType = "constructor";
    final ID = 3684593874;


	InputPrivacyKeyPhoneP2P();

	static InputPrivacyKeyPhoneP2P fromReader(BinaryReader reader) {
	var temp,len;		return new InputPrivacyKeyPhoneP2P();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3684593874,4),].expand((element) => element).toList();}

}

class InputPrivacyKeyForwards {
    static const CONSTRUCTOR_ID = 2765966344;
    static const SUBCLASS_OF_ID = 87435256;
    final classType = "constructor";
    final ID = 2765966344;


	InputPrivacyKeyForwards();

	static InputPrivacyKeyForwards fromReader(BinaryReader reader) {
	var temp,len;		return new InputPrivacyKeyForwards();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2765966344,4),].expand((element) => element).toList();}

}

class InputPrivacyKeyProfilePhoto {
    static const CONSTRUCTOR_ID = 1461304012;
    static const SUBCLASS_OF_ID = 87435256;
    final classType = "constructor";
    final ID = 1461304012;


	InputPrivacyKeyProfilePhoto();

	static InputPrivacyKeyProfilePhoto fromReader(BinaryReader reader) {
	var temp,len;		return new InputPrivacyKeyProfilePhoto();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1461304012,4),].expand((element) => element).toList();}

}

class InputPrivacyKeyPhoneNumber {
    static const CONSTRUCTOR_ID = 55761658;
    static const SUBCLASS_OF_ID = 87435256;
    final classType = "constructor";
    final ID = 55761658;


	InputPrivacyKeyPhoneNumber();

	static InputPrivacyKeyPhoneNumber fromReader(BinaryReader reader) {
	var temp,len;		return new InputPrivacyKeyPhoneNumber();
	}
	List<int> getBytes(){return [readBufferFromBigInt(55761658,4),].expand((element) => element).toList();}

}

class InputPrivacyKeyAddedByPhone {
    static const CONSTRUCTOR_ID = 3508640733;
    static const SUBCLASS_OF_ID = 87435256;
    final classType = "constructor";
    final ID = 3508640733;


	InputPrivacyKeyAddedByPhone();

	static InputPrivacyKeyAddedByPhone fromReader(BinaryReader reader) {
	var temp,len;		return new InputPrivacyKeyAddedByPhone();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3508640733,4),].expand((element) => element).toList();}

}

class PrivacyKeyStatusTimestamp {
    static const CONSTRUCTOR_ID = 3157175088;
    static const SUBCLASS_OF_ID = 2185646531;
    final classType = "constructor";
    final ID = 3157175088;


	PrivacyKeyStatusTimestamp();

	static PrivacyKeyStatusTimestamp fromReader(BinaryReader reader) {
	var temp,len;		return new PrivacyKeyStatusTimestamp();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3157175088,4),].expand((element) => element).toList();}

}

class PrivacyKeyChatInvite {
    static const CONSTRUCTOR_ID = 1343122938;
    static const SUBCLASS_OF_ID = 2185646531;
    final classType = "constructor";
    final ID = 1343122938;


	PrivacyKeyChatInvite();

	static PrivacyKeyChatInvite fromReader(BinaryReader reader) {
	var temp,len;		return new PrivacyKeyChatInvite();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1343122938,4),].expand((element) => element).toList();}

}

class PrivacyKeyPhoneCall {
    static const CONSTRUCTOR_ID = 1030105979;
    static const SUBCLASS_OF_ID = 2185646531;
    final classType = "constructor";
    final ID = 1030105979;


	PrivacyKeyPhoneCall();

	static PrivacyKeyPhoneCall fromReader(BinaryReader reader) {
	var temp,len;		return new PrivacyKeyPhoneCall();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1030105979,4),].expand((element) => element).toList();}

}

class PrivacyKeyPhoneP2P {
    static const CONSTRUCTOR_ID = 961092808;
    static const SUBCLASS_OF_ID = 2185646531;
    final classType = "constructor";
    final ID = 961092808;


	PrivacyKeyPhoneP2P();

	static PrivacyKeyPhoneP2P fromReader(BinaryReader reader) {
	var temp,len;		return new PrivacyKeyPhoneP2P();
	}
	List<int> getBytes(){return [readBufferFromBigInt(961092808,4),].expand((element) => element).toList();}

}

class PrivacyKeyForwards {
    static const CONSTRUCTOR_ID = 1777096355;
    static const SUBCLASS_OF_ID = 2185646531;
    final classType = "constructor";
    final ID = 1777096355;


	PrivacyKeyForwards();

	static PrivacyKeyForwards fromReader(BinaryReader reader) {
	var temp,len;		return new PrivacyKeyForwards();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1777096355,4),].expand((element) => element).toList();}

}

class PrivacyKeyProfilePhoto {
    static const CONSTRUCTOR_ID = 2517966829;
    static const SUBCLASS_OF_ID = 2185646531;
    final classType = "constructor";
    final ID = 2517966829;


	PrivacyKeyProfilePhoto();

	static PrivacyKeyProfilePhoto fromReader(BinaryReader reader) {
	var temp,len;		return new PrivacyKeyProfilePhoto();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2517966829,4),].expand((element) => element).toList();}

}

class PrivacyKeyPhoneNumber {
    static const CONSTRUCTOR_ID = 3516589165;
    static const SUBCLASS_OF_ID = 2185646531;
    final classType = "constructor";
    final ID = 3516589165;


	PrivacyKeyPhoneNumber();

	static PrivacyKeyPhoneNumber fromReader(BinaryReader reader) {
	var temp,len;		return new PrivacyKeyPhoneNumber();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3516589165,4),].expand((element) => element).toList();}

}

class PrivacyKeyAddedByPhone {
    static const CONSTRUCTOR_ID = 1124062251;
    static const SUBCLASS_OF_ID = 2185646531;
    final classType = "constructor";
    final ID = 1124062251;


	PrivacyKeyAddedByPhone();

	static PrivacyKeyAddedByPhone fromReader(BinaryReader reader) {
	var temp,len;		return new PrivacyKeyAddedByPhone();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1124062251,4),].expand((element) => element).toList();}

}

class InputPrivacyValueAllowContacts {
    static const CONSTRUCTOR_ID = 218751099;
    static const SUBCLASS_OF_ID = 1513843490;
    final classType = "constructor";
    final ID = 218751099;


	InputPrivacyValueAllowContacts();

	static InputPrivacyValueAllowContacts fromReader(BinaryReader reader) {
	var temp,len;		return new InputPrivacyValueAllowContacts();
	}
	List<int> getBytes(){return [readBufferFromBigInt(218751099,4),].expand((element) => element).toList();}

}

class InputPrivacyValueAllowAll {
    static const CONSTRUCTOR_ID = 407582158;
    static const SUBCLASS_OF_ID = 1513843490;
    final classType = "constructor";
    final ID = 407582158;


	InputPrivacyValueAllowAll();

	static InputPrivacyValueAllowAll fromReader(BinaryReader reader) {
	var temp,len;		return new InputPrivacyValueAllowAll();
	}
	List<int> getBytes(){return [readBufferFromBigInt(407582158,4),].expand((element) => element).toList();}

}

class InputPrivacyValueAllowUsers {
    static const CONSTRUCTOR_ID = 320652927;
    static const SUBCLASS_OF_ID = 1513843490;
    final classType = "constructor";
    final ID = 320652927;
	List<dynamic> users;


	InputPrivacyValueAllowUsers({required this.users});

	static InputPrivacyValueAllowUsers fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new InputPrivacyValueAllowUsers(users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(320652927,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class InputPrivacyValueDisallowContacts {
    static const CONSTRUCTOR_ID = 195371015;
    static const SUBCLASS_OF_ID = 1513843490;
    final classType = "constructor";
    final ID = 195371015;


	InputPrivacyValueDisallowContacts();

	static InputPrivacyValueDisallowContacts fromReader(BinaryReader reader) {
	var temp,len;		return new InputPrivacyValueDisallowContacts();
	}
	List<int> getBytes(){return [readBufferFromBigInt(195371015,4),].expand((element) => element).toList();}

}

class InputPrivacyValueDisallowAll {
    static const CONSTRUCTOR_ID = 3597362889;
    static const SUBCLASS_OF_ID = 1513843490;
    final classType = "constructor";
    final ID = 3597362889;


	InputPrivacyValueDisallowAll();

	static InputPrivacyValueDisallowAll fromReader(BinaryReader reader) {
	var temp,len;		return new InputPrivacyValueDisallowAll();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3597362889,4),].expand((element) => element).toList();}

}

class InputPrivacyValueDisallowUsers {
    static const CONSTRUCTOR_ID = 2417034343;
    static const SUBCLASS_OF_ID = 1513843490;
    final classType = "constructor";
    final ID = 2417034343;
	List<dynamic> users;


	InputPrivacyValueDisallowUsers({required this.users});

	static InputPrivacyValueDisallowUsers fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new InputPrivacyValueDisallowUsers(users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2417034343,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class InputPrivacyValueAllowChatParticipants {
    static const CONSTRUCTOR_ID = 2215004623;
    static const SUBCLASS_OF_ID = 1513843490;
    final classType = "constructor";
    final ID = 2215004623;
	List<BigInt> chats;


	InputPrivacyValueAllowChatParticipants({required this.chats});

	static InputPrivacyValueAllowChatParticipants fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.readLong());
}		return new InputPrivacyValueAllowChatParticipants(chats : chats);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2215004623,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class InputPrivacyValueDisallowChatParticipants {
    static const CONSTRUCTOR_ID = 3914272646;
    static const SUBCLASS_OF_ID = 1513843490;
    final classType = "constructor";
    final ID = 3914272646;
	List<BigInt> chats;


	InputPrivacyValueDisallowChatParticipants({required this.chats});

	static InputPrivacyValueDisallowChatParticipants fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.readLong());
}		return new InputPrivacyValueDisallowChatParticipants(chats : chats);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3914272646,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class PrivacyValueAllowContacts {
    static const CONSTRUCTOR_ID = 4294843308;
    static const SUBCLASS_OF_ID = 3954700912;
    final classType = "constructor";
    final ID = 4294843308;


	PrivacyValueAllowContacts();

	static PrivacyValueAllowContacts fromReader(BinaryReader reader) {
	var temp,len;		return new PrivacyValueAllowContacts();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4294843308,4),].expand((element) => element).toList();}

}

class PrivacyValueAllowAll {
    static const CONSTRUCTOR_ID = 1698855810;
    static const SUBCLASS_OF_ID = 3954700912;
    final classType = "constructor";
    final ID = 1698855810;


	PrivacyValueAllowAll();

	static PrivacyValueAllowAll fromReader(BinaryReader reader) {
	var temp,len;		return new PrivacyValueAllowAll();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1698855810,4),].expand((element) => element).toList();}

}

class PrivacyValueAllowUsers {
    static const CONSTRUCTOR_ID = 3096469426;
    static const SUBCLASS_OF_ID = 3954700912;
    final classType = "constructor";
    final ID = 3096469426;
	List<BigInt> users;


	PrivacyValueAllowUsers({required this.users});

	static PrivacyValueAllowUsers fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.readLong());
}		return new PrivacyValueAllowUsers(users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3096469426,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class PrivacyValueDisallowContacts {
    static const CONSTRUCTOR_ID = 4169726490;
    static const SUBCLASS_OF_ID = 3954700912;
    final classType = "constructor";
    final ID = 4169726490;


	PrivacyValueDisallowContacts();

	static PrivacyValueDisallowContacts fromReader(BinaryReader reader) {
	var temp,len;		return new PrivacyValueDisallowContacts();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4169726490,4),].expand((element) => element).toList();}

}

class PrivacyValueDisallowAll {
    static const CONSTRUCTOR_ID = 2339628899;
    static const SUBCLASS_OF_ID = 3954700912;
    final classType = "constructor";
    final ID = 2339628899;


	PrivacyValueDisallowAll();

	static PrivacyValueDisallowAll fromReader(BinaryReader reader) {
	var temp,len;		return new PrivacyValueDisallowAll();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2339628899,4),].expand((element) => element).toList();}

}

class PrivacyValueDisallowUsers {
    static const CONSTRUCTOR_ID = 3831632193;
    static const SUBCLASS_OF_ID = 3954700912;
    final classType = "constructor";
    final ID = 3831632193;
	List<BigInt> users;


	PrivacyValueDisallowUsers({required this.users});

	static PrivacyValueDisallowUsers fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.readLong());
}		return new PrivacyValueDisallowUsers(users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3831632193,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class PrivacyValueAllowChatParticipants {
    static const CONSTRUCTOR_ID = 1796427406;
    static const SUBCLASS_OF_ID = 3954700912;
    final classType = "constructor";
    final ID = 1796427406;
	List<BigInt> chats;


	PrivacyValueAllowChatParticipants({required this.chats});

	static PrivacyValueAllowChatParticipants fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.readLong());
}		return new PrivacyValueAllowChatParticipants(chats : chats);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1796427406,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class PrivacyValueDisallowChatParticipants {
    static const CONSTRUCTOR_ID = 1103656293;
    static const SUBCLASS_OF_ID = 3954700912;
    final classType = "constructor";
    final ID = 1103656293;
	List<BigInt> chats;


	PrivacyValueDisallowChatParticipants({required this.chats});

	static PrivacyValueDisallowChatParticipants fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.readLong());
}		return new PrivacyValueDisallowChatParticipants(chats : chats);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1103656293,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats.length,4,little:true,signed:true),this.chats.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class AccountDaysTTL {
    static const CONSTRUCTOR_ID = 3100684255;
    static const SUBCLASS_OF_ID = 3131284872;
    final classType = "constructor";
    final ID = 3100684255;
	int days;


	AccountDaysTTL({required this.days});

	static AccountDaysTTL fromReader(BinaryReader reader) {
	var temp,len;var days = reader.readInt();		return new AccountDaysTTL(days : days);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3100684255,4),readBufferFromBigInt(this.days,4,little:true,signed:true),].expand((element) => element).toList();}

}

class DocumentAttributeImageSize {
    static const CONSTRUCTOR_ID = 1815593308;
    static const SUBCLASS_OF_ID = 4146719643;
    final classType = "constructor";
    final ID = 1815593308;
	int w;
	int h;


	DocumentAttributeImageSize({required this.w, required this.h});

	static DocumentAttributeImageSize fromReader(BinaryReader reader) {
	var temp,len;var w = reader.readInt();var h = reader.readInt();		return new DocumentAttributeImageSize(w : w, h : h);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1815593308,4),readBufferFromBigInt(this.w,4,little:true,signed:true),readBufferFromBigInt(this.h,4,little:true,signed:true),].expand((element) => element).toList();}

}

class DocumentAttributeAnimated {
    static const CONSTRUCTOR_ID = 297109817;
    static const SUBCLASS_OF_ID = 4146719643;
    final classType = "constructor";
    final ID = 297109817;


	DocumentAttributeAnimated();

	static DocumentAttributeAnimated fromReader(BinaryReader reader) {
	var temp,len;		return new DocumentAttributeAnimated();
	}
	List<int> getBytes(){return [readBufferFromBigInt(297109817,4),].expand((element) => element).toList();}

}

class DocumentAttributeSticker {
    static const CONSTRUCTOR_ID = 1662637586;
    static const SUBCLASS_OF_ID = 4146719643;
    final classType = "constructor";
    final ID = 1662637586;
	bool mask;
	String alt;
	var stickerset;
	var maskCoords;


	DocumentAttributeSticker({required this.mask, required this.alt, required this.stickerset, required this.maskCoords});

	static DocumentAttributeSticker fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final mask = false;var alt = reader.tgReadString();var stickerset = reader.tgReadObject();var maskCoords;if ((flags & 1)==1){maskCoords = reader.tgReadObject(); } else {maskCoords=null;}		return new DocumentAttributeSticker(mask : mask, alt : alt, stickerset : stickerset, maskCoords : maskCoords);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1662637586,4),[0,0,0,0],serializeBytes(this.alt),(this.stickerset.getBytes() as List<int>),(this.maskCoords==null||this.maskCoords==false)?new List<int>.empty():[(this.maskCoords.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class DocumentAttributeVideo {
    static const CONSTRUCTOR_ID = 250621158;
    static const SUBCLASS_OF_ID = 4146719643;
    final classType = "constructor";
    final ID = 250621158;
	bool roundMessage;
	bool supportsStreaming;
	int duration;
	int w;
	int h;


	DocumentAttributeVideo({required this.roundMessage, required this.supportsStreaming, required this.duration, required this.w, required this.h});

	static DocumentAttributeVideo fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final roundMessage = false;final supportsStreaming = false;var duration = reader.readInt();var w = reader.readInt();var h = reader.readInt();		return new DocumentAttributeVideo(roundMessage : roundMessage, supportsStreaming : supportsStreaming, duration : duration, w : w, h : h);
	}
	List<int> getBytes(){return [readBufferFromBigInt(250621158,4),[0,0,0,0],readBufferFromBigInt(this.duration,4,little:true,signed:true),readBufferFromBigInt(this.w,4,little:true,signed:true),readBufferFromBigInt(this.h,4,little:true,signed:true),].expand((element) => element).toList();}

}

class DocumentAttributeAudio {
    static const CONSTRUCTOR_ID = 2555574726;
    static const SUBCLASS_OF_ID = 4146719643;
    final classType = "constructor";
    final ID = 2555574726;
	bool voice;
	int duration;
	String title;
	String performer;
	List<int> waveform;


	DocumentAttributeAudio({required this.voice, required this.duration, required this.title, required this.performer, required this.waveform});

	static DocumentAttributeAudio fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final voice = false;var duration = reader.readInt();var title;if ((flags & 1)==1){title = reader.tgReadString(); } else {title=null;}var performer;if ((flags & 2)==1){performer = reader.tgReadString(); } else {performer=null;}var waveform;if ((flags & 4)==1){waveform = reader.tgReadBytes(); } else {waveform=null;}		return new DocumentAttributeAudio(voice : voice, duration : duration, title : title, performer : performer, waveform : waveform);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2555574726,4),[0,0,0,0],readBufferFromBigInt(this.duration,4,little:true,signed:true),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),(this.performer==null||this.performer==false)?new List<int>.empty():[serializeBytes(this.performer)].expand((element) => element).toList(),(this.waveform==null||this.waveform==false)?new List<int>.empty():[serializeBytes(this.waveform)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class DocumentAttributeFilename {
    static const CONSTRUCTOR_ID = 358154344;
    static const SUBCLASS_OF_ID = 4146719643;
    final classType = "constructor";
    final ID = 358154344;
	String fileName;


	DocumentAttributeFilename({required this.fileName});

	static DocumentAttributeFilename fromReader(BinaryReader reader) {
	var temp,len;var fileName = reader.tgReadString();		return new DocumentAttributeFilename(fileName : fileName);
	}
	List<int> getBytes(){return [readBufferFromBigInt(358154344,4),serializeBytes(this.fileName),].expand((element) => element).toList();}

}

class DocumentAttributeHasStickers {
    static const CONSTRUCTOR_ID = 2550256375;
    static const SUBCLASS_OF_ID = 4146719643;
    final classType = "constructor";
    final ID = 2550256375;


	DocumentAttributeHasStickers();

	static DocumentAttributeHasStickers fromReader(BinaryReader reader) {
	var temp,len;		return new DocumentAttributeHasStickers();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2550256375,4),].expand((element) => element).toList();}

}

class StickerPack {
    static const CONSTRUCTOR_ID = 313694676;
    static const SUBCLASS_OF_ID = 2683282644;
    final classType = "constructor";
    final ID = 313694676;
	String emoticon;
	List<BigInt> documents;


	StickerPack({required this.emoticon, required this.documents});

	static StickerPack fromReader(BinaryReader reader) {
	var temp,len;var emoticon = reader.tgReadString();reader.readInt();
List<BigInt> documents = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		documents.add(reader.readLong());
}		return new StickerPack(emoticon : emoticon, documents : documents);
	}
	List<int> getBytes(){return [readBufferFromBigInt(313694676,4),serializeBytes(this.emoticon),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.documents.length,4,little:true,signed:true),this.documents.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class WebPageEmpty {
    static const CONSTRUCTOR_ID = 3943987176;
    static const SUBCLASS_OF_ID = 1437168769;
    final classType = "constructor";
    final ID = 3943987176;
	BigInt id;


	WebPageEmpty({required this.id});

	static WebPageEmpty fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();		return new WebPageEmpty(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3943987176,4),readBufferFromBigInt(this.id,8,little:true,signed:true),].expand((element) => element).toList();}

}

class WebPagePending {
    static const CONSTRUCTOR_ID = 3313949212;
    static const SUBCLASS_OF_ID = 1437168769;
    final classType = "constructor";
    final ID = 3313949212;
	BigInt id;
	int date;


	WebPagePending({required this.id, required this.date});

	static WebPagePending fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var date = reader.readInt();		return new WebPagePending(id : id, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3313949212,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class WebPage {
    static const CONSTRUCTOR_ID = 3902555570;
    static const SUBCLASS_OF_ID = 1437168769;
    final classType = "constructor";
    final ID = 3902555570;
	BigInt id;
	String url;
	String displayUrl;
	int hash;
	String type;
	String siteName;
	String title;
	String description;
	var photo;
	String embedUrl;
	String embedType;
	int embedWidth;
	int embedHeight;
	int duration;
	String author;
	var document;
	var cachedPage;
	List<dynamic> attributes;


	WebPage({required this.id, required this.url, required this.displayUrl, required this.hash, required this.type, required this.siteName, required this.title, required this.description, required this.photo, required this.embedUrl, required this.embedType, required this.embedWidth, required this.embedHeight, required this.duration, required this.author, required this.document, required this.cachedPage, required this.attributes});

	static WebPage fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var id = reader.readLong();var url = reader.tgReadString();var displayUrl = reader.tgReadString();var hash = reader.readInt();var type;if ((flags & 1)==1){type = reader.tgReadString(); } else {type=null;}var siteName;if ((flags & 2)==1){siteName = reader.tgReadString(); } else {siteName=null;}var title;if ((flags & 4)==1){title = reader.tgReadString(); } else {title=null;}var description;if ((flags & 8)==1){description = reader.tgReadString(); } else {description=null;}var photo;if ((flags & 16)==1){photo = reader.tgReadObject(); } else {photo=null;}var embedUrl;if ((flags & 32)==1){embedUrl = reader.tgReadString(); } else {embedUrl=null;}var embedType;if ((flags & 32)==1){embedType = reader.tgReadString(); } else {embedType=null;}var embedWidth;if ((flags & 64)==1){embedWidth = reader.readInt(); } else {embedWidth=null;}var embedHeight;if ((flags & 64)==1){embedHeight = reader.readInt(); } else {embedHeight=null;}var duration;if ((flags & 128)==1){duration = reader.readInt(); } else {duration=null;}var author;if ((flags & 256)==1){author = reader.tgReadString(); } else {author=null;}var document;if ((flags & 512)==1){document = reader.tgReadObject(); } else {document=null;}var cachedPage;if ((flags & 1024)==1){cachedPage = reader.tgReadObject(); } else {cachedPage=null;}var attributes;if ((flags & 4096)==1){reader.readInt();
List<dynamic> attributes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		attributes.add(reader.tgReadObject());
} } else {attributes=null;}		return new WebPage(id : id, url : url, displayUrl : displayUrl, hash : hash, type : type, siteName : siteName, title : title, description : description, photo : photo, embedUrl : embedUrl, embedType : embedType, embedWidth : embedWidth, embedHeight : embedHeight, duration : duration, author : author, document : document, cachedPage : cachedPage, attributes : attributes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3902555570,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),serializeBytes(this.url),serializeBytes(this.displayUrl),readBufferFromBigInt(this.hash,4,little:true,signed:true),(this.type==null||this.type==false)?new List<int>.empty():[serializeBytes(this.type)].expand((element) => element).toList(),(this.siteName==null||this.siteName==false)?new List<int>.empty():[serializeBytes(this.siteName)].expand((element) => element).toList(),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),(this.description==null||this.description==false)?new List<int>.empty():[serializeBytes(this.description)].expand((element) => element).toList(),(this.photo==null||this.photo==false)?new List<int>.empty():[(this.photo.getBytes() as List<int>)].expand((element) => element).toList(),(this.embedUrl==null||this.embedUrl==false)?new List<int>.empty():[serializeBytes(this.embedUrl)].expand((element) => element).toList(),(this.embedType==null||this.embedType==false)?new List<int>.empty():[serializeBytes(this.embedType)].expand((element) => element).toList(),(this.embedWidth==null||this.embedWidth==false)?new List<int>.empty():[readBufferFromBigInt(this.embedWidth,4,little:true,signed:true)].expand((element) => element).toList(),(this.embedHeight==null||this.embedHeight==false)?new List<int>.empty():[readBufferFromBigInt(this.embedHeight,4,little:true,signed:true)].expand((element) => element).toList(),(this.duration==null||this.duration==false)?new List<int>.empty():[readBufferFromBigInt(this.duration,4,little:true,signed:true)].expand((element) => element).toList(),(this.author==null||this.author==false)?new List<int>.empty():[serializeBytes(this.author)].expand((element) => element).toList(),(this.document==null||this.document==false)?new List<int>.empty():[(this.document.getBytes() as List<int>)].expand((element) => element).toList(),(this.cachedPage==null||this.cachedPage==false)?new List<int>.empty():[(this.cachedPage.getBytes() as List<int>)].expand((element) => element).toList(),(this.attributes==null||this.attributes==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.attributes.length,4,little:true,signed:true),this.attributes.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class WebPageNotModified {
    static const CONSTRUCTOR_ID = 1930545681;
    static const SUBCLASS_OF_ID = 1437168769;
    final classType = "constructor";
    final ID = 1930545681;
	int cachedPageViews;


	WebPageNotModified({required this.cachedPageViews});

	static WebPageNotModified fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var cachedPageViews;if ((flags & 1)==1){cachedPageViews = reader.readInt(); } else {cachedPageViews=null;}		return new WebPageNotModified(cachedPageViews : cachedPageViews);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1930545681,4),[0,0,0,0],(this.cachedPageViews==null||this.cachedPageViews==false)?new List<int>.empty():[readBufferFromBigInt(this.cachedPageViews,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class Authorization {
    static const CONSTRUCTOR_ID = 2902578717;
    static const SUBCLASS_OF_ID = 3373514778;
    final classType = "constructor";
    final ID = 2902578717;
	bool current;
	bool officialApp;
	bool passwordPending;
	bool encryptedRequestsDisabled;
	bool callRequestsDisabled;
	BigInt hash;
	String deviceModel;
	String platform;
	String systemVersion;
	int apiId;
	String appName;
	String appVersion;
	int dateCreated;
	int dateActive;
	String ip;
	String country;
	String region;


	Authorization({required this.current, required this.officialApp, required this.passwordPending, required this.encryptedRequestsDisabled, required this.callRequestsDisabled, required this.hash, required this.deviceModel, required this.platform, required this.systemVersion, required this.apiId, required this.appName, required this.appVersion, required this.dateCreated, required this.dateActive, required this.ip, required this.country, required this.region});

	static Authorization fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final current = false;final officialApp = false;final passwordPending = false;final encryptedRequestsDisabled = false;final callRequestsDisabled = false;var hash = reader.readLong();var deviceModel = reader.tgReadString();var platform = reader.tgReadString();var systemVersion = reader.tgReadString();var apiId = reader.readInt();var appName = reader.tgReadString();var appVersion = reader.tgReadString();var dateCreated = reader.readInt();var dateActive = reader.readInt();var ip = reader.tgReadString();var country = reader.tgReadString();var region = reader.tgReadString();		return new Authorization(current : current, officialApp : officialApp, passwordPending : passwordPending, encryptedRequestsDisabled : encryptedRequestsDisabled, callRequestsDisabled : callRequestsDisabled, hash : hash, deviceModel : deviceModel, platform : platform, systemVersion : systemVersion, apiId : apiId, appName : appName, appVersion : appVersion, dateCreated : dateCreated, dateActive : dateActive, ip : ip, country : country, region : region);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2902578717,4),[0,0,0,0],readBufferFromBigInt(this.hash,8,little:true,signed:true),serializeBytes(this.deviceModel),serializeBytes(this.platform),serializeBytes(this.systemVersion),readBufferFromBigInt(this.apiId,4,little:true,signed:true),serializeBytes(this.appName),serializeBytes(this.appVersion),readBufferFromBigInt(this.dateCreated,4,little:true,signed:true),readBufferFromBigInt(this.dateActive,4,little:true,signed:true),serializeBytes(this.ip),serializeBytes(this.country),serializeBytes(this.region),].expand((element) => element).toList();}

}

class ReceivedNotifyMessage {
    static const CONSTRUCTOR_ID = 2743383929;
    static const SUBCLASS_OF_ID = 2841786398;
    final classType = "constructor";
    final ID = 2743383929;
	int id;
	int flags;


	ReceivedNotifyMessage({required this.id, required this.flags});

	static ReceivedNotifyMessage fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readInt();var flags = reader.readInt();		return new ReceivedNotifyMessage(id : id, flags : flags);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2743383929,4),readBufferFromBigInt(this.id,4,little:true,signed:true),readBufferFromBigInt(this.flags,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ChatInviteExported {
    static const CONSTRUCTOR_ID = 179611673;
    static const SUBCLASS_OF_ID = 3027536472;
    final classType = "constructor";
    final ID = 179611673;
	bool revoked;
	bool permanent;
	bool requestNeeded;
	String link;
	BigInt adminId;
	int date;
	int startDate;
	int expireDate;
	int usageLimit;
	int usage;
	int requested;
	String title;


	ChatInviteExported({required this.revoked, required this.permanent, required this.requestNeeded, required this.link, required this.adminId, required this.date, required this.startDate, required this.expireDate, required this.usageLimit, required this.usage, required this.requested, required this.title});

	static ChatInviteExported fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final revoked = false;final permanent = false;final requestNeeded = false;var link = reader.tgReadString();var adminId = reader.readLong();var date = reader.readInt();var startDate;if ((flags & 16)==1){startDate = reader.readInt(); } else {startDate=null;}var expireDate;if ((flags & 2)==1){expireDate = reader.readInt(); } else {expireDate=null;}var usageLimit;if ((flags & 4)==1){usageLimit = reader.readInt(); } else {usageLimit=null;}var usage;if ((flags & 8)==1){usage = reader.readInt(); } else {usage=null;}var requested;if ((flags & 128)==1){requested = reader.readInt(); } else {requested=null;}var title;if ((flags & 256)==1){title = reader.tgReadString(); } else {title=null;}		return new ChatInviteExported(revoked : revoked, permanent : permanent, requestNeeded : requestNeeded, link : link, adminId : adminId, date : date, startDate : startDate, expireDate : expireDate, usageLimit : usageLimit, usage : usage, requested : requested, title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(179611673,4),[0,0,0,0],serializeBytes(this.link),readBufferFromBigInt(this.adminId,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),(this.startDate==null||this.startDate==false)?new List<int>.empty():[readBufferFromBigInt(this.startDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.expireDate==null||this.expireDate==false)?new List<int>.empty():[readBufferFromBigInt(this.expireDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.usageLimit==null||this.usageLimit==false)?new List<int>.empty():[readBufferFromBigInt(this.usageLimit,4,little:true,signed:true)].expand((element) => element).toList(),(this.usage==null||this.usage==false)?new List<int>.empty():[readBufferFromBigInt(this.usage,4,little:true,signed:true)].expand((element) => element).toList(),(this.requested==null||this.requested==false)?new List<int>.empty():[readBufferFromBigInt(this.requested,4,little:true,signed:true)].expand((element) => element).toList(),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChatInvitePublicJoinRequests {
    static const CONSTRUCTOR_ID = 3977280183;
    static const SUBCLASS_OF_ID = 3027536472;
    final classType = "constructor";
    final ID = 3977280183;


	ChatInvitePublicJoinRequests();

	static ChatInvitePublicJoinRequests fromReader(BinaryReader reader) {
	var temp,len;		return new ChatInvitePublicJoinRequests();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3977280183,4),].expand((element) => element).toList();}

}

class ChatInviteAlready {
    static const CONSTRUCTOR_ID = 1516793212;
    static const SUBCLASS_OF_ID = 72750902;
    final classType = "constructor";
    final ID = 1516793212;
	var chat;


	ChatInviteAlready({required this.chat});

	static ChatInviteAlready fromReader(BinaryReader reader) {
	var temp,len;var chat = reader.tgReadObject();		return new ChatInviteAlready(chat : chat);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1516793212,4),(this.chat.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChatInvite {
    static const CONSTRUCTOR_ID = 806110401;
    static const SUBCLASS_OF_ID = 72750902;
    final classType = "constructor";
    final ID = 806110401;
	bool channel;
	bool broadcast;
	bool public;
	bool megagroup;
	bool requestNeeded;
	String title;
	String about;
	var photo;
	int participantsCount;
	List<dynamic> participants;


	ChatInvite({required this.channel, required this.broadcast, required this.public, required this.megagroup, required this.requestNeeded, required this.title, required this.about, required this.photo, required this.participantsCount, required this.participants});

	static ChatInvite fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final channel = false;final broadcast = false;final public = false;final megagroup = false;final requestNeeded = false;var title = reader.tgReadString();var about;if ((flags & 32)==1){about = reader.tgReadString(); } else {about=null;}var photo = reader.tgReadObject();var participantsCount = reader.readInt();var participants;if ((flags & 16)==1){reader.readInt();
List<dynamic> participants = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		participants.add(reader.tgReadObject());
} } else {participants=null;}		return new ChatInvite(channel : channel, broadcast : broadcast, public : public, megagroup : megagroup, requestNeeded : requestNeeded, title : title, about : about, photo : photo, participantsCount : participantsCount, participants : participants);
	}
	List<int> getBytes(){return [readBufferFromBigInt(806110401,4),[0,0,0,0],serializeBytes(this.title),(this.about==null||this.about==false)?new List<int>.empty():[serializeBytes(this.about)].expand((element) => element).toList(),(this.photo.getBytes() as List<int>),readBufferFromBigInt(this.participantsCount,4,little:true,signed:true),(this.participants==null||this.participants==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.participants.length,4,little:true,signed:true),this.participants.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChatInvitePeek {
    static const CONSTRUCTOR_ID = 1634294960;
    static const SUBCLASS_OF_ID = 72750902;
    final classType = "constructor";
    final ID = 1634294960;
	var chat;
	int expires;


	ChatInvitePeek({required this.chat, required this.expires});

	static ChatInvitePeek fromReader(BinaryReader reader) {
	var temp,len;var chat = reader.tgReadObject();var expires = reader.readInt();		return new ChatInvitePeek(chat : chat, expires : expires);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1634294960,4),(this.chat.getBytes() as List<int>),readBufferFromBigInt(this.expires,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputStickerSetEmpty {
    static const CONSTRUCTOR_ID = 4290128789;
    static const SUBCLASS_OF_ID = 1034127786;
    final classType = "constructor";
    final ID = 4290128789;


	InputStickerSetEmpty();

	static InputStickerSetEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new InputStickerSetEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4290128789,4),].expand((element) => element).toList();}

}

class InputStickerSetID {
    static const CONSTRUCTOR_ID = 2649203305;
    static const SUBCLASS_OF_ID = 1034127786;
    final classType = "constructor";
    final ID = 2649203305;
	BigInt id;
	BigInt accessHash;


	InputStickerSetID({required this.id, required this.accessHash});

	static InputStickerSetID fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();		return new InputStickerSetID(id : id, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2649203305,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputStickerSetShortName {
    static const CONSTRUCTOR_ID = 2250033312;
    static const SUBCLASS_OF_ID = 1034127786;
    final classType = "constructor";
    final ID = 2250033312;
	String shortName;


	InputStickerSetShortName({required this.shortName});

	static InputStickerSetShortName fromReader(BinaryReader reader) {
	var temp,len;var shortName = reader.tgReadString();		return new InputStickerSetShortName(shortName : shortName);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2250033312,4),serializeBytes(this.shortName),].expand((element) => element).toList();}

}

class InputStickerSetAnimatedEmoji {
    static const CONSTRUCTOR_ID = 42402760;
    static const SUBCLASS_OF_ID = 1034127786;
    final classType = "constructor";
    final ID = 42402760;


	InputStickerSetAnimatedEmoji();

	static InputStickerSetAnimatedEmoji fromReader(BinaryReader reader) {
	var temp,len;		return new InputStickerSetAnimatedEmoji();
	}
	List<int> getBytes(){return [readBufferFromBigInt(42402760,4),].expand((element) => element).toList();}

}

class InputStickerSetDice {
    static const CONSTRUCTOR_ID = 3867103758;
    static const SUBCLASS_OF_ID = 1034127786;
    final classType = "constructor";
    final ID = 3867103758;
	String emoticon;


	InputStickerSetDice({required this.emoticon});

	static InputStickerSetDice fromReader(BinaryReader reader) {
	var temp,len;var emoticon = reader.tgReadString();		return new InputStickerSetDice(emoticon : emoticon);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3867103758,4),serializeBytes(this.emoticon),].expand((element) => element).toList();}

}

class InputStickerSetAnimatedEmojiAnimations {
    static const CONSTRUCTOR_ID = 215889721;
    static const SUBCLASS_OF_ID = 1034127786;
    final classType = "constructor";
    final ID = 215889721;


	InputStickerSetAnimatedEmojiAnimations();

	static InputStickerSetAnimatedEmojiAnimations fromReader(BinaryReader reader) {
	var temp,len;		return new InputStickerSetAnimatedEmojiAnimations();
	}
	List<int> getBytes(){return [readBufferFromBigInt(215889721,4),].expand((element) => element).toList();}

}

class StickerSet {
    static const CONSTRUCTOR_ID = 3621724538;
    static const SUBCLASS_OF_ID = 3134455697;
    final classType = "constructor";
    final ID = 3621724538;
	bool archived;
	bool official;
	bool masks;
	bool animated;
	bool videos;
	int installedDate;
	BigInt id;
	BigInt accessHash;
	String title;
	String shortName;
	List<dynamic> thumbs;
	int thumbDcId;
	int thumbVersion;
	int count;
	int hash;


	StickerSet({required this.archived, required this.official, required this.masks, required this.animated, required this.videos, required this.installedDate, required this.id, required this.accessHash, required this.title, required this.shortName, required this.thumbs, required this.thumbDcId, required this.thumbVersion, required this.count, required this.hash});

	static StickerSet fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final archived = false;final official = false;final masks = false;final animated = false;final videos = false;var installedDate;if ((flags & 1)==1){installedDate = reader.readInt(); } else {installedDate=null;}var id = reader.readLong();var accessHash = reader.readLong();var title = reader.tgReadString();var shortName = reader.tgReadString();var thumbs;if ((flags & 16)==1){reader.readInt();
List<dynamic> thumbs = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		thumbs.add(reader.tgReadObject());
} } else {thumbs=null;}var thumbDcId;if ((flags & 16)==1){thumbDcId = reader.readInt(); } else {thumbDcId=null;}var thumbVersion;if ((flags & 16)==1){thumbVersion = reader.readInt(); } else {thumbVersion=null;}var count = reader.readInt();var hash = reader.readInt();		return new StickerSet(archived : archived, official : official, masks : masks, animated : animated, videos : videos, installedDate : installedDate, id : id, accessHash : accessHash, title : title, shortName : shortName, thumbs : thumbs, thumbDcId : thumbDcId, thumbVersion : thumbVersion, count : count, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3621724538,4),[0,0,0,0],(this.installedDate==null||this.installedDate==false)?new List<int>.empty():[readBufferFromBigInt(this.installedDate,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),serializeBytes(this.title),serializeBytes(this.shortName),(this.thumbs==null||this.thumbs==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.thumbs.length,4,little:true,signed:true),this.thumbs.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.thumbDcId==null||this.thumbDcId==false)?new List<int>.empty():[readBufferFromBigInt(this.thumbDcId,4,little:true,signed:true)].expand((element) => element).toList(),(this.thumbVersion==null||this.thumbVersion==false)?new List<int>.empty():[readBufferFromBigInt(this.thumbVersion,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.count,4,little:true,signed:true),readBufferFromBigInt(this.hash,4,little:true,signed:true),].expand((element) => element).toList();}

}

class BotCommand {
    static const CONSTRUCTOR_ID = 3262826695;
    static const SUBCLASS_OF_ID = 236872386;
    final classType = "constructor";
    final ID = 3262826695;
	String command;
	String description;


	BotCommand({required this.command, required this.description});

	static BotCommand fromReader(BinaryReader reader) {
	var temp,len;var command = reader.tgReadString();var description = reader.tgReadString();		return new BotCommand(command : command, description : description);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3262826695,4),serializeBytes(this.command),serializeBytes(this.description),].expand((element) => element).toList();}

}

class BotInfo {
    static const CONSTRUCTOR_ID = 2402290519;
    static const SUBCLASS_OF_ID = 4059496923;
    final classType = "constructor";
    final ID = 2402290519;
	BigInt userId;
	String description;
	var descriptionPhoto;
	var descriptionDocument;
	List<dynamic> commands;
	var menuButton;


	BotInfo({required this.userId, required this.description, required this.descriptionPhoto, required this.descriptionDocument, required this.commands, required this.menuButton});

	static BotInfo fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var userId;if ((flags & 1)==1){userId = reader.readLong(); } else {userId=null;}var description;if ((flags & 2)==1){description = reader.tgReadString(); } else {description=null;}var descriptionPhoto;if ((flags & 16)==1){descriptionPhoto = reader.tgReadObject(); } else {descriptionPhoto=null;}var descriptionDocument;if ((flags & 32)==1){descriptionDocument = reader.tgReadObject(); } else {descriptionDocument=null;}var commands;if ((flags & 4)==1){reader.readInt();
List<dynamic> commands = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		commands.add(reader.tgReadObject());
} } else {commands=null;}var menuButton;if ((flags & 8)==1){menuButton = reader.tgReadObject(); } else {menuButton=null;}		return new BotInfo(userId : userId, description : description, descriptionPhoto : descriptionPhoto, descriptionDocument : descriptionDocument, commands : commands, menuButton : menuButton);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2402290519,4),[0,0,0,0],(this.userId==null||this.userId==false)?new List<int>.empty():[readBufferFromBigInt(this.userId,8,little:true,signed:true)].expand((element) => element).toList(),(this.description==null||this.description==false)?new List<int>.empty():[serializeBytes(this.description)].expand((element) => element).toList(),(this.descriptionPhoto==null||this.descriptionPhoto==false)?new List<int>.empty():[(this.descriptionPhoto.getBytes() as List<int>)].expand((element) => element).toList(),(this.descriptionDocument==null||this.descriptionDocument==false)?new List<int>.empty():[(this.descriptionDocument.getBytes() as List<int>)].expand((element) => element).toList(),(this.commands==null||this.commands==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.commands.length,4,little:true,signed:true),this.commands.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.menuButton==null||this.menuButton==false)?new List<int>.empty():[(this.menuButton.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class KeyboardButton {
    static const CONSTRUCTOR_ID = 2734311552;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 2734311552;
	String text;


	KeyboardButton({required this.text});

	static KeyboardButton fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();		return new KeyboardButton(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2734311552,4),serializeBytes(this.text),].expand((element) => element).toList();}

}

class KeyboardButtonUrl {
    static const CONSTRUCTOR_ID = 629866245;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 629866245;
	String text;
	String url;


	KeyboardButtonUrl({required this.text, required this.url});

	static KeyboardButtonUrl fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();var url = reader.tgReadString();		return new KeyboardButtonUrl(text : text, url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(629866245,4),serializeBytes(this.text),serializeBytes(this.url),].expand((element) => element).toList();}

}

class KeyboardButtonCallback {
    static const CONSTRUCTOR_ID = 901503851;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 901503851;
	bool requiresPassword;
	String text;
	List<int> data;


	KeyboardButtonCallback({required this.requiresPassword, required this.text, required this.data});

	static KeyboardButtonCallback fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final requiresPassword = false;var text = reader.tgReadString();var data = reader.tgReadBytes();		return new KeyboardButtonCallback(requiresPassword : requiresPassword, text : text, data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(901503851,4),[0,0,0,0],serializeBytes(this.text),serializeBytes(this.data),].expand((element) => element).toList();}

}

class KeyboardButtonRequestPhone {
    static const CONSTRUCTOR_ID = 2976541737;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 2976541737;
	String text;


	KeyboardButtonRequestPhone({required this.text});

	static KeyboardButtonRequestPhone fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();		return new KeyboardButtonRequestPhone(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2976541737,4),serializeBytes(this.text),].expand((element) => element).toList();}

}

class KeyboardButtonRequestGeoLocation {
    static const CONSTRUCTOR_ID = 4235815743;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 4235815743;
	String text;


	KeyboardButtonRequestGeoLocation({required this.text});

	static KeyboardButtonRequestGeoLocation fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();		return new KeyboardButtonRequestGeoLocation(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4235815743,4),serializeBytes(this.text),].expand((element) => element).toList();}

}

class KeyboardButtonSwitchInline {
    static const CONSTRUCTOR_ID = 90744648;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 90744648;
	bool samePeer;
	String text;
	String query;


	KeyboardButtonSwitchInline({required this.samePeer, required this.text, required this.query});

	static KeyboardButtonSwitchInline fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final samePeer = false;var text = reader.tgReadString();var query = reader.tgReadString();		return new KeyboardButtonSwitchInline(samePeer : samePeer, text : text, query : query);
	}
	List<int> getBytes(){return [readBufferFromBigInt(90744648,4),[0,0,0,0],serializeBytes(this.text),serializeBytes(this.query),].expand((element) => element).toList();}

}

class KeyboardButtonGame {
    static const CONSTRUCTOR_ID = 1358175439;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 1358175439;
	String text;


	KeyboardButtonGame({required this.text});

	static KeyboardButtonGame fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();		return new KeyboardButtonGame(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1358175439,4),serializeBytes(this.text),].expand((element) => element).toList();}

}

class KeyboardButtonBuy {
    static const CONSTRUCTOR_ID = 2950250427;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 2950250427;
	String text;


	KeyboardButtonBuy({required this.text});

	static KeyboardButtonBuy fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();		return new KeyboardButtonBuy(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2950250427,4),serializeBytes(this.text),].expand((element) => element).toList();}

}

class KeyboardButtonUrlAuth {
    static const CONSTRUCTOR_ID = 280464681;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 280464681;
	String text;
	String fwdText;
	String url;
	int buttonId;


	KeyboardButtonUrlAuth({required this.text, required this.fwdText, required this.url, required this.buttonId});

	static KeyboardButtonUrlAuth fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var text = reader.tgReadString();var fwdText;if ((flags & 1)==1){fwdText = reader.tgReadString(); } else {fwdText=null;}var url = reader.tgReadString();var buttonId = reader.readInt();		return new KeyboardButtonUrlAuth(text : text, fwdText : fwdText, url : url, buttonId : buttonId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(280464681,4),[0,0,0,0],serializeBytes(this.text),(this.fwdText==null||this.fwdText==false)?new List<int>.empty():[serializeBytes(this.fwdText)].expand((element) => element).toList(),serializeBytes(this.url),readBufferFromBigInt(this.buttonId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputKeyboardButtonUrlAuth {
    static const CONSTRUCTOR_ID = 3492708308;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 3492708308;
	bool requestWriteAccess;
	String text;
	String fwdText;
	String url;
	var bot;


	InputKeyboardButtonUrlAuth({required this.requestWriteAccess, required this.text, required this.fwdText, required this.url, required this.bot});

	static InputKeyboardButtonUrlAuth fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final requestWriteAccess = false;var text = reader.tgReadString();var fwdText;if ((flags & 2)==1){fwdText = reader.tgReadString(); } else {fwdText=null;}var url = reader.tgReadString();var bot = reader.tgReadObject();		return new InputKeyboardButtonUrlAuth(requestWriteAccess : requestWriteAccess, text : text, fwdText : fwdText, url : url, bot : bot);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3492708308,4),[0,0,0,0],serializeBytes(this.text),(this.fwdText==null||this.fwdText==false)?new List<int>.empty():[serializeBytes(this.fwdText)].expand((element) => element).toList(),serializeBytes(this.url),(this.bot.getBytes() as List<int>),].expand((element) => element).toList();}

}

class KeyboardButtonRequestPoll {
    static const CONSTRUCTOR_ID = 3150401885;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 3150401885;
	bool quiz;
	String text;


	KeyboardButtonRequestPoll({required this.quiz, required this.text});

	static KeyboardButtonRequestPoll fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var quiz;if ((flags & 1)==1){quiz = reader.tgReadBool(); } else {quiz=null;}var text = reader.tgReadString();		return new KeyboardButtonRequestPoll(quiz : quiz, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3150401885,4),[0,0,0,0],(this.quiz==null||this.quiz==false)?new List<int>.empty():[[this.quiz ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),serializeBytes(this.text),].expand((element) => element).toList();}

}

class InputKeyboardButtonUserProfile {
    static const CONSTRUCTOR_ID = 3918005115;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 3918005115;
	String text;
	var userId;


	InputKeyboardButtonUserProfile({required this.text, required this.userId});

	static InputKeyboardButtonUserProfile fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();var userId = reader.tgReadObject();		return new InputKeyboardButtonUserProfile(text : text, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3918005115,4),serializeBytes(this.text),(this.userId.getBytes() as List<int>),].expand((element) => element).toList();}

}

class KeyboardButtonUserProfile {
    static const CONSTRUCTOR_ID = 814112961;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 814112961;
	String text;
	BigInt userId;


	KeyboardButtonUserProfile({required this.text, required this.userId});

	static KeyboardButtonUserProfile fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();var userId = reader.readLong();		return new KeyboardButtonUserProfile(text : text, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(814112961,4),serializeBytes(this.text),readBufferFromBigInt(this.userId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class KeyboardButtonWebView {
    static const CONSTRUCTOR_ID = 326529584;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 326529584;
	String text;
	String url;


	KeyboardButtonWebView({required this.text, required this.url});

	static KeyboardButtonWebView fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();var url = reader.tgReadString();		return new KeyboardButtonWebView(text : text, url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(326529584,4),serializeBytes(this.text),serializeBytes(this.url),].expand((element) => element).toList();}

}

class KeyboardButtonSimpleWebView {
    static const CONSTRUCTOR_ID = 2696958044;
    static const SUBCLASS_OF_ID = 195916963;
    final classType = "constructor";
    final ID = 2696958044;
	String text;
	String url;


	KeyboardButtonSimpleWebView({required this.text, required this.url});

	static KeyboardButtonSimpleWebView fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();var url = reader.tgReadString();		return new KeyboardButtonSimpleWebView(text : text, url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2696958044,4),serializeBytes(this.text),serializeBytes(this.url),].expand((element) => element).toList();}

}

class KeyboardButtonRow {
    static const CONSTRUCTOR_ID = 2002815875;
    static const SUBCLASS_OF_ID = 2222403758;
    final classType = "constructor";
    final ID = 2002815875;
	List<dynamic> buttons;


	KeyboardButtonRow({required this.buttons});

	static KeyboardButtonRow fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> buttons = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		buttons.add(reader.tgReadObject());
}		return new KeyboardButtonRow(buttons : buttons);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2002815875,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.buttons.length,4,little:true,signed:true),this.buttons.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class ReplyKeyboardHide {
    static const CONSTRUCTOR_ID = 2688441221;
    static const SUBCLASS_OF_ID = 3806400242;
    final classType = "constructor";
    final ID = 2688441221;
	bool selective;


	ReplyKeyboardHide({required this.selective});

	static ReplyKeyboardHide fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final selective = false;		return new ReplyKeyboardHide(selective : selective);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2688441221,4),[0,0,0,0],].expand((element) => element).toList();}

}

class ReplyKeyboardForceReply {
    static const CONSTRUCTOR_ID = 2259946248;
    static const SUBCLASS_OF_ID = 3806400242;
    final classType = "constructor";
    final ID = 2259946248;
	bool singleUse;
	bool selective;
	String placeholder;


	ReplyKeyboardForceReply({required this.singleUse, required this.selective, required this.placeholder});

	static ReplyKeyboardForceReply fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final singleUse = false;final selective = false;var placeholder;if ((flags & 8)==1){placeholder = reader.tgReadString(); } else {placeholder=null;}		return new ReplyKeyboardForceReply(singleUse : singleUse, selective : selective, placeholder : placeholder);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2259946248,4),[0,0,0,0],(this.placeholder==null||this.placeholder==false)?new List<int>.empty():[serializeBytes(this.placeholder)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ReplyKeyboardMarkup {
    static const CONSTRUCTOR_ID = 2245892561;
    static const SUBCLASS_OF_ID = 3806400242;
    final classType = "constructor";
    final ID = 2245892561;
	bool resize;
	bool singleUse;
	bool selective;
	List<dynamic> rows;
	String placeholder;


	ReplyKeyboardMarkup({required this.resize, required this.singleUse, required this.selective, required this.rows, required this.placeholder});

	static ReplyKeyboardMarkup fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final resize = false;final singleUse = false;final selective = false;reader.readInt();
List<dynamic> rows = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		rows.add(reader.tgReadObject());
}var placeholder;if ((flags & 8)==1){placeholder = reader.tgReadString(); } else {placeholder=null;}		return new ReplyKeyboardMarkup(resize : resize, singleUse : singleUse, selective : selective, rows : rows, placeholder : placeholder);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2245892561,4),[0,0,0,0],readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.rows.length,4,little:true,signed:true),this.rows.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.placeholder==null||this.placeholder==false)?new List<int>.empty():[serializeBytes(this.placeholder)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ReplyInlineMarkup {
    static const CONSTRUCTOR_ID = 1218642516;
    static const SUBCLASS_OF_ID = 3806400242;
    final classType = "constructor";
    final ID = 1218642516;
	List<dynamic> rows;


	ReplyInlineMarkup({required this.rows});

	static ReplyInlineMarkup fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> rows = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		rows.add(reader.tgReadObject());
}		return new ReplyInlineMarkup(rows : rows);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1218642516,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.rows.length,4,little:true,signed:true),this.rows.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class MessageEntityUnknown {
    static const CONSTRUCTOR_ID = 3146955413;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 3146955413;
	int offset;
	int length;


	MessageEntityUnknown({required this.offset, required this.length});

	static MessageEntityUnknown fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityUnknown(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3146955413,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityMention {
    static const CONSTRUCTOR_ID = 4194588573;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 4194588573;
	int offset;
	int length;


	MessageEntityMention({required this.offset, required this.length});

	static MessageEntityMention fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityMention(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4194588573,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityHashtag {
    static const CONSTRUCTOR_ID = 1868782349;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 1868782349;
	int offset;
	int length;


	MessageEntityHashtag({required this.offset, required this.length});

	static MessageEntityHashtag fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityHashtag(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1868782349,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityBotCommand {
    static const CONSTRUCTOR_ID = 1827637959;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 1827637959;
	int offset;
	int length;


	MessageEntityBotCommand({required this.offset, required this.length});

	static MessageEntityBotCommand fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityBotCommand(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1827637959,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityUrl {
    static const CONSTRUCTOR_ID = 1859134776;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 1859134776;
	int offset;
	int length;


	MessageEntityUrl({required this.offset, required this.length});

	static MessageEntityUrl fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityUrl(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1859134776,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityEmail {
    static const CONSTRUCTOR_ID = 1692693954;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 1692693954;
	int offset;
	int length;


	MessageEntityEmail({required this.offset, required this.length});

	static MessageEntityEmail fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityEmail(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1692693954,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityBold {
    static const CONSTRUCTOR_ID = 3177253833;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 3177253833;
	int offset;
	int length;


	MessageEntityBold({required this.offset, required this.length});

	static MessageEntityBold fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityBold(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3177253833,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityItalic {
    static const CONSTRUCTOR_ID = 2188348256;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 2188348256;
	int offset;
	int length;


	MessageEntityItalic({required this.offset, required this.length});

	static MessageEntityItalic fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityItalic(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2188348256,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityCode {
    static const CONSTRUCTOR_ID = 681706865;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 681706865;
	int offset;
	int length;


	MessageEntityCode({required this.offset, required this.length});

	static MessageEntityCode fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityCode(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(681706865,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityPre {
    static const CONSTRUCTOR_ID = 1938967520;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 1938967520;
	int offset;
	int length;
	String language;


	MessageEntityPre({required this.offset, required this.length, required this.language});

	static MessageEntityPre fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();var language = reader.tgReadString();		return new MessageEntityPre(offset : offset, length : length, language : language);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1938967520,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),serializeBytes(this.language),].expand((element) => element).toList();}

}

class MessageEntityTextUrl {
    static const CONSTRUCTOR_ID = 1990644519;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 1990644519;
	int offset;
	int length;
	String url;


	MessageEntityTextUrl({required this.offset, required this.length, required this.url});

	static MessageEntityTextUrl fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();var url = reader.tgReadString();		return new MessageEntityTextUrl(offset : offset, length : length, url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1990644519,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),serializeBytes(this.url),].expand((element) => element).toList();}

}

class MessageEntityMentionName {
    static const CONSTRUCTOR_ID = 3699052864;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 3699052864;
	int offset;
	int length;
	BigInt userId;


	MessageEntityMentionName({required this.offset, required this.length, required this.userId});

	static MessageEntityMentionName fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();var userId = reader.readLong();		return new MessageEntityMentionName(offset : offset, length : length, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3699052864,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputMessageEntityMentionName {
    static const CONSTRUCTOR_ID = 546203849;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 546203849;
	int offset;
	int length;
	var userId;


	InputMessageEntityMentionName({required this.offset, required this.length, required this.userId});

	static InputMessageEntityMentionName fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();var userId = reader.tgReadObject();		return new InputMessageEntityMentionName(offset : offset, length : length, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(546203849,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),(this.userId.getBytes() as List<int>),].expand((element) => element).toList();}

}

class MessageEntityPhone {
    static const CONSTRUCTOR_ID = 2607407947;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 2607407947;
	int offset;
	int length;


	MessageEntityPhone({required this.offset, required this.length});

	static MessageEntityPhone fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityPhone(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2607407947,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityCashtag {
    static const CONSTRUCTOR_ID = 1280209983;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 1280209983;
	int offset;
	int length;


	MessageEntityCashtag({required this.offset, required this.length});

	static MessageEntityCashtag fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityCashtag(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1280209983,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityUnderline {
    static const CONSTRUCTOR_ID = 2622389899;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 2622389899;
	int offset;
	int length;


	MessageEntityUnderline({required this.offset, required this.length});

	static MessageEntityUnderline fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityUnderline(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2622389899,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityStrike {
    static const CONSTRUCTOR_ID = 3204879316;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 3204879316;
	int offset;
	int length;


	MessageEntityStrike({required this.offset, required this.length});

	static MessageEntityStrike fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityStrike(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3204879316,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityBlockquote {
    static const CONSTRUCTOR_ID = 34469328;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 34469328;
	int offset;
	int length;


	MessageEntityBlockquote({required this.offset, required this.length});

	static MessageEntityBlockquote fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityBlockquote(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(34469328,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntityBankCard {
    static const CONSTRUCTOR_ID = 1981704948;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 1981704948;
	int offset;
	int length;


	MessageEntityBankCard({required this.offset, required this.length});

	static MessageEntityBankCard fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntityBankCard(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1981704948,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageEntitySpoiler {
    static const CONSTRUCTOR_ID = 852137487;
    static const SUBCLASS_OF_ID = 3479443932;
    final classType = "constructor";
    final ID = 852137487;
	int offset;
	int length;


	MessageEntitySpoiler({required this.offset, required this.length});

	static MessageEntitySpoiler fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readInt();var length = reader.readInt();		return new MessageEntitySpoiler(offset : offset, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(852137487,4),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputChannelEmpty {
    static const CONSTRUCTOR_ID = 4002160262;
    static const SUBCLASS_OF_ID = 1089602301;
    final classType = "constructor";
    final ID = 4002160262;


	InputChannelEmpty();

	static InputChannelEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new InputChannelEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4002160262,4),].expand((element) => element).toList();}

}

class InputChannel {
    static const CONSTRUCTOR_ID = 4082822184;
    static const SUBCLASS_OF_ID = 1089602301;
    final classType = "constructor";
    final ID = 4082822184;
	BigInt channelId;
	BigInt accessHash;


	InputChannel({required this.channelId, required this.accessHash});

	static InputChannel fromReader(BinaryReader reader) {
	var temp,len;var channelId = reader.readLong();var accessHash = reader.readLong();		return new InputChannel(channelId : channelId, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4082822184,4),readBufferFromBigInt(this.channelId,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputChannelFromMessage {
    static const CONSTRUCTOR_ID = 1536380829;
    static const SUBCLASS_OF_ID = 1089602301;
    final classType = "constructor";
    final ID = 1536380829;
	var peer;
	int msgId;
	BigInt channelId;


	InputChannelFromMessage({required this.peer, required this.msgId, required this.channelId});

	static InputChannelFromMessage fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();var channelId = reader.readLong();		return new InputChannelFromMessage(peer : peer, msgId : msgId, channelId : channelId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1536380829,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),readBufferFromBigInt(this.channelId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageRange {
    static const CONSTRUCTOR_ID = 182649427;
    static const SUBCLASS_OF_ID = 3200730487;
    final classType = "constructor";
    final ID = 182649427;
	int minId;
	int maxId;


	MessageRange({required this.minId, required this.maxId});

	static MessageRange fromReader(BinaryReader reader) {
	var temp,len;var minId = reader.readInt();var maxId = reader.readInt();		return new MessageRange(minId : minId, maxId : maxId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(182649427,4),readBufferFromBigInt(this.minId,4,little:true,signed:true),readBufferFromBigInt(this.maxId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ChannelMessagesFilterEmpty {
    static const CONSTRUCTOR_ID = 2496933607;
    static const SUBCLASS_OF_ID = 322136662;
    final classType = "constructor";
    final ID = 2496933607;


	ChannelMessagesFilterEmpty();

	static ChannelMessagesFilterEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new ChannelMessagesFilterEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2496933607,4),].expand((element) => element).toList();}

}

class ChannelMessagesFilter {
    static const CONSTRUCTOR_ID = 3447183703;
    static const SUBCLASS_OF_ID = 322136662;
    final classType = "constructor";
    final ID = 3447183703;
	bool excludeNewMessages;
	List<dynamic> ranges;


	ChannelMessagesFilter({required this.excludeNewMessages, required this.ranges});

	static ChannelMessagesFilter fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final excludeNewMessages = false;reader.readInt();
List<dynamic> ranges = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		ranges.add(reader.tgReadObject());
}		return new ChannelMessagesFilter(excludeNewMessages : excludeNewMessages, ranges : ranges);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3447183703,4),[0,0,0,0],readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.ranges.length,4,little:true,signed:true),this.ranges.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class ChannelParticipant {
    static const CONSTRUCTOR_ID = 3222013888;
    static const SUBCLASS_OF_ID = 3653762072;
    final classType = "constructor";
    final ID = 3222013888;
	BigInt userId;
	int date;


	ChannelParticipant({required this.userId, required this.date});

	static ChannelParticipant fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var date = reader.readInt();		return new ChannelParticipant(userId : userId, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3222013888,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ChannelParticipantSelf {
    static const CONSTRUCTOR_ID = 900251559;
    static const SUBCLASS_OF_ID = 3653762072;
    final classType = "constructor";
    final ID = 900251559;
	bool viaRequest;
	BigInt userId;
	BigInt inviterId;
	int date;


	ChannelParticipantSelf({required this.viaRequest, required this.userId, required this.inviterId, required this.date});

	static ChannelParticipantSelf fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final viaRequest = false;var userId = reader.readLong();var inviterId = reader.readLong();var date = reader.readInt();		return new ChannelParticipantSelf(viaRequest : viaRequest, userId : userId, inviterId : inviterId, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(900251559,4),[0,0,0,0],readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.inviterId,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ChannelParticipantCreator {
    static const CONSTRUCTOR_ID = 803602899;
    static const SUBCLASS_OF_ID = 3653762072;
    final classType = "constructor";
    final ID = 803602899;
	BigInt userId;
	var adminRights;
	String rank;


	ChannelParticipantCreator({required this.userId, required this.adminRights, required this.rank});

	static ChannelParticipantCreator fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var userId = reader.readLong();var adminRights = reader.tgReadObject();var rank;if ((flags & 1)==1){rank = reader.tgReadString(); } else {rank=null;}		return new ChannelParticipantCreator(userId : userId, adminRights : adminRights, rank : rank);
	}
	List<int> getBytes(){return [readBufferFromBigInt(803602899,4),[0,0,0,0],readBufferFromBigInt(this.userId,8,little:true,signed:true),(this.adminRights.getBytes() as List<int>),(this.rank==null||this.rank==false)?new List<int>.empty():[serializeBytes(this.rank)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChannelParticipantAdmin {
    static const CONSTRUCTOR_ID = 885242707;
    static const SUBCLASS_OF_ID = 3653762072;
    final classType = "constructor";
    final ID = 885242707;
	bool canEdit;
	bool self;
	BigInt userId;
	BigInt inviterId;
	BigInt promotedBy;
	int date;
	var adminRights;
	String rank;


	ChannelParticipantAdmin({required this.canEdit, required this.self, required this.userId, required this.inviterId, required this.promotedBy, required this.date, required this.adminRights, required this.rank});

	static ChannelParticipantAdmin fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final canEdit = false;final self = false;var userId = reader.readLong();var inviterId;if ((flags & 2)==1){inviterId = reader.readLong(); } else {inviterId=null;}var promotedBy = reader.readLong();var date = reader.readInt();var adminRights = reader.tgReadObject();var rank;if ((flags & 4)==1){rank = reader.tgReadString(); } else {rank=null;}		return new ChannelParticipantAdmin(canEdit : canEdit, self : self, userId : userId, inviterId : inviterId, promotedBy : promotedBy, date : date, adminRights : adminRights, rank : rank);
	}
	List<int> getBytes(){return [readBufferFromBigInt(885242707,4),[0,0,0,0],readBufferFromBigInt(this.userId,8,little:true,signed:true),(this.inviterId==null||this.inviterId==false)?new List<int>.empty():[readBufferFromBigInt(this.inviterId,8,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.promotedBy,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),(this.adminRights.getBytes() as List<int>),(this.rank==null||this.rank==false)?new List<int>.empty():[serializeBytes(this.rank)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChannelParticipantBanned {
    static const CONSTRUCTOR_ID = 1844969806;
    static const SUBCLASS_OF_ID = 3653762072;
    final classType = "constructor";
    final ID = 1844969806;
	bool left;
	var peer;
	BigInt kickedBy;
	int date;
	var bannedRights;


	ChannelParticipantBanned({required this.left, required this.peer, required this.kickedBy, required this.date, required this.bannedRights});

	static ChannelParticipantBanned fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final left = false;var peer = reader.tgReadObject();var kickedBy = reader.readLong();var date = reader.readInt();var bannedRights = reader.tgReadObject();		return new ChannelParticipantBanned(left : left, peer : peer, kickedBy : kickedBy, date : date, bannedRights : bannedRights);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1844969806,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.kickedBy,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),(this.bannedRights.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelParticipantLeft {
    static const CONSTRUCTOR_ID = 453242886;
    static const SUBCLASS_OF_ID = 3653762072;
    final classType = "constructor";
    final ID = 453242886;
	var peer;


	ChannelParticipantLeft({required this.peer});

	static ChannelParticipantLeft fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new ChannelParticipantLeft(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(453242886,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelParticipantsRecent {
    static const CONSTRUCTOR_ID = 3728686201;
    static const SUBCLASS_OF_ID = 3209570131;
    final classType = "constructor";
    final ID = 3728686201;


	ChannelParticipantsRecent();

	static ChannelParticipantsRecent fromReader(BinaryReader reader) {
	var temp,len;		return new ChannelParticipantsRecent();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3728686201,4),].expand((element) => element).toList();}

}

class ChannelParticipantsAdmins {
    static const CONSTRUCTOR_ID = 3026225513;
    static const SUBCLASS_OF_ID = 3209570131;
    final classType = "constructor";
    final ID = 3026225513;


	ChannelParticipantsAdmins();

	static ChannelParticipantsAdmins fromReader(BinaryReader reader) {
	var temp,len;		return new ChannelParticipantsAdmins();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3026225513,4),].expand((element) => element).toList();}

}

class ChannelParticipantsKicked {
    static const CONSTRUCTOR_ID = 2746567045;
    static const SUBCLASS_OF_ID = 3209570131;
    final classType = "constructor";
    final ID = 2746567045;
	String q;


	ChannelParticipantsKicked({required this.q});

	static ChannelParticipantsKicked fromReader(BinaryReader reader) {
	var temp,len;var q = reader.tgReadString();		return new ChannelParticipantsKicked(q : q);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2746567045,4),serializeBytes(this.q),].expand((element) => element).toList();}

}

class ChannelParticipantsBots {
    static const CONSTRUCTOR_ID = 2966521435;
    static const SUBCLASS_OF_ID = 3209570131;
    final classType = "constructor";
    final ID = 2966521435;


	ChannelParticipantsBots();

	static ChannelParticipantsBots fromReader(BinaryReader reader) {
	var temp,len;		return new ChannelParticipantsBots();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2966521435,4),].expand((element) => element).toList();}

}

class ChannelParticipantsBanned {
    static const CONSTRUCTOR_ID = 338142689;
    static const SUBCLASS_OF_ID = 3209570131;
    final classType = "constructor";
    final ID = 338142689;
	String q;


	ChannelParticipantsBanned({required this.q});

	static ChannelParticipantsBanned fromReader(BinaryReader reader) {
	var temp,len;var q = reader.tgReadString();		return new ChannelParticipantsBanned(q : q);
	}
	List<int> getBytes(){return [readBufferFromBigInt(338142689,4),serializeBytes(this.q),].expand((element) => element).toList();}

}

class ChannelParticipantsSearch {
    static const CONSTRUCTOR_ID = 106343499;
    static const SUBCLASS_OF_ID = 3209570131;
    final classType = "constructor";
    final ID = 106343499;
	String q;


	ChannelParticipantsSearch({required this.q});

	static ChannelParticipantsSearch fromReader(BinaryReader reader) {
	var temp,len;var q = reader.tgReadString();		return new ChannelParticipantsSearch(q : q);
	}
	List<int> getBytes(){return [readBufferFromBigInt(106343499,4),serializeBytes(this.q),].expand((element) => element).toList();}

}

class ChannelParticipantsContacts {
    static const CONSTRUCTOR_ID = 3144345741;
    static const SUBCLASS_OF_ID = 3209570131;
    final classType = "constructor";
    final ID = 3144345741;
	String q;


	ChannelParticipantsContacts({required this.q});

	static ChannelParticipantsContacts fromReader(BinaryReader reader) {
	var temp,len;var q = reader.tgReadString();		return new ChannelParticipantsContacts(q : q);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3144345741,4),serializeBytes(this.q),].expand((element) => element).toList();}

}

class ChannelParticipantsMentions {
    static const CONSTRUCTOR_ID = 3763035371;
    static const SUBCLASS_OF_ID = 3209570131;
    final classType = "constructor";
    final ID = 3763035371;
	String q;
	int topMsgId;


	ChannelParticipantsMentions({required this.q, required this.topMsgId});

	static ChannelParticipantsMentions fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var q;if ((flags & 1)==1){q = reader.tgReadString(); } else {q=null;}var topMsgId;if ((flags & 2)==1){topMsgId = reader.readInt(); } else {topMsgId=null;}		return new ChannelParticipantsMentions(q : q, topMsgId : topMsgId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3763035371,4),[0,0,0,0],(this.q==null||this.q==false)?new List<int>.empty():[serializeBytes(this.q)].expand((element) => element).toList(),(this.topMsgId==null||this.topMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.topMsgId,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputBotInlineMessageMediaAuto {
    static const CONSTRUCTOR_ID = 864077702;
    static const SUBCLASS_OF_ID = 1408974864;
    final classType = "constructor";
    final ID = 864077702;
	String message;
	List<dynamic> entities;
	var replyMarkup;


	InputBotInlineMessageMediaAuto({required this.message, required this.entities, required this.replyMarkup});

	static InputBotInlineMessageMediaAuto fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var message = reader.tgReadString();var entities;if ((flags & 2)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new InputBotInlineMessageMediaAuto(message : message, entities : entities, replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(864077702,4),[0,0,0,0],serializeBytes(this.message),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputBotInlineMessageText {
    static const CONSTRUCTOR_ID = 1036876423;
    static const SUBCLASS_OF_ID = 1408974864;
    final classType = "constructor";
    final ID = 1036876423;
	bool noWebpage;
	String message;
	List<dynamic> entities;
	var replyMarkup;


	InputBotInlineMessageText({required this.noWebpage, required this.message, required this.entities, required this.replyMarkup});

	static InputBotInlineMessageText fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final noWebpage = false;var message = reader.tgReadString();var entities;if ((flags & 2)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new InputBotInlineMessageText(noWebpage : noWebpage, message : message, entities : entities, replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1036876423,4),[0,0,0,0],serializeBytes(this.message),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputBotInlineMessageMediaGeo {
    static const CONSTRUCTOR_ID = 2526190213;
    static const SUBCLASS_OF_ID = 1408974864;
    final classType = "constructor";
    final ID = 2526190213;
	var geoPoint;
	int heading;
	int period;
	int proximityNotificationRadius;
	var replyMarkup;


	InputBotInlineMessageMediaGeo({required this.geoPoint, required this.heading, required this.period, required this.proximityNotificationRadius, required this.replyMarkup});

	static InputBotInlineMessageMediaGeo fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var geoPoint = reader.tgReadObject();var heading;if ((flags & 1)==1){heading = reader.readInt(); } else {heading=null;}var period;if ((flags & 2)==1){period = reader.readInt(); } else {period=null;}var proximityNotificationRadius;if ((flags & 8)==1){proximityNotificationRadius = reader.readInt(); } else {proximityNotificationRadius=null;}var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new InputBotInlineMessageMediaGeo(geoPoint : geoPoint, heading : heading, period : period, proximityNotificationRadius : proximityNotificationRadius, replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2526190213,4),[0,0,0,0],(this.geoPoint.getBytes() as List<int>),(this.heading==null||this.heading==false)?new List<int>.empty():[readBufferFromBigInt(this.heading,4,little:true,signed:true)].expand((element) => element).toList(),(this.period==null||this.period==false)?new List<int>.empty():[readBufferFromBigInt(this.period,4,little:true,signed:true)].expand((element) => element).toList(),(this.proximityNotificationRadius==null||this.proximityNotificationRadius==false)?new List<int>.empty():[readBufferFromBigInt(this.proximityNotificationRadius,4,little:true,signed:true)].expand((element) => element).toList(),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputBotInlineMessageMediaVenue {
    static const CONSTRUCTOR_ID = 1098628881;
    static const SUBCLASS_OF_ID = 1408974864;
    final classType = "constructor";
    final ID = 1098628881;
	var geoPoint;
	String title;
	String address;
	String provider;
	String venueId;
	String venueType;
	var replyMarkup;


	InputBotInlineMessageMediaVenue({required this.geoPoint, required this.title, required this.address, required this.provider, required this.venueId, required this.venueType, required this.replyMarkup});

	static InputBotInlineMessageMediaVenue fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var geoPoint = reader.tgReadObject();var title = reader.tgReadString();var address = reader.tgReadString();var provider = reader.tgReadString();var venueId = reader.tgReadString();var venueType = reader.tgReadString();var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new InputBotInlineMessageMediaVenue(geoPoint : geoPoint, title : title, address : address, provider : provider, venueId : venueId, venueType : venueType, replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1098628881,4),[0,0,0,0],(this.geoPoint.getBytes() as List<int>),serializeBytes(this.title),serializeBytes(this.address),serializeBytes(this.provider),serializeBytes(this.venueId),serializeBytes(this.venueType),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputBotInlineMessageMediaContact {
    static const CONSTRUCTOR_ID = 2800599037;
    static const SUBCLASS_OF_ID = 1408974864;
    final classType = "constructor";
    final ID = 2800599037;
	String phoneNumber;
	String firstName;
	String lastName;
	String vcard;
	var replyMarkup;


	InputBotInlineMessageMediaContact({required this.phoneNumber, required this.firstName, required this.lastName, required this.vcard, required this.replyMarkup});

	static InputBotInlineMessageMediaContact fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var phoneNumber = reader.tgReadString();var firstName = reader.tgReadString();var lastName = reader.tgReadString();var vcard = reader.tgReadString();var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new InputBotInlineMessageMediaContact(phoneNumber : phoneNumber, firstName : firstName, lastName : lastName, vcard : vcard, replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2800599037,4),[0,0,0,0],serializeBytes(this.phoneNumber),serializeBytes(this.firstName),serializeBytes(this.lastName),serializeBytes(this.vcard),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputBotInlineMessageGame {
    static const CONSTRUCTOR_ID = 1262639204;
    static const SUBCLASS_OF_ID = 1408974864;
    final classType = "constructor";
    final ID = 1262639204;
	var replyMarkup;


	InputBotInlineMessageGame({required this.replyMarkup});

	static InputBotInlineMessageGame fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new InputBotInlineMessageGame(replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1262639204,4),[0,0,0,0],(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputBotInlineMessageMediaInvoice {
    static const CONSTRUCTOR_ID = 3622273573;
    static const SUBCLASS_OF_ID = 1408974864;
    final classType = "constructor";
    final ID = 3622273573;
	String title;
	String description;
	var photo;
	var invoice;
	List<int> payload;
	String provider;
	var providerData;
	var replyMarkup;


	InputBotInlineMessageMediaInvoice({required this.title, required this.description, required this.photo, required this.invoice, required this.payload, required this.provider, required this.providerData, required this.replyMarkup});

	static InputBotInlineMessageMediaInvoice fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var title = reader.tgReadString();var description = reader.tgReadString();var photo;if ((flags & 1)==1){photo = reader.tgReadObject(); } else {photo=null;}var invoice = reader.tgReadObject();var payload = reader.tgReadBytes();var provider = reader.tgReadString();var providerData = reader.tgReadObject();var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new InputBotInlineMessageMediaInvoice(title : title, description : description, photo : photo, invoice : invoice, payload : payload, provider : provider, providerData : providerData, replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3622273573,4),[0,0,0,0],serializeBytes(this.title),serializeBytes(this.description),(this.photo==null||this.photo==false)?new List<int>.empty():[(this.photo.getBytes() as List<int>)].expand((element) => element).toList(),(this.invoice.getBytes() as List<int>),serializeBytes(this.payload),serializeBytes(this.provider),(this.providerData.getBytes() as List<int>),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputBotInlineResult {
    static const CONSTRUCTOR_ID = 2294256409;
    static const SUBCLASS_OF_ID = 2158273502;
    final classType = "constructor";
    final ID = 2294256409;
	String id;
	String type;
	String title;
	String description;
	String url;
	var thumb;
	var content;
	var sendMessage;


	InputBotInlineResult({required this.id, required this.type, required this.title, required this.description, required this.url, required this.thumb, required this.content, required this.sendMessage});

	static InputBotInlineResult fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var id = reader.tgReadString();var type = reader.tgReadString();var title;if ((flags & 2)==1){title = reader.tgReadString(); } else {title=null;}var description;if ((flags & 4)==1){description = reader.tgReadString(); } else {description=null;}var url;if ((flags & 8)==1){url = reader.tgReadString(); } else {url=null;}var thumb;if ((flags & 16)==1){thumb = reader.tgReadObject(); } else {thumb=null;}var content;if ((flags & 32)==1){content = reader.tgReadObject(); } else {content=null;}var sendMessage = reader.tgReadObject();		return new InputBotInlineResult(id : id, type : type, title : title, description : description, url : url, thumb : thumb, content : content, sendMessage : sendMessage);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2294256409,4),[0,0,0,0],serializeBytes(this.id),serializeBytes(this.type),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),(this.description==null||this.description==false)?new List<int>.empty():[serializeBytes(this.description)].expand((element) => element).toList(),(this.url==null||this.url==false)?new List<int>.empty():[serializeBytes(this.url)].expand((element) => element).toList(),(this.thumb==null||this.thumb==false)?new List<int>.empty():[(this.thumb.getBytes() as List<int>)].expand((element) => element).toList(),(this.content==null||this.content==false)?new List<int>.empty():[(this.content.getBytes() as List<int>)].expand((element) => element).toList(),(this.sendMessage.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputBotInlineResultPhoto {
    static const CONSTRUCTOR_ID = 2832753831;
    static const SUBCLASS_OF_ID = 2158273502;
    final classType = "constructor";
    final ID = 2832753831;
	String id;
	String type;
	var photo;
	var sendMessage;


	InputBotInlineResultPhoto({required this.id, required this.type, required this.photo, required this.sendMessage});

	static InputBotInlineResultPhoto fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadString();var type = reader.tgReadString();var photo = reader.tgReadObject();var sendMessage = reader.tgReadObject();		return new InputBotInlineResultPhoto(id : id, type : type, photo : photo, sendMessage : sendMessage);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2832753831,4),serializeBytes(this.id),serializeBytes(this.type),(this.photo.getBytes() as List<int>),(this.sendMessage.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputBotInlineResultDocument {
    static const CONSTRUCTOR_ID = 4294507972;
    static const SUBCLASS_OF_ID = 2158273502;
    final classType = "constructor";
    final ID = 4294507972;
	String id;
	String type;
	String title;
	String description;
	var document;
	var sendMessage;


	InputBotInlineResultDocument({required this.id, required this.type, required this.title, required this.description, required this.document, required this.sendMessage});

	static InputBotInlineResultDocument fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var id = reader.tgReadString();var type = reader.tgReadString();var title;if ((flags & 2)==1){title = reader.tgReadString(); } else {title=null;}var description;if ((flags & 4)==1){description = reader.tgReadString(); } else {description=null;}var document = reader.tgReadObject();var sendMessage = reader.tgReadObject();		return new InputBotInlineResultDocument(id : id, type : type, title : title, description : description, document : document, sendMessage : sendMessage);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4294507972,4),[0,0,0,0],serializeBytes(this.id),serializeBytes(this.type),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),(this.description==null||this.description==false)?new List<int>.empty():[serializeBytes(this.description)].expand((element) => element).toList(),(this.document.getBytes() as List<int>),(this.sendMessage.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputBotInlineResultGame {
    static const CONSTRUCTOR_ID = 1336154098;
    static const SUBCLASS_OF_ID = 2158273502;
    final classType = "constructor";
    final ID = 1336154098;
	String id;
	String shortName;
	var sendMessage;


	InputBotInlineResultGame({required this.id, required this.shortName, required this.sendMessage});

	static InputBotInlineResultGame fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadString();var shortName = reader.tgReadString();var sendMessage = reader.tgReadObject();		return new InputBotInlineResultGame(id : id, shortName : shortName, sendMessage : sendMessage);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1336154098,4),serializeBytes(this.id),serializeBytes(this.shortName),(this.sendMessage.getBytes() as List<int>),].expand((element) => element).toList();}

}

class BotInlineMessageMediaAuto {
    static const CONSTRUCTOR_ID = 1984755728;
    static const SUBCLASS_OF_ID = 3297841032;
    final classType = "constructor";
    final ID = 1984755728;
	String message;
	List<dynamic> entities;
	var replyMarkup;


	BotInlineMessageMediaAuto({required this.message, required this.entities, required this.replyMarkup});

	static BotInlineMessageMediaAuto fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var message = reader.tgReadString();var entities;if ((flags & 2)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new BotInlineMessageMediaAuto(message : message, entities : entities, replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1984755728,4),[0,0,0,0],serializeBytes(this.message),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class BotInlineMessageText {
    static const CONSTRUCTOR_ID = 2357159394;
    static const SUBCLASS_OF_ID = 3297841032;
    final classType = "constructor";
    final ID = 2357159394;
	bool noWebpage;
	String message;
	List<dynamic> entities;
	var replyMarkup;


	BotInlineMessageText({required this.noWebpage, required this.message, required this.entities, required this.replyMarkup});

	static BotInlineMessageText fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final noWebpage = false;var message = reader.tgReadString();var entities;if ((flags & 2)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new BotInlineMessageText(noWebpage : noWebpage, message : message, entities : entities, replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2357159394,4),[0,0,0,0],serializeBytes(this.message),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class BotInlineMessageMediaGeo {
    static const CONSTRUCTOR_ID = 85477117;
    static const SUBCLASS_OF_ID = 3297841032;
    final classType = "constructor";
    final ID = 85477117;
	var geo;
	int heading;
	int period;
	int proximityNotificationRadius;
	var replyMarkup;


	BotInlineMessageMediaGeo({required this.geo, required this.heading, required this.period, required this.proximityNotificationRadius, required this.replyMarkup});

	static BotInlineMessageMediaGeo fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var geo = reader.tgReadObject();var heading;if ((flags & 1)==1){heading = reader.readInt(); } else {heading=null;}var period;if ((flags & 2)==1){period = reader.readInt(); } else {period=null;}var proximityNotificationRadius;if ((flags & 8)==1){proximityNotificationRadius = reader.readInt(); } else {proximityNotificationRadius=null;}var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new BotInlineMessageMediaGeo(geo : geo, heading : heading, period : period, proximityNotificationRadius : proximityNotificationRadius, replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(85477117,4),[0,0,0,0],(this.geo.getBytes() as List<int>),(this.heading==null||this.heading==false)?new List<int>.empty():[readBufferFromBigInt(this.heading,4,little:true,signed:true)].expand((element) => element).toList(),(this.period==null||this.period==false)?new List<int>.empty():[readBufferFromBigInt(this.period,4,little:true,signed:true)].expand((element) => element).toList(),(this.proximityNotificationRadius==null||this.proximityNotificationRadius==false)?new List<int>.empty():[readBufferFromBigInt(this.proximityNotificationRadius,4,little:true,signed:true)].expand((element) => element).toList(),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class BotInlineMessageMediaVenue {
    static const CONSTRUCTOR_ID = 2324063644;
    static const SUBCLASS_OF_ID = 3297841032;
    final classType = "constructor";
    final ID = 2324063644;
	var geo;
	String title;
	String address;
	String provider;
	String venueId;
	String venueType;
	var replyMarkup;


	BotInlineMessageMediaVenue({required this.geo, required this.title, required this.address, required this.provider, required this.venueId, required this.venueType, required this.replyMarkup});

	static BotInlineMessageMediaVenue fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var geo = reader.tgReadObject();var title = reader.tgReadString();var address = reader.tgReadString();var provider = reader.tgReadString();var venueId = reader.tgReadString();var venueType = reader.tgReadString();var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new BotInlineMessageMediaVenue(geo : geo, title : title, address : address, provider : provider, venueId : venueId, venueType : venueType, replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2324063644,4),[0,0,0,0],(this.geo.getBytes() as List<int>),serializeBytes(this.title),serializeBytes(this.address),serializeBytes(this.provider),serializeBytes(this.venueId),serializeBytes(this.venueType),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class BotInlineMessageMediaContact {
    static const CONSTRUCTOR_ID = 416402882;
    static const SUBCLASS_OF_ID = 3297841032;
    final classType = "constructor";
    final ID = 416402882;
	String phoneNumber;
	String firstName;
	String lastName;
	String vcard;
	var replyMarkup;


	BotInlineMessageMediaContact({required this.phoneNumber, required this.firstName, required this.lastName, required this.vcard, required this.replyMarkup});

	static BotInlineMessageMediaContact fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var phoneNumber = reader.tgReadString();var firstName = reader.tgReadString();var lastName = reader.tgReadString();var vcard = reader.tgReadString();var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new BotInlineMessageMediaContact(phoneNumber : phoneNumber, firstName : firstName, lastName : lastName, vcard : vcard, replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(416402882,4),[0,0,0,0],serializeBytes(this.phoneNumber),serializeBytes(this.firstName),serializeBytes(this.lastName),serializeBytes(this.vcard),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class BotInlineMessageMediaInvoice {
    static const CONSTRUCTOR_ID = 894081801;
    static const SUBCLASS_OF_ID = 3297841032;
    final classType = "constructor";
    final ID = 894081801;
	bool shippingAddressRequested;
	bool test;
	String title;
	String description;
	var photo;
	String currency;
	BigInt totalAmount;
	var replyMarkup;


	BotInlineMessageMediaInvoice({required this.shippingAddressRequested, required this.test, required this.title, required this.description, required this.photo, required this.currency, required this.totalAmount, required this.replyMarkup});

	static BotInlineMessageMediaInvoice fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final shippingAddressRequested = false;final test = false;var title = reader.tgReadString();var description = reader.tgReadString();var photo;if ((flags & 1)==1){photo = reader.tgReadObject(); } else {photo=null;}var currency = reader.tgReadString();var totalAmount = reader.readLong();var replyMarkup;if ((flags & 4)==1){replyMarkup = reader.tgReadObject(); } else {replyMarkup=null;}		return new BotInlineMessageMediaInvoice(shippingAddressRequested : shippingAddressRequested, test : test, title : title, description : description, photo : photo, currency : currency, totalAmount : totalAmount, replyMarkup : replyMarkup);
	}
	List<int> getBytes(){return [readBufferFromBigInt(894081801,4),[0,0,0,0],serializeBytes(this.title),serializeBytes(this.description),(this.photo==null||this.photo==false)?new List<int>.empty():[(this.photo.getBytes() as List<int>)].expand((element) => element).toList(),serializeBytes(this.currency),readBufferFromBigInt(this.totalAmount,8,little:true,signed:true),(this.replyMarkup==null||this.replyMarkup==false)?new List<int>.empty():[(this.replyMarkup.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class BotInlineResult {
    static const CONSTRUCTOR_ID = 295067450;
    static const SUBCLASS_OF_ID = 942846933;
    final classType = "constructor";
    final ID = 295067450;
	String id;
	String type;
	String title;
	String description;
	String url;
	var thumb;
	var content;
	var sendMessage;


	BotInlineResult({required this.id, required this.type, required this.title, required this.description, required this.url, required this.thumb, required this.content, required this.sendMessage});

	static BotInlineResult fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var id = reader.tgReadString();var type = reader.tgReadString();var title;if ((flags & 2)==1){title = reader.tgReadString(); } else {title=null;}var description;if ((flags & 4)==1){description = reader.tgReadString(); } else {description=null;}var url;if ((flags & 8)==1){url = reader.tgReadString(); } else {url=null;}var thumb;if ((flags & 16)==1){thumb = reader.tgReadObject(); } else {thumb=null;}var content;if ((flags & 32)==1){content = reader.tgReadObject(); } else {content=null;}var sendMessage = reader.tgReadObject();		return new BotInlineResult(id : id, type : type, title : title, description : description, url : url, thumb : thumb, content : content, sendMessage : sendMessage);
	}
	List<int> getBytes(){return [readBufferFromBigInt(295067450,4),[0,0,0,0],serializeBytes(this.id),serializeBytes(this.type),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),(this.description==null||this.description==false)?new List<int>.empty():[serializeBytes(this.description)].expand((element) => element).toList(),(this.url==null||this.url==false)?new List<int>.empty():[serializeBytes(this.url)].expand((element) => element).toList(),(this.thumb==null||this.thumb==false)?new List<int>.empty():[(this.thumb.getBytes() as List<int>)].expand((element) => element).toList(),(this.content==null||this.content==false)?new List<int>.empty():[(this.content.getBytes() as List<int>)].expand((element) => element).toList(),(this.sendMessage.getBytes() as List<int>),].expand((element) => element).toList();}

}

class BotInlineMediaResult {
    static const CONSTRUCTOR_ID = 400266251;
    static const SUBCLASS_OF_ID = 942846933;
    final classType = "constructor";
    final ID = 400266251;
	String id;
	String type;
	var photo;
	var document;
	String title;
	String description;
	var sendMessage;


	BotInlineMediaResult({required this.id, required this.type, required this.photo, required this.document, required this.title, required this.description, required this.sendMessage});

	static BotInlineMediaResult fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var id = reader.tgReadString();var type = reader.tgReadString();var photo;if ((flags & 1)==1){photo = reader.tgReadObject(); } else {photo=null;}var document;if ((flags & 2)==1){document = reader.tgReadObject(); } else {document=null;}var title;if ((flags & 4)==1){title = reader.tgReadString(); } else {title=null;}var description;if ((flags & 8)==1){description = reader.tgReadString(); } else {description=null;}var sendMessage = reader.tgReadObject();		return new BotInlineMediaResult(id : id, type : type, photo : photo, document : document, title : title, description : description, sendMessage : sendMessage);
	}
	List<int> getBytes(){return [readBufferFromBigInt(400266251,4),[0,0,0,0],serializeBytes(this.id),serializeBytes(this.type),(this.photo==null||this.photo==false)?new List<int>.empty():[(this.photo.getBytes() as List<int>)].expand((element) => element).toList(),(this.document==null||this.document==false)?new List<int>.empty():[(this.document.getBytes() as List<int>)].expand((element) => element).toList(),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),(this.description==null||this.description==false)?new List<int>.empty():[serializeBytes(this.description)].expand((element) => element).toList(),(this.sendMessage.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ExportedMessageLink {
    static const CONSTRUCTOR_ID = 1571494644;
    static const SUBCLASS_OF_ID = 3739632844;
    final classType = "constructor";
    final ID = 1571494644;
	String link;
	String html;


	ExportedMessageLink({required this.link, required this.html});

	static ExportedMessageLink fromReader(BinaryReader reader) {
	var temp,len;var link = reader.tgReadString();var html = reader.tgReadString();		return new ExportedMessageLink(link : link, html : html);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1571494644,4),serializeBytes(this.link),serializeBytes(this.html),].expand((element) => element).toList();}

}

class MessageFwdHeader {
    static const CONSTRUCTOR_ID = 1601666510;
    static const SUBCLASS_OF_ID = 2049468420;
    final classType = "constructor";
    final ID = 1601666510;
	bool imported;
	var fromId;
	String fromName;
	int date;
	int channelPost;
	String postAuthor;
	var savedFromPeer;
	int savedFromMsgId;
	String psaType;


	MessageFwdHeader({required this.imported, required this.fromId, required this.fromName, required this.date, required this.channelPost, required this.postAuthor, required this.savedFromPeer, required this.savedFromMsgId, required this.psaType});

	static MessageFwdHeader fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final imported = false;var fromId;if ((flags & 1)==1){fromId = reader.tgReadObject(); } else {fromId=null;}var fromName;if ((flags & 32)==1){fromName = reader.tgReadString(); } else {fromName=null;}var date = reader.readInt();var channelPost;if ((flags & 4)==1){channelPost = reader.readInt(); } else {channelPost=null;}var postAuthor;if ((flags & 8)==1){postAuthor = reader.tgReadString(); } else {postAuthor=null;}var savedFromPeer;if ((flags & 16)==1){savedFromPeer = reader.tgReadObject(); } else {savedFromPeer=null;}var savedFromMsgId;if ((flags & 16)==1){savedFromMsgId = reader.readInt(); } else {savedFromMsgId=null;}var psaType;if ((flags & 64)==1){psaType = reader.tgReadString(); } else {psaType=null;}		return new MessageFwdHeader(imported : imported, fromId : fromId, fromName : fromName, date : date, channelPost : channelPost, postAuthor : postAuthor, savedFromPeer : savedFromPeer, savedFromMsgId : savedFromMsgId, psaType : psaType);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1601666510,4),[0,0,0,0],(this.fromId==null||this.fromId==false)?new List<int>.empty():[(this.fromId.getBytes() as List<int>)].expand((element) => element).toList(),(this.fromName==null||this.fromName==false)?new List<int>.empty():[serializeBytes(this.fromName)].expand((element) => element).toList(),readBufferFromBigInt(this.date,4,little:true,signed:true),(this.channelPost==null||this.channelPost==false)?new List<int>.empty():[readBufferFromBigInt(this.channelPost,4,little:true,signed:true)].expand((element) => element).toList(),(this.postAuthor==null||this.postAuthor==false)?new List<int>.empty():[serializeBytes(this.postAuthor)].expand((element) => element).toList(),(this.savedFromPeer==null||this.savedFromPeer==false)?new List<int>.empty():[(this.savedFromPeer.getBytes() as List<int>)].expand((element) => element).toList(),(this.savedFromMsgId==null||this.savedFromMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.savedFromMsgId,4,little:true,signed:true)].expand((element) => element).toList(),(this.psaType==null||this.psaType==false)?new List<int>.empty():[serializeBytes(this.psaType)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputBotInlineMessageID {
    static const CONSTRUCTOR_ID = 2299280777;
    static const SUBCLASS_OF_ID = 768434944;
    final classType = "constructor";
    final ID = 2299280777;
	int dcId;
	BigInt id;
	BigInt accessHash;


	InputBotInlineMessageID({required this.dcId, required this.id, required this.accessHash});

	static InputBotInlineMessageID fromReader(BinaryReader reader) {
	var temp,len;var dcId = reader.readInt();var id = reader.readLong();var accessHash = reader.readLong();		return new InputBotInlineMessageID(dcId : dcId, id : id, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2299280777,4),readBufferFromBigInt(this.dcId,4,little:true,signed:true),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputBotInlineMessageID64 {
    static const CONSTRUCTOR_ID = 3067680215;
    static const SUBCLASS_OF_ID = 768434944;
    final classType = "constructor";
    final ID = 3067680215;
	int dcId;
	BigInt ownerId;
	int id;
	BigInt accessHash;


	InputBotInlineMessageID64({required this.dcId, required this.ownerId, required this.id, required this.accessHash});

	static InputBotInlineMessageID64 fromReader(BinaryReader reader) {
	var temp,len;var dcId = reader.readInt();var ownerId = reader.readLong();var id = reader.readInt();var accessHash = reader.readLong();		return new InputBotInlineMessageID64(dcId : dcId, ownerId : ownerId, id : id, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3067680215,4),readBufferFromBigInt(this.dcId,4,little:true,signed:true),readBufferFromBigInt(this.ownerId,8,little:true,signed:true),readBufferFromBigInt(this.id,4,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InlineBotSwitchPM {
    static const CONSTRUCTOR_ID = 1008755359;
    static const SUBCLASS_OF_ID = 2192701243;
    final classType = "constructor";
    final ID = 1008755359;
	String text;
	String startParam;


	InlineBotSwitchPM({required this.text, required this.startParam});

	static InlineBotSwitchPM fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();var startParam = reader.tgReadString();		return new InlineBotSwitchPM(text : text, startParam : startParam);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1008755359,4),serializeBytes(this.text),serializeBytes(this.startParam),].expand((element) => element).toList();}

}

class TopPeer {
    static const CONSTRUCTOR_ID = 3989684315;
    static const SUBCLASS_OF_ID = 1763100161;
    final classType = "constructor";
    final ID = 3989684315;
	var peer;
	double rating;


	TopPeer({required this.peer, required this.rating});

	static TopPeer fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var rating = reader.readDouble();		return new TopPeer(peer : peer, rating : rating);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3989684315,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.rating,4),].expand((element) => element).toList();}

}

class TopPeerCategoryBotsPM {
    static const CONSTRUCTOR_ID = 2875595611;
    static const SUBCLASS_OF_ID = 3723502850;
    final classType = "constructor";
    final ID = 2875595611;


	TopPeerCategoryBotsPM();

	static TopPeerCategoryBotsPM fromReader(BinaryReader reader) {
	var temp,len;		return new TopPeerCategoryBotsPM();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2875595611,4),].expand((element) => element).toList();}

}

class TopPeerCategoryBotsInline {
    static const CONSTRUCTOR_ID = 344356834;
    static const SUBCLASS_OF_ID = 3723502850;
    final classType = "constructor";
    final ID = 344356834;


	TopPeerCategoryBotsInline();

	static TopPeerCategoryBotsInline fromReader(BinaryReader reader) {
	var temp,len;		return new TopPeerCategoryBotsInline();
	}
	List<int> getBytes(){return [readBufferFromBigInt(344356834,4),].expand((element) => element).toList();}

}

class TopPeerCategoryCorrespondents {
    static const CONSTRUCTOR_ID = 104314861;
    static const SUBCLASS_OF_ID = 3723502850;
    final classType = "constructor";
    final ID = 104314861;


	TopPeerCategoryCorrespondents();

	static TopPeerCategoryCorrespondents fromReader(BinaryReader reader) {
	var temp,len;		return new TopPeerCategoryCorrespondents();
	}
	List<int> getBytes(){return [readBufferFromBigInt(104314861,4),].expand((element) => element).toList();}

}

class TopPeerCategoryGroups {
    static const CONSTRUCTOR_ID = 3172442442;
    static const SUBCLASS_OF_ID = 3723502850;
    final classType = "constructor";
    final ID = 3172442442;


	TopPeerCategoryGroups();

	static TopPeerCategoryGroups fromReader(BinaryReader reader) {
	var temp,len;		return new TopPeerCategoryGroups();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3172442442,4),].expand((element) => element).toList();}

}

class TopPeerCategoryChannels {
    static const CONSTRUCTOR_ID = 371037736;
    static const SUBCLASS_OF_ID = 3723502850;
    final classType = "constructor";
    final ID = 371037736;


	TopPeerCategoryChannels();

	static TopPeerCategoryChannels fromReader(BinaryReader reader) {
	var temp,len;		return new TopPeerCategoryChannels();
	}
	List<int> getBytes(){return [readBufferFromBigInt(371037736,4),].expand((element) => element).toList();}

}

class TopPeerCategoryPhoneCalls {
    static const CONSTRUCTOR_ID = 511092620;
    static const SUBCLASS_OF_ID = 3723502850;
    final classType = "constructor";
    final ID = 511092620;


	TopPeerCategoryPhoneCalls();

	static TopPeerCategoryPhoneCalls fromReader(BinaryReader reader) {
	var temp,len;		return new TopPeerCategoryPhoneCalls();
	}
	List<int> getBytes(){return [readBufferFromBigInt(511092620,4),].expand((element) => element).toList();}

}

class TopPeerCategoryForwardUsers {
    static const CONSTRUCTOR_ID = 2822794409;
    static const SUBCLASS_OF_ID = 3723502850;
    final classType = "constructor";
    final ID = 2822794409;


	TopPeerCategoryForwardUsers();

	static TopPeerCategoryForwardUsers fromReader(BinaryReader reader) {
	var temp,len;		return new TopPeerCategoryForwardUsers();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2822794409,4),].expand((element) => element).toList();}

}

class TopPeerCategoryForwardChats {
    static const CONSTRUCTOR_ID = 4226728176;
    static const SUBCLASS_OF_ID = 3723502850;
    final classType = "constructor";
    final ID = 4226728176;


	TopPeerCategoryForwardChats();

	static TopPeerCategoryForwardChats fromReader(BinaryReader reader) {
	var temp,len;		return new TopPeerCategoryForwardChats();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4226728176,4),].expand((element) => element).toList();}

}

class TopPeerCategoryPeers {
    static const CONSTRUCTOR_ID = 4219683473;
    static const SUBCLASS_OF_ID = 78563632;
    final classType = "constructor";
    final ID = 4219683473;
	var category;
	int count;
	List<dynamic> peers;


	TopPeerCategoryPeers({required this.category, required this.count, required this.peers});

	static TopPeerCategoryPeers fromReader(BinaryReader reader) {
	var temp,len;var category = reader.tgReadObject();var count = reader.readInt();reader.readInt();
List<dynamic> peers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		peers.add(reader.tgReadObject());
}		return new TopPeerCategoryPeers(category : category, count : count, peers : peers);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4219683473,4),(this.category.getBytes() as List<int>),readBufferFromBigInt(this.count,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.peers.length,4,little:true,signed:true),this.peers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class DraftMessageEmpty {
    static const CONSTRUCTOR_ID = 453805082;
    static const SUBCLASS_OF_ID = 869564229;
    final classType = "constructor";
    final ID = 453805082;
	int date;


	DraftMessageEmpty({required this.date});

	static DraftMessageEmpty fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var date;if ((flags & 1)==1){date = reader.readInt(); } else {date=null;}		return new DraftMessageEmpty(date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(453805082,4),[0,0,0,0],(this.date==null||this.date==false)?new List<int>.empty():[readBufferFromBigInt(this.date,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class DraftMessage {
    static const CONSTRUCTOR_ID = 4253970719;
    static const SUBCLASS_OF_ID = 869564229;
    final classType = "constructor";
    final ID = 4253970719;
	bool noWebpage;
	int replyToMsgId;
	String message;
	List<dynamic> entities;
	int date;


	DraftMessage({required this.noWebpage, required this.replyToMsgId, required this.message, required this.entities, required this.date});

	static DraftMessage fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final noWebpage = false;var replyToMsgId;if ((flags & 1)==1){replyToMsgId = reader.readInt(); } else {replyToMsgId=null;}var message = reader.tgReadString();var entities;if ((flags & 8)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}var date = reader.readInt();		return new DraftMessage(noWebpage : noWebpage, replyToMsgId : replyToMsgId, message : message, entities : entities, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4253970719,4),[0,0,0,0],(this.replyToMsgId==null||this.replyToMsgId==false)?new List<int>.empty():[readBufferFromBigInt(this.replyToMsgId,4,little:true,signed:true)].expand((element) => element).toList(),serializeBytes(this.message),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class StickerSetCovered {
    static const CONSTRUCTOR_ID = 1678812626;
    static const SUBCLASS_OF_ID = 2139546853;
    final classType = "constructor";
    final ID = 1678812626;
	var set;
	var cover;


	StickerSetCovered({required this.set, required this.cover});

	static StickerSetCovered fromReader(BinaryReader reader) {
	var temp,len;var set = reader.tgReadObject();var cover = reader.tgReadObject();		return new StickerSetCovered(set : set, cover : cover);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1678812626,4),(this.set.getBytes() as List<int>),(this.cover.getBytes() as List<int>),].expand((element) => element).toList();}

}

class StickerSetMultiCovered {
    static const CONSTRUCTOR_ID = 872932635;
    static const SUBCLASS_OF_ID = 2139546853;
    final classType = "constructor";
    final ID = 872932635;
	var set;
	List<dynamic> covers;


	StickerSetMultiCovered({required this.set, required this.covers});

	static StickerSetMultiCovered fromReader(BinaryReader reader) {
	var temp,len;var set = reader.tgReadObject();reader.readInt();
List<dynamic> covers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		covers.add(reader.tgReadObject());
}		return new StickerSetMultiCovered(set : set, covers : covers);
	}
	List<int> getBytes(){return [readBufferFromBigInt(872932635,4),(this.set.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.covers.length,4,little:true,signed:true),this.covers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class MaskCoords {
    static const CONSTRUCTOR_ID = 2933316530;
    static const SUBCLASS_OF_ID = 112964349;
    final classType = "constructor";
    final ID = 2933316530;
	int n;
	double x;
	double y;
	double zoom;


	MaskCoords({required this.n, required this.x, required this.y, required this.zoom});

	static MaskCoords fromReader(BinaryReader reader) {
	var temp,len;var n = reader.readInt();var x = reader.readDouble();var y = reader.readDouble();var zoom = reader.readDouble();		return new MaskCoords(n : n, x : x, y : y, zoom : zoom);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2933316530,4),readBufferFromBigInt(this.n,4,little:true,signed:true),readBufferFromBigInt(this.x,4),readBufferFromBigInt(this.y,4),readBufferFromBigInt(this.zoom,4),].expand((element) => element).toList();}

}

class InputStickeredMediaPhoto {
    static const CONSTRUCTOR_ID = 1251549527;
    static const SUBCLASS_OF_ID = 1363597726;
    final classType = "constructor";
    final ID = 1251549527;
	var id;


	InputStickeredMediaPhoto({required this.id});

	static InputStickeredMediaPhoto fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();		return new InputStickeredMediaPhoto(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1251549527,4),(this.id.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputStickeredMediaDocument {
    static const CONSTRUCTOR_ID = 70813275;
    static const SUBCLASS_OF_ID = 1363597726;
    final classType = "constructor";
    final ID = 70813275;
	var id;


	InputStickeredMediaDocument({required this.id});

	static InputStickeredMediaDocument fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();		return new InputStickeredMediaDocument(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(70813275,4),(this.id.getBytes() as List<int>),].expand((element) => element).toList();}

}

class Game {
    static const CONSTRUCTOR_ID = 3187238203;
    static const SUBCLASS_OF_ID = 2199494322;
    final classType = "constructor";
    final ID = 3187238203;
	BigInt id;
	BigInt accessHash;
	String shortName;
	String title;
	String description;
	var photo;
	var document;


	Game({required this.id, required this.accessHash, required this.shortName, required this.title, required this.description, required this.photo, required this.document});

	static Game fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var id = reader.readLong();var accessHash = reader.readLong();var shortName = reader.tgReadString();var title = reader.tgReadString();var description = reader.tgReadString();var photo = reader.tgReadObject();var document;if ((flags & 1)==1){document = reader.tgReadObject(); } else {document=null;}		return new Game(id : id, accessHash : accessHash, shortName : shortName, title : title, description : description, photo : photo, document : document);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3187238203,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),serializeBytes(this.shortName),serializeBytes(this.title),serializeBytes(this.description),(this.photo.getBytes() as List<int>),(this.document==null||this.document==false)?new List<int>.empty():[(this.document.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputGameID {
    static const CONSTRUCTOR_ID = 53231223;
    static const SUBCLASS_OF_ID = 1221679235;
    final classType = "constructor";
    final ID = 53231223;
	BigInt id;
	BigInt accessHash;


	InputGameID({required this.id, required this.accessHash});

	static InputGameID fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();		return new InputGameID(id : id, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(53231223,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputGameShortName {
    static const CONSTRUCTOR_ID = 3274827786;
    static const SUBCLASS_OF_ID = 1221679235;
    final classType = "constructor";
    final ID = 3274827786;
	var botId;
	String shortName;


	InputGameShortName({required this.botId, required this.shortName});

	static InputGameShortName fromReader(BinaryReader reader) {
	var temp,len;var botId = reader.tgReadObject();var shortName = reader.tgReadString();		return new InputGameShortName(botId : botId, shortName : shortName);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3274827786,4),(this.botId.getBytes() as List<int>),serializeBytes(this.shortName),].expand((element) => element).toList();}

}

class HighScore {
    static const CONSTRUCTOR_ID = 1940093419;
    static const SUBCLASS_OF_ID = 3542818357;
    final classType = "constructor";
    final ID = 1940093419;
	int pos;
	BigInt userId;
	int score;


	HighScore({required this.pos, required this.userId, required this.score});

	static HighScore fromReader(BinaryReader reader) {
	var temp,len;var pos = reader.readInt();var userId = reader.readLong();var score = reader.readInt();		return new HighScore(pos : pos, userId : userId, score : score);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1940093419,4),readBufferFromBigInt(this.pos,4,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.score,4,little:true,signed:true),].expand((element) => element).toList();}

}

class TextEmpty {
    static const CONSTRUCTOR_ID = 3695018575;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 3695018575;


	TextEmpty();

	static TextEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new TextEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3695018575,4),].expand((element) => element).toList();}

}

class TextPlain {
    static const CONSTRUCTOR_ID = 1950782688;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 1950782688;
	String text;


	TextPlain({required this.text});

	static TextPlain fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();		return new TextPlain(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1950782688,4),serializeBytes(this.text),].expand((element) => element).toList();}

}

class TextBold {
    static const CONSTRUCTOR_ID = 1730456516;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 1730456516;
	var text;


	TextBold({required this.text});

	static TextBold fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new TextBold(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1730456516,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class TextItalic {
    static const CONSTRUCTOR_ID = 3641877916;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 3641877916;
	var text;


	TextItalic({required this.text});

	static TextItalic fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new TextItalic(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3641877916,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class TextUnderline {
    static const CONSTRUCTOR_ID = 3240501956;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 3240501956;
	var text;


	TextUnderline({required this.text});

	static TextUnderline fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new TextUnderline(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3240501956,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class TextStrike {
    static const CONSTRUCTOR_ID = 2616769429;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 2616769429;
	var text;


	TextStrike({required this.text});

	static TextStrike fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new TextStrike(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2616769429,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class TextFixed {
    static const CONSTRUCTOR_ID = 1816074681;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 1816074681;
	var text;


	TextFixed({required this.text});

	static TextFixed fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new TextFixed(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1816074681,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class TextUrl {
    static const CONSTRUCTOR_ID = 1009288385;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 1009288385;
	var text;
	String url;
	BigInt webpageId;


	TextUrl({required this.text, required this.url, required this.webpageId});

	static TextUrl fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();var url = reader.tgReadString();var webpageId = reader.readLong();		return new TextUrl(text : text, url : url, webpageId : webpageId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1009288385,4),(this.text.getBytes() as List<int>),serializeBytes(this.url),readBufferFromBigInt(this.webpageId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class TextEmail {
    static const CONSTRUCTOR_ID = 3730443734;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 3730443734;
	var text;
	String email;


	TextEmail({required this.text, required this.email});

	static TextEmail fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();var email = reader.tgReadString();		return new TextEmail(text : text, email : email);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3730443734,4),(this.text.getBytes() as List<int>),serializeBytes(this.email),].expand((element) => element).toList();}

}

class TextConcat {
    static const CONSTRUCTOR_ID = 2120376535;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 2120376535;
	List<dynamic> texts;


	TextConcat({required this.texts});

	static TextConcat fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> texts = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		texts.add(reader.tgReadObject());
}		return new TextConcat(texts : texts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2120376535,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.texts.length,4,little:true,signed:true),this.texts.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class TextSubscript {
    static const CONSTRUCTOR_ID = 3983181060;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 3983181060;
	var text;


	TextSubscript({required this.text});

	static TextSubscript fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new TextSubscript(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3983181060,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class TextSuperscript {
    static const CONSTRUCTOR_ID = 3355139585;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 3355139585;
	var text;


	TextSuperscript({required this.text});

	static TextSuperscript fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new TextSuperscript(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3355139585,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class TextMarked {
    static const CONSTRUCTOR_ID = 55281185;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 55281185;
	var text;


	TextMarked({required this.text});

	static TextMarked fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new TextMarked(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(55281185,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class TextPhone {
    static const CONSTRUCTOR_ID = 483104362;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 483104362;
	var text;
	String phone;


	TextPhone({required this.text, required this.phone});

	static TextPhone fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();var phone = reader.tgReadString();		return new TextPhone(text : text, phone : phone);
	}
	List<int> getBytes(){return [readBufferFromBigInt(483104362,4),(this.text.getBytes() as List<int>),serializeBytes(this.phone),].expand((element) => element).toList();}

}

class TextImage {
    static const CONSTRUCTOR_ID = 136105807;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 136105807;
	BigInt documentId;
	int w;
	int h;


	TextImage({required this.documentId, required this.w, required this.h});

	static TextImage fromReader(BinaryReader reader) {
	var temp,len;var documentId = reader.readLong();var w = reader.readInt();var h = reader.readInt();		return new TextImage(documentId : documentId, w : w, h : h);
	}
	List<int> getBytes(){return [readBufferFromBigInt(136105807,4),readBufferFromBigInt(this.documentId,8,little:true,signed:true),readBufferFromBigInt(this.w,4,little:true,signed:true),readBufferFromBigInt(this.h,4,little:true,signed:true),].expand((element) => element).toList();}

}

class TextAnchor {
    static const CONSTRUCTOR_ID = 894777186;
    static const SUBCLASS_OF_ID = 4056986745;
    final classType = "constructor";
    final ID = 894777186;
	var text;
	String name;


	TextAnchor({required this.text, required this.name});

	static TextAnchor fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();var name = reader.tgReadString();		return new TextAnchor(text : text, name : name);
	}
	List<int> getBytes(){return [readBufferFromBigInt(894777186,4),(this.text.getBytes() as List<int>),serializeBytes(this.name),].expand((element) => element).toList();}

}

class PageBlockUnsupported {
    static const CONSTRUCTOR_ID = 324435594;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 324435594;


	PageBlockUnsupported();

	static PageBlockUnsupported fromReader(BinaryReader reader) {
	var temp,len;		return new PageBlockUnsupported();
	}
	List<int> getBytes(){return [readBufferFromBigInt(324435594,4),].expand((element) => element).toList();}

}

class PageBlockTitle {
    static const CONSTRUCTOR_ID = 1890305021;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 1890305021;
	var text;


	PageBlockTitle({required this.text});

	static PageBlockTitle fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new PageBlockTitle(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1890305021,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockSubtitle {
    static const CONSTRUCTOR_ID = 2415565343;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 2415565343;
	var text;


	PageBlockSubtitle({required this.text});

	static PageBlockSubtitle fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new PageBlockSubtitle(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2415565343,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockAuthorDate {
    static const CONSTRUCTOR_ID = 3132089824;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 3132089824;
	var author;
	int publishedDate;


	PageBlockAuthorDate({required this.author, required this.publishedDate});

	static PageBlockAuthorDate fromReader(BinaryReader reader) {
	var temp,len;var author = reader.tgReadObject();var publishedDate = reader.readInt();		return new PageBlockAuthorDate(author : author, publishedDate : publishedDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3132089824,4),(this.author.getBytes() as List<int>),readBufferFromBigInt(this.publishedDate,4,little:true,signed:true),].expand((element) => element).toList();}

}

class PageBlockHeader {
    static const CONSTRUCTOR_ID = 3218105580;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 3218105580;
	var text;


	PageBlockHeader({required this.text});

	static PageBlockHeader fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new PageBlockHeader(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3218105580,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockSubheader {
    static const CONSTRUCTOR_ID = 4046173921;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 4046173921;
	var text;


	PageBlockSubheader({required this.text});

	static PageBlockSubheader fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new PageBlockSubheader(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4046173921,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockParagraph {
    static const CONSTRUCTOR_ID = 1182402406;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 1182402406;
	var text;


	PageBlockParagraph({required this.text});

	static PageBlockParagraph fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new PageBlockParagraph(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1182402406,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockPreformatted {
    static const CONSTRUCTOR_ID = 3228621118;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 3228621118;
	var text;
	String language;


	PageBlockPreformatted({required this.text, required this.language});

	static PageBlockPreformatted fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();var language = reader.tgReadString();		return new PageBlockPreformatted(text : text, language : language);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3228621118,4),(this.text.getBytes() as List<int>),serializeBytes(this.language),].expand((element) => element).toList();}

}

class PageBlockFooter {
    static const CONSTRUCTOR_ID = 1216809369;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 1216809369;
	var text;


	PageBlockFooter({required this.text});

	static PageBlockFooter fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new PageBlockFooter(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1216809369,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockDivider {
    static const CONSTRUCTOR_ID = 3676352904;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 3676352904;


	PageBlockDivider();

	static PageBlockDivider fromReader(BinaryReader reader) {
	var temp,len;		return new PageBlockDivider();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3676352904,4),].expand((element) => element).toList();}

}

class PageBlockAnchor {
    static const CONSTRUCTOR_ID = 3456972720;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 3456972720;
	String name;


	PageBlockAnchor({required this.name});

	static PageBlockAnchor fromReader(BinaryReader reader) {
	var temp,len;var name = reader.tgReadString();		return new PageBlockAnchor(name : name);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3456972720,4),serializeBytes(this.name),].expand((element) => element).toList();}

}

class PageBlockList {
    static const CONSTRUCTOR_ID = 3840442385;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 3840442385;
	List<dynamic> items;


	PageBlockList({required this.items});

	static PageBlockList fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> items = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		items.add(reader.tgReadObject());
}		return new PageBlockList(items : items);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3840442385,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.items.length,4,little:true,signed:true),this.items.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class PageBlockBlockquote {
    static const CONSTRUCTOR_ID = 641563686;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 641563686;
	var text;
	var caption;


	PageBlockBlockquote({required this.text, required this.caption});

	static PageBlockBlockquote fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();var caption = reader.tgReadObject();		return new PageBlockBlockquote(text : text, caption : caption);
	}
	List<int> getBytes(){return [readBufferFromBigInt(641563686,4),(this.text.getBytes() as List<int>),(this.caption.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockPullquote {
    static const CONSTRUCTOR_ID = 1329878739;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 1329878739;
	var text;
	var caption;


	PageBlockPullquote({required this.text, required this.caption});

	static PageBlockPullquote fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();var caption = reader.tgReadObject();		return new PageBlockPullquote(text : text, caption : caption);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1329878739,4),(this.text.getBytes() as List<int>),(this.caption.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockPhoto {
    static const CONSTRUCTOR_ID = 391759200;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 391759200;
	BigInt photoId;
	var caption;
	String url;
	BigInt webpageId;


	PageBlockPhoto({required this.photoId, required this.caption, required this.url, required this.webpageId});

	static PageBlockPhoto fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var photoId = reader.readLong();var caption = reader.tgReadObject();var url;if ((flags & 1)==1){url = reader.tgReadString(); } else {url=null;}var webpageId;if ((flags & 1)==1){webpageId = reader.readLong(); } else {webpageId=null;}		return new PageBlockPhoto(photoId : photoId, caption : caption, url : url, webpageId : webpageId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(391759200,4),[0,0,0,0],readBufferFromBigInt(this.photoId,8,little:true,signed:true),(this.caption.getBytes() as List<int>),(this.url==null||this.url==false)?new List<int>.empty():[serializeBytes(this.url)].expand((element) => element).toList(),(this.webpageId==null||this.webpageId==false)?new List<int>.empty():[readBufferFromBigInt(this.webpageId,8,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PageBlockVideo {
    static const CONSTRUCTOR_ID = 2089805750;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 2089805750;
	bool autoplay;
	bool loop;
	BigInt videoId;
	var caption;


	PageBlockVideo({required this.autoplay, required this.loop, required this.videoId, required this.caption});

	static PageBlockVideo fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final autoplay = false;final loop = false;var videoId = reader.readLong();var caption = reader.tgReadObject();		return new PageBlockVideo(autoplay : autoplay, loop : loop, videoId : videoId, caption : caption);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2089805750,4),[0,0,0,0],readBufferFromBigInt(this.videoId,8,little:true,signed:true),(this.caption.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockCover {
    static const CONSTRUCTOR_ID = 972174080;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 972174080;
	var cover;


	PageBlockCover({required this.cover});

	static PageBlockCover fromReader(BinaryReader reader) {
	var temp,len;var cover = reader.tgReadObject();		return new PageBlockCover(cover : cover);
	}
	List<int> getBytes(){return [readBufferFromBigInt(972174080,4),(this.cover.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockEmbed {
    static const CONSTRUCTOR_ID = 2826014149;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 2826014149;
	bool fullWidth;
	bool allowScrolling;
	String url;
	String html;
	BigInt posterPhotoId;
	int w;
	int h;
	var caption;


	PageBlockEmbed({required this.fullWidth, required this.allowScrolling, required this.url, required this.html, required this.posterPhotoId, required this.w, required this.h, required this.caption});

	static PageBlockEmbed fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final fullWidth = false;final allowScrolling = false;var url;if ((flags & 2)==1){url = reader.tgReadString(); } else {url=null;}var html;if ((flags & 4)==1){html = reader.tgReadString(); } else {html=null;}var posterPhotoId;if ((flags & 16)==1){posterPhotoId = reader.readLong(); } else {posterPhotoId=null;}var w;if ((flags & 32)==1){w = reader.readInt(); } else {w=null;}var h;if ((flags & 32)==1){h = reader.readInt(); } else {h=null;}var caption = reader.tgReadObject();		return new PageBlockEmbed(fullWidth : fullWidth, allowScrolling : allowScrolling, url : url, html : html, posterPhotoId : posterPhotoId, w : w, h : h, caption : caption);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2826014149,4),[0,0,0,0],(this.url==null||this.url==false)?new List<int>.empty():[serializeBytes(this.url)].expand((element) => element).toList(),(this.html==null||this.html==false)?new List<int>.empty():[serializeBytes(this.html)].expand((element) => element).toList(),(this.posterPhotoId==null||this.posterPhotoId==false)?new List<int>.empty():[readBufferFromBigInt(this.posterPhotoId,8,little:true,signed:true)].expand((element) => element).toList(),(this.w==null||this.w==false)?new List<int>.empty():[readBufferFromBigInt(this.w,4,little:true,signed:true)].expand((element) => element).toList(),(this.h==null||this.h==false)?new List<int>.empty():[readBufferFromBigInt(this.h,4,little:true,signed:true)].expand((element) => element).toList(),(this.caption.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockEmbedPost {
    static const CONSTRUCTOR_ID = 4065961995;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 4065961995;
	String url;
	BigInt webpageId;
	BigInt authorPhotoId;
	String author;
	int date;
	List<dynamic> blocks;
	var caption;


	PageBlockEmbedPost({required this.url, required this.webpageId, required this.authorPhotoId, required this.author, required this.date, required this.blocks, required this.caption});

	static PageBlockEmbedPost fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();var webpageId = reader.readLong();var authorPhotoId = reader.readLong();var author = reader.tgReadString();var date = reader.readInt();reader.readInt();
List<dynamic> blocks = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		blocks.add(reader.tgReadObject());
}var caption = reader.tgReadObject();		return new PageBlockEmbedPost(url : url, webpageId : webpageId, authorPhotoId : authorPhotoId, author : author, date : date, blocks : blocks, caption : caption);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4065961995,4),serializeBytes(this.url),readBufferFromBigInt(this.webpageId,8,little:true,signed:true),readBufferFromBigInt(this.authorPhotoId,8,little:true,signed:true),serializeBytes(this.author),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.blocks.length,4,little:true,signed:true),this.blocks.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.caption.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockCollage {
    static const CONSTRUCTOR_ID = 1705048653;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 1705048653;
	List<dynamic> items;
	var caption;


	PageBlockCollage({required this.items, required this.caption});

	static PageBlockCollage fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> items = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		items.add(reader.tgReadObject());
}var caption = reader.tgReadObject();		return new PageBlockCollage(items : items, caption : caption);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1705048653,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.items.length,4,little:true,signed:true),this.items.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.caption.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockSlideshow {
    static const CONSTRUCTOR_ID = 52401552;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 52401552;
	List<dynamic> items;
	var caption;


	PageBlockSlideshow({required this.items, required this.caption});

	static PageBlockSlideshow fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> items = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		items.add(reader.tgReadObject());
}var caption = reader.tgReadObject();		return new PageBlockSlideshow(items : items, caption : caption);
	}
	List<int> getBytes(){return [readBufferFromBigInt(52401552,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.items.length,4,little:true,signed:true),this.items.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.caption.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockChannel {
    static const CONSTRUCTOR_ID = 4011282869;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 4011282869;
	var channel;


	PageBlockChannel({required this.channel});

	static PageBlockChannel fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.tgReadObject();		return new PageBlockChannel(channel : channel);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4011282869,4),(this.channel.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockAudio {
    static const CONSTRUCTOR_ID = 2151899626;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 2151899626;
	BigInt audioId;
	var caption;


	PageBlockAudio({required this.audioId, required this.caption});

	static PageBlockAudio fromReader(BinaryReader reader) {
	var temp,len;var audioId = reader.readLong();var caption = reader.tgReadObject();		return new PageBlockAudio(audioId : audioId, caption : caption);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2151899626,4),readBufferFromBigInt(this.audioId,8,little:true,signed:true),(this.caption.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockKicker {
    static const CONSTRUCTOR_ID = 504660880;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 504660880;
	var text;


	PageBlockKicker({required this.text});

	static PageBlockKicker fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new PageBlockKicker(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(504660880,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockTable {
    static const CONSTRUCTOR_ID = 3209554562;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 3209554562;
	bool bordered;
	bool striped;
	var title;
	List<dynamic> rows;


	PageBlockTable({required this.bordered, required this.striped, required this.title, required this.rows});

	static PageBlockTable fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final bordered = false;final striped = false;var title = reader.tgReadObject();reader.readInt();
List<dynamic> rows = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		rows.add(reader.tgReadObject());
}		return new PageBlockTable(bordered : bordered, striped : striped, title : title, rows : rows);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3209554562,4),[0,0,0,0],(this.title.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.rows.length,4,little:true,signed:true),this.rows.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class PageBlockOrderedList {
    static const CONSTRUCTOR_ID = 2592793057;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 2592793057;
	List<dynamic> items;


	PageBlockOrderedList({required this.items});

	static PageBlockOrderedList fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> items = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		items.add(reader.tgReadObject());
}		return new PageBlockOrderedList(items : items);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2592793057,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.items.length,4,little:true,signed:true),this.items.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class PageBlockDetails {
    static const CONSTRUCTOR_ID = 1987480557;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 1987480557;
	bool open;
	List<dynamic> blocks;
	var title;


	PageBlockDetails({required this.open, required this.blocks, required this.title});

	static PageBlockDetails fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final open = false;reader.readInt();
List<dynamic> blocks = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		blocks.add(reader.tgReadObject());
}var title = reader.tgReadObject();		return new PageBlockDetails(open : open, blocks : blocks, title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1987480557,4),[0,0,0,0],readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.blocks.length,4,little:true,signed:true),this.blocks.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.title.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageBlockRelatedArticles {
    static const CONSTRUCTOR_ID = 370236054;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 370236054;
	var title;
	List<dynamic> articles;


	PageBlockRelatedArticles({required this.title, required this.articles});

	static PageBlockRelatedArticles fromReader(BinaryReader reader) {
	var temp,len;var title = reader.tgReadObject();reader.readInt();
List<dynamic> articles = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		articles.add(reader.tgReadObject());
}		return new PageBlockRelatedArticles(title : title, articles : articles);
	}
	List<int> getBytes(){return [readBufferFromBigInt(370236054,4),(this.title.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.articles.length,4,little:true,signed:true),this.articles.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class PageBlockMap {
    static const CONSTRUCTOR_ID = 2756656886;
    static const SUBCLASS_OF_ID = 449467972;
    final classType = "constructor";
    final ID = 2756656886;
	var geo;
	int zoom;
	int w;
	int h;
	var caption;


	PageBlockMap({required this.geo, required this.zoom, required this.w, required this.h, required this.caption});

	static PageBlockMap fromReader(BinaryReader reader) {
	var temp,len;var geo = reader.tgReadObject();var zoom = reader.readInt();var w = reader.readInt();var h = reader.readInt();var caption = reader.tgReadObject();		return new PageBlockMap(geo : geo, zoom : zoom, w : w, h : h, caption : caption);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2756656886,4),(this.geo.getBytes() as List<int>),readBufferFromBigInt(this.zoom,4,little:true,signed:true),readBufferFromBigInt(this.w,4,little:true,signed:true),readBufferFromBigInt(this.h,4,little:true,signed:true),(this.caption.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PhoneCallDiscardReasonMissed {
    static const CONSTRUCTOR_ID = 2246320897;
    static const SUBCLASS_OF_ID = 3634081085;
    final classType = "constructor";
    final ID = 2246320897;


	PhoneCallDiscardReasonMissed();

	static PhoneCallDiscardReasonMissed fromReader(BinaryReader reader) {
	var temp,len;		return new PhoneCallDiscardReasonMissed();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2246320897,4),].expand((element) => element).toList();}

}

class PhoneCallDiscardReasonDisconnect {
    static const CONSTRUCTOR_ID = 3767910816;
    static const SUBCLASS_OF_ID = 3634081085;
    final classType = "constructor";
    final ID = 3767910816;


	PhoneCallDiscardReasonDisconnect();

	static PhoneCallDiscardReasonDisconnect fromReader(BinaryReader reader) {
	var temp,len;		return new PhoneCallDiscardReasonDisconnect();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3767910816,4),].expand((element) => element).toList();}

}

class PhoneCallDiscardReasonHangup {
    static const CONSTRUCTOR_ID = 1471006352;
    static const SUBCLASS_OF_ID = 3634081085;
    final classType = "constructor";
    final ID = 1471006352;


	PhoneCallDiscardReasonHangup();

	static PhoneCallDiscardReasonHangup fromReader(BinaryReader reader) {
	var temp,len;		return new PhoneCallDiscardReasonHangup();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1471006352,4),].expand((element) => element).toList();}

}

class PhoneCallDiscardReasonBusy {
    static const CONSTRUCTOR_ID = 4210550985;
    static const SUBCLASS_OF_ID = 3634081085;
    final classType = "constructor";
    final ID = 4210550985;


	PhoneCallDiscardReasonBusy();

	static PhoneCallDiscardReasonBusy fromReader(BinaryReader reader) {
	var temp,len;		return new PhoneCallDiscardReasonBusy();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4210550985,4),].expand((element) => element).toList();}

}

class DataJSON {
    static const CONSTRUCTOR_ID = 2104790276;
    static const SUBCLASS_OF_ID = 2902676200;
    final classType = "constructor";
    final ID = 2104790276;
	String data;


	DataJSON({required this.data});

	static DataJSON fromReader(BinaryReader reader) {
	var temp,len;var data = reader.tgReadString();		return new DataJSON(data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2104790276,4),serializeBytes(this.data),].expand((element) => element).toList();}

}

class LabeledPrice {
    static const CONSTRUCTOR_ID = 3408489464;
    static const SUBCLASS_OF_ID = 478413946;
    final classType = "constructor";
    final ID = 3408489464;
	String label;
	BigInt amount;


	LabeledPrice({required this.label, required this.amount});

	static LabeledPrice fromReader(BinaryReader reader) {
	var temp,len;var label = reader.tgReadString();var amount = reader.readLong();		return new LabeledPrice(label : label, amount : amount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3408489464,4),serializeBytes(this.label),readBufferFromBigInt(this.amount,8,little:true,signed:true),].expand((element) => element).toList();}

}

class Invoice {
    static const CONSTRUCTOR_ID = 1048946971;
    static const SUBCLASS_OF_ID = 1608003288;
    final classType = "constructor";
    final ID = 1048946971;
	bool test;
	bool nameRequested;
	bool phoneRequested;
	bool emailRequested;
	bool shippingAddressRequested;
	bool flexible;
	bool phoneToProvider;
	bool emailToProvider;
	bool recurring;
	String currency;
	List<dynamic> prices;
	BigInt maxTipAmount;
	List<BigInt> suggestedTipAmounts;
	String recurringTermsUrl;


	Invoice({required this.test, required this.nameRequested, required this.phoneRequested, required this.emailRequested, required this.shippingAddressRequested, required this.flexible, required this.phoneToProvider, required this.emailToProvider, required this.recurring, required this.currency, required this.prices, required this.maxTipAmount, required this.suggestedTipAmounts, required this.recurringTermsUrl});

	static Invoice fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final test = false;final nameRequested = false;final phoneRequested = false;final emailRequested = false;final shippingAddressRequested = false;final flexible = false;final phoneToProvider = false;final emailToProvider = false;final recurring = false;var currency = reader.tgReadString();reader.readInt();
List<dynamic> prices = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		prices.add(reader.tgReadObject());
}var maxTipAmount;if ((flags & 256)==1){maxTipAmount = reader.readLong(); } else {maxTipAmount=null;}var suggestedTipAmounts;if ((flags & 256)==1){reader.readInt();
List<BigInt> suggestedTipAmounts = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		suggestedTipAmounts.add(reader.readLong());
} } else {suggestedTipAmounts=null;}var recurringTermsUrl;if ((flags & 512)==1){recurringTermsUrl = reader.tgReadString(); } else {recurringTermsUrl=null;}		return new Invoice(test : test, nameRequested : nameRequested, phoneRequested : phoneRequested, emailRequested : emailRequested, shippingAddressRequested : shippingAddressRequested, flexible : flexible, phoneToProvider : phoneToProvider, emailToProvider : emailToProvider, recurring : recurring, currency : currency, prices : prices, maxTipAmount : maxTipAmount, suggestedTipAmounts : suggestedTipAmounts, recurringTermsUrl : recurringTermsUrl);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1048946971,4),[0,0,0,0],serializeBytes(this.currency),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.prices.length,4,little:true,signed:true),this.prices.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.maxTipAmount==null||this.maxTipAmount==false)?new List<int>.empty():[readBufferFromBigInt(this.maxTipAmount,8,little:true,signed:true)].expand((element) => element).toList(),(this.suggestedTipAmounts==null||this.suggestedTipAmounts==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.suggestedTipAmounts.length,4,little:true,signed:true),this.suggestedTipAmounts.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element)].expand((element) => element).toList(),(this.recurringTermsUrl==null||this.recurringTermsUrl==false)?new List<int>.empty():[serializeBytes(this.recurringTermsUrl)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PaymentCharge {
    static const CONSTRUCTOR_ID = 3926049406;
    static const SUBCLASS_OF_ID = 1019752665;
    final classType = "constructor";
    final ID = 3926049406;
	String id;
	String providerChargeId;


	PaymentCharge({required this.id, required this.providerChargeId});

	static PaymentCharge fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadString();var providerChargeId = reader.tgReadString();		return new PaymentCharge(id : id, providerChargeId : providerChargeId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3926049406,4),serializeBytes(this.id),serializeBytes(this.providerChargeId),].expand((element) => element).toList();}

}

class PostAddress {
    static const CONSTRUCTOR_ID = 512535275;
    static const SUBCLASS_OF_ID = 2373900844;
    final classType = "constructor";
    final ID = 512535275;
	String streetLine1;
	String streetLine2;
	String city;
	String state;
	String countryIso2;
	String postCode;


	PostAddress({required this.streetLine1, required this.streetLine2, required this.city, required this.state, required this.countryIso2, required this.postCode});

	static PostAddress fromReader(BinaryReader reader) {
	var temp,len;var streetLine1 = reader.tgReadString();var streetLine2 = reader.tgReadString();var city = reader.tgReadString();var state = reader.tgReadString();var countryIso2 = reader.tgReadString();var postCode = reader.tgReadString();		return new PostAddress(streetLine1 : streetLine1, streetLine2 : streetLine2, city : city, state : state, countryIso2 : countryIso2, postCode : postCode);
	}
	List<int> getBytes(){return [readBufferFromBigInt(512535275,4),serializeBytes(this.streetLine1),serializeBytes(this.streetLine2),serializeBytes(this.city),serializeBytes(this.state),serializeBytes(this.countryIso2),serializeBytes(this.postCode),].expand((element) => element).toList();}

}

class PaymentRequestedInfo {
    static const CONSTRUCTOR_ID = 2426158996;
    static const SUBCLASS_OF_ID = 2377134406;
    final classType = "constructor";
    final ID = 2426158996;
	String name;
	String phone;
	String email;
	var shippingAddress;


	PaymentRequestedInfo({required this.name, required this.phone, required this.email, required this.shippingAddress});

	static PaymentRequestedInfo fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var name;if ((flags & 1)==1){name = reader.tgReadString(); } else {name=null;}var phone;if ((flags & 2)==1){phone = reader.tgReadString(); } else {phone=null;}var email;if ((flags & 4)==1){email = reader.tgReadString(); } else {email=null;}var shippingAddress;if ((flags & 8)==1){shippingAddress = reader.tgReadObject(); } else {shippingAddress=null;}		return new PaymentRequestedInfo(name : name, phone : phone, email : email, shippingAddress : shippingAddress);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2426158996,4),[0,0,0,0],(this.name==null||this.name==false)?new List<int>.empty():[serializeBytes(this.name)].expand((element) => element).toList(),(this.phone==null||this.phone==false)?new List<int>.empty():[serializeBytes(this.phone)].expand((element) => element).toList(),(this.email==null||this.email==false)?new List<int>.empty():[serializeBytes(this.email)].expand((element) => element).toList(),(this.shippingAddress==null||this.shippingAddress==false)?new List<int>.empty():[(this.shippingAddress.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PaymentSavedCredentialsCard {
    static const CONSTRUCTOR_ID = 3452074527;
    static const SUBCLASS_OF_ID = 3009576675;
    final classType = "constructor";
    final ID = 3452074527;
	String id;
	String title;


	PaymentSavedCredentialsCard({required this.id, required this.title});

	static PaymentSavedCredentialsCard fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadString();var title = reader.tgReadString();		return new PaymentSavedCredentialsCard(id : id, title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3452074527,4),serializeBytes(this.id),serializeBytes(this.title),].expand((element) => element).toList();}

}

class WebDocument {
    static const CONSTRUCTOR_ID = 475467473;
    static const SUBCLASS_OF_ID = 996419604;
    final classType = "constructor";
    final ID = 475467473;
	String url;
	BigInt accessHash;
	int size;
	String mimeType;
	List<dynamic> attributes;


	WebDocument({required this.url, required this.accessHash, required this.size, required this.mimeType, required this.attributes});

	static WebDocument fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();var accessHash = reader.readLong();var size = reader.readInt();var mimeType = reader.tgReadString();reader.readInt();
List<dynamic> attributes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		attributes.add(reader.tgReadObject());
}		return new WebDocument(url : url, accessHash : accessHash, size : size, mimeType : mimeType, attributes : attributes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(475467473,4),serializeBytes(this.url),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.size,4,little:true,signed:true),serializeBytes(this.mimeType),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.attributes.length,4,little:true,signed:true),this.attributes.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class WebDocumentNoProxy {
    static const CONSTRUCTOR_ID = 4190682310;
    static const SUBCLASS_OF_ID = 996419604;
    final classType = "constructor";
    final ID = 4190682310;
	String url;
	int size;
	String mimeType;
	List<dynamic> attributes;


	WebDocumentNoProxy({required this.url, required this.size, required this.mimeType, required this.attributes});

	static WebDocumentNoProxy fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();var size = reader.readInt();var mimeType = reader.tgReadString();reader.readInt();
List<dynamic> attributes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		attributes.add(reader.tgReadObject());
}		return new WebDocumentNoProxy(url : url, size : size, mimeType : mimeType, attributes : attributes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4190682310,4),serializeBytes(this.url),readBufferFromBigInt(this.size,4,little:true,signed:true),serializeBytes(this.mimeType),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.attributes.length,4,little:true,signed:true),this.attributes.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class InputWebDocument {
    static const CONSTRUCTOR_ID = 2616017741;
    static const SUBCLASS_OF_ID = 2330505542;
    final classType = "constructor";
    final ID = 2616017741;
	String url;
	int size;
	String mimeType;
	List<dynamic> attributes;


	InputWebDocument({required this.url, required this.size, required this.mimeType, required this.attributes});

	static InputWebDocument fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();var size = reader.readInt();var mimeType = reader.tgReadString();reader.readInt();
List<dynamic> attributes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		attributes.add(reader.tgReadObject());
}		return new InputWebDocument(url : url, size : size, mimeType : mimeType, attributes : attributes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2616017741,4),serializeBytes(this.url),readBufferFromBigInt(this.size,4,little:true,signed:true),serializeBytes(this.mimeType),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.attributes.length,4,little:true,signed:true),this.attributes.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class InputWebFileLocation {
    static const CONSTRUCTOR_ID = 3258570374;
    static const SUBCLASS_OF_ID = 4147042521;
    final classType = "constructor";
    final ID = 3258570374;
	String url;
	BigInt accessHash;


	InputWebFileLocation({required this.url, required this.accessHash});

	static InputWebFileLocation fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();var accessHash = reader.readLong();		return new InputWebFileLocation(url : url, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3258570374,4),serializeBytes(this.url),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputWebFileGeoPointLocation {
    static const CONSTRUCTOR_ID = 2669814217;
    static const SUBCLASS_OF_ID = 4147042521;
    final classType = "constructor";
    final ID = 2669814217;
	var geoPoint;
	BigInt accessHash;
	int w;
	int h;
	int zoom;
	int scale;


	InputWebFileGeoPointLocation({required this.geoPoint, required this.accessHash, required this.w, required this.h, required this.zoom, required this.scale});

	static InputWebFileGeoPointLocation fromReader(BinaryReader reader) {
	var temp,len;var geoPoint = reader.tgReadObject();var accessHash = reader.readLong();var w = reader.readInt();var h = reader.readInt();var zoom = reader.readInt();var scale = reader.readInt();		return new InputWebFileGeoPointLocation(geoPoint : geoPoint, accessHash : accessHash, w : w, h : h, zoom : zoom, scale : scale);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2669814217,4),(this.geoPoint.getBytes() as List<int>),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.w,4,little:true,signed:true),readBufferFromBigInt(this.h,4,little:true,signed:true),readBufferFromBigInt(this.zoom,4,little:true,signed:true),readBufferFromBigInt(this.scale,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputPaymentCredentialsSaved {
    static const CONSTRUCTOR_ID = 3238965967;
    static const SUBCLASS_OF_ID = 681157949;
    final classType = "constructor";
    final ID = 3238965967;
	String id;
	List<int> tmpPassword;


	InputPaymentCredentialsSaved({required this.id, required this.tmpPassword});

	static InputPaymentCredentialsSaved fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadString();var tmpPassword = reader.tgReadBytes();		return new InputPaymentCredentialsSaved(id : id, tmpPassword : tmpPassword);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3238965967,4),serializeBytes(this.id),serializeBytes(this.tmpPassword),].expand((element) => element).toList();}

}

class InputPaymentCredentials {
    static const CONSTRUCTOR_ID = 873977640;
    static const SUBCLASS_OF_ID = 681157949;
    final classType = "constructor";
    final ID = 873977640;
	bool save;
	var data;


	InputPaymentCredentials({required this.save, required this.data});

	static InputPaymentCredentials fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final save = false;var data = reader.tgReadObject();		return new InputPaymentCredentials(save : save, data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(873977640,4),[0,0,0,0],(this.data.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputPaymentCredentialsApplePay {
    static const CONSTRUCTOR_ID = 178373535;
    static const SUBCLASS_OF_ID = 681157949;
    final classType = "constructor";
    final ID = 178373535;
	var paymentData;


	InputPaymentCredentialsApplePay({required this.paymentData});

	static InputPaymentCredentialsApplePay fromReader(BinaryReader reader) {
	var temp,len;var paymentData = reader.tgReadObject();		return new InputPaymentCredentialsApplePay(paymentData : paymentData);
	}
	List<int> getBytes(){return [readBufferFromBigInt(178373535,4),(this.paymentData.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputPaymentCredentialsGooglePay {
    static const CONSTRUCTOR_ID = 2328045569;
    static const SUBCLASS_OF_ID = 681157949;
    final classType = "constructor";
    final ID = 2328045569;
	var paymentToken;


	InputPaymentCredentialsGooglePay({required this.paymentToken});

	static InputPaymentCredentialsGooglePay fromReader(BinaryReader reader) {
	var temp,len;var paymentToken = reader.tgReadObject();		return new InputPaymentCredentialsGooglePay(paymentToken : paymentToken);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2328045569,4),(this.paymentToken.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ShippingOption {
    static const CONSTRUCTOR_ID = 3055631583;
    static const SUBCLASS_OF_ID = 4108930168;
    final classType = "constructor";
    final ID = 3055631583;
	String id;
	String title;
	List<dynamic> prices;


	ShippingOption({required this.id, required this.title, required this.prices});

	static ShippingOption fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadString();var title = reader.tgReadString();reader.readInt();
List<dynamic> prices = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		prices.add(reader.tgReadObject());
}		return new ShippingOption(id : id, title : title, prices : prices);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3055631583,4),serializeBytes(this.id),serializeBytes(this.title),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.prices.length,4,little:true,signed:true),this.prices.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class InputStickerSetItem {
    static const CONSTRUCTOR_ID = 4288717974;
    static const SUBCLASS_OF_ID = 2925129845;
    final classType = "constructor";
    final ID = 4288717974;
	var document;
	String emoji;
	var maskCoords;


	InputStickerSetItem({required this.document, required this.emoji, required this.maskCoords});

	static InputStickerSetItem fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var document = reader.tgReadObject();var emoji = reader.tgReadString();var maskCoords;if ((flags & 1)==1){maskCoords = reader.tgReadObject(); } else {maskCoords=null;}		return new InputStickerSetItem(document : document, emoji : emoji, maskCoords : maskCoords);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4288717974,4),[0,0,0,0],(this.document.getBytes() as List<int>),serializeBytes(this.emoji),(this.maskCoords==null||this.maskCoords==false)?new List<int>.empty():[(this.maskCoords.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputPhoneCall {
    static const CONSTRUCTOR_ID = 506920429;
    static const SUBCLASS_OF_ID = 3165319744;
    final classType = "constructor";
    final ID = 506920429;
	BigInt id;
	BigInt accessHash;


	InputPhoneCall({required this.id, required this.accessHash});

	static InputPhoneCall fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();		return new InputPhoneCall(id : id, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(506920429,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class PhoneCallEmpty {
    static const CONSTRUCTOR_ID = 1399245077;
    static const SUBCLASS_OF_ID = 3296664529;
    final classType = "constructor";
    final ID = 1399245077;
	BigInt id;


	PhoneCallEmpty({required this.id});

	static PhoneCallEmpty fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();		return new PhoneCallEmpty(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1399245077,4),readBufferFromBigInt(this.id,8,little:true,signed:true),].expand((element) => element).toList();}

}

class PhoneCallWaiting {
    static const CONSTRUCTOR_ID = 3307368215;
    static const SUBCLASS_OF_ID = 3296664529;
    final classType = "constructor";
    final ID = 3307368215;
	bool video;
	BigInt id;
	BigInt accessHash;
	int date;
	BigInt adminId;
	BigInt participantId;
	var protocol;
	int receiveDate;


	PhoneCallWaiting({required this.video, required this.id, required this.accessHash, required this.date, required this.adminId, required this.participantId, required this.protocol, required this.receiveDate});

	static PhoneCallWaiting fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final video = false;var id = reader.readLong();var accessHash = reader.readLong();var date = reader.readInt();var adminId = reader.readLong();var participantId = reader.readLong();var protocol = reader.tgReadObject();var receiveDate;if ((flags & 1)==1){receiveDate = reader.readInt(); } else {receiveDate=null;}		return new PhoneCallWaiting(video : video, id : id, accessHash : accessHash, date : date, adminId : adminId, participantId : participantId, protocol : protocol, receiveDate : receiveDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3307368215,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.adminId,8,little:true,signed:true),readBufferFromBigInt(this.participantId,8,little:true,signed:true),(this.protocol.getBytes() as List<int>),(this.receiveDate==null||this.receiveDate==false)?new List<int>.empty():[readBufferFromBigInt(this.receiveDate,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PhoneCallRequested {
    static const CONSTRUCTOR_ID = 347139340;
    static const SUBCLASS_OF_ID = 3296664529;
    final classType = "constructor";
    final ID = 347139340;
	bool video;
	BigInt id;
	BigInt accessHash;
	int date;
	BigInt adminId;
	BigInt participantId;
	List<int> gAHash;
	var protocol;


	PhoneCallRequested({required this.video, required this.id, required this.accessHash, required this.date, required this.adminId, required this.participantId, required this.gAHash, required this.protocol});

	static PhoneCallRequested fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final video = false;var id = reader.readLong();var accessHash = reader.readLong();var date = reader.readInt();var adminId = reader.readLong();var participantId = reader.readLong();var gAHash = reader.tgReadBytes();var protocol = reader.tgReadObject();		return new PhoneCallRequested(video : video, id : id, accessHash : accessHash, date : date, adminId : adminId, participantId : participantId, gAHash : gAHash, protocol : protocol);
	}
	List<int> getBytes(){return [readBufferFromBigInt(347139340,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.adminId,8,little:true,signed:true),readBufferFromBigInt(this.participantId,8,little:true,signed:true),serializeBytes(this.gAHash),(this.protocol.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PhoneCallAccepted {
    static const CONSTRUCTOR_ID = 912311057;
    static const SUBCLASS_OF_ID = 3296664529;
    final classType = "constructor";
    final ID = 912311057;
	bool video;
	BigInt id;
	BigInt accessHash;
	int date;
	BigInt adminId;
	BigInt participantId;
	List<int> gB;
	var protocol;


	PhoneCallAccepted({required this.video, required this.id, required this.accessHash, required this.date, required this.adminId, required this.participantId, required this.gB, required this.protocol});

	static PhoneCallAccepted fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final video = false;var id = reader.readLong();var accessHash = reader.readLong();var date = reader.readInt();var adminId = reader.readLong();var participantId = reader.readLong();var gB = reader.tgReadBytes();var protocol = reader.tgReadObject();		return new PhoneCallAccepted(video : video, id : id, accessHash : accessHash, date : date, adminId : adminId, participantId : participantId, gB : gB, protocol : protocol);
	}
	List<int> getBytes(){return [readBufferFromBigInt(912311057,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.adminId,8,little:true,signed:true),readBufferFromBigInt(this.participantId,8,little:true,signed:true),serializeBytes(this.gB),(this.protocol.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PhoneCall {
    static const CONSTRUCTOR_ID = 2524937319;
    static const SUBCLASS_OF_ID = 3296664529;
    final classType = "constructor";
    final ID = 2524937319;
	bool p2pAllowed;
	bool video;
	BigInt id;
	BigInt accessHash;
	int date;
	BigInt adminId;
	BigInt participantId;
	List<int> gAOrB;
	BigInt keyFingerprint;
	var protocol;
	List<dynamic> connections;
	int startDate;


	PhoneCall({required this.p2pAllowed, required this.video, required this.id, required this.accessHash, required this.date, required this.adminId, required this.participantId, required this.gAOrB, required this.keyFingerprint, required this.protocol, required this.connections, required this.startDate});

	static PhoneCall fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final p2pAllowed = false;final video = false;var id = reader.readLong();var accessHash = reader.readLong();var date = reader.readInt();var adminId = reader.readLong();var participantId = reader.readLong();var gAOrB = reader.tgReadBytes();var keyFingerprint = reader.readLong();var protocol = reader.tgReadObject();reader.readInt();
List<dynamic> connections = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		connections.add(reader.tgReadObject());
}var startDate = reader.readInt();		return new PhoneCall(p2pAllowed : p2pAllowed, video : video, id : id, accessHash : accessHash, date : date, adminId : adminId, participantId : participantId, gAOrB : gAOrB, keyFingerprint : keyFingerprint, protocol : protocol, connections : connections, startDate : startDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2524937319,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.adminId,8,little:true,signed:true),readBufferFromBigInt(this.participantId,8,little:true,signed:true),serializeBytes(this.gAOrB),readBufferFromBigInt(this.keyFingerprint,8,little:true,signed:true),(this.protocol.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.connections.length,4,little:true,signed:true),this.connections.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(this.startDate,4,little:true,signed:true),].expand((element) => element).toList();}

}

class PhoneCallDiscarded {
    static const CONSTRUCTOR_ID = 1355435489;
    static const SUBCLASS_OF_ID = 3296664529;
    final classType = "constructor";
    final ID = 1355435489;
	bool needRating;
	bool needDebug;
	bool video;
	BigInt id;
	var reason;
	int duration;


	PhoneCallDiscarded({required this.needRating, required this.needDebug, required this.video, required this.id, required this.reason, required this.duration});

	static PhoneCallDiscarded fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final needRating = false;final needDebug = false;final video = false;var id = reader.readLong();var reason;if ((flags & 1)==1){reason = reader.tgReadObject(); } else {reason=null;}var duration;if ((flags & 2)==1){duration = reader.readInt(); } else {duration=null;}		return new PhoneCallDiscarded(needRating : needRating, needDebug : needDebug, video : video, id : id, reason : reason, duration : duration);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1355435489,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),(this.reason==null||this.reason==false)?new List<int>.empty():[(this.reason.getBytes() as List<int>)].expand((element) => element).toList(),(this.duration==null||this.duration==false)?new List<int>.empty():[readBufferFromBigInt(this.duration,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PhoneConnection {
    static const CONSTRUCTOR_ID = 2629903303;
    static const SUBCLASS_OF_ID = 2861425677;
    final classType = "constructor";
    final ID = 2629903303;
	bool tcp;
	BigInt id;
	String ip;
	String ipv6;
	int port;
	List<int> peerTag;


	PhoneConnection({required this.tcp, required this.id, required this.ip, required this.ipv6, required this.port, required this.peerTag});

	static PhoneConnection fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final tcp = false;var id = reader.readLong();var ip = reader.tgReadString();var ipv6 = reader.tgReadString();var port = reader.readInt();var peerTag = reader.tgReadBytes();		return new PhoneConnection(tcp : tcp, id : id, ip : ip, ipv6 : ipv6, port : port, peerTag : peerTag);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2629903303,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),serializeBytes(this.ip),serializeBytes(this.ipv6),readBufferFromBigInt(this.port,4,little:true,signed:true),serializeBytes(this.peerTag),].expand((element) => element).toList();}

}

class PhoneConnectionWebrtc {
    static const CONSTRUCTOR_ID = 1667228533;
    static const SUBCLASS_OF_ID = 2861425677;
    final classType = "constructor";
    final ID = 1667228533;
	bool turn;
	bool stun;
	BigInt id;
	String ip;
	String ipv6;
	int port;
	String username;
	String password;


	PhoneConnectionWebrtc({required this.turn, required this.stun, required this.id, required this.ip, required this.ipv6, required this.port, required this.username, required this.password});

	static PhoneConnectionWebrtc fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final turn = false;final stun = false;var id = reader.readLong();var ip = reader.tgReadString();var ipv6 = reader.tgReadString();var port = reader.readInt();var username = reader.tgReadString();var password = reader.tgReadString();		return new PhoneConnectionWebrtc(turn : turn, stun : stun, id : id, ip : ip, ipv6 : ipv6, port : port, username : username, password : password);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1667228533,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),serializeBytes(this.ip),serializeBytes(this.ipv6),readBufferFromBigInt(this.port,4,little:true,signed:true),serializeBytes(this.username),serializeBytes(this.password),].expand((element) => element).toList();}

}

class PhoneCallProtocol {
    static const CONSTRUCTOR_ID = 4236742600;
    static const SUBCLASS_OF_ID = 2017038755;
    final classType = "constructor";
    final ID = 4236742600;
	bool udpP2p;
	bool udpReflector;
	int minLayer;
	int maxLayer;
	List<String> libraryVersions;


	PhoneCallProtocol({required this.udpP2p, required this.udpReflector, required this.minLayer, required this.maxLayer, required this.libraryVersions});

	static PhoneCallProtocol fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final udpP2p = false;final udpReflector = false;var minLayer = reader.readInt();var maxLayer = reader.readInt();reader.readInt();
List<String> libraryVersions = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		libraryVersions.add(reader.tgReadString());
}		return new PhoneCallProtocol(udpP2p : udpP2p, udpReflector : udpReflector, minLayer : minLayer, maxLayer : maxLayer, libraryVersions : libraryVersions);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4236742600,4),[0,0,0,0],readBufferFromBigInt(this.minLayer,4,little:true,signed:true),readBufferFromBigInt(this.maxLayer,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.libraryVersions.length,4,little:true,signed:true),this.libraryVersions.map((x)=>serializeBytes(x)).expand((element) => element),].expand((element) => element).toList();}

}

class CdnPublicKey {
    static const CONSTRUCTOR_ID = 3380800186;
    static const SUBCLASS_OF_ID = 383469555;
    final classType = "constructor";
    final ID = 3380800186;
	int dcId;
	String publicKey;


	CdnPublicKey({required this.dcId, required this.publicKey});

	static CdnPublicKey fromReader(BinaryReader reader) {
	var temp,len;var dcId = reader.readInt();var publicKey = reader.tgReadString();		return new CdnPublicKey(dcId : dcId, publicKey : publicKey);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3380800186,4),readBufferFromBigInt(this.dcId,4,little:true,signed:true),serializeBytes(this.publicKey),].expand((element) => element).toList();}

}

class CdnConfig {
    static const CONSTRUCTOR_ID = 1462101002;
    static const SUBCLASS_OF_ID = 3973724540;
    final classType = "constructor";
    final ID = 1462101002;
	List<dynamic> publicKeys;


	CdnConfig({required this.publicKeys});

	static CdnConfig fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> publicKeys = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		publicKeys.add(reader.tgReadObject());
}		return new CdnConfig(publicKeys : publicKeys);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1462101002,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.publicKeys.length,4,little:true,signed:true),this.publicKeys.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class LangPackString {
    static const CONSTRUCTOR_ID = 3402727926;
    static const SUBCLASS_OF_ID = 3692534457;
    final classType = "constructor";
    final ID = 3402727926;
	String key;
	String value;


	LangPackString({required this.key, required this.value});

	static LangPackString fromReader(BinaryReader reader) {
	var temp,len;var key = reader.tgReadString();var value = reader.tgReadString();		return new LangPackString(key : key, value : value);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3402727926,4),serializeBytes(this.key),serializeBytes(this.value),].expand((element) => element).toList();}

}

class LangPackStringPluralized {
    static const CONSTRUCTOR_ID = 1816636575;
    static const SUBCLASS_OF_ID = 3692534457;
    final classType = "constructor";
    final ID = 1816636575;
	String key;
	String zeroValue;
	String oneValue;
	String twoValue;
	String fewValue;
	String manyValue;
	String otherValue;


	LangPackStringPluralized({required this.key, required this.zeroValue, required this.oneValue, required this.twoValue, required this.fewValue, required this.manyValue, required this.otherValue});

	static LangPackStringPluralized fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var key = reader.tgReadString();var zeroValue;if ((flags & 1)==1){zeroValue = reader.tgReadString(); } else {zeroValue=null;}var oneValue;if ((flags & 2)==1){oneValue = reader.tgReadString(); } else {oneValue=null;}var twoValue;if ((flags & 4)==1){twoValue = reader.tgReadString(); } else {twoValue=null;}var fewValue;if ((flags & 8)==1){fewValue = reader.tgReadString(); } else {fewValue=null;}var manyValue;if ((flags & 16)==1){manyValue = reader.tgReadString(); } else {manyValue=null;}var otherValue = reader.tgReadString();		return new LangPackStringPluralized(key : key, zeroValue : zeroValue, oneValue : oneValue, twoValue : twoValue, fewValue : fewValue, manyValue : manyValue, otherValue : otherValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1816636575,4),[0,0,0,0],serializeBytes(this.key),(this.zeroValue==null||this.zeroValue==false)?new List<int>.empty():[serializeBytes(this.zeroValue)].expand((element) => element).toList(),(this.oneValue==null||this.oneValue==false)?new List<int>.empty():[serializeBytes(this.oneValue)].expand((element) => element).toList(),(this.twoValue==null||this.twoValue==false)?new List<int>.empty():[serializeBytes(this.twoValue)].expand((element) => element).toList(),(this.fewValue==null||this.fewValue==false)?new List<int>.empty():[serializeBytes(this.fewValue)].expand((element) => element).toList(),(this.manyValue==null||this.manyValue==false)?new List<int>.empty():[serializeBytes(this.manyValue)].expand((element) => element).toList(),serializeBytes(this.otherValue),].expand((element) => element).toList();}

}

class LangPackStringDeleted {
    static const CONSTRUCTOR_ID = 695856818;
    static const SUBCLASS_OF_ID = 3692534457;
    final classType = "constructor";
    final ID = 695856818;
	String key;


	LangPackStringDeleted({required this.key});

	static LangPackStringDeleted fromReader(BinaryReader reader) {
	var temp,len;var key = reader.tgReadString();		return new LangPackStringDeleted(key : key);
	}
	List<int> getBytes(){return [readBufferFromBigInt(695856818,4),serializeBytes(this.key),].expand((element) => element).toList();}

}

class LangPackDifference {
    static const CONSTRUCTOR_ID = 4085629430;
    static const SUBCLASS_OF_ID = 1382427989;
    final classType = "constructor";
    final ID = 4085629430;
	String langCode;
	int fromVersion;
	int version;
	List<dynamic> strings;


	LangPackDifference({required this.langCode, required this.fromVersion, required this.version, required this.strings});

	static LangPackDifference fromReader(BinaryReader reader) {
	var temp,len;var langCode = reader.tgReadString();var fromVersion = reader.readInt();var version = reader.readInt();reader.readInt();
List<dynamic> strings = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		strings.add(reader.tgReadObject());
}		return new LangPackDifference(langCode : langCode, fromVersion : fromVersion, version : version, strings : strings);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4085629430,4),serializeBytes(this.langCode),readBufferFromBigInt(this.fromVersion,4,little:true,signed:true),readBufferFromBigInt(this.version,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.strings.length,4,little:true,signed:true),this.strings.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class LangPackLanguage {
    static const CONSTRUCTOR_ID = 4006239459;
    static const SUBCLASS_OF_ID = 2880211383;
    final classType = "constructor";
    final ID = 4006239459;
	bool official;
	bool rtl;
	bool beta;
	String name;
	String nativeName;
	String langCode;
	String baseLangCode;
	String pluralCode;
	int stringsCount;
	int translatedCount;
	String translationsUrl;


	LangPackLanguage({required this.official, required this.rtl, required this.beta, required this.name, required this.nativeName, required this.langCode, required this.baseLangCode, required this.pluralCode, required this.stringsCount, required this.translatedCount, required this.translationsUrl});

	static LangPackLanguage fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final official = false;final rtl = false;final beta = false;var name = reader.tgReadString();var nativeName = reader.tgReadString();var langCode = reader.tgReadString();var baseLangCode;if ((flags & 2)==1){baseLangCode = reader.tgReadString(); } else {baseLangCode=null;}var pluralCode = reader.tgReadString();var stringsCount = reader.readInt();var translatedCount = reader.readInt();var translationsUrl = reader.tgReadString();		return new LangPackLanguage(official : official, rtl : rtl, beta : beta, name : name, nativeName : nativeName, langCode : langCode, baseLangCode : baseLangCode, pluralCode : pluralCode, stringsCount : stringsCount, translatedCount : translatedCount, translationsUrl : translationsUrl);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4006239459,4),[0,0,0,0],serializeBytes(this.name),serializeBytes(this.nativeName),serializeBytes(this.langCode),(this.baseLangCode==null||this.baseLangCode==false)?new List<int>.empty():[serializeBytes(this.baseLangCode)].expand((element) => element).toList(),serializeBytes(this.pluralCode),readBufferFromBigInt(this.stringsCount,4,little:true,signed:true),readBufferFromBigInt(this.translatedCount,4,little:true,signed:true),serializeBytes(this.translationsUrl),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionChangeTitle {
    static const CONSTRUCTOR_ID = 3873421349;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 3873421349;
	String prevValue;
	String newValue;


	ChannelAdminLogEventActionChangeTitle({required this.prevValue, required this.newValue});

	static ChannelAdminLogEventActionChangeTitle fromReader(BinaryReader reader) {
	var temp,len;var prevValue = reader.tgReadString();var newValue = reader.tgReadString();		return new ChannelAdminLogEventActionChangeTitle(prevValue : prevValue, newValue : newValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3873421349,4),serializeBytes(this.prevValue),serializeBytes(this.newValue),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionChangeAbout {
    static const CONSTRUCTOR_ID = 1427671598;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1427671598;
	String prevValue;
	String newValue;


	ChannelAdminLogEventActionChangeAbout({required this.prevValue, required this.newValue});

	static ChannelAdminLogEventActionChangeAbout fromReader(BinaryReader reader) {
	var temp,len;var prevValue = reader.tgReadString();var newValue = reader.tgReadString();		return new ChannelAdminLogEventActionChangeAbout(prevValue : prevValue, newValue : newValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1427671598,4),serializeBytes(this.prevValue),serializeBytes(this.newValue),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionChangeUsername {
    static const CONSTRUCTOR_ID = 1783299128;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1783299128;
	String prevValue;
	String newValue;


	ChannelAdminLogEventActionChangeUsername({required this.prevValue, required this.newValue});

	static ChannelAdminLogEventActionChangeUsername fromReader(BinaryReader reader) {
	var temp,len;var prevValue = reader.tgReadString();var newValue = reader.tgReadString();		return new ChannelAdminLogEventActionChangeUsername(prevValue : prevValue, newValue : newValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1783299128,4),serializeBytes(this.prevValue),serializeBytes(this.newValue),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionChangePhoto {
    static const CONSTRUCTOR_ID = 1129042607;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1129042607;
	var prevPhoto;
	var newPhoto;


	ChannelAdminLogEventActionChangePhoto({required this.prevPhoto, required this.newPhoto});

	static ChannelAdminLogEventActionChangePhoto fromReader(BinaryReader reader) {
	var temp,len;var prevPhoto = reader.tgReadObject();var newPhoto = reader.tgReadObject();		return new ChannelAdminLogEventActionChangePhoto(prevPhoto : prevPhoto, newPhoto : newPhoto);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1129042607,4),(this.prevPhoto.getBytes() as List<int>),(this.newPhoto.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionToggleInvites {
    static const CONSTRUCTOR_ID = 460916654;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 460916654;
	bool newValue;


	ChannelAdminLogEventActionToggleInvites({required this.newValue});

	static ChannelAdminLogEventActionToggleInvites fromReader(BinaryReader reader) {
	var temp,len;var newValue = reader.tgReadBool();		return new ChannelAdminLogEventActionToggleInvites(newValue : newValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(460916654,4),[this.newValue ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionToggleSignatures {
    static const CONSTRUCTOR_ID = 648939889;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 648939889;
	bool newValue;


	ChannelAdminLogEventActionToggleSignatures({required this.newValue});

	static ChannelAdminLogEventActionToggleSignatures fromReader(BinaryReader reader) {
	var temp,len;var newValue = reader.tgReadBool();		return new ChannelAdminLogEventActionToggleSignatures(newValue : newValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(648939889,4),[this.newValue ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionUpdatePinned {
    static const CONSTRUCTOR_ID = 3924306968;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 3924306968;
	var message;


	ChannelAdminLogEventActionUpdatePinned({required this.message});

	static ChannelAdminLogEventActionUpdatePinned fromReader(BinaryReader reader) {
	var temp,len;var message = reader.tgReadObject();		return new ChannelAdminLogEventActionUpdatePinned(message : message);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3924306968,4),(this.message.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionEditMessage {
    static const CONSTRUCTOR_ID = 1889215493;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1889215493;
	var prevMessage;
	var newMessage;


	ChannelAdminLogEventActionEditMessage({required this.prevMessage, required this.newMessage});

	static ChannelAdminLogEventActionEditMessage fromReader(BinaryReader reader) {
	var temp,len;var prevMessage = reader.tgReadObject();var newMessage = reader.tgReadObject();		return new ChannelAdminLogEventActionEditMessage(prevMessage : prevMessage, newMessage : newMessage);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1889215493,4),(this.prevMessage.getBytes() as List<int>),(this.newMessage.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionDeleteMessage {
    static const CONSTRUCTOR_ID = 1121994683;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1121994683;
	var message;


	ChannelAdminLogEventActionDeleteMessage({required this.message});

	static ChannelAdminLogEventActionDeleteMessage fromReader(BinaryReader reader) {
	var temp,len;var message = reader.tgReadObject();		return new ChannelAdminLogEventActionDeleteMessage(message : message);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1121994683,4),(this.message.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionParticipantJoin {
    static const CONSTRUCTOR_ID = 405815507;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 405815507;


	ChannelAdminLogEventActionParticipantJoin();

	static ChannelAdminLogEventActionParticipantJoin fromReader(BinaryReader reader) {
	var temp,len;		return new ChannelAdminLogEventActionParticipantJoin();
	}
	List<int> getBytes(){return [readBufferFromBigInt(405815507,4),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionParticipantLeave {
    static const CONSTRUCTOR_ID = 4170676210;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 4170676210;


	ChannelAdminLogEventActionParticipantLeave();

	static ChannelAdminLogEventActionParticipantLeave fromReader(BinaryReader reader) {
	var temp,len;		return new ChannelAdminLogEventActionParticipantLeave();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4170676210,4),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionParticipantInvite {
    static const CONSTRUCTOR_ID = 3810276568;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 3810276568;
	var participant;


	ChannelAdminLogEventActionParticipantInvite({required this.participant});

	static ChannelAdminLogEventActionParticipantInvite fromReader(BinaryReader reader) {
	var temp,len;var participant = reader.tgReadObject();		return new ChannelAdminLogEventActionParticipantInvite(participant : participant);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3810276568,4),(this.participant.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionParticipantToggleBan {
    static const CONSTRUCTOR_ID = 3872931198;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 3872931198;
	var prevParticipant;
	var newParticipant;


	ChannelAdminLogEventActionParticipantToggleBan({required this.prevParticipant, required this.newParticipant});

	static ChannelAdminLogEventActionParticipantToggleBan fromReader(BinaryReader reader) {
	var temp,len;var prevParticipant = reader.tgReadObject();var newParticipant = reader.tgReadObject();		return new ChannelAdminLogEventActionParticipantToggleBan(prevParticipant : prevParticipant, newParticipant : newParticipant);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3872931198,4),(this.prevParticipant.getBytes() as List<int>),(this.newParticipant.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionParticipantToggleAdmin {
    static const CONSTRUCTOR_ID = 3580323600;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 3580323600;
	var prevParticipant;
	var newParticipant;


	ChannelAdminLogEventActionParticipantToggleAdmin({required this.prevParticipant, required this.newParticipant});

	static ChannelAdminLogEventActionParticipantToggleAdmin fromReader(BinaryReader reader) {
	var temp,len;var prevParticipant = reader.tgReadObject();var newParticipant = reader.tgReadObject();		return new ChannelAdminLogEventActionParticipantToggleAdmin(prevParticipant : prevParticipant, newParticipant : newParticipant);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3580323600,4),(this.prevParticipant.getBytes() as List<int>),(this.newParticipant.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionChangeStickerSet {
    static const CONSTRUCTOR_ID = 2982398631;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 2982398631;
	var prevStickerset;
	var newStickerset;


	ChannelAdminLogEventActionChangeStickerSet({required this.prevStickerset, required this.newStickerset});

	static ChannelAdminLogEventActionChangeStickerSet fromReader(BinaryReader reader) {
	var temp,len;var prevStickerset = reader.tgReadObject();var newStickerset = reader.tgReadObject();		return new ChannelAdminLogEventActionChangeStickerSet(prevStickerset : prevStickerset, newStickerset : newStickerset);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2982398631,4),(this.prevStickerset.getBytes() as List<int>),(this.newStickerset.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionTogglePreHistoryHidden {
    static const CONSTRUCTOR_ID = 1599903217;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1599903217;
	bool newValue;


	ChannelAdminLogEventActionTogglePreHistoryHidden({required this.newValue});

	static ChannelAdminLogEventActionTogglePreHistoryHidden fromReader(BinaryReader reader) {
	var temp,len;var newValue = reader.tgReadBool();		return new ChannelAdminLogEventActionTogglePreHistoryHidden(newValue : newValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1599903217,4),[this.newValue ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionDefaultBannedRights {
    static const CONSTRUCTOR_ID = 771095562;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 771095562;
	var prevBannedRights;
	var newBannedRights;


	ChannelAdminLogEventActionDefaultBannedRights({required this.prevBannedRights, required this.newBannedRights});

	static ChannelAdminLogEventActionDefaultBannedRights fromReader(BinaryReader reader) {
	var temp,len;var prevBannedRights = reader.tgReadObject();var newBannedRights = reader.tgReadObject();		return new ChannelAdminLogEventActionDefaultBannedRights(prevBannedRights : prevBannedRights, newBannedRights : newBannedRights);
	}
	List<int> getBytes(){return [readBufferFromBigInt(771095562,4),(this.prevBannedRights.getBytes() as List<int>),(this.newBannedRights.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionStopPoll {
    static const CONSTRUCTOR_ID = 2399639107;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 2399639107;
	var message;


	ChannelAdminLogEventActionStopPoll({required this.message});

	static ChannelAdminLogEventActionStopPoll fromReader(BinaryReader reader) {
	var temp,len;var message = reader.tgReadObject();		return new ChannelAdminLogEventActionStopPoll(message : message);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2399639107,4),(this.message.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionChangeLinkedChat {
    static const CONSTRUCTOR_ID = 84703944;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 84703944;
	BigInt prevValue;
	BigInt newValue;


	ChannelAdminLogEventActionChangeLinkedChat({required this.prevValue, required this.newValue});

	static ChannelAdminLogEventActionChangeLinkedChat fromReader(BinaryReader reader) {
	var temp,len;var prevValue = reader.readLong();var newValue = reader.readLong();		return new ChannelAdminLogEventActionChangeLinkedChat(prevValue : prevValue, newValue : newValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(84703944,4),readBufferFromBigInt(this.prevValue,8,little:true,signed:true),readBufferFromBigInt(this.newValue,8,little:true,signed:true),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionChangeLocation {
    static const CONSTRUCTOR_ID = 241923758;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 241923758;
	var prevValue;
	var newValue;


	ChannelAdminLogEventActionChangeLocation({required this.prevValue, required this.newValue});

	static ChannelAdminLogEventActionChangeLocation fromReader(BinaryReader reader) {
	var temp,len;var prevValue = reader.tgReadObject();var newValue = reader.tgReadObject();		return new ChannelAdminLogEventActionChangeLocation(prevValue : prevValue, newValue : newValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(241923758,4),(this.prevValue.getBytes() as List<int>),(this.newValue.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionToggleSlowMode {
    static const CONSTRUCTOR_ID = 1401984889;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1401984889;
	int prevValue;
	int newValue;


	ChannelAdminLogEventActionToggleSlowMode({required this.prevValue, required this.newValue});

	static ChannelAdminLogEventActionToggleSlowMode fromReader(BinaryReader reader) {
	var temp,len;var prevValue = reader.readInt();var newValue = reader.readInt();		return new ChannelAdminLogEventActionToggleSlowMode(prevValue : prevValue, newValue : newValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1401984889,4),readBufferFromBigInt(this.prevValue,4,little:true,signed:true),readBufferFromBigInt(this.newValue,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionStartGroupCall {
    static const CONSTRUCTOR_ID = 589338437;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 589338437;
	var call;


	ChannelAdminLogEventActionStartGroupCall({required this.call});

	static ChannelAdminLogEventActionStartGroupCall fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();		return new ChannelAdminLogEventActionStartGroupCall(call : call);
	}
	List<int> getBytes(){return [readBufferFromBigInt(589338437,4),(this.call.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionDiscardGroupCall {
    static const CONSTRUCTOR_ID = 3684667712;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 3684667712;
	var call;


	ChannelAdminLogEventActionDiscardGroupCall({required this.call});

	static ChannelAdminLogEventActionDiscardGroupCall fromReader(BinaryReader reader) {
	var temp,len;var call = reader.tgReadObject();		return new ChannelAdminLogEventActionDiscardGroupCall(call : call);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3684667712,4),(this.call.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionParticipantMute {
    static const CONSTRUCTOR_ID = 4179895506;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 4179895506;
	var participant;


	ChannelAdminLogEventActionParticipantMute({required this.participant});

	static ChannelAdminLogEventActionParticipantMute fromReader(BinaryReader reader) {
	var temp,len;var participant = reader.tgReadObject();		return new ChannelAdminLogEventActionParticipantMute(participant : participant);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4179895506,4),(this.participant.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionParticipantUnmute {
    static const CONSTRUCTOR_ID = 3863226816;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 3863226816;
	var participant;


	ChannelAdminLogEventActionParticipantUnmute({required this.participant});

	static ChannelAdminLogEventActionParticipantUnmute fromReader(BinaryReader reader) {
	var temp,len;var participant = reader.tgReadObject();		return new ChannelAdminLogEventActionParticipantUnmute(participant : participant);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3863226816,4),(this.participant.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionToggleGroupCallSetting {
    static const CONSTRUCTOR_ID = 1456906823;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1456906823;
	bool joinMuted;


	ChannelAdminLogEventActionToggleGroupCallSetting({required this.joinMuted});

	static ChannelAdminLogEventActionToggleGroupCallSetting fromReader(BinaryReader reader) {
	var temp,len;var joinMuted = reader.tgReadBool();		return new ChannelAdminLogEventActionToggleGroupCallSetting(joinMuted : joinMuted);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1456906823,4),[this.joinMuted ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionParticipantJoinByInvite {
    static const CONSTRUCTOR_ID = 1557846647;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1557846647;
	var invite;


	ChannelAdminLogEventActionParticipantJoinByInvite({required this.invite});

	static ChannelAdminLogEventActionParticipantJoinByInvite fromReader(BinaryReader reader) {
	var temp,len;var invite = reader.tgReadObject();		return new ChannelAdminLogEventActionParticipantJoinByInvite(invite : invite);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1557846647,4),(this.invite.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionExportedInviteDelete {
    static const CONSTRUCTOR_ID = 1515256996;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1515256996;
	var invite;


	ChannelAdminLogEventActionExportedInviteDelete({required this.invite});

	static ChannelAdminLogEventActionExportedInviteDelete fromReader(BinaryReader reader) {
	var temp,len;var invite = reader.tgReadObject();		return new ChannelAdminLogEventActionExportedInviteDelete(invite : invite);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1515256996,4),(this.invite.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionExportedInviteRevoke {
    static const CONSTRUCTOR_ID = 1091179342;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1091179342;
	var invite;


	ChannelAdminLogEventActionExportedInviteRevoke({required this.invite});

	static ChannelAdminLogEventActionExportedInviteRevoke fromReader(BinaryReader reader) {
	var temp,len;var invite = reader.tgReadObject();		return new ChannelAdminLogEventActionExportedInviteRevoke(invite : invite);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1091179342,4),(this.invite.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionExportedInviteEdit {
    static const CONSTRUCTOR_ID = 3910056793;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 3910056793;
	var prevInvite;
	var newInvite;


	ChannelAdminLogEventActionExportedInviteEdit({required this.prevInvite, required this.newInvite});

	static ChannelAdminLogEventActionExportedInviteEdit fromReader(BinaryReader reader) {
	var temp,len;var prevInvite = reader.tgReadObject();var newInvite = reader.tgReadObject();		return new ChannelAdminLogEventActionExportedInviteEdit(prevInvite : prevInvite, newInvite : newInvite);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3910056793,4),(this.prevInvite.getBytes() as List<int>),(this.newInvite.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionParticipantVolume {
    static const CONSTRUCTOR_ID = 1048537159;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1048537159;
	var participant;


	ChannelAdminLogEventActionParticipantVolume({required this.participant});

	static ChannelAdminLogEventActionParticipantVolume fromReader(BinaryReader reader) {
	var temp,len;var participant = reader.tgReadObject();		return new ChannelAdminLogEventActionParticipantVolume(participant : participant);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1048537159,4),(this.participant.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionChangeHistoryTTL {
    static const CONSTRUCTOR_ID = 1855199800;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 1855199800;
	int prevValue;
	int newValue;


	ChannelAdminLogEventActionChangeHistoryTTL({required this.prevValue, required this.newValue});

	static ChannelAdminLogEventActionChangeHistoryTTL fromReader(BinaryReader reader) {
	var temp,len;var prevValue = reader.readInt();var newValue = reader.readInt();		return new ChannelAdminLogEventActionChangeHistoryTTL(prevValue : prevValue, newValue : newValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1855199800,4),readBufferFromBigInt(this.prevValue,4,little:true,signed:true),readBufferFromBigInt(this.newValue,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionParticipantJoinByRequest {
    static const CONSTRUCTOR_ID = 2947945546;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 2947945546;
	var invite;
	BigInt approvedBy;


	ChannelAdminLogEventActionParticipantJoinByRequest({required this.invite, required this.approvedBy});

	static ChannelAdminLogEventActionParticipantJoinByRequest fromReader(BinaryReader reader) {
	var temp,len;var invite = reader.tgReadObject();var approvedBy = reader.readLong();		return new ChannelAdminLogEventActionParticipantJoinByRequest(invite : invite, approvedBy : approvedBy);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2947945546,4),(this.invite.getBytes() as List<int>),readBufferFromBigInt(this.approvedBy,8,little:true,signed:true),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionToggleNoForwards {
    static const CONSTRUCTOR_ID = 3408578406;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 3408578406;
	bool newValue;


	ChannelAdminLogEventActionToggleNoForwards({required this.newValue});

	static ChannelAdminLogEventActionToggleNoForwards fromReader(BinaryReader reader) {
	var temp,len;var newValue = reader.tgReadBool();		return new ChannelAdminLogEventActionToggleNoForwards(newValue : newValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3408578406,4),[this.newValue ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionSendMessage {
    static const CONSTRUCTOR_ID = 663693416;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 663693416;
	var message;


	ChannelAdminLogEventActionSendMessage({required this.message});

	static ChannelAdminLogEventActionSendMessage fromReader(BinaryReader reader) {
	var temp,len;var message = reader.tgReadObject();		return new ChannelAdminLogEventActionSendMessage(message : message);
	}
	List<int> getBytes(){return [readBufferFromBigInt(663693416,4),(this.message.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventActionChangeAvailableReactions {
    static const CONSTRUCTOR_ID = 2633496426;
    static const SUBCLASS_OF_ID = 2998503411;
    final classType = "constructor";
    final ID = 2633496426;
	List<String> prevValue;
	List<String> newValue;


	ChannelAdminLogEventActionChangeAvailableReactions({required this.prevValue, required this.newValue});

	static ChannelAdminLogEventActionChangeAvailableReactions fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<String> prevValue = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		prevValue.add(reader.tgReadString());
}reader.readInt();
List<String> newValue = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		newValue.add(reader.tgReadString());
}		return new ChannelAdminLogEventActionChangeAvailableReactions(prevValue : prevValue, newValue : newValue);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2633496426,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.prevValue.length,4,little:true,signed:true),this.prevValue.map((x)=>serializeBytes(x)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.newValue.length,4,little:true,signed:true),this.newValue.map((x)=>serializeBytes(x)).expand((element) => element),].expand((element) => element).toList();}

}

class ChannelAdminLogEvent {
    static const CONSTRUCTOR_ID = 531458253;
    static const SUBCLASS_OF_ID = 1083115929;
    final classType = "constructor";
    final ID = 531458253;
	BigInt id;
	int date;
	BigInt userId;
	var action;


	ChannelAdminLogEvent({required this.id, required this.date, required this.userId, required this.action});

	static ChannelAdminLogEvent fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var date = reader.readInt();var userId = reader.readLong();var action = reader.tgReadObject();		return new ChannelAdminLogEvent(id : id, date : date, userId : userId, action : action);
	}
	List<int> getBytes(){return [readBufferFromBigInt(531458253,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.userId,8,little:true,signed:true),(this.action.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ChannelAdminLogEventsFilter {
    static const CONSTRUCTOR_ID = 3926948580;
    static const SUBCLASS_OF_ID = 2092692249;
    final classType = "constructor";
    final ID = 3926948580;
	bool join;
	bool leave;
	bool invite;
	bool ban;
	bool unban;
	bool kick;
	bool unkick;
	bool promote;
	bool demote;
	bool info;
	bool settings;
	bool pinned;
	bool edit;
	bool delete;
	bool groupCall;
	bool invites;
	bool send;


	ChannelAdminLogEventsFilter({required this.join, required this.leave, required this.invite, required this.ban, required this.unban, required this.kick, required this.unkick, required this.promote, required this.demote, required this.info, required this.settings, required this.pinned, required this.edit, required this.delete, required this.groupCall, required this.invites, required this.send});

	static ChannelAdminLogEventsFilter fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final join = false;final leave = false;final invite = false;final ban = false;final unban = false;final kick = false;final unkick = false;final promote = false;final demote = false;final info = false;final settings = false;final pinned = false;final edit = false;final delete = false;final groupCall = false;final invites = false;final send = false;		return new ChannelAdminLogEventsFilter(join : join, leave : leave, invite : invite, ban : ban, unban : unban, kick : kick, unkick : unkick, promote : promote, demote : demote, info : info, settings : settings, pinned : pinned, edit : edit, delete : delete, groupCall : groupCall, invites : invites, send : send);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3926948580,4),[0,0,0,0],].expand((element) => element).toList();}

}

class PopularContact {
    static const CONSTRUCTOR_ID = 1558266229;
    static const SUBCLASS_OF_ID = 67708250;
    final classType = "constructor";
    final ID = 1558266229;
	BigInt clientId;
	int importers;


	PopularContact({required this.clientId, required this.importers});

	static PopularContact fromReader(BinaryReader reader) {
	var temp,len;var clientId = reader.readLong();var importers = reader.readInt();		return new PopularContact(clientId : clientId, importers : importers);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1558266229,4),readBufferFromBigInt(this.clientId,8,little:true,signed:true),readBufferFromBigInt(this.importers,4,little:true,signed:true),].expand((element) => element).toList();}

}

class RecentMeUrlUnknown {
    static const CONSTRUCTOR_ID = 1189204285;
    static const SUBCLASS_OF_ID = 1436889209;
    final classType = "constructor";
    final ID = 1189204285;
	String url;


	RecentMeUrlUnknown({required this.url});

	static RecentMeUrlUnknown fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();		return new RecentMeUrlUnknown(url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1189204285,4),serializeBytes(this.url),].expand((element) => element).toList();}

}

class RecentMeUrlUser {
    static const CONSTRUCTOR_ID = 3106671074;
    static const SUBCLASS_OF_ID = 1436889209;
    final classType = "constructor";
    final ID = 3106671074;
	String url;
	BigInt userId;


	RecentMeUrlUser({required this.url, required this.userId});

	static RecentMeUrlUser fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();var userId = reader.readLong();		return new RecentMeUrlUser(url : url, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3106671074,4),serializeBytes(this.url),readBufferFromBigInt(this.userId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class RecentMeUrlChat {
    static const CONSTRUCTOR_ID = 3000660434;
    static const SUBCLASS_OF_ID = 1436889209;
    final classType = "constructor";
    final ID = 3000660434;
	String url;
	BigInt chatId;


	RecentMeUrlChat({required this.url, required this.chatId});

	static RecentMeUrlChat fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();var chatId = reader.readLong();		return new RecentMeUrlChat(url : url, chatId : chatId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3000660434,4),serializeBytes(this.url),readBufferFromBigInt(this.chatId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class RecentMeUrlChatInvite {
    static const CONSTRUCTOR_ID = 3947431965;
    static const SUBCLASS_OF_ID = 1436889209;
    final classType = "constructor";
    final ID = 3947431965;
	String url;
	var chatInvite;


	RecentMeUrlChatInvite({required this.url, required this.chatInvite});

	static RecentMeUrlChatInvite fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();var chatInvite = reader.tgReadObject();		return new RecentMeUrlChatInvite(url : url, chatInvite : chatInvite);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3947431965,4),serializeBytes(this.url),(this.chatInvite.getBytes() as List<int>),].expand((element) => element).toList();}

}

class RecentMeUrlStickerSet {
    static const CONSTRUCTOR_ID = 3154794460;
    static const SUBCLASS_OF_ID = 1436889209;
    final classType = "constructor";
    final ID = 3154794460;
	String url;
	var set;


	RecentMeUrlStickerSet({required this.url, required this.set});

	static RecentMeUrlStickerSet fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();var set = reader.tgReadObject();		return new RecentMeUrlStickerSet(url : url, set : set);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3154794460,4),serializeBytes(this.url),(this.set.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputSingleMedia {
    static const CONSTRUCTOR_ID = 482797855;
    static const SUBCLASS_OF_ID = 566922968;
    final classType = "constructor";
    final ID = 482797855;
	var media;
	BigInt randomId;
	String message;
	List<dynamic> entities;


	InputSingleMedia({required this.media, required this.randomId, required this.message, required this.entities});

	static InputSingleMedia fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var media = reader.tgReadObject();var randomId = reader.readLong();var message = reader.tgReadString();var entities;if ((flags & 1)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}		return new InputSingleMedia(media : media, randomId : randomId, message : message, entities : entities);
	}
	List<int> getBytes(){return [readBufferFromBigInt(482797855,4),[0,0,0,0],(this.media.getBytes() as List<int>),readBufferFromBigInt(this.randomId,8,little:true,signed:true),serializeBytes(this.message),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class WebAuthorization {
    static const CONSTRUCTOR_ID = 2801333330;
    static const SUBCLASS_OF_ID = 58084656;
    final classType = "constructor";
    final ID = 2801333330;
	BigInt hash;
	BigInt botId;
	String domain;
	String browser;
	String platform;
	int dateCreated;
	int dateActive;
	String ip;
	String region;


	WebAuthorization({required this.hash, required this.botId, required this.domain, required this.browser, required this.platform, required this.dateCreated, required this.dateActive, required this.ip, required this.region});

	static WebAuthorization fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();var botId = reader.readLong();var domain = reader.tgReadString();var browser = reader.tgReadString();var platform = reader.tgReadString();var dateCreated = reader.readInt();var dateActive = reader.readInt();var ip = reader.tgReadString();var region = reader.tgReadString();		return new WebAuthorization(hash : hash, botId : botId, domain : domain, browser : browser, platform : platform, dateCreated : dateCreated, dateActive : dateActive, ip : ip, region : region);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2801333330,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),readBufferFromBigInt(this.botId,8,little:true,signed:true),serializeBytes(this.domain),serializeBytes(this.browser),serializeBytes(this.platform),readBufferFromBigInt(this.dateCreated,4,little:true,signed:true),readBufferFromBigInt(this.dateActive,4,little:true,signed:true),serializeBytes(this.ip),serializeBytes(this.region),].expand((element) => element).toList();}

}

class InputMessageID {
    static const CONSTRUCTOR_ID = 2792792866;
    static const SUBCLASS_OF_ID = 1421262021;
    final classType = "constructor";
    final ID = 2792792866;
	int id;


	InputMessageID({required this.id});

	static InputMessageID fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readInt();		return new InputMessageID(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2792792866,4),readBufferFromBigInt(this.id,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputMessageReplyTo {
    static const CONSTRUCTOR_ID = 3134751637;
    static const SUBCLASS_OF_ID = 1421262021;
    final classType = "constructor";
    final ID = 3134751637;
	int id;


	InputMessageReplyTo({required this.id});

	static InputMessageReplyTo fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readInt();		return new InputMessageReplyTo(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3134751637,4),readBufferFromBigInt(this.id,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputMessagePinned {
    static const CONSTRUCTOR_ID = 2257003832;
    static const SUBCLASS_OF_ID = 1421262021;
    final classType = "constructor";
    final ID = 2257003832;


	InputMessagePinned();

	static InputMessagePinned fromReader(BinaryReader reader) {
	var temp,len;		return new InputMessagePinned();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2257003832,4),].expand((element) => element).toList();}

}

class InputMessageCallbackQuery {
    static const CONSTRUCTOR_ID = 2902071934;
    static const SUBCLASS_OF_ID = 1421262021;
    final classType = "constructor";
    final ID = 2902071934;
	int id;
	BigInt queryId;


	InputMessageCallbackQuery({required this.id, required this.queryId});

	static InputMessageCallbackQuery fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readInt();var queryId = reader.readLong();		return new InputMessageCallbackQuery(id : id, queryId : queryId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2902071934,4),readBufferFromBigInt(this.id,4,little:true,signed:true),readBufferFromBigInt(this.queryId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputDialogPeer {
    static const CONSTRUCTOR_ID = 4239064759;
    static const SUBCLASS_OF_ID = 2719782805;
    final classType = "constructor";
    final ID = 4239064759;
	var peer;


	InputDialogPeer({required this.peer});

	static InputDialogPeer fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new InputDialogPeer(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4239064759,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}

}

class InputDialogPeerFolder {
    static const CONSTRUCTOR_ID = 1684014375;
    static const SUBCLASS_OF_ID = 2719782805;
    final classType = "constructor";
    final ID = 1684014375;
	int folderId;


	InputDialogPeerFolder({required this.folderId});

	static InputDialogPeerFolder fromReader(BinaryReader reader) {
	var temp,len;var folderId = reader.readInt();		return new InputDialogPeerFolder(folderId : folderId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1684014375,4),readBufferFromBigInt(this.folderId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class DialogPeer {
    static const CONSTRUCTOR_ID = 3849174789;
    static const SUBCLASS_OF_ID = 627892654;
    final classType = "constructor";
    final ID = 3849174789;
	var peer;


	DialogPeer({required this.peer});

	static DialogPeer fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new DialogPeer(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3849174789,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}

}

class DialogPeerFolder {
    static const CONSTRUCTOR_ID = 1363483106;
    static const SUBCLASS_OF_ID = 627892654;
    final classType = "constructor";
    final ID = 1363483106;
	int folderId;


	DialogPeerFolder({required this.folderId});

	static DialogPeerFolder fromReader(BinaryReader reader) {
	var temp,len;var folderId = reader.readInt();		return new DialogPeerFolder(folderId : folderId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1363483106,4),readBufferFromBigInt(this.folderId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class FileHash {
    static const CONSTRUCTOR_ID = 4087022428;
    static const SUBCLASS_OF_ID = 3939776691;
    final classType = "constructor";
    final ID = 4087022428;
	BigInt offset;
	int limit;
	List<int> hash;


	FileHash({required this.offset, required this.limit, required this.hash});

	static FileHash fromReader(BinaryReader reader) {
	var temp,len;var offset = reader.readLong();var limit = reader.readInt();var hash = reader.tgReadBytes();		return new FileHash(offset : offset, limit : limit, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4087022428,4),readBufferFromBigInt(this.offset,8,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),serializeBytes(this.hash),].expand((element) => element).toList();}

}

class InputClientProxy {
    static const CONSTRUCTOR_ID = 1968737087;
    static const SUBCLASS_OF_ID = 152716102;
    final classType = "constructor";
    final ID = 1968737087;
	String address;
	int port;


	InputClientProxy({required this.address, required this.port});

	static InputClientProxy fromReader(BinaryReader reader) {
	var temp,len;var address = reader.tgReadString();var port = reader.readInt();		return new InputClientProxy(address : address, port : port);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1968737087,4),serializeBytes(this.address),readBufferFromBigInt(this.port,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputSecureFileUploaded {
    static const CONSTRUCTOR_ID = 859091184;
    static const SUBCLASS_OF_ID = 3670584828;
    final classType = "constructor";
    final ID = 859091184;
	BigInt id;
	int parts;
	String md5Checksum;
	List<int> fileHash;
	List<int> secret;


	InputSecureFileUploaded({required this.id, required this.parts, required this.md5Checksum, required this.fileHash, required this.secret});

	static InputSecureFileUploaded fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var parts = reader.readInt();var md5Checksum = reader.tgReadString();var fileHash = reader.tgReadBytes();var secret = reader.tgReadBytes();		return new InputSecureFileUploaded(id : id, parts : parts, md5Checksum : md5Checksum, fileHash : fileHash, secret : secret);
	}
	List<int> getBytes(){return [readBufferFromBigInt(859091184,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.parts,4,little:true,signed:true),serializeBytes(this.md5Checksum),serializeBytes(this.fileHash),serializeBytes(this.secret),].expand((element) => element).toList();}

}

class InputSecureFile {
    static const CONSTRUCTOR_ID = 1399317950;
    static const SUBCLASS_OF_ID = 3670584828;
    final classType = "constructor";
    final ID = 1399317950;
	BigInt id;
	BigInt accessHash;


	InputSecureFile({required this.id, required this.accessHash});

	static InputSecureFile fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();		return new InputSecureFile(id : id, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1399317950,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class SecureFileEmpty {
    static const CONSTRUCTOR_ID = 1679398724;
    static const SUBCLASS_OF_ID = 1572395975;
    final classType = "constructor";
    final ID = 1679398724;


	SecureFileEmpty();

	static SecureFileEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new SecureFileEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1679398724,4),].expand((element) => element).toList();}

}

class SecureFile {
    static const CONSTRUCTOR_ID = 2097791614;
    static const SUBCLASS_OF_ID = 1572395975;
    final classType = "constructor";
    final ID = 2097791614;
	BigInt id;
	BigInt accessHash;
	BigInt size;
	int dcId;
	int date;
	List<int> fileHash;
	List<int> secret;


	SecureFile({required this.id, required this.accessHash, required this.size, required this.dcId, required this.date, required this.fileHash, required this.secret});

	static SecureFile fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();var size = reader.readLong();var dcId = reader.readInt();var date = reader.readInt();var fileHash = reader.tgReadBytes();var secret = reader.tgReadBytes();		return new SecureFile(id : id, accessHash : accessHash, size : size, dcId : dcId, date : date, fileHash : fileHash, secret : secret);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2097791614,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.size,8,little:true,signed:true),readBufferFromBigInt(this.dcId,4,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),serializeBytes(this.fileHash),serializeBytes(this.secret),].expand((element) => element).toList();}

}

class SecureData {
    static const CONSTRUCTOR_ID = 2330640067;
    static const SUBCLASS_OF_ID = 2094276276;
    final classType = "constructor";
    final ID = 2330640067;
	List<int> data;
	List<int> dataHash;
	List<int> secret;


	SecureData({required this.data, required this.dataHash, required this.secret});

	static SecureData fromReader(BinaryReader reader) {
	var temp,len;var data = reader.tgReadBytes();var dataHash = reader.tgReadBytes();var secret = reader.tgReadBytes();		return new SecureData(data : data, dataHash : dataHash, secret : secret);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2330640067,4),serializeBytes(this.data),serializeBytes(this.dataHash),serializeBytes(this.secret),].expand((element) => element).toList();}

}

class SecurePlainPhone {
    static const CONSTRUCTOR_ID = 2103482845;
    static const SUBCLASS_OF_ID = 598912950;
    final classType = "constructor";
    final ID = 2103482845;
	String phone;


	SecurePlainPhone({required this.phone});

	static SecurePlainPhone fromReader(BinaryReader reader) {
	var temp,len;var phone = reader.tgReadString();		return new SecurePlainPhone(phone : phone);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2103482845,4),serializeBytes(this.phone),].expand((element) => element).toList();}

}

class SecurePlainEmail {
    static const CONSTRUCTOR_ID = 569137759;
    static const SUBCLASS_OF_ID = 598912950;
    final classType = "constructor";
    final ID = 569137759;
	String email;


	SecurePlainEmail({required this.email});

	static SecurePlainEmail fromReader(BinaryReader reader) {
	var temp,len;var email = reader.tgReadString();		return new SecurePlainEmail(email : email);
	}
	List<int> getBytes(){return [readBufferFromBigInt(569137759,4),serializeBytes(this.email),].expand((element) => element).toList();}

}

class SecureValueTypePersonalDetails {
    static const CONSTRUCTOR_ID = 2636808675;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 2636808675;


	SecureValueTypePersonalDetails();

	static SecureValueTypePersonalDetails fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypePersonalDetails();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2636808675,4),].expand((element) => element).toList();}

}

class SecureValueTypePassport {
    static const CONSTRUCTOR_ID = 1034709504;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 1034709504;


	SecureValueTypePassport();

	static SecureValueTypePassport fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypePassport();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1034709504,4),].expand((element) => element).toList();}

}

class SecureValueTypeDriverLicense {
    static const CONSTRUCTOR_ID = 115615172;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 115615172;


	SecureValueTypeDriverLicense();

	static SecureValueTypeDriverLicense fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypeDriverLicense();
	}
	List<int> getBytes(){return [readBufferFromBigInt(115615172,4),].expand((element) => element).toList();}

}

class SecureValueTypeIdentityCard {
    static const CONSTRUCTOR_ID = 2698015819;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 2698015819;


	SecureValueTypeIdentityCard();

	static SecureValueTypeIdentityCard fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypeIdentityCard();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2698015819,4),].expand((element) => element).toList();}

}

class SecureValueTypeInternalPassport {
    static const CONSTRUCTOR_ID = 2577698595;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 2577698595;


	SecureValueTypeInternalPassport();

	static SecureValueTypeInternalPassport fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypeInternalPassport();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2577698595,4),].expand((element) => element).toList();}

}

class SecureValueTypeAddress {
    static const CONSTRUCTOR_ID = 3420659238;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 3420659238;


	SecureValueTypeAddress();

	static SecureValueTypeAddress fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypeAddress();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3420659238,4),].expand((element) => element).toList();}

}

class SecureValueTypeUtilityBill {
    static const CONSTRUCTOR_ID = 4231435598;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 4231435598;


	SecureValueTypeUtilityBill();

	static SecureValueTypeUtilityBill fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypeUtilityBill();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4231435598,4),].expand((element) => element).toList();}

}

class SecureValueTypeBankStatement {
    static const CONSTRUCTOR_ID = 2299755533;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 2299755533;


	SecureValueTypeBankStatement();

	static SecureValueTypeBankStatement fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypeBankStatement();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2299755533,4),].expand((element) => element).toList();}

}

class SecureValueTypeRentalAgreement {
    static const CONSTRUCTOR_ID = 2340959368;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 2340959368;


	SecureValueTypeRentalAgreement();

	static SecureValueTypeRentalAgreement fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypeRentalAgreement();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2340959368,4),].expand((element) => element).toList();}

}

class SecureValueTypePassportRegistration {
    static const CONSTRUCTOR_ID = 2581823594;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 2581823594;


	SecureValueTypePassportRegistration();

	static SecureValueTypePassportRegistration fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypePassportRegistration();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2581823594,4),].expand((element) => element).toList();}

}

class SecureValueTypeTemporaryRegistration {
    static const CONSTRUCTOR_ID = 3926060083;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 3926060083;


	SecureValueTypeTemporaryRegistration();

	static SecureValueTypeTemporaryRegistration fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypeTemporaryRegistration();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3926060083,4),].expand((element) => element).toList();}

}

class SecureValueTypePhone {
    static const CONSTRUCTOR_ID = 3005262555;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 3005262555;


	SecureValueTypePhone();

	static SecureValueTypePhone fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypePhone();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3005262555,4),].expand((element) => element).toList();}

}

class SecureValueTypeEmail {
    static const CONSTRUCTOR_ID = 2386339822;
    static const SUBCLASS_OF_ID = 2291398038;
    final classType = "constructor";
    final ID = 2386339822;


	SecureValueTypeEmail();

	static SecureValueTypeEmail fromReader(BinaryReader reader) {
	var temp,len;		return new SecureValueTypeEmail();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2386339822,4),].expand((element) => element).toList();}

}

class SecureValue {
    static const CONSTRUCTOR_ID = 411017418;
    static const SUBCLASS_OF_ID = 85014702;
    final classType = "constructor";
    final ID = 411017418;
	var type;
	var data;
	var frontSide;
	var reverseSide;
	var selfie;
	List<dynamic> translation;
	List<dynamic> files;
	var plainData;
	List<int> hash;


	SecureValue({required this.type, required this.data, required this.frontSide, required this.reverseSide, required this.selfie, required this.translation, required this.files, required this.plainData, required this.hash});

	static SecureValue fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var type = reader.tgReadObject();var data;if ((flags & 1)==1){data = reader.tgReadObject(); } else {data=null;}var frontSide;if ((flags & 2)==1){frontSide = reader.tgReadObject(); } else {frontSide=null;}var reverseSide;if ((flags & 4)==1){reverseSide = reader.tgReadObject(); } else {reverseSide=null;}var selfie;if ((flags & 8)==1){selfie = reader.tgReadObject(); } else {selfie=null;}var translation;if ((flags & 64)==1){reader.readInt();
List<dynamic> translation = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		translation.add(reader.tgReadObject());
} } else {translation=null;}var files;if ((flags & 16)==1){reader.readInt();
List<dynamic> files = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		files.add(reader.tgReadObject());
} } else {files=null;}var plainData;if ((flags & 32)==1){plainData = reader.tgReadObject(); } else {plainData=null;}var hash = reader.tgReadBytes();		return new SecureValue(type : type, data : data, frontSide : frontSide, reverseSide : reverseSide, selfie : selfie, translation : translation, files : files, plainData : plainData, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(411017418,4),[0,0,0,0],(this.type.getBytes() as List<int>),(this.data==null||this.data==false)?new List<int>.empty():[(this.data.getBytes() as List<int>)].expand((element) => element).toList(),(this.frontSide==null||this.frontSide==false)?new List<int>.empty():[(this.frontSide.getBytes() as List<int>)].expand((element) => element).toList(),(this.reverseSide==null||this.reverseSide==false)?new List<int>.empty():[(this.reverseSide.getBytes() as List<int>)].expand((element) => element).toList(),(this.selfie==null||this.selfie==false)?new List<int>.empty():[(this.selfie.getBytes() as List<int>)].expand((element) => element).toList(),(this.translation==null||this.translation==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.translation.length,4,little:true,signed:true),this.translation.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.files==null||this.files==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.files.length,4,little:true,signed:true),this.files.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.plainData==null||this.plainData==false)?new List<int>.empty():[(this.plainData.getBytes() as List<int>)].expand((element) => element).toList(),serializeBytes(this.hash),].expand((element) => element).toList();}

}

class InputSecureValue {
    static const CONSTRUCTOR_ID = 3676426407;
    static const SUBCLASS_OF_ID = 3030229500;
    final classType = "constructor";
    final ID = 3676426407;
	var type;
	var data;
	var frontSide;
	var reverseSide;
	var selfie;
	List<dynamic> translation;
	List<dynamic> files;
	var plainData;


	InputSecureValue({required this.type, required this.data, required this.frontSide, required this.reverseSide, required this.selfie, required this.translation, required this.files, required this.plainData});

	static InputSecureValue fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var type = reader.tgReadObject();var data;if ((flags & 1)==1){data = reader.tgReadObject(); } else {data=null;}var frontSide;if ((flags & 2)==1){frontSide = reader.tgReadObject(); } else {frontSide=null;}var reverseSide;if ((flags & 4)==1){reverseSide = reader.tgReadObject(); } else {reverseSide=null;}var selfie;if ((flags & 8)==1){selfie = reader.tgReadObject(); } else {selfie=null;}var translation;if ((flags & 64)==1){reader.readInt();
List<dynamic> translation = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		translation.add(reader.tgReadObject());
} } else {translation=null;}var files;if ((flags & 16)==1){reader.readInt();
List<dynamic> files = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		files.add(reader.tgReadObject());
} } else {files=null;}var plainData;if ((flags & 32)==1){plainData = reader.tgReadObject(); } else {plainData=null;}		return new InputSecureValue(type : type, data : data, frontSide : frontSide, reverseSide : reverseSide, selfie : selfie, translation : translation, files : files, plainData : plainData);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3676426407,4),[0,0,0,0],(this.type.getBytes() as List<int>),(this.data==null||this.data==false)?new List<int>.empty():[(this.data.getBytes() as List<int>)].expand((element) => element).toList(),(this.frontSide==null||this.frontSide==false)?new List<int>.empty():[(this.frontSide.getBytes() as List<int>)].expand((element) => element).toList(),(this.reverseSide==null||this.reverseSide==false)?new List<int>.empty():[(this.reverseSide.getBytes() as List<int>)].expand((element) => element).toList(),(this.selfie==null||this.selfie==false)?new List<int>.empty():[(this.selfie.getBytes() as List<int>)].expand((element) => element).toList(),(this.translation==null||this.translation==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.translation.length,4,little:true,signed:true),this.translation.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.files==null||this.files==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.files.length,4,little:true,signed:true),this.files.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.plainData==null||this.plainData==false)?new List<int>.empty():[(this.plainData.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class SecureValueHash {
    static const CONSTRUCTOR_ID = 3978218928;
    static const SUBCLASS_OF_ID = 3589652487;
    final classType = "constructor";
    final ID = 3978218928;
	var type;
	List<int> hash;


	SecureValueHash({required this.type, required this.hash});

	static SecureValueHash fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadObject();var hash = reader.tgReadBytes();		return new SecureValueHash(type : type, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3978218928,4),(this.type.getBytes() as List<int>),serializeBytes(this.hash),].expand((element) => element).toList();}

}

class SecureValueErrorData {
    static const CONSTRUCTOR_ID = 3903065049;
    static const SUBCLASS_OF_ID = 101146574;
    final classType = "constructor";
    final ID = 3903065049;
	var type;
	List<int> dataHash;
	String field;
	String text;


	SecureValueErrorData({required this.type, required this.dataHash, required this.field, required this.text});

	static SecureValueErrorData fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadObject();var dataHash = reader.tgReadBytes();var field = reader.tgReadString();var text = reader.tgReadString();		return new SecureValueErrorData(type : type, dataHash : dataHash, field : field, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3903065049,4),(this.type.getBytes() as List<int>),serializeBytes(this.dataHash),serializeBytes(this.field),serializeBytes(this.text),].expand((element) => element).toList();}

}

class SecureValueErrorFrontSide {
    static const CONSTRUCTOR_ID = 12467706;
    static const SUBCLASS_OF_ID = 101146574;
    final classType = "constructor";
    final ID = 12467706;
	var type;
	List<int> fileHash;
	String text;


	SecureValueErrorFrontSide({required this.type, required this.fileHash, required this.text});

	static SecureValueErrorFrontSide fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadObject();var fileHash = reader.tgReadBytes();var text = reader.tgReadString();		return new SecureValueErrorFrontSide(type : type, fileHash : fileHash, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(12467706,4),(this.type.getBytes() as List<int>),serializeBytes(this.fileHash),serializeBytes(this.text),].expand((element) => element).toList();}

}

class SecureValueErrorReverseSide {
    static const CONSTRUCTOR_ID = 2257201829;
    static const SUBCLASS_OF_ID = 101146574;
    final classType = "constructor";
    final ID = 2257201829;
	var type;
	List<int> fileHash;
	String text;


	SecureValueErrorReverseSide({required this.type, required this.fileHash, required this.text});

	static SecureValueErrorReverseSide fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadObject();var fileHash = reader.tgReadBytes();var text = reader.tgReadString();		return new SecureValueErrorReverseSide(type : type, fileHash : fileHash, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2257201829,4),(this.type.getBytes() as List<int>),serializeBytes(this.fileHash),serializeBytes(this.text),].expand((element) => element).toList();}

}

class SecureValueErrorSelfie {
    static const CONSTRUCTOR_ID = 3845639894;
    static const SUBCLASS_OF_ID = 101146574;
    final classType = "constructor";
    final ID = 3845639894;
	var type;
	List<int> fileHash;
	String text;


	SecureValueErrorSelfie({required this.type, required this.fileHash, required this.text});

	static SecureValueErrorSelfie fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadObject();var fileHash = reader.tgReadBytes();var text = reader.tgReadString();		return new SecureValueErrorSelfie(type : type, fileHash : fileHash, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3845639894,4),(this.type.getBytes() as List<int>),serializeBytes(this.fileHash),serializeBytes(this.text),].expand((element) => element).toList();}

}

class SecureValueErrorFile {
    static const CONSTRUCTOR_ID = 2054162547;
    static const SUBCLASS_OF_ID = 101146574;
    final classType = "constructor";
    final ID = 2054162547;
	var type;
	List<int> fileHash;
	String text;


	SecureValueErrorFile({required this.type, required this.fileHash, required this.text});

	static SecureValueErrorFile fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadObject();var fileHash = reader.tgReadBytes();var text = reader.tgReadString();		return new SecureValueErrorFile(type : type, fileHash : fileHash, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2054162547,4),(this.type.getBytes() as List<int>),serializeBytes(this.fileHash),serializeBytes(this.text),].expand((element) => element).toList();}

}

class SecureValueErrorFiles {
    static const CONSTRUCTOR_ID = 1717706985;
    static const SUBCLASS_OF_ID = 101146574;
    final classType = "constructor";
    final ID = 1717706985;
	var type;
	List<List<int>> fileHash;
	String text;


	SecureValueErrorFiles({required this.type, required this.fileHash, required this.text});

	static SecureValueErrorFiles fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadObject();reader.readInt();
List<List<int>> fileHash = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		fileHash.add(reader.tgReadBytes());
}var text = reader.tgReadString();		return new SecureValueErrorFiles(type : type, fileHash : fileHash, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1717706985,4),(this.type.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.fileHash.length,4,little:true,signed:true),this.fileHash.map((x)=>serializeBytes(x)).expand((element) => element),serializeBytes(this.text),].expand((element) => element).toList();}

}

class SecureValueError {
    static const CONSTRUCTOR_ID = 2258466191;
    static const SUBCLASS_OF_ID = 101146574;
    final classType = "constructor";
    final ID = 2258466191;
	var type;
	List<int> hash;
	String text;


	SecureValueError({required this.type, required this.hash, required this.text});

	static SecureValueError fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadObject();var hash = reader.tgReadBytes();var text = reader.tgReadString();		return new SecureValueError(type : type, hash : hash, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2258466191,4),(this.type.getBytes() as List<int>),serializeBytes(this.hash),serializeBytes(this.text),].expand((element) => element).toList();}

}

class SecureValueErrorTranslationFile {
    static const CONSTRUCTOR_ID = 2702460784;
    static const SUBCLASS_OF_ID = 101146574;
    final classType = "constructor";
    final ID = 2702460784;
	var type;
	List<int> fileHash;
	String text;


	SecureValueErrorTranslationFile({required this.type, required this.fileHash, required this.text});

	static SecureValueErrorTranslationFile fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadObject();var fileHash = reader.tgReadBytes();var text = reader.tgReadString();		return new SecureValueErrorTranslationFile(type : type, fileHash : fileHash, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2702460784,4),(this.type.getBytes() as List<int>),serializeBytes(this.fileHash),serializeBytes(this.text),].expand((element) => element).toList();}

}

class SecureValueErrorTranslationFiles {
    static const CONSTRUCTOR_ID = 878931416;
    static const SUBCLASS_OF_ID = 101146574;
    final classType = "constructor";
    final ID = 878931416;
	var type;
	List<List<int>> fileHash;
	String text;


	SecureValueErrorTranslationFiles({required this.type, required this.fileHash, required this.text});

	static SecureValueErrorTranslationFiles fromReader(BinaryReader reader) {
	var temp,len;var type = reader.tgReadObject();reader.readInt();
List<List<int>> fileHash = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		fileHash.add(reader.tgReadBytes());
}var text = reader.tgReadString();		return new SecureValueErrorTranslationFiles(type : type, fileHash : fileHash, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(878931416,4),(this.type.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.fileHash.length,4,little:true,signed:true),this.fileHash.map((x)=>serializeBytes(x)).expand((element) => element),serializeBytes(this.text),].expand((element) => element).toList();}

}

class SecureCredentialsEncrypted {
    static const CONSTRUCTOR_ID = 871426631;
    static const SUBCLASS_OF_ID = 2497476147;
    final classType = "constructor";
    final ID = 871426631;
	List<int> data;
	List<int> hash;
	List<int> secret;


	SecureCredentialsEncrypted({required this.data, required this.hash, required this.secret});

	static SecureCredentialsEncrypted fromReader(BinaryReader reader) {
	var temp,len;var data = reader.tgReadBytes();var hash = reader.tgReadBytes();var secret = reader.tgReadBytes();		return new SecureCredentialsEncrypted(data : data, hash : hash, secret : secret);
	}
	List<int> getBytes(){return [readBufferFromBigInt(871426631,4),serializeBytes(this.data),serializeBytes(this.hash),serializeBytes(this.secret),].expand((element) => element).toList();}

}

class SavedPhoneContact {
    static const CONSTRUCTOR_ID = 289586518;
    static const SUBCLASS_OF_ID = 115054788;
    final classType = "constructor";
    final ID = 289586518;
	String phone;
	String firstName;
	String lastName;
	int date;


	SavedPhoneContact({required this.phone, required this.firstName, required this.lastName, required this.date});

	static SavedPhoneContact fromReader(BinaryReader reader) {
	var temp,len;var phone = reader.tgReadString();var firstName = reader.tgReadString();var lastName = reader.tgReadString();var date = reader.readInt();		return new SavedPhoneContact(phone : phone, firstName : firstName, lastName : lastName, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(289586518,4),serializeBytes(this.phone),serializeBytes(this.firstName),serializeBytes(this.lastName),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class PasswordKdfAlgoUnknown {
    static const CONSTRUCTOR_ID = 3562713238;
    static const SUBCLASS_OF_ID = 935130572;
    final classType = "constructor";
    final ID = 3562713238;


	PasswordKdfAlgoUnknown();

	static PasswordKdfAlgoUnknown fromReader(BinaryReader reader) {
	var temp,len;		return new PasswordKdfAlgoUnknown();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3562713238,4),].expand((element) => element).toList();}

}

class PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow {
    static const CONSTRUCTOR_ID = 982592842;
    static const SUBCLASS_OF_ID = 935130572;
    final classType = "constructor";
    final ID = 982592842;
	List<int> salt1;
	List<int> salt2;
	int g;
	List<int> p;


	PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow({required this.salt1, required this.salt2, required this.g, required this.p});

	static PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow fromReader(BinaryReader reader) {
	var temp,len;var salt1 = reader.tgReadBytes();var salt2 = reader.tgReadBytes();var g = reader.readInt();var p = reader.tgReadBytes();		return new PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow(salt1 : salt1, salt2 : salt2, g : g, p : p);
	}
	List<int> getBytes(){return [readBufferFromBigInt(982592842,4),serializeBytes(this.salt1),serializeBytes(this.salt2),readBufferFromBigInt(this.g,4,little:true,signed:true),serializeBytes(this.p),].expand((element) => element).toList();}

}

class SecurePasswordKdfAlgoUnknown {
    static const CONSTRUCTOR_ID = 4883767;
    static const SUBCLASS_OF_ID = 1998989635;
    final classType = "constructor";
    final ID = 4883767;


	SecurePasswordKdfAlgoUnknown();

	static SecurePasswordKdfAlgoUnknown fromReader(BinaryReader reader) {
	var temp,len;		return new SecurePasswordKdfAlgoUnknown();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4883767,4),].expand((element) => element).toList();}

}

class SecurePasswordKdfAlgoPBKDF2HMACSHA512iter100000 {
    static const CONSTRUCTOR_ID = 3153255840;
    static const SUBCLASS_OF_ID = 1998989635;
    final classType = "constructor";
    final ID = 3153255840;
	List<int> salt;


	SecurePasswordKdfAlgoPBKDF2HMACSHA512iter100000({required this.salt});

	static SecurePasswordKdfAlgoPBKDF2HMACSHA512iter100000 fromReader(BinaryReader reader) {
	var temp,len;var salt = reader.tgReadBytes();		return new SecurePasswordKdfAlgoPBKDF2HMACSHA512iter100000(salt : salt);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3153255840,4),serializeBytes(this.salt),].expand((element) => element).toList();}

}

class SecurePasswordKdfAlgoSHA512 {
    static const CONSTRUCTOR_ID = 2252807570;
    static const SUBCLASS_OF_ID = 1998989635;
    final classType = "constructor";
    final ID = 2252807570;
	List<int> salt;


	SecurePasswordKdfAlgoSHA512({required this.salt});

	static SecurePasswordKdfAlgoSHA512 fromReader(BinaryReader reader) {
	var temp,len;var salt = reader.tgReadBytes();		return new SecurePasswordKdfAlgoSHA512(salt : salt);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2252807570,4),serializeBytes(this.salt),].expand((element) => element).toList();}

}

class SecureSecretSettings {
    static const CONSTRUCTOR_ID = 354925740;
    static const SUBCLASS_OF_ID = 3334996731;
    final classType = "constructor";
    final ID = 354925740;
	var secureAlgo;
	List<int> secureSecret;
	BigInt secureSecretId;


	SecureSecretSettings({required this.secureAlgo, required this.secureSecret, required this.secureSecretId});

	static SecureSecretSettings fromReader(BinaryReader reader) {
	var temp,len;var secureAlgo = reader.tgReadObject();var secureSecret = reader.tgReadBytes();var secureSecretId = reader.readLong();		return new SecureSecretSettings(secureAlgo : secureAlgo, secureSecret : secureSecret, secureSecretId : secureSecretId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(354925740,4),(this.secureAlgo.getBytes() as List<int>),serializeBytes(this.secureSecret),readBufferFromBigInt(this.secureSecretId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputCheckPasswordEmpty {
    static const CONSTRUCTOR_ID = 2558588504;
    static const SUBCLASS_OF_ID = 3558536544;
    final classType = "constructor";
    final ID = 2558588504;


	InputCheckPasswordEmpty();

	static InputCheckPasswordEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new InputCheckPasswordEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2558588504,4),].expand((element) => element).toList();}

}

class InputCheckPasswordSRP {
    static const CONSTRUCTOR_ID = 3531600002;
    static const SUBCLASS_OF_ID = 3558536544;
    final classType = "constructor";
    final ID = 3531600002;
	BigInt srpId;
	List<int> A;
	List<int> M1;


	InputCheckPasswordSRP({required this.srpId, required this.A, required this.M1});

	static InputCheckPasswordSRP fromReader(BinaryReader reader) {
	var temp,len;var srpId = reader.readLong();var A = reader.tgReadBytes();var M1 = reader.tgReadBytes();		return new InputCheckPasswordSRP(srpId : srpId, A : A, M1 : M1);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3531600002,4),readBufferFromBigInt(this.srpId,8,little:true,signed:true),serializeBytes(this.A),serializeBytes(this.M1),].expand((element) => element).toList();}

}

class SecureRequiredType {
    static const CONSTRUCTOR_ID = 2191366618;
    static const SUBCLASS_OF_ID = 2088452618;
    final classType = "constructor";
    final ID = 2191366618;
	bool nativeNames;
	bool selfieRequired;
	bool translationRequired;
	var type;


	SecureRequiredType({required this.nativeNames, required this.selfieRequired, required this.translationRequired, required this.type});

	static SecureRequiredType fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final nativeNames = false;final selfieRequired = false;final translationRequired = false;var type = reader.tgReadObject();		return new SecureRequiredType(nativeNames : nativeNames, selfieRequired : selfieRequired, translationRequired : translationRequired, type : type);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2191366618,4),[0,0,0,0],(this.type.getBytes() as List<int>),].expand((element) => element).toList();}

}

class SecureRequiredTypeOneOf {
    static const CONSTRUCTOR_ID = 41187252;
    static const SUBCLASS_OF_ID = 2088452618;
    final classType = "constructor";
    final ID = 41187252;
	List<dynamic> types;


	SecureRequiredTypeOneOf({required this.types});

	static SecureRequiredTypeOneOf fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> types = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		types.add(reader.tgReadObject());
}		return new SecureRequiredTypeOneOf(types : types);
	}
	List<int> getBytes(){return [readBufferFromBigInt(41187252,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.types.length,4,little:true,signed:true),this.types.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class InputAppEvent {
    static const CONSTRUCTOR_ID = 488313413;
    static const SUBCLASS_OF_ID = 2301763846;
    final classType = "constructor";
    final ID = 488313413;
	double time;
	String type;
	BigInt peer;
	var data;


	InputAppEvent({required this.time, required this.type, required this.peer, required this.data});

	static InputAppEvent fromReader(BinaryReader reader) {
	var temp,len;var time = reader.readDouble();var type = reader.tgReadString();var peer = reader.readLong();var data = reader.tgReadObject();		return new InputAppEvent(time : time, type : type, peer : peer, data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(488313413,4),readBufferFromBigInt(this.time,4),serializeBytes(this.type),readBufferFromBigInt(this.peer,8,little:true,signed:true),(this.data.getBytes() as List<int>),].expand((element) => element).toList();}

}

class JsonObjectValue {
    static const CONSTRUCTOR_ID = 3235781593;
    static const SUBCLASS_OF_ID = 2474626745;
    final classType = "constructor";
    final ID = 3235781593;
	String key;
	var value;


	JsonObjectValue({required this.key, required this.value});

	static JsonObjectValue fromReader(BinaryReader reader) {
	var temp,len;var key = reader.tgReadString();var value = reader.tgReadObject();		return new JsonObjectValue(key : key, value : value);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3235781593,4),serializeBytes(this.key),(this.value.getBytes() as List<int>),].expand((element) => element).toList();}

}

class JsonNull {
    static const CONSTRUCTOR_ID = 1064139624;
    static const SUBCLASS_OF_ID = 3952707507;
    final classType = "constructor";
    final ID = 1064139624;


	JsonNull();

	static JsonNull fromReader(BinaryReader reader) {
	var temp,len;		return new JsonNull();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1064139624,4),].expand((element) => element).toList();}

}

class JsonBool {
    static const CONSTRUCTOR_ID = 3342098026;
    static const SUBCLASS_OF_ID = 3952707507;
    final classType = "constructor";
    final ID = 3342098026;
	bool value;


	JsonBool({required this.value});

	static JsonBool fromReader(BinaryReader reader) {
	var temp,len;var value = reader.tgReadBool();		return new JsonBool(value : value);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3342098026,4),[this.value ? 0xb5757299 : 0x379779bc],].expand((element) => element).toList();}

}

class JsonNumber {
    static const CONSTRUCTOR_ID = 736157604;
    static const SUBCLASS_OF_ID = 3952707507;
    final classType = "constructor";
    final ID = 736157604;
	double value;


	JsonNumber({required this.value});

	static JsonNumber fromReader(BinaryReader reader) {
	var temp,len;var value = reader.readDouble();		return new JsonNumber(value : value);
	}
	List<int> getBytes(){return [readBufferFromBigInt(736157604,4),readBufferFromBigInt(this.value,4),].expand((element) => element).toList();}

}

class JsonString {
    static const CONSTRUCTOR_ID = 3072226938;
    static const SUBCLASS_OF_ID = 3952707507;
    final classType = "constructor";
    final ID = 3072226938;
	String value;


	JsonString({required this.value});

	static JsonString fromReader(BinaryReader reader) {
	var temp,len;var value = reader.tgReadString();		return new JsonString(value : value);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3072226938,4),serializeBytes(this.value),].expand((element) => element).toList();}

}

class JsonArray {
    static const CONSTRUCTOR_ID = 4148447075;
    static const SUBCLASS_OF_ID = 3952707507;
    final classType = "constructor";
    final ID = 4148447075;
	List<dynamic> value;


	JsonArray({required this.value});

	static JsonArray fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> value = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		value.add(reader.tgReadObject());
}		return new JsonArray(value : value);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4148447075,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.value.length,4,little:true,signed:true),this.value.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class JsonObject {
    static const CONSTRUCTOR_ID = 2579616925;
    static const SUBCLASS_OF_ID = 3952707507;
    final classType = "constructor";
    final ID = 2579616925;
	List<dynamic> value;


	JsonObject({required this.value});

	static JsonObject fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> value = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		value.add(reader.tgReadObject());
}		return new JsonObject(value : value);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2579616925,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.value.length,4,little:true,signed:true),this.value.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class PageTableCell {
    static const CONSTRUCTOR_ID = 878078826;
    static const SUBCLASS_OF_ID = 2968203348;
    final classType = "constructor";
    final ID = 878078826;
	bool header;
	bool alignCenter;
	bool alignRight;
	bool valignMiddle;
	bool valignBottom;
	var text;
	int colspan;
	int rowspan;


	PageTableCell({required this.header, required this.alignCenter, required this.alignRight, required this.valignMiddle, required this.valignBottom, required this.text, required this.colspan, required this.rowspan});

	static PageTableCell fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final header = false;final alignCenter = false;final alignRight = false;final valignMiddle = false;final valignBottom = false;var text;if ((flags & 128)==1){text = reader.tgReadObject(); } else {text=null;}var colspan;if ((flags & 2)==1){colspan = reader.readInt(); } else {colspan=null;}var rowspan;if ((flags & 4)==1){rowspan = reader.readInt(); } else {rowspan=null;}		return new PageTableCell(header : header, alignCenter : alignCenter, alignRight : alignRight, valignMiddle : valignMiddle, valignBottom : valignBottom, text : text, colspan : colspan, rowspan : rowspan);
	}
	List<int> getBytes(){return [readBufferFromBigInt(878078826,4),[0,0,0,0],(this.text==null||this.text==false)?new List<int>.empty():[(this.text.getBytes() as List<int>)].expand((element) => element).toList(),(this.colspan==null||this.colspan==false)?new List<int>.empty():[readBufferFromBigInt(this.colspan,4,little:true,signed:true)].expand((element) => element).toList(),(this.rowspan==null||this.rowspan==false)?new List<int>.empty():[readBufferFromBigInt(this.rowspan,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PageTableRow {
    static const CONSTRUCTOR_ID = 3770729957;
    static const SUBCLASS_OF_ID = 1504505361;
    final classType = "constructor";
    final ID = 3770729957;
	List<dynamic> cells;


	PageTableRow({required this.cells});

	static PageTableRow fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> cells = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		cells.add(reader.tgReadObject());
}		return new PageTableRow(cells : cells);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3770729957,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.cells.length,4,little:true,signed:true),this.cells.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class PageCaption {
    static const CONSTRUCTOR_ID = 1869903447;
    static const SUBCLASS_OF_ID = 699985587;
    final classType = "constructor";
    final ID = 1869903447;
	var text;
	var credit;


	PageCaption({required this.text, required this.credit});

	static PageCaption fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();var credit = reader.tgReadObject();		return new PageCaption(text : text, credit : credit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1869903447,4),(this.text.getBytes() as List<int>),(this.credit.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageListItemText {
    static const CONSTRUCTOR_ID = 3106911949;
    static const SUBCLASS_OF_ID = 2360261809;
    final classType = "constructor";
    final ID = 3106911949;
	var text;


	PageListItemText({required this.text});

	static PageListItemText fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadObject();		return new PageListItemText(text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3106911949,4),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageListItemBlocks {
    static const CONSTRUCTOR_ID = 635466748;
    static const SUBCLASS_OF_ID = 2360261809;
    final classType = "constructor";
    final ID = 635466748;
	List<dynamic> blocks;


	PageListItemBlocks({required this.blocks});

	static PageListItemBlocks fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> blocks = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		blocks.add(reader.tgReadObject());
}		return new PageListItemBlocks(blocks : blocks);
	}
	List<int> getBytes(){return [readBufferFromBigInt(635466748,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.blocks.length,4,little:true,signed:true),this.blocks.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class PageListOrderedItemText {
    static const CONSTRUCTOR_ID = 1577484359;
    static const SUBCLASS_OF_ID = 4007268024;
    final classType = "constructor";
    final ID = 1577484359;
	String num;
	var text;


	PageListOrderedItemText({required this.num, required this.text});

	static PageListOrderedItemText fromReader(BinaryReader reader) {
	var temp,len;var num = reader.tgReadString();var text = reader.tgReadObject();		return new PageListOrderedItemText(num : num, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1577484359,4),serializeBytes(this.num),(this.text.getBytes() as List<int>),].expand((element) => element).toList();}

}

class PageListOrderedItemBlocks {
    static const CONSTRUCTOR_ID = 2564655414;
    static const SUBCLASS_OF_ID = 4007268024;
    final classType = "constructor";
    final ID = 2564655414;
	String num;
	List<dynamic> blocks;


	PageListOrderedItemBlocks({required this.num, required this.blocks});

	static PageListOrderedItemBlocks fromReader(BinaryReader reader) {
	var temp,len;var num = reader.tgReadString();reader.readInt();
List<dynamic> blocks = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		blocks.add(reader.tgReadObject());
}		return new PageListOrderedItemBlocks(num : num, blocks : blocks);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2564655414,4),serializeBytes(this.num),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.blocks.length,4,little:true,signed:true),this.blocks.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class PageRelatedArticle {
    static const CONSTRUCTOR_ID = 3012615176;
    static const SUBCLASS_OF_ID = 919623714;
    final classType = "constructor";
    final ID = 3012615176;
	String url;
	BigInt webpageId;
	String title;
	String description;
	BigInt photoId;
	String author;
	int publishedDate;


	PageRelatedArticle({required this.url, required this.webpageId, required this.title, required this.description, required this.photoId, required this.author, required this.publishedDate});

	static PageRelatedArticle fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var url = reader.tgReadString();var webpageId = reader.readLong();var title;if ((flags & 1)==1){title = reader.tgReadString(); } else {title=null;}var description;if ((flags & 2)==1){description = reader.tgReadString(); } else {description=null;}var photoId;if ((flags & 4)==1){photoId = reader.readLong(); } else {photoId=null;}var author;if ((flags & 8)==1){author = reader.tgReadString(); } else {author=null;}var publishedDate;if ((flags & 16)==1){publishedDate = reader.readInt(); } else {publishedDate=null;}		return new PageRelatedArticle(url : url, webpageId : webpageId, title : title, description : description, photoId : photoId, author : author, publishedDate : publishedDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3012615176,4),[0,0,0,0],serializeBytes(this.url),readBufferFromBigInt(this.webpageId,8,little:true,signed:true),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),(this.description==null||this.description==false)?new List<int>.empty():[serializeBytes(this.description)].expand((element) => element).toList(),(this.photoId==null||this.photoId==false)?new List<int>.empty():[readBufferFromBigInt(this.photoId,8,little:true,signed:true)].expand((element) => element).toList(),(this.author==null||this.author==false)?new List<int>.empty():[serializeBytes(this.author)].expand((element) => element).toList(),(this.publishedDate==null||this.publishedDate==false)?new List<int>.empty():[readBufferFromBigInt(this.publishedDate,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class Page {
    static const CONSTRUCTOR_ID = 2556788493;
    static const SUBCLASS_OF_ID = 3023575326;
    final classType = "constructor";
    final ID = 2556788493;
	bool part;
	bool rtl;
	bool v2;
	String url;
	List<dynamic> blocks;
	List<dynamic> photos;
	List<dynamic> documents;
	int views;


	Page({required this.part, required this.rtl, required this.v2, required this.url, required this.blocks, required this.photos, required this.documents, required this.views});

	static Page fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final part = false;final rtl = false;final v2 = false;var url = reader.tgReadString();reader.readInt();
List<dynamic> blocks = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		blocks.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> photos = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		photos.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> documents = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		documents.add(reader.tgReadObject());
}var views;if ((flags & 8)==1){views = reader.readInt(); } else {views=null;}		return new Page(part : part, rtl : rtl, v2 : v2, url : url, blocks : blocks, photos : photos, documents : documents, views : views);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2556788493,4),[0,0,0,0],serializeBytes(this.url),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.blocks.length,4,little:true,signed:true),this.blocks.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.photos.length,4,little:true,signed:true),this.photos.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.documents.length,4,little:true,signed:true),this.documents.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.views==null||this.views==false)?new List<int>.empty():[readBufferFromBigInt(this.views,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PollAnswer {
    static const CONSTRUCTOR_ID = 1823064809;
    static const SUBCLASS_OF_ID = 2124799390;
    final classType = "constructor";
    final ID = 1823064809;
	String text;
	List<int> option;


	PollAnswer({required this.text, required this.option});

	static PollAnswer fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();var option = reader.tgReadBytes();		return new PollAnswer(text : text, option : option);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1823064809,4),serializeBytes(this.text),serializeBytes(this.option),].expand((element) => element).toList();}

}

class Poll {
    static const CONSTRUCTOR_ID = 2262925665;
    static const SUBCLASS_OF_ID = 613307771;
    final classType = "constructor";
    final ID = 2262925665;
	BigInt id;
	bool closed;
	bool publicVoters;
	bool multipleChoice;
	bool quiz;
	String question;
	List<dynamic> answers;
	int closePeriod;
	int closeDate;


	Poll({required this.id, required this.closed, required this.publicVoters, required this.multipleChoice, required this.quiz, required this.question, required this.answers, required this.closePeriod, required this.closeDate});

	static Poll fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();final flags = reader.readInt();final closed = false;final publicVoters = false;final multipleChoice = false;final quiz = false;var question = reader.tgReadString();reader.readInt();
List<dynamic> answers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		answers.add(reader.tgReadObject());
}var closePeriod;if ((flags & 16)==1){closePeriod = reader.readInt(); } else {closePeriod=null;}var closeDate;if ((flags & 32)==1){closeDate = reader.readInt(); } else {closeDate=null;}		return new Poll(id : id, closed : closed, publicVoters : publicVoters, multipleChoice : multipleChoice, quiz : quiz, question : question, answers : answers, closePeriod : closePeriod, closeDate : closeDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2262925665,4),readBufferFromBigInt(this.id,8,little:true,signed:true),[0,0,0,0],serializeBytes(this.question),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.answers.length,4,little:true,signed:true),this.answers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.closePeriod==null||this.closePeriod==false)?new List<int>.empty():[readBufferFromBigInt(this.closePeriod,4,little:true,signed:true)].expand((element) => element).toList(),(this.closeDate==null||this.closeDate==false)?new List<int>.empty():[readBufferFromBigInt(this.closeDate,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PollAnswerVoters {
    static const CONSTRUCTOR_ID = 997055186;
    static const SUBCLASS_OF_ID = 2095107985;
    final classType = "constructor";
    final ID = 997055186;
	bool chosen;
	bool correct;
	List<int> option;
	int voters;


	PollAnswerVoters({required this.chosen, required this.correct, required this.option, required this.voters});

	static PollAnswerVoters fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final chosen = false;final correct = false;var option = reader.tgReadBytes();var voters = reader.readInt();		return new PollAnswerVoters(chosen : chosen, correct : correct, option : option, voters : voters);
	}
	List<int> getBytes(){return [readBufferFromBigInt(997055186,4),[0,0,0,0],serializeBytes(this.option),readBufferFromBigInt(this.voters,4,little:true,signed:true),].expand((element) => element).toList();}

}

class PollResults {
    static const CONSTRUCTOR_ID = 3703058083;
    static const SUBCLASS_OF_ID = 3283416711;
    final classType = "constructor";
    final ID = 3703058083;
	bool min;
	List<dynamic> results;
	int totalVoters;
	List<BigInt> recentVoters;
	String solution;
	List<dynamic> solutionEntities;


	PollResults({required this.min, required this.results, required this.totalVoters, required this.recentVoters, required this.solution, required this.solutionEntities});

	static PollResults fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final min = false;var results;if ((flags & 2)==1){reader.readInt();
List<dynamic> results = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		results.add(reader.tgReadObject());
} } else {results=null;}var totalVoters;if ((flags & 4)==1){totalVoters = reader.readInt(); } else {totalVoters=null;}var recentVoters;if ((flags & 8)==1){reader.readInt();
List<BigInt> recentVoters = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		recentVoters.add(reader.readLong());
} } else {recentVoters=null;}var solution;if ((flags & 16)==1){solution = reader.tgReadString(); } else {solution=null;}var solutionEntities;if ((flags & 16)==1){reader.readInt();
List<dynamic> solutionEntities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		solutionEntities.add(reader.tgReadObject());
} } else {solutionEntities=null;}		return new PollResults(min : min, results : results, totalVoters : totalVoters, recentVoters : recentVoters, solution : solution, solutionEntities : solutionEntities);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3703058083,4),[0,0,0,0],(this.results==null||this.results==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.results.length,4,little:true,signed:true),this.results.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.totalVoters==null||this.totalVoters==false)?new List<int>.empty():[readBufferFromBigInt(this.totalVoters,4,little:true,signed:true)].expand((element) => element).toList(),(this.recentVoters==null||this.recentVoters==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.recentVoters.length,4,little:true,signed:true),this.recentVoters.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element)].expand((element) => element).toList(),(this.solution==null||this.solution==false)?new List<int>.empty():[serializeBytes(this.solution)].expand((element) => element).toList(),(this.solutionEntities==null||this.solutionEntities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.solutionEntities.length,4,little:true,signed:true),this.solutionEntities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChatOnlines {
    static const CONSTRUCTOR_ID = 4030849616;
    static const SUBCLASS_OF_ID = 2357301306;
    final classType = "constructor";
    final ID = 4030849616;
	int onlines;


	ChatOnlines({required this.onlines});

	static ChatOnlines fromReader(BinaryReader reader) {
	var temp,len;var onlines = reader.readInt();		return new ChatOnlines(onlines : onlines);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4030849616,4),readBufferFromBigInt(this.onlines,4,little:true,signed:true),].expand((element) => element).toList();}

}

class StatsURL {
    static const CONSTRUCTOR_ID = 1202287072;
    static const SUBCLASS_OF_ID = 2370606272;
    final classType = "constructor";
    final ID = 1202287072;
	String url;


	StatsURL({required this.url});

	static StatsURL fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();		return new StatsURL(url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1202287072,4),serializeBytes(this.url),].expand((element) => element).toList();}

}

class ChatAdminRights {
    static const CONSTRUCTOR_ID = 1605510357;
    static const SUBCLASS_OF_ID = 2252195780;
    final classType = "constructor";
    final ID = 1605510357;
	bool changeInfo;
	bool postMessages;
	bool editMessages;
	bool deleteMessages;
	bool banUsers;
	bool inviteUsers;
	bool pinMessages;
	bool addAdmins;
	bool anonymous;
	bool manageCall;
	bool other;


	ChatAdminRights({required this.changeInfo, required this.postMessages, required this.editMessages, required this.deleteMessages, required this.banUsers, required this.inviteUsers, required this.pinMessages, required this.addAdmins, required this.anonymous, required this.manageCall, required this.other});

	static ChatAdminRights fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final changeInfo = false;final postMessages = false;final editMessages = false;final deleteMessages = false;final banUsers = false;final inviteUsers = false;final pinMessages = false;final addAdmins = false;final anonymous = false;final manageCall = false;final other = false;		return new ChatAdminRights(changeInfo : changeInfo, postMessages : postMessages, editMessages : editMessages, deleteMessages : deleteMessages, banUsers : banUsers, inviteUsers : inviteUsers, pinMessages : pinMessages, addAdmins : addAdmins, anonymous : anonymous, manageCall : manageCall, other : other);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1605510357,4),[0,0,0,0],].expand((element) => element).toList();}

}

class ChatBannedRights {
    static const CONSTRUCTOR_ID = 2668758040;
    static const SUBCLASS_OF_ID = 1263814057;
    final classType = "constructor";
    final ID = 2668758040;
	bool viewMessages;
	bool sendMessages;
	bool sendMedia;
	bool sendStickers;
	bool sendGifs;
	bool sendGames;
	bool sendInline;
	bool embedLinks;
	bool sendPolls;
	bool changeInfo;
	bool inviteUsers;
	bool pinMessages;
	int untilDate;


	ChatBannedRights({required this.viewMessages, required this.sendMessages, required this.sendMedia, required this.sendStickers, required this.sendGifs, required this.sendGames, required this.sendInline, required this.embedLinks, required this.sendPolls, required this.changeInfo, required this.inviteUsers, required this.pinMessages, required this.untilDate});

	static ChatBannedRights fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final viewMessages = false;final sendMessages = false;final sendMedia = false;final sendStickers = false;final sendGifs = false;final sendGames = false;final sendInline = false;final embedLinks = false;final sendPolls = false;final changeInfo = false;final inviteUsers = false;final pinMessages = false;var untilDate = reader.readInt();		return new ChatBannedRights(viewMessages : viewMessages, sendMessages : sendMessages, sendMedia : sendMedia, sendStickers : sendStickers, sendGifs : sendGifs, sendGames : sendGames, sendInline : sendInline, embedLinks : embedLinks, sendPolls : sendPolls, changeInfo : changeInfo, inviteUsers : inviteUsers, pinMessages : pinMessages, untilDate : untilDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2668758040,4),[0,0,0,0],readBufferFromBigInt(this.untilDate,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputWallPaper {
    static const CONSTRUCTOR_ID = 3861952889;
    static const SUBCLASS_OF_ID = 4000784410;
    final classType = "constructor";
    final ID = 3861952889;
	BigInt id;
	BigInt accessHash;


	InputWallPaper({required this.id, required this.accessHash});

	static InputWallPaper fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();		return new InputWallPaper(id : id, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3861952889,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputWallPaperSlug {
    static const CONSTRUCTOR_ID = 1913199744;
    static const SUBCLASS_OF_ID = 4000784410;
    final classType = "constructor";
    final ID = 1913199744;
	String slug;


	InputWallPaperSlug({required this.slug});

	static InputWallPaperSlug fromReader(BinaryReader reader) {
	var temp,len;var slug = reader.tgReadString();		return new InputWallPaperSlug(slug : slug);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1913199744,4),serializeBytes(this.slug),].expand((element) => element).toList();}

}

class InputWallPaperNoFile {
    static const CONSTRUCTOR_ID = 2524595758;
    static const SUBCLASS_OF_ID = 4000784410;
    final classType = "constructor";
    final ID = 2524595758;
	BigInt id;


	InputWallPaperNoFile({required this.id});

	static InputWallPaperNoFile fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();		return new InputWallPaperNoFile(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2524595758,4),readBufferFromBigInt(this.id,8,little:true,signed:true),].expand((element) => element).toList();}

}

class CodeSettings {
    static const CONSTRUCTOR_ID = 2321836482;
    static const SUBCLASS_OF_ID = 1223539850;
    final classType = "constructor";
    final ID = 2321836482;
	bool allowFlashcall;
	bool currentNumber;
	bool allowAppHash;
	bool allowMissedCall;
	List<List<int>> logoutTokens;


	CodeSettings({required this.allowFlashcall, required this.currentNumber, required this.allowAppHash, required this.allowMissedCall, required this.logoutTokens});

	static CodeSettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final allowFlashcall = false;final currentNumber = false;final allowAppHash = false;final allowMissedCall = false;var logoutTokens;if ((flags & 64)==1){reader.readInt();
List<List<int>> logoutTokens = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		logoutTokens.add(reader.tgReadBytes());
} } else {logoutTokens=null;}		return new CodeSettings(allowFlashcall : allowFlashcall, currentNumber : currentNumber, allowAppHash : allowAppHash, allowMissedCall : allowMissedCall, logoutTokens : logoutTokens);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2321836482,4),[0,0,0,0],(this.logoutTokens==null||this.logoutTokens==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.logoutTokens.length,4,little:true,signed:true),this.logoutTokens.map((x)=>serializeBytes(x)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class WallPaperSettings {
    static const CONSTRUCTOR_ID = 499236004;
    static const SUBCLASS_OF_ID = 1098244882;
    final classType = "constructor";
    final ID = 499236004;
	bool blur;
	bool motion;
	int backgroundColor;
	int secondBackgroundColor;
	int thirdBackgroundColor;
	int fourthBackgroundColor;
	int intensity;
	int rotation;


	WallPaperSettings({required this.blur, required this.motion, required this.backgroundColor, required this.secondBackgroundColor, required this.thirdBackgroundColor, required this.fourthBackgroundColor, required this.intensity, required this.rotation});

	static WallPaperSettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final blur = false;final motion = false;var backgroundColor;if ((flags & 1)==1){backgroundColor = reader.readInt(); } else {backgroundColor=null;}var secondBackgroundColor;if ((flags & 16)==1){secondBackgroundColor = reader.readInt(); } else {secondBackgroundColor=null;}var thirdBackgroundColor;if ((flags & 32)==1){thirdBackgroundColor = reader.readInt(); } else {thirdBackgroundColor=null;}var fourthBackgroundColor;if ((flags & 64)==1){fourthBackgroundColor = reader.readInt(); } else {fourthBackgroundColor=null;}var intensity;if ((flags & 8)==1){intensity = reader.readInt(); } else {intensity=null;}var rotation;if ((flags & 16)==1){rotation = reader.readInt(); } else {rotation=null;}		return new WallPaperSettings(blur : blur, motion : motion, backgroundColor : backgroundColor, secondBackgroundColor : secondBackgroundColor, thirdBackgroundColor : thirdBackgroundColor, fourthBackgroundColor : fourthBackgroundColor, intensity : intensity, rotation : rotation);
	}
	List<int> getBytes(){return [readBufferFromBigInt(499236004,4),[0,0,0,0],(this.backgroundColor==null||this.backgroundColor==false)?new List<int>.empty():[readBufferFromBigInt(this.backgroundColor,4,little:true,signed:true)].expand((element) => element).toList(),(this.secondBackgroundColor==null||this.secondBackgroundColor==false)?new List<int>.empty():[readBufferFromBigInt(this.secondBackgroundColor,4,little:true,signed:true)].expand((element) => element).toList(),(this.thirdBackgroundColor==null||this.thirdBackgroundColor==false)?new List<int>.empty():[readBufferFromBigInt(this.thirdBackgroundColor,4,little:true,signed:true)].expand((element) => element).toList(),(this.fourthBackgroundColor==null||this.fourthBackgroundColor==false)?new List<int>.empty():[readBufferFromBigInt(this.fourthBackgroundColor,4,little:true,signed:true)].expand((element) => element).toList(),(this.intensity==null||this.intensity==false)?new List<int>.empty():[readBufferFromBigInt(this.intensity,4,little:true,signed:true)].expand((element) => element).toList(),(this.rotation==null||this.rotation==false)?new List<int>.empty():[readBufferFromBigInt(this.rotation,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class AutoDownloadSettings {
    static const CONSTRUCTOR_ID = 2398796115;
    static const SUBCLASS_OF_ID = 1361582535;
    final classType = "constructor";
    final ID = 2398796115;
	bool disabled;
	bool videoPreloadLarge;
	bool audioPreloadNext;
	bool phonecallsLessData;
	int photoSizeMax;
	BigInt videoSizeMax;
	BigInt fileSizeMax;
	int videoUploadMaxbitrate;


	AutoDownloadSettings({required this.disabled, required this.videoPreloadLarge, required this.audioPreloadNext, required this.phonecallsLessData, required this.photoSizeMax, required this.videoSizeMax, required this.fileSizeMax, required this.videoUploadMaxbitrate});

	static AutoDownloadSettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final disabled = false;final videoPreloadLarge = false;final audioPreloadNext = false;final phonecallsLessData = false;var photoSizeMax = reader.readInt();var videoSizeMax = reader.readLong();var fileSizeMax = reader.readLong();var videoUploadMaxbitrate = reader.readInt();		return new AutoDownloadSettings(disabled : disabled, videoPreloadLarge : videoPreloadLarge, audioPreloadNext : audioPreloadNext, phonecallsLessData : phonecallsLessData, photoSizeMax : photoSizeMax, videoSizeMax : videoSizeMax, fileSizeMax : fileSizeMax, videoUploadMaxbitrate : videoUploadMaxbitrate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2398796115,4),[0,0,0,0],readBufferFromBigInt(this.photoSizeMax,4,little:true,signed:true),readBufferFromBigInt(this.videoSizeMax,8,little:true,signed:true),readBufferFromBigInt(this.fileSizeMax,8,little:true,signed:true),readBufferFromBigInt(this.videoUploadMaxbitrate,4,little:true,signed:true),].expand((element) => element).toList();}

}

class EmojiKeyword {
    static const CONSTRUCTOR_ID = 3585325561;
    static const SUBCLASS_OF_ID = 1712497982;
    final classType = "constructor";
    final ID = 3585325561;
	String keyword;
	List<String> emoticons;


	EmojiKeyword({required this.keyword, required this.emoticons});

	static EmojiKeyword fromReader(BinaryReader reader) {
	var temp,len;var keyword = reader.tgReadString();reader.readInt();
List<String> emoticons = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		emoticons.add(reader.tgReadString());
}		return new EmojiKeyword(keyword : keyword, emoticons : emoticons);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3585325561,4),serializeBytes(this.keyword),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.emoticons.length,4,little:true,signed:true),this.emoticons.map((x)=>serializeBytes(x)).expand((element) => element),].expand((element) => element).toList();}

}

class EmojiKeywordDeleted {
    static const CONSTRUCTOR_ID = 594408994;
    static const SUBCLASS_OF_ID = 1712497982;
    final classType = "constructor";
    final ID = 594408994;
	String keyword;
	List<String> emoticons;


	EmojiKeywordDeleted({required this.keyword, required this.emoticons});

	static EmojiKeywordDeleted fromReader(BinaryReader reader) {
	var temp,len;var keyword = reader.tgReadString();reader.readInt();
List<String> emoticons = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		emoticons.add(reader.tgReadString());
}		return new EmojiKeywordDeleted(keyword : keyword, emoticons : emoticons);
	}
	List<int> getBytes(){return [readBufferFromBigInt(594408994,4),serializeBytes(this.keyword),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.emoticons.length,4,little:true,signed:true),this.emoticons.map((x)=>serializeBytes(x)).expand((element) => element),].expand((element) => element).toList();}

}

class EmojiKeywordsDifference {
    static const CONSTRUCTOR_ID = 1556570557;
    static const SUBCLASS_OF_ID = 3531196018;
    final classType = "constructor";
    final ID = 1556570557;
	String langCode;
	int fromVersion;
	int version;
	List<dynamic> keywords;


	EmojiKeywordsDifference({required this.langCode, required this.fromVersion, required this.version, required this.keywords});

	static EmojiKeywordsDifference fromReader(BinaryReader reader) {
	var temp,len;var langCode = reader.tgReadString();var fromVersion = reader.readInt();var version = reader.readInt();reader.readInt();
List<dynamic> keywords = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		keywords.add(reader.tgReadObject());
}		return new EmojiKeywordsDifference(langCode : langCode, fromVersion : fromVersion, version : version, keywords : keywords);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1556570557,4),serializeBytes(this.langCode),readBufferFromBigInt(this.fromVersion,4,little:true,signed:true),readBufferFromBigInt(this.version,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.keywords.length,4,little:true,signed:true),this.keywords.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class EmojiURL {
    static const CONSTRUCTOR_ID = 2775937949;
    static const SUBCLASS_OF_ID = 530614809;
    final classType = "constructor";
    final ID = 2775937949;
	String url;


	EmojiURL({required this.url});

	static EmojiURL fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();		return new EmojiURL(url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2775937949,4),serializeBytes(this.url),].expand((element) => element).toList();}

}

class EmojiLanguage {
    static const CONSTRUCTOR_ID = 3019592545;
    static const SUBCLASS_OF_ID = 2760705262;
    final classType = "constructor";
    final ID = 3019592545;
	String langCode;


	EmojiLanguage({required this.langCode});

	static EmojiLanguage fromReader(BinaryReader reader) {
	var temp,len;var langCode = reader.tgReadString();		return new EmojiLanguage(langCode : langCode);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3019592545,4),serializeBytes(this.langCode),].expand((element) => element).toList();}

}

class Folder {
    static const CONSTRUCTOR_ID = 4283715173;
    static const SUBCLASS_OF_ID = 3943566587;
    final classType = "constructor";
    final ID = 4283715173;
	bool autofillNewBroadcasts;
	bool autofillPublicGroups;
	bool autofillNewCorrespondents;
	int id;
	String title;
	var photo;


	Folder({required this.autofillNewBroadcasts, required this.autofillPublicGroups, required this.autofillNewCorrespondents, required this.id, required this.title, required this.photo});

	static Folder fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final autofillNewBroadcasts = false;final autofillPublicGroups = false;final autofillNewCorrespondents = false;var id = reader.readInt();var title = reader.tgReadString();var photo;if ((flags & 8)==1){photo = reader.tgReadObject(); } else {photo=null;}		return new Folder(autofillNewBroadcasts : autofillNewBroadcasts, autofillPublicGroups : autofillPublicGroups, autofillNewCorrespondents : autofillNewCorrespondents, id : id, title : title, photo : photo);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4283715173,4),[0,0,0,0],readBufferFromBigInt(this.id,4,little:true,signed:true),serializeBytes(this.title),(this.photo==null||this.photo==false)?new List<int>.empty():[(this.photo.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InputFolderPeer {
    static const CONSTRUCTOR_ID = 4224893590;
    static const SUBCLASS_OF_ID = 1954700800;
    final classType = "constructor";
    final ID = 4224893590;
	var peer;
	int folderId;


	InputFolderPeer({required this.peer, required this.folderId});

	static InputFolderPeer fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var folderId = reader.readInt();		return new InputFolderPeer(peer : peer, folderId : folderId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4224893590,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.folderId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class FolderPeer {
    static const CONSTRUCTOR_ID = 3921323624;
    static const SUBCLASS_OF_ID = 4092733499;
    final classType = "constructor";
    final ID = 3921323624;
	var peer;
	int folderId;


	FolderPeer({required this.peer, required this.folderId});

	static FolderPeer fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var folderId = reader.readInt();		return new FolderPeer(peer : peer, folderId : folderId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3921323624,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.folderId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class UrlAuthResultRequest {
    static const CONSTRUCTOR_ID = 2463316494;
    static const SUBCLASS_OF_ID = 2003159838;
    final classType = "constructor";
    final ID = 2463316494;
	bool requestWriteAccess;
	var bot;
	String domain;


	UrlAuthResultRequest({required this.requestWriteAccess, required this.bot, required this.domain});

	static UrlAuthResultRequest fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final requestWriteAccess = false;var bot = reader.tgReadObject();var domain = reader.tgReadString();		return new UrlAuthResultRequest(requestWriteAccess : requestWriteAccess, bot : bot, domain : domain);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2463316494,4),[0,0,0,0],(this.bot.getBytes() as List<int>),serializeBytes(this.domain),].expand((element) => element).toList();}

}

class UrlAuthResultAccepted {
    static const CONSTRUCTOR_ID = 2408320590;
    static const SUBCLASS_OF_ID = 2003159838;
    final classType = "constructor";
    final ID = 2408320590;
	String url;


	UrlAuthResultAccepted({required this.url});

	static UrlAuthResultAccepted fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();		return new UrlAuthResultAccepted(url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2408320590,4),serializeBytes(this.url),].expand((element) => element).toList();}

}

class UrlAuthResultDefault {
    static const CONSTRUCTOR_ID = 2849430303;
    static const SUBCLASS_OF_ID = 2003159838;
    final classType = "constructor";
    final ID = 2849430303;


	UrlAuthResultDefault();

	static UrlAuthResultDefault fromReader(BinaryReader reader) {
	var temp,len;		return new UrlAuthResultDefault();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2849430303,4),].expand((element) => element).toList();}

}

class ChannelLocationEmpty {
    static const CONSTRUCTOR_ID = 3216354699;
    static const SUBCLASS_OF_ID = 3961916287;
    final classType = "constructor";
    final ID = 3216354699;


	ChannelLocationEmpty();

	static ChannelLocationEmpty fromReader(BinaryReader reader) {
	var temp,len;		return new ChannelLocationEmpty();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3216354699,4),].expand((element) => element).toList();}

}

class ChannelLocation {
    static const CONSTRUCTOR_ID = 547062491;
    static const SUBCLASS_OF_ID = 3961916287;
    final classType = "constructor";
    final ID = 547062491;
	var geoPoint;
	String address;


	ChannelLocation({required this.geoPoint, required this.address});

	static ChannelLocation fromReader(BinaryReader reader) {
	var temp,len;var geoPoint = reader.tgReadObject();var address = reader.tgReadString();		return new ChannelLocation(geoPoint : geoPoint, address : address);
	}
	List<int> getBytes(){return [readBufferFromBigInt(547062491,4),(this.geoPoint.getBytes() as List<int>),serializeBytes(this.address),].expand((element) => element).toList();}

}

class PeerLocated {
    static const CONSTRUCTOR_ID = 3393592157;
    static const SUBCLASS_OF_ID = 4208604332;
    final classType = "constructor";
    final ID = 3393592157;
	var peer;
	int expires;
	int distance;


	PeerLocated({required this.peer, required this.expires, required this.distance});

	static PeerLocated fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var expires = reader.readInt();var distance = reader.readInt();		return new PeerLocated(peer : peer, expires : expires, distance : distance);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3393592157,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.expires,4,little:true,signed:true),readBufferFromBigInt(this.distance,4,little:true,signed:true),].expand((element) => element).toList();}

}

class PeerSelfLocated {
    static const CONSTRUCTOR_ID = 4176226379;
    static const SUBCLASS_OF_ID = 4208604332;
    final classType = "constructor";
    final ID = 4176226379;
	int expires;


	PeerSelfLocated({required this.expires});

	static PeerSelfLocated fromReader(BinaryReader reader) {
	var temp,len;var expires = reader.readInt();		return new PeerSelfLocated(expires : expires);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4176226379,4),readBufferFromBigInt(this.expires,4,little:true,signed:true),].expand((element) => element).toList();}

}

class RestrictionReason {
    static const CONSTRUCTOR_ID = 3497176244;
    static const SUBCLASS_OF_ID = 112039341;
    final classType = "constructor";
    final ID = 3497176244;
	String platform;
	String reason;
	String text;


	RestrictionReason({required this.platform, required this.reason, required this.text});

	static RestrictionReason fromReader(BinaryReader reader) {
	var temp,len;var platform = reader.tgReadString();var reason = reader.tgReadString();var text = reader.tgReadString();		return new RestrictionReason(platform : platform, reason : reason, text : text);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3497176244,4),serializeBytes(this.platform),serializeBytes(this.reason),serializeBytes(this.text),].expand((element) => element).toList();}

}

class InputTheme {
    static const CONSTRUCTOR_ID = 1012306921;
    static const SUBCLASS_OF_ID = 127992048;
    final classType = "constructor";
    final ID = 1012306921;
	BigInt id;
	BigInt accessHash;


	InputTheme({required this.id, required this.accessHash});

	static InputTheme fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();		return new InputTheme(id : id, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1012306921,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class InputThemeSlug {
    static const CONSTRUCTOR_ID = 4119399921;
    static const SUBCLASS_OF_ID = 127992048;
    final classType = "constructor";
    final ID = 4119399921;
	String slug;


	InputThemeSlug({required this.slug});

	static InputThemeSlug fromReader(BinaryReader reader) {
	var temp,len;var slug = reader.tgReadString();		return new InputThemeSlug(slug : slug);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4119399921,4),serializeBytes(this.slug),].expand((element) => element).toList();}

}

class Theme {
    static const CONSTRUCTOR_ID = 2685298646;
    static const SUBCLASS_OF_ID = 1454688268;
    final classType = "constructor";
    final ID = 2685298646;
	bool creator;
	bool defaultVar;
	bool forChat;
	BigInt id;
	BigInt accessHash;
	String slug;
	String title;
	var document;
	List<dynamic> settings;
	String emoticon;
	int installsCount;


	Theme({required this.creator, required this.defaultVar, required this.forChat, required this.id, required this.accessHash, required this.slug, required this.title, required this.document, required this.settings, required this.emoticon, required this.installsCount});

	static Theme fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final creator = false;final defaultVar = false;final forChat = false;var id = reader.readLong();var accessHash = reader.readLong();var slug = reader.tgReadString();var title = reader.tgReadString();var document;if ((flags & 4)==1){document = reader.tgReadObject(); } else {document=null;}var settings;if ((flags & 8)==1){reader.readInt();
List<dynamic> settings = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		settings.add(reader.tgReadObject());
} } else {settings=null;}var emoticon;if ((flags & 64)==1){emoticon = reader.tgReadString(); } else {emoticon=null;}var installsCount;if ((flags & 16)==1){installsCount = reader.readInt(); } else {installsCount=null;}		return new Theme(creator : creator, defaultVar : defaultVar, forChat : forChat, id : id, accessHash : accessHash, slug : slug, title : title, document : document, settings : settings, emoticon : emoticon, installsCount : installsCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2685298646,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),serializeBytes(this.slug),serializeBytes(this.title),(this.document==null||this.document==false)?new List<int>.empty():[(this.document.getBytes() as List<int>)].expand((element) => element).toList(),(this.settings==null||this.settings==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.settings.length,4,little:true,signed:true),this.settings.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.emoticon==null||this.emoticon==false)?new List<int>.empty():[serializeBytes(this.emoticon)].expand((element) => element).toList(),(this.installsCount==null||this.installsCount==false)?new List<int>.empty():[readBufferFromBigInt(this.installsCount,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class BaseThemeClassic {
    static const CONSTRUCTOR_ID = 3282117730;
    static const SUBCLASS_OF_ID = 520352836;
    final classType = "constructor";
    final ID = 3282117730;


	BaseThemeClassic();

	static BaseThemeClassic fromReader(BinaryReader reader) {
	var temp,len;		return new BaseThemeClassic();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3282117730,4),].expand((element) => element).toList();}

}

class BaseThemeDay {
    static const CONSTRUCTOR_ID = 4225242760;
    static const SUBCLASS_OF_ID = 520352836;
    final classType = "constructor";
    final ID = 4225242760;


	BaseThemeDay();

	static BaseThemeDay fromReader(BinaryReader reader) {
	var temp,len;		return new BaseThemeDay();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4225242760,4),].expand((element) => element).toList();}

}

class BaseThemeNight {
    static const CONSTRUCTOR_ID = 3081969320;
    static const SUBCLASS_OF_ID = 520352836;
    final classType = "constructor";
    final ID = 3081969320;


	BaseThemeNight();

	static BaseThemeNight fromReader(BinaryReader reader) {
	var temp,len;		return new BaseThemeNight();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3081969320,4),].expand((element) => element).toList();}

}

class BaseThemeTinted {
    static const CONSTRUCTOR_ID = 1834973166;
    static const SUBCLASS_OF_ID = 520352836;
    final classType = "constructor";
    final ID = 1834973166;


	BaseThemeTinted();

	static BaseThemeTinted fromReader(BinaryReader reader) {
	var temp,len;		return new BaseThemeTinted();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1834973166,4),].expand((element) => element).toList();}

}

class BaseThemeArctic {
    static const CONSTRUCTOR_ID = 1527845466;
    static const SUBCLASS_OF_ID = 520352836;
    final classType = "constructor";
    final ID = 1527845466;


	BaseThemeArctic();

	static BaseThemeArctic fromReader(BinaryReader reader) {
	var temp,len;		return new BaseThemeArctic();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1527845466,4),].expand((element) => element).toList();}

}

class InputThemeSettings {
    static const CONSTRUCTOR_ID = 2413711439;
    static const SUBCLASS_OF_ID = 2201536642;
    final classType = "constructor";
    final ID = 2413711439;
	bool messageColorsAnimated;
	var baseTheme;
	int accentColor;
	int outboxAccentColor;
	List<int> messageColors;
	var wallpaper;
	var wallpaperSettings;


	InputThemeSettings({required this.messageColorsAnimated, required this.baseTheme, required this.accentColor, required this.outboxAccentColor, required this.messageColors, required this.wallpaper, required this.wallpaperSettings});

	static InputThemeSettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final messageColorsAnimated = false;var baseTheme = reader.tgReadObject();var accentColor = reader.readInt();var outboxAccentColor;if ((flags & 8)==1){outboxAccentColor = reader.readInt(); } else {outboxAccentColor=null;}var messageColors;if ((flags & 1)==1){reader.readInt();
List<int> messageColors = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		messageColors.add(reader.readInt());
} } else {messageColors=null;}var wallpaper;if ((flags & 2)==1){wallpaper = reader.tgReadObject(); } else {wallpaper=null;}var wallpaperSettings;if ((flags & 2)==1){wallpaperSettings = reader.tgReadObject(); } else {wallpaperSettings=null;}		return new InputThemeSettings(messageColorsAnimated : messageColorsAnimated, baseTheme : baseTheme, accentColor : accentColor, outboxAccentColor : outboxAccentColor, messageColors : messageColors, wallpaper : wallpaper, wallpaperSettings : wallpaperSettings);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2413711439,4),[0,0,0,0],(this.baseTheme.getBytes() as List<int>),readBufferFromBigInt(this.accentColor,4,little:true,signed:true),(this.outboxAccentColor==null||this.outboxAccentColor==false)?new List<int>.empty():[readBufferFromBigInt(this.outboxAccentColor,4,little:true,signed:true)].expand((element) => element).toList(),(this.messageColors==null||this.messageColors==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.messageColors.length,4,little:true,signed:true),this.messageColors.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element)].expand((element) => element).toList(),(this.wallpaper==null||this.wallpaper==false)?new List<int>.empty():[(this.wallpaper.getBytes() as List<int>)].expand((element) => element).toList(),(this.wallpaperSettings==null||this.wallpaperSettings==false)?new List<int>.empty():[(this.wallpaperSettings.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ThemeSettings {
    static const CONSTRUCTOR_ID = 4200117972;
    static const SUBCLASS_OF_ID = 2187750712;
    final classType = "constructor";
    final ID = 4200117972;
	bool messageColorsAnimated;
	var baseTheme;
	int accentColor;
	int outboxAccentColor;
	List<int> messageColors;
	var wallpaper;


	ThemeSettings({required this.messageColorsAnimated, required this.baseTheme, required this.accentColor, required this.outboxAccentColor, required this.messageColors, required this.wallpaper});

	static ThemeSettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final messageColorsAnimated = false;var baseTheme = reader.tgReadObject();var accentColor = reader.readInt();var outboxAccentColor;if ((flags & 8)==1){outboxAccentColor = reader.readInt(); } else {outboxAccentColor=null;}var messageColors;if ((flags & 1)==1){reader.readInt();
List<int> messageColors = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		messageColors.add(reader.readInt());
} } else {messageColors=null;}var wallpaper;if ((flags & 2)==1){wallpaper = reader.tgReadObject(); } else {wallpaper=null;}		return new ThemeSettings(messageColorsAnimated : messageColorsAnimated, baseTheme : baseTheme, accentColor : accentColor, outboxAccentColor : outboxAccentColor, messageColors : messageColors, wallpaper : wallpaper);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4200117972,4),[0,0,0,0],(this.baseTheme.getBytes() as List<int>),readBufferFromBigInt(this.accentColor,4,little:true,signed:true),(this.outboxAccentColor==null||this.outboxAccentColor==false)?new List<int>.empty():[readBufferFromBigInt(this.outboxAccentColor,4,little:true,signed:true)].expand((element) => element).toList(),(this.messageColors==null||this.messageColors==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.messageColors.length,4,little:true,signed:true),this.messageColors.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element)].expand((element) => element).toList(),(this.wallpaper==null||this.wallpaper==false)?new List<int>.empty():[(this.wallpaper.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class WebPageAttributeTheme {
    static const CONSTRUCTOR_ID = 1421174295;
    static const SUBCLASS_OF_ID = 2949638599;
    final classType = "constructor";
    final ID = 1421174295;
	List<dynamic> documents;
	var settings;


	WebPageAttributeTheme({required this.documents, required this.settings});

	static WebPageAttributeTheme fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var documents;if ((flags & 1)==1){reader.readInt();
List<dynamic> documents = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		documents.add(reader.tgReadObject());
} } else {documents=null;}var settings;if ((flags & 2)==1){settings = reader.tgReadObject(); } else {settings=null;}		return new WebPageAttributeTheme(documents : documents, settings : settings);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1421174295,4),[0,0,0,0],(this.documents==null||this.documents==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.documents.length,4,little:true,signed:true),this.documents.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.settings==null||this.settings==false)?new List<int>.empty():[(this.settings.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageUserVote {
    static const CONSTRUCTOR_ID = 886196148;
    static const SUBCLASS_OF_ID = 3375158674;
    final classType = "constructor";
    final ID = 886196148;
	BigInt userId;
	List<int> option;
	int date;


	MessageUserVote({required this.userId, required this.option, required this.date});

	static MessageUserVote fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var option = reader.tgReadBytes();var date = reader.readInt();		return new MessageUserVote(userId : userId, option : option, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(886196148,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),serializeBytes(this.option),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageUserVoteInputOption {
    static const CONSTRUCTOR_ID = 1017491692;
    static const SUBCLASS_OF_ID = 3375158674;
    final classType = "constructor";
    final ID = 1017491692;
	BigInt userId;
	int date;


	MessageUserVoteInputOption({required this.userId, required this.date});

	static MessageUserVoteInputOption fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var date = reader.readInt();		return new MessageUserVoteInputOption(userId : userId, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1017491692,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageUserVoteMultiple {
    static const CONSTRUCTOR_ID = 2321933655;
    static const SUBCLASS_OF_ID = 3375158674;
    final classType = "constructor";
    final ID = 2321933655;
	BigInt userId;
	List<List<int>> options;
	int date;


	MessageUserVoteMultiple({required this.userId, required this.options, required this.date});

	static MessageUserVoteMultiple fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();reader.readInt();
List<List<int>> options = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		options.add(reader.tgReadBytes());
}var date = reader.readInt();		return new MessageUserVoteMultiple(userId : userId, options : options, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2321933655,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.options.length,4,little:true,signed:true),this.options.map((x)=>serializeBytes(x)).expand((element) => element),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class BankCardOpenUrl {
    static const CONSTRUCTOR_ID = 4117234314;
    static const SUBCLASS_OF_ID = 4074915342;
    final classType = "constructor";
    final ID = 4117234314;
	String url;
	String name;


	BankCardOpenUrl({required this.url, required this.name});

	static BankCardOpenUrl fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();var name = reader.tgReadString();		return new BankCardOpenUrl(url : url, name : name);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4117234314,4),serializeBytes(this.url),serializeBytes(this.name),].expand((element) => element).toList();}

}

class DialogFilter {
    static const CONSTRUCTOR_ID = 1949890536;
    static const SUBCLASS_OF_ID = 1764475991;
    final classType = "constructor";
    final ID = 1949890536;
	bool contacts;
	bool nonContacts;
	bool groups;
	bool broadcasts;
	bool bots;
	bool excludeMuted;
	bool excludeRead;
	bool excludeArchived;
	int id;
	String title;
	String emoticon;
	List<dynamic> pinnedPeers;
	List<dynamic> includePeers;
	List<dynamic> excludePeers;


	DialogFilter({required this.contacts, required this.nonContacts, required this.groups, required this.broadcasts, required this.bots, required this.excludeMuted, required this.excludeRead, required this.excludeArchived, required this.id, required this.title, required this.emoticon, required this.pinnedPeers, required this.includePeers, required this.excludePeers});

	static DialogFilter fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final contacts = false;final nonContacts = false;final groups = false;final broadcasts = false;final bots = false;final excludeMuted = false;final excludeRead = false;final excludeArchived = false;var id = reader.readInt();var title = reader.tgReadString();var emoticon;if ((flags & 33554432)==1){emoticon = reader.tgReadString(); } else {emoticon=null;}reader.readInt();
List<dynamic> pinnedPeers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		pinnedPeers.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> includePeers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		includePeers.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> excludePeers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		excludePeers.add(reader.tgReadObject());
}		return new DialogFilter(contacts : contacts, nonContacts : nonContacts, groups : groups, broadcasts : broadcasts, bots : bots, excludeMuted : excludeMuted, excludeRead : excludeRead, excludeArchived : excludeArchived, id : id, title : title, emoticon : emoticon, pinnedPeers : pinnedPeers, includePeers : includePeers, excludePeers : excludePeers);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1949890536,4),[0,0,0,0],readBufferFromBigInt(this.id,4,little:true,signed:true),serializeBytes(this.title),(this.emoticon==null||this.emoticon==false)?new List<int>.empty():[serializeBytes(this.emoticon)].expand((element) => element).toList(),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.pinnedPeers.length,4,little:true,signed:true),this.pinnedPeers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.includePeers.length,4,little:true,signed:true),this.includePeers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.excludePeers.length,4,little:true,signed:true),this.excludePeers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class DialogFilterDefault {
    static const CONSTRUCTOR_ID = 909284270;
    static const SUBCLASS_OF_ID = 1764475991;
    final classType = "constructor";
    final ID = 909284270;


	DialogFilterDefault();

	static DialogFilterDefault fromReader(BinaryReader reader) {
	var temp,len;		return new DialogFilterDefault();
	}
	List<int> getBytes(){return [readBufferFromBigInt(909284270,4),].expand((element) => element).toList();}

}

class DialogFilterSuggested {
    static const CONSTRUCTOR_ID = 2004110666;
    static const SUBCLASS_OF_ID = 837673094;
    final classType = "constructor";
    final ID = 2004110666;
	var filter;
	String description;


	DialogFilterSuggested({required this.filter, required this.description});

	static DialogFilterSuggested fromReader(BinaryReader reader) {
	var temp,len;var filter = reader.tgReadObject();var description = reader.tgReadString();		return new DialogFilterSuggested(filter : filter, description : description);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2004110666,4),(this.filter.getBytes() as List<int>),serializeBytes(this.description),].expand((element) => element).toList();}

}

class StatsDateRangeDays {
    static const CONSTRUCTOR_ID = 3057118639;
    static const SUBCLASS_OF_ID = 2166579781;
    final classType = "constructor";
    final ID = 3057118639;
	int minDate;
	int maxDate;


	StatsDateRangeDays({required this.minDate, required this.maxDate});

	static StatsDateRangeDays fromReader(BinaryReader reader) {
	var temp,len;var minDate = reader.readInt();var maxDate = reader.readInt();		return new StatsDateRangeDays(minDate : minDate, maxDate : maxDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3057118639,4),readBufferFromBigInt(this.minDate,4,little:true,signed:true),readBufferFromBigInt(this.maxDate,4,little:true,signed:true),].expand((element) => element).toList();}

}

class StatsAbsValueAndPrev {
    static const CONSTRUCTOR_ID = 3410210014;
    static const SUBCLASS_OF_ID = 1052662191;
    final classType = "constructor";
    final ID = 3410210014;
	double current;
	double previous;


	StatsAbsValueAndPrev({required this.current, required this.previous});

	static StatsAbsValueAndPrev fromReader(BinaryReader reader) {
	var temp,len;var current = reader.readDouble();var previous = reader.readDouble();		return new StatsAbsValueAndPrev(current : current, previous : previous);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3410210014,4),readBufferFromBigInt(this.current,4),readBufferFromBigInt(this.previous,4),].expand((element) => element).toList();}

}

class StatsPercentValue {
    static const CONSTRUCTOR_ID = 3419287520;
    static const SUBCLASS_OF_ID = 2533541150;
    final classType = "constructor";
    final ID = 3419287520;
	double part;
	double total;


	StatsPercentValue({required this.part, required this.total});

	static StatsPercentValue fromReader(BinaryReader reader) {
	var temp,len;var part = reader.readDouble();var total = reader.readDouble();		return new StatsPercentValue(part : part, total : total);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3419287520,4),readBufferFromBigInt(this.part,4),readBufferFromBigInt(this.total,4),].expand((element) => element).toList();}

}

class StatsGraphAsync {
    static const CONSTRUCTOR_ID = 1244130093;
    static const SUBCLASS_OF_ID = 2609918291;
    final classType = "constructor";
    final ID = 1244130093;
	String token;


	StatsGraphAsync({required this.token});

	static StatsGraphAsync fromReader(BinaryReader reader) {
	var temp,len;var token = reader.tgReadString();		return new StatsGraphAsync(token : token);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1244130093,4),serializeBytes(this.token),].expand((element) => element).toList();}

}

class StatsGraphError {
    static const CONSTRUCTOR_ID = 3202127906;
    static const SUBCLASS_OF_ID = 2609918291;
    final classType = "constructor";
    final ID = 3202127906;
	String error;


	StatsGraphError({required this.error});

	static StatsGraphError fromReader(BinaryReader reader) {
	var temp,len;var error = reader.tgReadString();		return new StatsGraphError(error : error);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3202127906,4),serializeBytes(this.error),].expand((element) => element).toList();}

}

class StatsGraph {
    static const CONSTRUCTOR_ID = 2393138358;
    static const SUBCLASS_OF_ID = 2609918291;
    final classType = "constructor";
    final ID = 2393138358;
	var json;
	String zoomToken;


	StatsGraph({required this.json, required this.zoomToken});

	static StatsGraph fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var json = reader.tgReadObject();var zoomToken;if ((flags & 1)==1){zoomToken = reader.tgReadString(); } else {zoomToken=null;}		return new StatsGraph(json : json, zoomToken : zoomToken);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2393138358,4),[0,0,0,0],(this.json.getBytes() as List<int>),(this.zoomToken==null||this.zoomToken==false)?new List<int>.empty():[serializeBytes(this.zoomToken)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageInteractionCounters {
    static const CONSTRUCTOR_ID = 2907687357;
    static const SUBCLASS_OF_ID = 641251104;
    final classType = "constructor";
    final ID = 2907687357;
	int msgId;
	int views;
	int forwards;


	MessageInteractionCounters({required this.msgId, required this.views, required this.forwards});

	static MessageInteractionCounters fromReader(BinaryReader reader) {
	var temp,len;var msgId = reader.readInt();var views = reader.readInt();var forwards = reader.readInt();		return new MessageInteractionCounters(msgId : msgId, views : views, forwards : forwards);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2907687357,4),readBufferFromBigInt(this.msgId,4,little:true,signed:true),readBufferFromBigInt(this.views,4,little:true,signed:true),readBufferFromBigInt(this.forwards,4,little:true,signed:true),].expand((element) => element).toList();}

}

class VideoSize {
    static const CONSTRUCTOR_ID = 3727929492;
    static const SUBCLASS_OF_ID = 1660015881;
    final classType = "constructor";
    final ID = 3727929492;
	String type;
	int w;
	int h;
	int size;
	double videoStartTs;


	VideoSize({required this.type, required this.w, required this.h, required this.size, required this.videoStartTs});

	static VideoSize fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var type = reader.tgReadString();var w = reader.readInt();var h = reader.readInt();var size = reader.readInt();var videoStartTs;if ((flags & 1)==1){videoStartTs = reader.readDouble(); } else {videoStartTs=null;}		return new VideoSize(type : type, w : w, h : h, size : size, videoStartTs : videoStartTs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3727929492,4),[0,0,0,0],serializeBytes(this.type),readBufferFromBigInt(this.w,4,little:true,signed:true),readBufferFromBigInt(this.h,4,little:true,signed:true),readBufferFromBigInt(this.size,4,little:true,signed:true),(this.videoStartTs==null||this.videoStartTs==false)?new List<int>.empty():[readBufferFromBigInt(this.videoStartTs,4)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class StatsGroupTopPoster {
    static const CONSTRUCTOR_ID = 2634330011;
    static const SUBCLASS_OF_ID = 2177224227;
    final classType = "constructor";
    final ID = 2634330011;
	BigInt userId;
	int messages;
	int avgChars;


	StatsGroupTopPoster({required this.userId, required this.messages, required this.avgChars});

	static StatsGroupTopPoster fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var messages = reader.readInt();var avgChars = reader.readInt();		return new StatsGroupTopPoster(userId : userId, messages : messages, avgChars : avgChars);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2634330011,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.messages,4,little:true,signed:true),readBufferFromBigInt(this.avgChars,4,little:true,signed:true),].expand((element) => element).toList();}

}

class StatsGroupTopAdmin {
    static const CONSTRUCTOR_ID = 3612888199;
    static const SUBCLASS_OF_ID = 2150997085;
    final classType = "constructor";
    final ID = 3612888199;
	BigInt userId;
	int deleted;
	int kicked;
	int banned;


	StatsGroupTopAdmin({required this.userId, required this.deleted, required this.kicked, required this.banned});

	static StatsGroupTopAdmin fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var deleted = reader.readInt();var kicked = reader.readInt();var banned = reader.readInt();		return new StatsGroupTopAdmin(userId : userId, deleted : deleted, kicked : kicked, banned : banned);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3612888199,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.deleted,4,little:true,signed:true),readBufferFromBigInt(this.kicked,4,little:true,signed:true),readBufferFromBigInt(this.banned,4,little:true,signed:true),].expand((element) => element).toList();}

}

class StatsGroupTopInviter {
    static const CONSTRUCTOR_ID = 1398765469;
    static const SUBCLASS_OF_ID = 2231438458;
    final classType = "constructor";
    final ID = 1398765469;
	BigInt userId;
	int invitations;


	StatsGroupTopInviter({required this.userId, required this.invitations});

	static StatsGroupTopInviter fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.readLong();var invitations = reader.readInt();		return new StatsGroupTopInviter(userId : userId, invitations : invitations);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1398765469,4),readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.invitations,4,little:true,signed:true),].expand((element) => element).toList();}

}

class GlobalPrivacySettings {
    static const CONSTRUCTOR_ID = 3198350372;
    static const SUBCLASS_OF_ID = 3373160304;
    final classType = "constructor";
    final ID = 3198350372;
	bool archiveAndMuteNewNoncontactPeers;


	GlobalPrivacySettings({required this.archiveAndMuteNewNoncontactPeers});

	static GlobalPrivacySettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var archiveAndMuteNewNoncontactPeers;if ((flags & 1)==1){archiveAndMuteNewNoncontactPeers = reader.tgReadBool(); } else {archiveAndMuteNewNoncontactPeers=null;}		return new GlobalPrivacySettings(archiveAndMuteNewNoncontactPeers : archiveAndMuteNewNoncontactPeers);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3198350372,4),[0,0,0,0],(this.archiveAndMuteNewNoncontactPeers==null||this.archiveAndMuteNewNoncontactPeers==false)?new List<int>.empty():[[this.archiveAndMuteNewNoncontactPeers ? 0xb5757299 : 0x379779bc]].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageViews {
    static const CONSTRUCTOR_ID = 1163625789;
    static const SUBCLASS_OF_ID = 1018201017;
    final classType = "constructor";
    final ID = 1163625789;
	int views;
	int forwards;
	var replies;


	MessageViews({required this.views, required this.forwards, required this.replies});

	static MessageViews fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var views;if ((flags & 1)==1){views = reader.readInt(); } else {views=null;}var forwards;if ((flags & 2)==1){forwards = reader.readInt(); } else {forwards=null;}var replies;if ((flags & 4)==1){replies = reader.tgReadObject(); } else {replies=null;}		return new MessageViews(views : views, forwards : forwards, replies : replies);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1163625789,4),[0,0,0,0],(this.views==null||this.views==false)?new List<int>.empty():[readBufferFromBigInt(this.views,4,little:true,signed:true)].expand((element) => element).toList(),(this.forwards==null||this.forwards==false)?new List<int>.empty():[readBufferFromBigInt(this.forwards,4,little:true,signed:true)].expand((element) => element).toList(),(this.replies==null||this.replies==false)?new List<int>.empty():[(this.replies.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageReplyHeader {
    static const CONSTRUCTOR_ID = 2799007587;
    static const SUBCLASS_OF_ID = 1531810151;
    final classType = "constructor";
    final ID = 2799007587;
	bool replyToScheduled;
	int replyToMsgId;
	var replyToPeerId;
	int replyToTopId;


	MessageReplyHeader({required this.replyToScheduled, required this.replyToMsgId, required this.replyToPeerId, required this.replyToTopId});

	static MessageReplyHeader fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final replyToScheduled = false;var replyToMsgId = reader.readInt();var replyToPeerId;if ((flags & 1)==1){replyToPeerId = reader.tgReadObject(); } else {replyToPeerId=null;}var replyToTopId;if ((flags & 2)==1){replyToTopId = reader.readInt(); } else {replyToTopId=null;}		return new MessageReplyHeader(replyToScheduled : replyToScheduled, replyToMsgId : replyToMsgId, replyToPeerId : replyToPeerId, replyToTopId : replyToTopId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2799007587,4),[0,0,0,0],readBufferFromBigInt(this.replyToMsgId,4,little:true,signed:true),(this.replyToPeerId==null||this.replyToPeerId==false)?new List<int>.empty():[(this.replyToPeerId.getBytes() as List<int>)].expand((element) => element).toList(),(this.replyToTopId==null||this.replyToTopId==false)?new List<int>.empty():[readBufferFromBigInt(this.replyToTopId,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessageReplies {
    static const CONSTRUCTOR_ID = 2211844034;
    static const SUBCLASS_OF_ID = 1825397986;
    final classType = "constructor";
    final ID = 2211844034;
	bool comments;
	int replies;
	int repliesPts;
	List<dynamic> recentRepliers;
	BigInt channelId;
	int maxId;
	int readMaxId;


	MessageReplies({required this.comments, required this.replies, required this.repliesPts, required this.recentRepliers, required this.channelId, required this.maxId, required this.readMaxId});

	static MessageReplies fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final comments = false;var replies = reader.readInt();var repliesPts = reader.readInt();var recentRepliers;if ((flags & 2)==1){reader.readInt();
List<dynamic> recentRepliers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		recentRepliers.add(reader.tgReadObject());
} } else {recentRepliers=null;}var channelId;if ((flags & 1)==1){channelId = reader.readLong(); } else {channelId=null;}var maxId;if ((flags & 4)==1){maxId = reader.readInt(); } else {maxId=null;}var readMaxId;if ((flags & 8)==1){readMaxId = reader.readInt(); } else {readMaxId=null;}		return new MessageReplies(comments : comments, replies : replies, repliesPts : repliesPts, recentRepliers : recentRepliers, channelId : channelId, maxId : maxId, readMaxId : readMaxId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2211844034,4),[0,0,0,0],readBufferFromBigInt(this.replies,4,little:true,signed:true),readBufferFromBigInt(this.repliesPts,4,little:true,signed:true),(this.recentRepliers==null||this.recentRepliers==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.recentRepliers.length,4,little:true,signed:true),this.recentRepliers.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),(this.channelId==null||this.channelId==false)?new List<int>.empty():[readBufferFromBigInt(this.channelId,8,little:true,signed:true)].expand((element) => element).toList(),(this.maxId==null||this.maxId==false)?new List<int>.empty():[readBufferFromBigInt(this.maxId,4,little:true,signed:true)].expand((element) => element).toList(),(this.readMaxId==null||this.readMaxId==false)?new List<int>.empty():[readBufferFromBigInt(this.readMaxId,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PeerBlocked {
    static const CONSTRUCTOR_ID = 3908927508;
    static const SUBCLASS_OF_ID = 1425210520;
    final classType = "constructor";
    final ID = 3908927508;
	var peerId;
	int date;


	PeerBlocked({required this.peerId, required this.date});

	static PeerBlocked fromReader(BinaryReader reader) {
	var temp,len;var peerId = reader.tgReadObject();var date = reader.readInt();		return new PeerBlocked(peerId : peerId, date : date);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3908927508,4),(this.peerId.getBytes() as List<int>),readBufferFromBigInt(this.date,4,little:true,signed:true),].expand((element) => element).toList();}

}

class GroupCallDiscarded {
    static const CONSTRUCTOR_ID = 2004925620;
    static const SUBCLASS_OF_ID = 548729632;
    final classType = "constructor";
    final ID = 2004925620;
	BigInt id;
	BigInt accessHash;
	int duration;


	GroupCallDiscarded({required this.id, required this.accessHash, required this.duration});

	static GroupCallDiscarded fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();var duration = reader.readInt();		return new GroupCallDiscarded(id : id, accessHash : accessHash, duration : duration);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2004925620,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.duration,4,little:true,signed:true),].expand((element) => element).toList();}

}

class GroupCall {
    static const CONSTRUCTOR_ID = 3583468812;
    static const SUBCLASS_OF_ID = 548729632;
    final classType = "constructor";
    final ID = 3583468812;
	bool joinMuted;
	bool canChangeJoinMuted;
	bool joinDateAsc;
	bool scheduleStartSubscribed;
	bool canStartVideo;
	bool recordVideoActive;
	bool rtmpStream;
	bool listenersHidden;
	BigInt id;
	BigInt accessHash;
	int participantsCount;
	String title;
	int streamDcId;
	int recordStartDate;
	int scheduleDate;
	int unmutedVideoCount;
	int unmutedVideoLimit;
	int version;


	GroupCall({required this.joinMuted, required this.canChangeJoinMuted, required this.joinDateAsc, required this.scheduleStartSubscribed, required this.canStartVideo, required this.recordVideoActive, required this.rtmpStream, required this.listenersHidden, required this.id, required this.accessHash, required this.participantsCount, required this.title, required this.streamDcId, required this.recordStartDate, required this.scheduleDate, required this.unmutedVideoCount, required this.unmutedVideoLimit, required this.version});

	static GroupCall fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final joinMuted = false;final canChangeJoinMuted = false;final joinDateAsc = false;final scheduleStartSubscribed = false;final canStartVideo = false;final recordVideoActive = false;final rtmpStream = false;final listenersHidden = false;var id = reader.readLong();var accessHash = reader.readLong();var participantsCount = reader.readInt();var title;if ((flags & 8)==1){title = reader.tgReadString(); } else {title=null;}var streamDcId;if ((flags & 16)==1){streamDcId = reader.readInt(); } else {streamDcId=null;}var recordStartDate;if ((flags & 32)==1){recordStartDate = reader.readInt(); } else {recordStartDate=null;}var scheduleDate;if ((flags & 128)==1){scheduleDate = reader.readInt(); } else {scheduleDate=null;}var unmutedVideoCount;if ((flags & 1024)==1){unmutedVideoCount = reader.readInt(); } else {unmutedVideoCount=null;}var unmutedVideoLimit = reader.readInt();var version = reader.readInt();		return new GroupCall(joinMuted : joinMuted, canChangeJoinMuted : canChangeJoinMuted, joinDateAsc : joinDateAsc, scheduleStartSubscribed : scheduleStartSubscribed, canStartVideo : canStartVideo, recordVideoActive : recordVideoActive, rtmpStream : rtmpStream, listenersHidden : listenersHidden, id : id, accessHash : accessHash, participantsCount : participantsCount, title : title, streamDcId : streamDcId, recordStartDate : recordStartDate, scheduleDate : scheduleDate, unmutedVideoCount : unmutedVideoCount, unmutedVideoLimit : unmutedVideoLimit, version : version);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3583468812,4),[0,0,0,0],readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),readBufferFromBigInt(this.participantsCount,4,little:true,signed:true),(this.title==null||this.title==false)?new List<int>.empty():[serializeBytes(this.title)].expand((element) => element).toList(),(this.streamDcId==null||this.streamDcId==false)?new List<int>.empty():[readBufferFromBigInt(this.streamDcId,4,little:true,signed:true)].expand((element) => element).toList(),(this.recordStartDate==null||this.recordStartDate==false)?new List<int>.empty():[readBufferFromBigInt(this.recordStartDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.scheduleDate==null||this.scheduleDate==false)?new List<int>.empty():[readBufferFromBigInt(this.scheduleDate,4,little:true,signed:true)].expand((element) => element).toList(),(this.unmutedVideoCount==null||this.unmutedVideoCount==false)?new List<int>.empty():[readBufferFromBigInt(this.unmutedVideoCount,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.unmutedVideoLimit,4,little:true,signed:true),readBufferFromBigInt(this.version,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputGroupCall {
    static const CONSTRUCTOR_ID = 3635053583;
    static const SUBCLASS_OF_ID = 1482758833;
    final classType = "constructor";
    final ID = 3635053583;
	BigInt id;
	BigInt accessHash;


	InputGroupCall({required this.id, required this.accessHash});

	static InputGroupCall fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();var accessHash = reader.readLong();		return new InputGroupCall(id : id, accessHash : accessHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3635053583,4),readBufferFromBigInt(this.id,8,little:true,signed:true),readBufferFromBigInt(this.accessHash,8,little:true,signed:true),].expand((element) => element).toList();}

}

class GroupCallParticipant {
    static const CONSTRUCTOR_ID = 3953538814;
    static const SUBCLASS_OF_ID = 3222974284;
    final classType = "constructor";
    final ID = 3953538814;
	bool muted;
	bool left;
	bool canSelfUnmute;
	bool justJoined;
	bool versioned;
	bool min;
	bool mutedByYou;
	bool volumeByAdmin;
	bool self;
	bool videoJoined;
	var peer;
	int date;
	int activeDate;
	int source;
	int volume;
	String about;
	BigInt raiseHandRating;
	var video;
	var presentation;


	GroupCallParticipant({required this.muted, required this.left, required this.canSelfUnmute, required this.justJoined, required this.versioned, required this.min, required this.mutedByYou, required this.volumeByAdmin, required this.self, required this.videoJoined, required this.peer, required this.date, required this.activeDate, required this.source, required this.volume, required this.about, required this.raiseHandRating, required this.video, required this.presentation});

	static GroupCallParticipant fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final muted = false;final left = false;final canSelfUnmute = false;final justJoined = false;final versioned = false;final min = false;final mutedByYou = false;final volumeByAdmin = false;final self = false;final videoJoined = false;var peer = reader.tgReadObject();var date = reader.readInt();var activeDate;if ((flags & 8)==1){activeDate = reader.readInt(); } else {activeDate=null;}var source = reader.readInt();var volume;if ((flags & 128)==1){volume = reader.readInt(); } else {volume=null;}var about;if ((flags & 2048)==1){about = reader.tgReadString(); } else {about=null;}var raiseHandRating;if ((flags & 8192)==1){raiseHandRating = reader.readLong(); } else {raiseHandRating=null;}var video;if ((flags & 64)==1){video = reader.tgReadObject(); } else {video=null;}var presentation;if ((flags & 16384)==1){presentation = reader.tgReadObject(); } else {presentation=null;}		return new GroupCallParticipant(muted : muted, left : left, canSelfUnmute : canSelfUnmute, justJoined : justJoined, versioned : versioned, min : min, mutedByYou : mutedByYou, volumeByAdmin : volumeByAdmin, self : self, videoJoined : videoJoined, peer : peer, date : date, activeDate : activeDate, source : source, volume : volume, about : about, raiseHandRating : raiseHandRating, video : video, presentation : presentation);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3953538814,4),[0,0,0,0],(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.date,4,little:true,signed:true),(this.activeDate==null||this.activeDate==false)?new List<int>.empty():[readBufferFromBigInt(this.activeDate,4,little:true,signed:true)].expand((element) => element).toList(),readBufferFromBigInt(this.source,4,little:true,signed:true),(this.volume==null||this.volume==false)?new List<int>.empty():[readBufferFromBigInt(this.volume,4,little:true,signed:true)].expand((element) => element).toList(),(this.about==null||this.about==false)?new List<int>.empty():[serializeBytes(this.about)].expand((element) => element).toList(),(this.raiseHandRating==null||this.raiseHandRating==false)?new List<int>.empty():[readBufferFromBigInt(this.raiseHandRating,8,little:true,signed:true)].expand((element) => element).toList(),(this.video==null||this.video==false)?new List<int>.empty():[(this.video.getBytes() as List<int>)].expand((element) => element).toList(),(this.presentation==null||this.presentation==false)?new List<int>.empty():[(this.presentation.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class InlineQueryPeerTypeSameBotPM {
    static const CONSTRUCTOR_ID = 813821341;
    static const SUBCLASS_OF_ID = 2947611167;
    final classType = "constructor";
    final ID = 813821341;


	InlineQueryPeerTypeSameBotPM();

	static InlineQueryPeerTypeSameBotPM fromReader(BinaryReader reader) {
	var temp,len;		return new InlineQueryPeerTypeSameBotPM();
	}
	List<int> getBytes(){return [readBufferFromBigInt(813821341,4),].expand((element) => element).toList();}

}

class InlineQueryPeerTypePM {
    static const CONSTRUCTOR_ID = 2201751468;
    static const SUBCLASS_OF_ID = 2947611167;
    final classType = "constructor";
    final ID = 2201751468;


	InlineQueryPeerTypePM();

	static InlineQueryPeerTypePM fromReader(BinaryReader reader) {
	var temp,len;		return new InlineQueryPeerTypePM();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2201751468,4),].expand((element) => element).toList();}

}

class InlineQueryPeerTypeChat {
    static const CONSTRUCTOR_ID = 3613836554;
    static const SUBCLASS_OF_ID = 2947611167;
    final classType = "constructor";
    final ID = 3613836554;


	InlineQueryPeerTypeChat();

	static InlineQueryPeerTypeChat fromReader(BinaryReader reader) {
	var temp,len;		return new InlineQueryPeerTypeChat();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3613836554,4),].expand((element) => element).toList();}

}

class InlineQueryPeerTypeMegagroup {
    static const CONSTRUCTOR_ID = 1589952067;
    static const SUBCLASS_OF_ID = 2947611167;
    final classType = "constructor";
    final ID = 1589952067;


	InlineQueryPeerTypeMegagroup();

	static InlineQueryPeerTypeMegagroup fromReader(BinaryReader reader) {
	var temp,len;		return new InlineQueryPeerTypeMegagroup();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1589952067,4),].expand((element) => element).toList();}

}

class InlineQueryPeerTypeBroadcast {
    static const CONSTRUCTOR_ID = 1664413338;
    static const SUBCLASS_OF_ID = 2947611167;
    final classType = "constructor";
    final ID = 1664413338;


	InlineQueryPeerTypeBroadcast();

	static InlineQueryPeerTypeBroadcast fromReader(BinaryReader reader) {
	var temp,len;		return new InlineQueryPeerTypeBroadcast();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1664413338,4),].expand((element) => element).toList();}

}

class ChatInviteImporter {
    static const CONSTRUCTOR_ID = 2354765785;
    static const SUBCLASS_OF_ID = 1393710126;
    final classType = "constructor";
    final ID = 2354765785;
	bool requested;
	BigInt userId;
	int date;
	String about;
	BigInt approvedBy;


	ChatInviteImporter({required this.requested, required this.userId, required this.date, required this.about, required this.approvedBy});

	static ChatInviteImporter fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final requested = false;var userId = reader.readLong();var date = reader.readInt();var about;if ((flags & 4)==1){about = reader.tgReadString(); } else {about=null;}var approvedBy;if ((flags & 2)==1){approvedBy = reader.readLong(); } else {approvedBy=null;}		return new ChatInviteImporter(requested : requested, userId : userId, date : date, about : about, approvedBy : approvedBy);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2354765785,4),[0,0,0,0],readBufferFromBigInt(this.userId,8,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),(this.about==null||this.about==false)?new List<int>.empty():[serializeBytes(this.about)].expand((element) => element).toList(),(this.approvedBy==null||this.approvedBy==false)?new List<int>.empty():[readBufferFromBigInt(this.approvedBy,8,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class ChatAdminWithInvites {
    static const CONSTRUCTOR_ID = 4075613987;
    static const SUBCLASS_OF_ID = 1348727704;
    final classType = "constructor";
    final ID = 4075613987;
	BigInt adminId;
	int invitesCount;
	int revokedInvitesCount;


	ChatAdminWithInvites({required this.adminId, required this.invitesCount, required this.revokedInvitesCount});

	static ChatAdminWithInvites fromReader(BinaryReader reader) {
	var temp,len;var adminId = reader.readLong();var invitesCount = reader.readInt();var revokedInvitesCount = reader.readInt();		return new ChatAdminWithInvites(adminId : adminId, invitesCount : invitesCount, revokedInvitesCount : revokedInvitesCount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4075613987,4),readBufferFromBigInt(this.adminId,8,little:true,signed:true),readBufferFromBigInt(this.invitesCount,4,little:true,signed:true),readBufferFromBigInt(this.revokedInvitesCount,4,little:true,signed:true),].expand((element) => element).toList();}

}

class GroupCallParticipantVideoSourceGroup {
    static const CONSTRUCTOR_ID = 3702593719;
    static const SUBCLASS_OF_ID = 806746236;
    final classType = "constructor";
    final ID = 3702593719;
	String semantics;
	List<int> sources;


	GroupCallParticipantVideoSourceGroup({required this.semantics, required this.sources});

	static GroupCallParticipantVideoSourceGroup fromReader(BinaryReader reader) {
	var temp,len;var semantics = reader.tgReadString();reader.readInt();
List<int> sources = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		sources.add(reader.readInt());
}		return new GroupCallParticipantVideoSourceGroup(semantics : semantics, sources : sources);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3702593719,4),serializeBytes(this.semantics),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.sources.length,4,little:true,signed:true),this.sources.map((x)=>readBufferFromBigInt(x,4,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class GroupCallParticipantVideo {
    static const CONSTRUCTOR_ID = 1735736008;
    static const SUBCLASS_OF_ID = 4014389467;
    final classType = "constructor";
    final ID = 1735736008;
	bool paused;
	String endpoint;
	List<dynamic> sourceGroups;
	int audioSource;


	GroupCallParticipantVideo({required this.paused, required this.endpoint, required this.sourceGroups, required this.audioSource});

	static GroupCallParticipantVideo fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final paused = false;var endpoint = reader.tgReadString();reader.readInt();
List<dynamic> sourceGroups = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		sourceGroups.add(reader.tgReadObject());
}var audioSource;if ((flags & 2)==1){audioSource = reader.readInt(); } else {audioSource=null;}		return new GroupCallParticipantVideo(paused : paused, endpoint : endpoint, sourceGroups : sourceGroups, audioSource : audioSource);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1735736008,4),[0,0,0,0],serializeBytes(this.endpoint),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.sourceGroups.length,4,little:true,signed:true),this.sourceGroups.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.audioSource==null||this.audioSource==false)?new List<int>.empty():[readBufferFromBigInt(this.audioSource,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class BotCommandScopeDefault {
    static const CONSTRUCTOR_ID = 795652779;
    static const SUBCLASS_OF_ID = 1269783824;
    final classType = "constructor";
    final ID = 795652779;


	BotCommandScopeDefault();

	static BotCommandScopeDefault fromReader(BinaryReader reader) {
	var temp,len;		return new BotCommandScopeDefault();
	}
	List<int> getBytes(){return [readBufferFromBigInt(795652779,4),].expand((element) => element).toList();}

}

class BotCommandScopeUsers {
    static const CONSTRUCTOR_ID = 1011811544;
    static const SUBCLASS_OF_ID = 1269783824;
    final classType = "constructor";
    final ID = 1011811544;


	BotCommandScopeUsers();

	static BotCommandScopeUsers fromReader(BinaryReader reader) {
	var temp,len;		return new BotCommandScopeUsers();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1011811544,4),].expand((element) => element).toList();}

}

class BotCommandScopeChats {
    static const CONSTRUCTOR_ID = 1877059713;
    static const SUBCLASS_OF_ID = 1269783824;
    final classType = "constructor";
    final ID = 1877059713;


	BotCommandScopeChats();

	static BotCommandScopeChats fromReader(BinaryReader reader) {
	var temp,len;		return new BotCommandScopeChats();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1877059713,4),].expand((element) => element).toList();}

}

class BotCommandScopeChatAdmins {
    static const CONSTRUCTOR_ID = 3114950762;
    static const SUBCLASS_OF_ID = 1269783824;
    final classType = "constructor";
    final ID = 3114950762;


	BotCommandScopeChatAdmins();

	static BotCommandScopeChatAdmins fromReader(BinaryReader reader) {
	var temp,len;		return new BotCommandScopeChatAdmins();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3114950762,4),].expand((element) => element).toList();}

}

class BotCommandScopePeer {
    static const CONSTRUCTOR_ID = 3684534653;
    static const SUBCLASS_OF_ID = 1269783824;
    final classType = "constructor";
    final ID = 3684534653;
	var peer;


	BotCommandScopePeer({required this.peer});

	static BotCommandScopePeer fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new BotCommandScopePeer(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3684534653,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}

}

class BotCommandScopePeerAdmins {
    static const CONSTRUCTOR_ID = 1071145937;
    static const SUBCLASS_OF_ID = 1269783824;
    final classType = "constructor";
    final ID = 1071145937;
	var peer;


	BotCommandScopePeerAdmins({required this.peer});

	static BotCommandScopePeerAdmins fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new BotCommandScopePeerAdmins(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1071145937,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}

}

class BotCommandScopePeerUser {
    static const CONSTRUCTOR_ID = 169026035;
    static const SUBCLASS_OF_ID = 1269783824;
    final classType = "constructor";
    final ID = 169026035;
	var peer;
	var userId;


	BotCommandScopePeerUser({required this.peer, required this.userId});

	static BotCommandScopePeerUser fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var userId = reader.tgReadObject();		return new BotCommandScopePeerUser(peer : peer, userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(169026035,4),(this.peer.getBytes() as List<int>),(this.userId.getBytes() as List<int>),].expand((element) => element).toList();}

}

class SponsoredMessage {
    static const CONSTRUCTOR_ID = 981691896;
    static const SUBCLASS_OF_ID = 3780630582;
    final classType = "constructor";
    final ID = 981691896;
	bool recommended;
	List<int> randomId;
	var fromId;
	var chatInvite;
	String chatInviteHash;
	int channelPost;
	String startParam;
	String message;
	List<dynamic> entities;


	SponsoredMessage({required this.recommended, required this.randomId, required this.fromId, required this.chatInvite, required this.chatInviteHash, required this.channelPost, required this.startParam, required this.message, required this.entities});

	static SponsoredMessage fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final recommended = false;var randomId = reader.tgReadBytes();var fromId;if ((flags & 8)==1){fromId = reader.tgReadObject(); } else {fromId=null;}var chatInvite;if ((flags & 16)==1){chatInvite = reader.tgReadObject(); } else {chatInvite=null;}var chatInviteHash;if ((flags & 16)==1){chatInviteHash = reader.tgReadString(); } else {chatInviteHash=null;}var channelPost;if ((flags & 4)==1){channelPost = reader.readInt(); } else {channelPost=null;}var startParam;if ((flags & 1)==1){startParam = reader.tgReadString(); } else {startParam=null;}var message = reader.tgReadString();var entities;if ((flags & 2)==1){reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
} } else {entities=null;}		return new SponsoredMessage(recommended : recommended, randomId : randomId, fromId : fromId, chatInvite : chatInvite, chatInviteHash : chatInviteHash, channelPost : channelPost, startParam : startParam, message : message, entities : entities);
	}
	List<int> getBytes(){return [readBufferFromBigInt(981691896,4),[0,0,0,0],serializeBytes(this.randomId),(this.fromId==null||this.fromId==false)?new List<int>.empty():[(this.fromId.getBytes() as List<int>)].expand((element) => element).toList(),(this.chatInvite==null||this.chatInvite==false)?new List<int>.empty():[(this.chatInvite.getBytes() as List<int>)].expand((element) => element).toList(),(this.chatInviteHash==null||this.chatInviteHash==false)?new List<int>.empty():[serializeBytes(this.chatInviteHash)].expand((element) => element).toList(),(this.channelPost==null||this.channelPost==false)?new List<int>.empty():[readBufferFromBigInt(this.channelPost,4,little:true,signed:true)].expand((element) => element).toList(),(this.startParam==null||this.startParam==false)?new List<int>.empty():[serializeBytes(this.startParam)].expand((element) => element).toList(),serializeBytes(this.message),(this.entities==null||this.entities==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class SearchResultsCalendarPeriod {
    static const CONSTRUCTOR_ID = 3383776159;
    static const SUBCLASS_OF_ID = 3797743871;
    final classType = "constructor";
    final ID = 3383776159;
	int date;
	int minMsgId;
	int maxMsgId;
	int count;


	SearchResultsCalendarPeriod({required this.date, required this.minMsgId, required this.maxMsgId, required this.count});

	static SearchResultsCalendarPeriod fromReader(BinaryReader reader) {
	var temp,len;var date = reader.readInt();var minMsgId = reader.readInt();var maxMsgId = reader.readInt();var count = reader.readInt();		return new SearchResultsCalendarPeriod(date : date, minMsgId : minMsgId, maxMsgId : maxMsgId, count : count);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3383776159,4),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.minMsgId,4,little:true,signed:true),readBufferFromBigInt(this.maxMsgId,4,little:true,signed:true),readBufferFromBigInt(this.count,4,little:true,signed:true),].expand((element) => element).toList();}

}

class SearchResultPosition {
    static const CONSTRUCTOR_ID = 2137295719;
    static const SUBCLASS_OF_ID = 3101824532;
    final classType = "constructor";
    final ID = 2137295719;
	int msgId;
	int date;
	int offset;


	SearchResultPosition({required this.msgId, required this.date, required this.offset});

	static SearchResultPosition fromReader(BinaryReader reader) {
	var temp,len;var msgId = reader.readInt();var date = reader.readInt();var offset = reader.readInt();		return new SearchResultPosition(msgId : msgId, date : date, offset : offset);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2137295719,4),readBufferFromBigInt(this.msgId,4,little:true,signed:true),readBufferFromBigInt(this.date,4,little:true,signed:true),readBufferFromBigInt(this.offset,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ReactionCount {
    static const CONSTRUCTOR_ID = 1873957073;
    static const SUBCLASS_OF_ID = 3523792447;
    final classType = "constructor";
    final ID = 1873957073;
	bool chosen;
	String reaction;
	int count;


	ReactionCount({required this.chosen, required this.reaction, required this.count});

	static ReactionCount fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final chosen = false;var reaction = reader.tgReadString();var count = reader.readInt();		return new ReactionCount(chosen : chosen, reaction : reaction, count : count);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1873957073,4),[0,0,0,0],serializeBytes(this.reaction),readBufferFromBigInt(this.count,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MessageReactions {
    static const CONSTRUCTOR_ID = 1328256121;
    static const SUBCLASS_OF_ID = 2321221404;
    final classType = "constructor";
    final ID = 1328256121;
	bool min;
	bool canSeeList;
	List<dynamic> results;
	List<dynamic> recentReactions;


	MessageReactions({required this.min, required this.canSeeList, required this.results, required this.recentReactions});

	static MessageReactions fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final min = false;final canSeeList = false;reader.readInt();
List<dynamic> results = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		results.add(reader.tgReadObject());
}var recentReactions;if ((flags & 2)==1){reader.readInt();
List<dynamic> recentReactions = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		recentReactions.add(reader.tgReadObject());
} } else {recentReactions=null;}		return new MessageReactions(min : min, canSeeList : canSeeList, results : results, recentReactions : recentReactions);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1328256121,4),[0,0,0,0],readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.results.length,4,little:true,signed:true),this.results.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.recentReactions==null||this.recentReactions==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.recentReactions.length,4,little:true,signed:true),this.recentReactions.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class AvailableReaction {
    static const CONSTRUCTOR_ID = 3229084673;
    static const SUBCLASS_OF_ID = 2350685555;
    final classType = "constructor";
    final ID = 3229084673;
	bool inactive;
	bool premium;
	String reaction;
	String title;
	var staticIcon;
	var appearAnimation;
	var selectAnimation;
	var activateAnimation;
	var effectAnimation;
	var aroundAnimation;
	var centerIcon;


	AvailableReaction({required this.inactive, required this.premium, required this.reaction, required this.title, required this.staticIcon, required this.appearAnimation, required this.selectAnimation, required this.activateAnimation, required this.effectAnimation, required this.aroundAnimation, required this.centerIcon});

	static AvailableReaction fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final inactive = false;final premium = false;var reaction = reader.tgReadString();var title = reader.tgReadString();var staticIcon = reader.tgReadObject();var appearAnimation = reader.tgReadObject();var selectAnimation = reader.tgReadObject();var activateAnimation = reader.tgReadObject();var effectAnimation = reader.tgReadObject();var aroundAnimation;if ((flags & 2)==1){aroundAnimation = reader.tgReadObject(); } else {aroundAnimation=null;}var centerIcon;if ((flags & 2)==1){centerIcon = reader.tgReadObject(); } else {centerIcon=null;}		return new AvailableReaction(inactive : inactive, premium : premium, reaction : reaction, title : title, staticIcon : staticIcon, appearAnimation : appearAnimation, selectAnimation : selectAnimation, activateAnimation : activateAnimation, effectAnimation : effectAnimation, aroundAnimation : aroundAnimation, centerIcon : centerIcon);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3229084673,4),[0,0,0,0],serializeBytes(this.reaction),serializeBytes(this.title),(this.staticIcon.getBytes() as List<int>),(this.appearAnimation.getBytes() as List<int>),(this.selectAnimation.getBytes() as List<int>),(this.activateAnimation.getBytes() as List<int>),(this.effectAnimation.getBytes() as List<int>),(this.aroundAnimation==null||this.aroundAnimation==false)?new List<int>.empty():[(this.aroundAnimation.getBytes() as List<int>)].expand((element) => element).toList(),(this.centerIcon==null||this.centerIcon==false)?new List<int>.empty():[(this.centerIcon.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class MessagePeerReaction {
    static const CONSTRUCTOR_ID = 1370914559;
    static const SUBCLASS_OF_ID = 2943591077;
    final classType = "constructor";
    final ID = 1370914559;
	bool big;
	bool unread;
	var peerId;
	String reaction;


	MessagePeerReaction({required this.big, required this.unread, required this.peerId, required this.reaction});

	static MessagePeerReaction fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final big = false;final unread = false;var peerId = reader.tgReadObject();var reaction = reader.tgReadString();		return new MessagePeerReaction(big : big, unread : unread, peerId : peerId, reaction : reaction);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1370914559,4),[0,0,0,0],(this.peerId.getBytes() as List<int>),serializeBytes(this.reaction),].expand((element) => element).toList();}

}

class GroupCallStreamChannel {
    static const CONSTRUCTOR_ID = 2162903215;
    static const SUBCLASS_OF_ID = 3712266840;
    final classType = "constructor";
    final ID = 2162903215;
	int channel;
	int scale;
	BigInt lastTimestampMs;


	GroupCallStreamChannel({required this.channel, required this.scale, required this.lastTimestampMs});

	static GroupCallStreamChannel fromReader(BinaryReader reader) {
	var temp,len;var channel = reader.readInt();var scale = reader.readInt();var lastTimestampMs = reader.readLong();		return new GroupCallStreamChannel(channel : channel, scale : scale, lastTimestampMs : lastTimestampMs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2162903215,4),readBufferFromBigInt(this.channel,4,little:true,signed:true),readBufferFromBigInt(this.scale,4,little:true,signed:true),readBufferFromBigInt(this.lastTimestampMs,8,little:true,signed:true),].expand((element) => element).toList();}

}

class AttachMenuBotIconColor {
    static const CONSTRUCTOR_ID = 1165423600;
    static const SUBCLASS_OF_ID = 3198471018;
    final classType = "constructor";
    final ID = 1165423600;
	String name;
	int color;


	AttachMenuBotIconColor({required this.name, required this.color});

	static AttachMenuBotIconColor fromReader(BinaryReader reader) {
	var temp,len;var name = reader.tgReadString();var color = reader.readInt();		return new AttachMenuBotIconColor(name : name, color : color);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1165423600,4),serializeBytes(this.name),readBufferFromBigInt(this.color,4,little:true,signed:true),].expand((element) => element).toList();}

}

class AttachMenuBotIcon {
    static const CONSTRUCTOR_ID = 2997303403;
    static const SUBCLASS_OF_ID = 2152219989;
    final classType = "constructor";
    final ID = 2997303403;
	String name;
	var icon;
	List<dynamic> colors;


	AttachMenuBotIcon({required this.name, required this.icon, required this.colors});

	static AttachMenuBotIcon fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var name = reader.tgReadString();var icon = reader.tgReadObject();var colors;if ((flags & 1)==1){reader.readInt();
List<dynamic> colors = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		colors.add(reader.tgReadObject());
} } else {colors=null;}		return new AttachMenuBotIcon(name : name, icon : icon, colors : colors);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2997303403,4),[0,0,0,0],serializeBytes(this.name),(this.icon.getBytes() as List<int>),(this.colors==null||this.colors==false)?new List<int>.empty():[readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.colors.length,4,little:true,signed:true),this.colors.map((x)=>(x.getBytes() as List<int>)).expand((element) => element)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class AttachMenuBot {
    static const CONSTRUCTOR_ID = 3366595794;
    static const SUBCLASS_OF_ID = 2668131398;
    final classType = "constructor";
    final ID = 3366595794;
	bool inactive;
	bool hasSettings;
	BigInt botId;
	String shortName;
	List<dynamic> peerTypes;
	List<dynamic> icons;


	AttachMenuBot({required this.inactive, required this.hasSettings, required this.botId, required this.shortName, required this.peerTypes, required this.icons});

	static AttachMenuBot fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final inactive = false;final hasSettings = false;var botId = reader.readLong();var shortName = reader.tgReadString();reader.readInt();
List<dynamic> peerTypes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		peerTypes.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> icons = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		icons.add(reader.tgReadObject());
}		return new AttachMenuBot(inactive : inactive, hasSettings : hasSettings, botId : botId, shortName : shortName, peerTypes : peerTypes, icons : icons);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3366595794,4),[0,0,0,0],readBufferFromBigInt(this.botId,8,little:true,signed:true),serializeBytes(this.shortName),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.peerTypes.length,4,little:true,signed:true),this.peerTypes.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.icons.length,4,little:true,signed:true),this.icons.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class AttachMenuBotsNotModified {
    static const CONSTRUCTOR_ID = 4057500252;
    static const SUBCLASS_OF_ID = 2217616346;
    final classType = "constructor";
    final ID = 4057500252;


	AttachMenuBotsNotModified();

	static AttachMenuBotsNotModified fromReader(BinaryReader reader) {
	var temp,len;		return new AttachMenuBotsNotModified();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4057500252,4),].expand((element) => element).toList();}

}

class AttachMenuBots {
    static const CONSTRUCTOR_ID = 1011024320;
    static const SUBCLASS_OF_ID = 2217616346;
    final classType = "constructor";
    final ID = 1011024320;
	BigInt hash;
	List<dynamic> bots;
	List<dynamic> users;


	AttachMenuBots({required this.hash, required this.bots, required this.users});

	static AttachMenuBots fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();reader.readInt();
List<dynamic> bots = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		bots.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new AttachMenuBots(hash : hash, bots : bots, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1011024320,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.bots.length,4,little:true,signed:true),this.bots.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class AttachMenuBotsBot {
    static const CONSTRUCTOR_ID = 2478794367;
    static const SUBCLASS_OF_ID = 3677587517;
    final classType = "constructor";
    final ID = 2478794367;
	var bot;
	List<dynamic> users;


	AttachMenuBotsBot({required this.bot, required this.users});

	static AttachMenuBotsBot fromReader(BinaryReader reader) {
	var temp,len;var bot = reader.tgReadObject();reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new AttachMenuBotsBot(bot : bot, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2478794367,4),(this.bot.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users.length,4,little:true,signed:true),this.users.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class WebViewResultUrl {
    static const CONSTRUCTOR_ID = 202659196;
    static const SUBCLASS_OF_ID = 2479793990;
    final classType = "constructor";
    final ID = 202659196;
	BigInt queryId;
	String url;


	WebViewResultUrl({required this.queryId, required this.url});

	static WebViewResultUrl fromReader(BinaryReader reader) {
	var temp,len;var queryId = reader.readLong();var url = reader.tgReadString();		return new WebViewResultUrl(queryId : queryId, url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(202659196,4),readBufferFromBigInt(this.queryId,8,little:true,signed:true),serializeBytes(this.url),].expand((element) => element).toList();}

}

class SimpleWebViewResultUrl {
    static const CONSTRUCTOR_ID = 2284811963;
    static const SUBCLASS_OF_ID = 367977435;
    final classType = "constructor";
    final ID = 2284811963;
	String url;


	SimpleWebViewResultUrl({required this.url});

	static SimpleWebViewResultUrl fromReader(BinaryReader reader) {
	var temp,len;var url = reader.tgReadString();		return new SimpleWebViewResultUrl(url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2284811963,4),serializeBytes(this.url),].expand((element) => element).toList();}

}

class WebViewMessageSent {
    static const CONSTRUCTOR_ID = 211046684;
    static const SUBCLASS_OF_ID = 1977914130;
    final classType = "constructor";
    final ID = 211046684;
	var msgId;


	WebViewMessageSent({required this.msgId});

	static WebViewMessageSent fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var msgId;if ((flags & 1)==1){msgId = reader.tgReadObject(); } else {msgId=null;}		return new WebViewMessageSent(msgId : msgId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(211046684,4),[0,0,0,0],(this.msgId==null||this.msgId==false)?new List<int>.empty():[(this.msgId.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class BotMenuButtonDefault {
    static const CONSTRUCTOR_ID = 1966318984;
    static const SUBCLASS_OF_ID = 1282522428;
    final classType = "constructor";
    final ID = 1966318984;


	BotMenuButtonDefault();

	static BotMenuButtonDefault fromReader(BinaryReader reader) {
	var temp,len;		return new BotMenuButtonDefault();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1966318984,4),].expand((element) => element).toList();}

}

class BotMenuButtonCommands {
    static const CONSTRUCTOR_ID = 1113113093;
    static const SUBCLASS_OF_ID = 1282522428;
    final classType = "constructor";
    final ID = 1113113093;


	BotMenuButtonCommands();

	static BotMenuButtonCommands fromReader(BinaryReader reader) {
	var temp,len;		return new BotMenuButtonCommands();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1113113093,4),].expand((element) => element).toList();}

}

class BotMenuButton {
    static const CONSTRUCTOR_ID = 3350559974;
    static const SUBCLASS_OF_ID = 1282522428;
    final classType = "constructor";
    final ID = 3350559974;
	String text;
	String url;


	BotMenuButton({required this.text, required this.url});

	static BotMenuButton fromReader(BinaryReader reader) {
	var temp,len;var text = reader.tgReadString();var url = reader.tgReadString();		return new BotMenuButton(text : text, url : url);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3350559974,4),serializeBytes(this.text),serializeBytes(this.url),].expand((element) => element).toList();}

}

class NotificationSoundDefault {
    static const CONSTRUCTOR_ID = 2548612798;
    static const SUBCLASS_OF_ID = 4076201307;
    final classType = "constructor";
    final ID = 2548612798;


	NotificationSoundDefault();

	static NotificationSoundDefault fromReader(BinaryReader reader) {
	var temp,len;		return new NotificationSoundDefault();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2548612798,4),].expand((element) => element).toList();}

}

class NotificationSoundNone {
    static const CONSTRUCTOR_ID = 1863070943;
    static const SUBCLASS_OF_ID = 4076201307;
    final classType = "constructor";
    final ID = 1863070943;


	NotificationSoundNone();

	static NotificationSoundNone fromReader(BinaryReader reader) {
	var temp,len;		return new NotificationSoundNone();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1863070943,4),].expand((element) => element).toList();}

}

class NotificationSoundLocal {
    static const CONSTRUCTOR_ID = 2198575844;
    static const SUBCLASS_OF_ID = 4076201307;
    final classType = "constructor";
    final ID = 2198575844;
	String title;
	String data;


	NotificationSoundLocal({required this.title, required this.data});

	static NotificationSoundLocal fromReader(BinaryReader reader) {
	var temp,len;var title = reader.tgReadString();var data = reader.tgReadString();		return new NotificationSoundLocal(title : title, data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2198575844,4),serializeBytes(this.title),serializeBytes(this.data),].expand((element) => element).toList();}

}

class NotificationSoundRingtone {
    static const CONSTRUCTOR_ID = 4285300809;
    static const SUBCLASS_OF_ID = 4076201307;
    final classType = "constructor";
    final ID = 4285300809;
	BigInt id;


	NotificationSoundRingtone({required this.id});

	static NotificationSoundRingtone fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();		return new NotificationSoundRingtone(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4285300809,4),readBufferFromBigInt(this.id,8,little:true,signed:true),].expand((element) => element).toList();}

}

class AttachMenuPeerTypeSameBotPM {
    static const CONSTRUCTOR_ID = 2104224014;
    static const SUBCLASS_OF_ID = 3520628432;
    final classType = "constructor";
    final ID = 2104224014;


	AttachMenuPeerTypeSameBotPM();

	static AttachMenuPeerTypeSameBotPM fromReader(BinaryReader reader) {
	var temp,len;		return new AttachMenuPeerTypeSameBotPM();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2104224014,4),].expand((element) => element).toList();}

}

class AttachMenuPeerTypeBotPM {
    static const CONSTRUCTOR_ID = 3274439194;
    static const SUBCLASS_OF_ID = 3520628432;
    final classType = "constructor";
    final ID = 3274439194;


	AttachMenuPeerTypeBotPM();

	static AttachMenuPeerTypeBotPM fromReader(BinaryReader reader) {
	var temp,len;		return new AttachMenuPeerTypeBotPM();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3274439194,4),].expand((element) => element).toList();}

}

class AttachMenuPeerTypePM {
    static const CONSTRUCTOR_ID = 4047950623;
    static const SUBCLASS_OF_ID = 3520628432;
    final classType = "constructor";
    final ID = 4047950623;


	AttachMenuPeerTypePM();

	static AttachMenuPeerTypePM fromReader(BinaryReader reader) {
	var temp,len;		return new AttachMenuPeerTypePM();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4047950623,4),].expand((element) => element).toList();}

}

class AttachMenuPeerTypeChat {
    static const CONSTRUCTOR_ID = 84480319;
    static const SUBCLASS_OF_ID = 3520628432;
    final classType = "constructor";
    final ID = 84480319;


	AttachMenuPeerTypeChat();

	static AttachMenuPeerTypeChat fromReader(BinaryReader reader) {
	var temp,len;		return new AttachMenuPeerTypeChat();
	}
	List<int> getBytes(){return [readBufferFromBigInt(84480319,4),].expand((element) => element).toList();}

}

class AttachMenuPeerTypeBroadcast {
    static const CONSTRUCTOR_ID = 2080104188;
    static const SUBCLASS_OF_ID = 3520628432;
    final classType = "constructor";
    final ID = 2080104188;


	AttachMenuPeerTypeBroadcast();

	static AttachMenuPeerTypeBroadcast fromReader(BinaryReader reader) {
	var temp,len;		return new AttachMenuPeerTypeBroadcast();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2080104188,4),].expand((element) => element).toList();}

}

class InputInvoiceMessage {
    static const CONSTRUCTOR_ID = 3317000281;
    static const SUBCLASS_OF_ID = 1919851518;
    final classType = "constructor";
    final ID = 3317000281;
	var peer;
	int msgId;


	InputInvoiceMessage({required this.peer, required this.msgId});

	static InputInvoiceMessage fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();		return new InputInvoiceMessage(peer : peer, msgId : msgId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3317000281,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),].expand((element) => element).toList();}

}

class InputInvoiceSlug {
    static const CONSTRUCTOR_ID = 3274099439;
    static const SUBCLASS_OF_ID = 1919851518;
    final classType = "constructor";
    final ID = 3274099439;
	String slug;


	InputInvoiceSlug({required this.slug});

	static InputInvoiceSlug fromReader(BinaryReader reader) {
	var temp,len;var slug = reader.tgReadString();		return new InputInvoiceSlug(slug : slug);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3274099439,4),serializeBytes(this.slug),].expand((element) => element).toList();}

}

class ResPQ {
    static const CONSTRUCTOR_ID = 85337187;
    static const SUBCLASS_OF_ID = 2020181688;
    final classType = "constructor";
    final ID = 85337187;
	BigInt nonce;
	BigInt serverNonce;
	List<int> pq;
	List<BigInt> serverPublicKeyFingerprints;


	ResPQ({required this.nonce, required this.serverNonce, required this.pq, required this.serverPublicKeyFingerprints});

	static ResPQ fromReader(BinaryReader reader) {
	var temp,len;var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var pq = reader.tgReadBytes();reader.readInt();
List<BigInt> serverPublicKeyFingerprints = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		serverPublicKeyFingerprints.add(reader.readLong());
}		return new ResPQ(nonce : nonce, serverNonce : serverNonce, pq : pq, serverPublicKeyFingerprints : serverPublicKeyFingerprints);
	}
	List<int> getBytes(){return [readBufferFromBigInt(85337187,4),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),serializeBytes(this.pq),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.serverPublicKeyFingerprints.length,4,little:true,signed:true),this.serverPublicKeyFingerprints.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class PQInnerData {
    static const CONSTRUCTOR_ID = 2211011308;
    static const SUBCLASS_OF_ID = 1097864055;
    final classType = "constructor";
    final ID = 2211011308;
	List<int> pq;
	List<int> p;
	List<int> q;
	BigInt nonce;
	BigInt serverNonce;
	BigInt newNonce;


	PQInnerData({required this.pq, required this.p, required this.q, required this.nonce, required this.serverNonce, required this.newNonce});

	static PQInnerData fromReader(BinaryReader reader) {
	var temp,len;var pq = reader.tgReadBytes();var p = reader.tgReadBytes();var q = reader.tgReadBytes();var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var newNonce = reader.readLargeInt(256);		return new PQInnerData(pq : pq, p : p, q : q, nonce : nonce, serverNonce : serverNonce, newNonce : newNonce);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2211011308,4),serializeBytes(this.pq),serializeBytes(this.p),serializeBytes(this.q),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),readBufferFromBigInt(this.newNonce,32,little:true,signed:true),].expand((element) => element).toList();}

}

class PQInnerDataDc {
    static const CONSTRUCTOR_ID = 2851430293;
    static const SUBCLASS_OF_ID = 1097864055;
    final classType = "constructor";
    final ID = 2851430293;
	List<int> pq;
	List<int> p;
	List<int> q;
	BigInt nonce;
	BigInt serverNonce;
	BigInt newNonce;
	int dc;


	PQInnerDataDc({required this.pq, required this.p, required this.q, required this.nonce, required this.serverNonce, required this.newNonce, required this.dc});

	static PQInnerDataDc fromReader(BinaryReader reader) {
	var temp,len;var pq = reader.tgReadBytes();var p = reader.tgReadBytes();var q = reader.tgReadBytes();var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var newNonce = reader.readLargeInt(256);var dc = reader.readInt();		return new PQInnerDataDc(pq : pq, p : p, q : q, nonce : nonce, serverNonce : serverNonce, newNonce : newNonce, dc : dc);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2851430293,4),serializeBytes(this.pq),serializeBytes(this.p),serializeBytes(this.q),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),readBufferFromBigInt(this.newNonce,32,little:true,signed:true),readBufferFromBigInt(this.dc,4,little:true,signed:true),].expand((element) => element).toList();}

}

class PQInnerDataTemp {
    static const CONSTRUCTOR_ID = 1013613780;
    static const SUBCLASS_OF_ID = 1097864055;
    final classType = "constructor";
    final ID = 1013613780;
	List<int> pq;
	List<int> p;
	List<int> q;
	BigInt nonce;
	BigInt serverNonce;
	BigInt newNonce;
	int expiresIn;


	PQInnerDataTemp({required this.pq, required this.p, required this.q, required this.nonce, required this.serverNonce, required this.newNonce, required this.expiresIn});

	static PQInnerDataTemp fromReader(BinaryReader reader) {
	var temp,len;var pq = reader.tgReadBytes();var p = reader.tgReadBytes();var q = reader.tgReadBytes();var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var newNonce = reader.readLargeInt(256);var expiresIn = reader.readInt();		return new PQInnerDataTemp(pq : pq, p : p, q : q, nonce : nonce, serverNonce : serverNonce, newNonce : newNonce, expiresIn : expiresIn);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1013613780,4),serializeBytes(this.pq),serializeBytes(this.p),serializeBytes(this.q),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),readBufferFromBigInt(this.newNonce,32,little:true,signed:true),readBufferFromBigInt(this.expiresIn,4,little:true,signed:true),].expand((element) => element).toList();}

}

class PQInnerDataTempDc {
    static const CONSTRUCTOR_ID = 1459478408;
    static const SUBCLASS_OF_ID = 1097864055;
    final classType = "constructor";
    final ID = 1459478408;
	List<int> pq;
	List<int> p;
	List<int> q;
	BigInt nonce;
	BigInt serverNonce;
	BigInt newNonce;
	int dc;
	int expiresIn;


	PQInnerDataTempDc({required this.pq, required this.p, required this.q, required this.nonce, required this.serverNonce, required this.newNonce, required this.dc, required this.expiresIn});

	static PQInnerDataTempDc fromReader(BinaryReader reader) {
	var temp,len;var pq = reader.tgReadBytes();var p = reader.tgReadBytes();var q = reader.tgReadBytes();var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var newNonce = reader.readLargeInt(256);var dc = reader.readInt();var expiresIn = reader.readInt();		return new PQInnerDataTempDc(pq : pq, p : p, q : q, nonce : nonce, serverNonce : serverNonce, newNonce : newNonce, dc : dc, expiresIn : expiresIn);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1459478408,4),serializeBytes(this.pq),serializeBytes(this.p),serializeBytes(this.q),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),readBufferFromBigInt(this.newNonce,32,little:true,signed:true),readBufferFromBigInt(this.dc,4,little:true,signed:true),readBufferFromBigInt(this.expiresIn,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ServerDHParamsFail {
    static const CONSTRUCTOR_ID = 2043348061;
    static const SUBCLASS_OF_ID = 2786626974;
    final classType = "constructor";
    final ID = 2043348061;
	BigInt nonce;
	BigInt serverNonce;
	BigInt newNonceHash;


	ServerDHParamsFail({required this.nonce, required this.serverNonce, required this.newNonceHash});

	static ServerDHParamsFail fromReader(BinaryReader reader) {
	var temp,len;var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var newNonceHash = reader.readLargeInt(128);		return new ServerDHParamsFail(nonce : nonce, serverNonce : serverNonce, newNonceHash : newNonceHash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2043348061,4),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),readBufferFromBigInt(this.newNonceHash,16,little:true,signed:true),].expand((element) => element).toList();}

}

class ServerDHParamsOk {
    static const CONSTRUCTOR_ID = 3504867164;
    static const SUBCLASS_OF_ID = 2786626974;
    final classType = "constructor";
    final ID = 3504867164;
	BigInt nonce;
	BigInt serverNonce;
	List<int> encryptedAnswer;


	ServerDHParamsOk({required this.nonce, required this.serverNonce, required this.encryptedAnswer});

	static ServerDHParamsOk fromReader(BinaryReader reader) {
	var temp,len;var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var encryptedAnswer = reader.tgReadBytes();		return new ServerDHParamsOk(nonce : nonce, serverNonce : serverNonce, encryptedAnswer : encryptedAnswer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3504867164,4),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),serializeBytes(this.encryptedAnswer),].expand((element) => element).toList();}

}

class ServerDHInnerData {
    static const CONSTRUCTOR_ID = 3045658042;
    static const SUBCLASS_OF_ID = 3332007868;
    final classType = "constructor";
    final ID = 3045658042;
	BigInt nonce;
	BigInt serverNonce;
	int g;
	List<int> dhPrime;
	List<int> gA;
	int serverTime;


	ServerDHInnerData({required this.nonce, required this.serverNonce, required this.g, required this.dhPrime, required this.gA, required this.serverTime});

	static ServerDHInnerData fromReader(BinaryReader reader) {
	var temp,len;var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var g = reader.readInt();var dhPrime = reader.tgReadBytes();var gA = reader.tgReadBytes();var serverTime = reader.readInt();		return new ServerDHInnerData(nonce : nonce, serverNonce : serverNonce, g : g, dhPrime : dhPrime, gA : gA, serverTime : serverTime);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3045658042,4),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),readBufferFromBigInt(this.g,4,little:true,signed:true),serializeBytes(this.dhPrime),serializeBytes(this.gA),readBufferFromBigInt(this.serverTime,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ClientDHInnerData {
    static const CONSTRUCTOR_ID = 1715713620;
    static const SUBCLASS_OF_ID = 4176408426;
    final classType = "constructor";
    final ID = 1715713620;
	BigInt nonce;
	BigInt serverNonce;
	BigInt retryId;
	List<int> gB;


	ClientDHInnerData({required this.nonce, required this.serverNonce, required this.retryId, required this.gB});

	static ClientDHInnerData fromReader(BinaryReader reader) {
	var temp,len;var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var retryId = reader.readLong();var gB = reader.tgReadBytes();		return new ClientDHInnerData(nonce : nonce, serverNonce : serverNonce, retryId : retryId, gB : gB);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1715713620,4),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),readBufferFromBigInt(this.retryId,8,little:true,signed:true),serializeBytes(this.gB),].expand((element) => element).toList();}

}

class DhGenOk {
    static const CONSTRUCTOR_ID = 1003222836;
    static const SUBCLASS_OF_ID = 1440574683;
    final classType = "constructor";
    final ID = 1003222836;
	BigInt nonce;
	BigInt serverNonce;
	BigInt newNonceHash1;


	DhGenOk({required this.nonce, required this.serverNonce, required this.newNonceHash1});

	static DhGenOk fromReader(BinaryReader reader) {
	var temp,len;var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var newNonceHash1 = reader.readLargeInt(128);		return new DhGenOk(nonce : nonce, serverNonce : serverNonce, newNonceHash1 : newNonceHash1);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1003222836,4),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),readBufferFromBigInt(this.newNonceHash1,16,little:true,signed:true),].expand((element) => element).toList();}

}

class DhGenRetry {
    static const CONSTRUCTOR_ID = 1188831161;
    static const SUBCLASS_OF_ID = 1440574683;
    final classType = "constructor";
    final ID = 1188831161;
	BigInt nonce;
	BigInt serverNonce;
	BigInt newNonceHash2;


	DhGenRetry({required this.nonce, required this.serverNonce, required this.newNonceHash2});

	static DhGenRetry fromReader(BinaryReader reader) {
	var temp,len;var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var newNonceHash2 = reader.readLargeInt(128);		return new DhGenRetry(nonce : nonce, serverNonce : serverNonce, newNonceHash2 : newNonceHash2);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1188831161,4),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),readBufferFromBigInt(this.newNonceHash2,16,little:true,signed:true),].expand((element) => element).toList();}

}

class DhGenFail {
    static const CONSTRUCTOR_ID = 2795351554;
    static const SUBCLASS_OF_ID = 1440574683;
    final classType = "constructor";
    final ID = 2795351554;
	BigInt nonce;
	BigInt serverNonce;
	BigInt newNonceHash3;


	DhGenFail({required this.nonce, required this.serverNonce, required this.newNonceHash3});

	static DhGenFail fromReader(BinaryReader reader) {
	var temp,len;var nonce = reader.readLargeInt(128);var serverNonce = reader.readLargeInt(128);var newNonceHash3 = reader.readLargeInt(128);		return new DhGenFail(nonce : nonce, serverNonce : serverNonce, newNonceHash3 : newNonceHash3);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2795351554,4),readBufferFromBigInt(this.nonce,16,little:true,signed:true),readBufferFromBigInt(this.serverNonce,16,little:true,signed:true),readBufferFromBigInt(this.newNonceHash3,16,little:true,signed:true),].expand((element) => element).toList();}

}

class DestroyAuthKeyOk {
    static const CONSTRUCTOR_ID = 4133544404;
    static const SUBCLASS_OF_ID = 2190599822;
    final classType = "constructor";
    final ID = 4133544404;


	DestroyAuthKeyOk();

	static DestroyAuthKeyOk fromReader(BinaryReader reader) {
	var temp,len;		return new DestroyAuthKeyOk();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4133544404,4),].expand((element) => element).toList();}

}

class DestroyAuthKeyNone {
    static const CONSTRUCTOR_ID = 178201177;
    static const SUBCLASS_OF_ID = 2190599822;
    final classType = "constructor";
    final ID = 178201177;


	DestroyAuthKeyNone();

	static DestroyAuthKeyNone fromReader(BinaryReader reader) {
	var temp,len;		return new DestroyAuthKeyNone();
	}
	List<int> getBytes(){return [readBufferFromBigInt(178201177,4),].expand((element) => element).toList();}

}

class DestroyAuthKeyFail {
    static const CONSTRUCTOR_ID = 3926956819;
    static const SUBCLASS_OF_ID = 2190599822;
    final classType = "constructor";
    final ID = 3926956819;


	DestroyAuthKeyFail();

	static DestroyAuthKeyFail fromReader(BinaryReader reader) {
	var temp,len;		return new DestroyAuthKeyFail();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3926956819,4),].expand((element) => element).toList();}

}

class MsgsAck {
    static const CONSTRUCTOR_ID = 1658238041;
    static const SUBCLASS_OF_ID = 2188801988;
    final classType = "constructor";
    final ID = 1658238041;
	List<BigInt> msgIds;


	MsgsAck({required this.msgIds});

	static MsgsAck fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> msgIds = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		msgIds.add(reader.readLong());
}		return new MsgsAck(msgIds : msgIds);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1658238041,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.msgIds.length,4,little:true,signed:true),this.msgIds.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class BadMsgNotification {
    static const CONSTRUCTOR_ID = 2817521681;
    static const SUBCLASS_OF_ID = 3468337495;
    final classType = "constructor";
    final ID = 2817521681;
	BigInt badMsgId;
	int badMsgSeqno;
	int errorCode;


	BadMsgNotification({required this.badMsgId, required this.badMsgSeqno, required this.errorCode});

	static BadMsgNotification fromReader(BinaryReader reader) {
	var temp,len;var badMsgId = reader.readLong();var badMsgSeqno = reader.readInt();var errorCode = reader.readInt();		return new BadMsgNotification(badMsgId : badMsgId, badMsgSeqno : badMsgSeqno, errorCode : errorCode);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2817521681,4),readBufferFromBigInt(this.badMsgId,8,little:true,signed:true),readBufferFromBigInt(this.badMsgSeqno,4,little:true,signed:true),readBufferFromBigInt(this.errorCode,4,little:true,signed:true),].expand((element) => element).toList();}

}

class BadServerSalt {
    static const CONSTRUCTOR_ID = 3987424379;
    static const SUBCLASS_OF_ID = 3468337495;
    final classType = "constructor";
    final ID = 3987424379;
	BigInt badMsgId;
	int badMsgSeqno;
	int errorCode;
	BigInt newServerSalt;


	BadServerSalt({required this.badMsgId, required this.badMsgSeqno, required this.errorCode, required this.newServerSalt});

	static BadServerSalt fromReader(BinaryReader reader) {
	var temp,len;var badMsgId = reader.readLong();var badMsgSeqno = reader.readInt();var errorCode = reader.readInt();var newServerSalt = reader.readLong();		return new BadServerSalt(badMsgId : badMsgId, badMsgSeqno : badMsgSeqno, errorCode : errorCode, newServerSalt : newServerSalt);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3987424379,4),readBufferFromBigInt(this.badMsgId,8,little:true,signed:true),readBufferFromBigInt(this.badMsgSeqno,4,little:true,signed:true),readBufferFromBigInt(this.errorCode,4,little:true,signed:true),readBufferFromBigInt(this.newServerSalt,8,little:true,signed:true),].expand((element) => element).toList();}

}

class MsgsStateReq {
    static const CONSTRUCTOR_ID = 3664378706;
    static const SUBCLASS_OF_ID = 418389456;
    final classType = "constructor";
    final ID = 3664378706;
	List<BigInt> msgIds;


	MsgsStateReq({required this.msgIds});

	static MsgsStateReq fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> msgIds = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		msgIds.add(reader.readLong());
}		return new MsgsStateReq(msgIds : msgIds);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3664378706,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.msgIds.length,4,little:true,signed:true),this.msgIds.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class MsgsStateInfo {
    static const CONSTRUCTOR_ID = 81704317;
    static const SUBCLASS_OF_ID = 118098532;
    final classType = "constructor";
    final ID = 81704317;
	BigInt reqMsgId;
	String info;


	MsgsStateInfo({required this.reqMsgId, required this.info});

	static MsgsStateInfo fromReader(BinaryReader reader) {
	var temp,len;var reqMsgId = reader.readLong();var info = reader.tgReadString();		return new MsgsStateInfo(reqMsgId : reqMsgId, info : info);
	}
	List<int> getBytes(){return [readBufferFromBigInt(81704317,4),readBufferFromBigInt(this.reqMsgId,8,little:true,signed:true),serializeBytes(this.info),].expand((element) => element).toList();}

}

class MsgsAllInfo {
    static const CONSTRUCTOR_ID = 2361446705;
    static const SUBCLASS_OF_ID = 4203727700;
    final classType = "constructor";
    final ID = 2361446705;
	List<BigInt> msgIds;
	String info;


	MsgsAllInfo({required this.msgIds, required this.info});

	static MsgsAllInfo fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> msgIds = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		msgIds.add(reader.readLong());
}var info = reader.tgReadString();		return new MsgsAllInfo(msgIds : msgIds, info : info);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2361446705,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.msgIds.length,4,little:true,signed:true),this.msgIds.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),serializeBytes(this.info),].expand((element) => element).toList();}

}

class MsgDetailedInfo {
    static const CONSTRUCTOR_ID = 661470918;
    static const SUBCLASS_OF_ID = 1597167086;
    final classType = "constructor";
    final ID = 661470918;
	BigInt msgId;
	BigInt answerMsgId;
	int bytes;
	int status;


	MsgDetailedInfo({required this.msgId, required this.answerMsgId, required this.bytes, required this.status});

	static MsgDetailedInfo fromReader(BinaryReader reader) {
	var temp,len;var msgId = reader.readLong();var answerMsgId = reader.readLong();var bytes = reader.readInt();var status = reader.readInt();		return new MsgDetailedInfo(msgId : msgId, answerMsgId : answerMsgId, bytes : bytes, status : status);
	}
	List<int> getBytes(){return [readBufferFromBigInt(661470918,4),readBufferFromBigInt(this.msgId,8,little:true,signed:true),readBufferFromBigInt(this.answerMsgId,8,little:true,signed:true),readBufferFromBigInt(this.bytes,4,little:true,signed:true),readBufferFromBigInt(this.status,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MsgNewDetailedInfo {
    static const CONSTRUCTOR_ID = 2157819615;
    static const SUBCLASS_OF_ID = 1597167086;
    final classType = "constructor";
    final ID = 2157819615;
	BigInt answerMsgId;
	int bytes;
	int status;


	MsgNewDetailedInfo({required this.answerMsgId, required this.bytes, required this.status});

	static MsgNewDetailedInfo fromReader(BinaryReader reader) {
	var temp,len;var answerMsgId = reader.readLong();var bytes = reader.readInt();var status = reader.readInt();		return new MsgNewDetailedInfo(answerMsgId : answerMsgId, bytes : bytes, status : status);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2157819615,4),readBufferFromBigInt(this.answerMsgId,8,little:true,signed:true),readBufferFromBigInt(this.bytes,4,little:true,signed:true),readBufferFromBigInt(this.status,4,little:true,signed:true),].expand((element) => element).toList();}

}

class MsgResendReq {
    static const CONSTRUCTOR_ID = 2105940488;
    static const SUBCLASS_OF_ID = 33703188;
    final classType = "constructor";
    final ID = 2105940488;
	List<BigInt> msgIds;


	MsgResendReq({required this.msgIds});

	static MsgResendReq fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<BigInt> msgIds = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		msgIds.add(reader.readLong());
}		return new MsgResendReq(msgIds : msgIds);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2105940488,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.msgIds.length,4,little:true,signed:true),this.msgIds.map((x)=>readBufferFromBigInt(x,8,little:true,signed:true)).expand((element) => element),].expand((element) => element).toList();}

}

class RpcError {
    static const CONSTRUCTOR_ID = 558156313;
    static const SUBCLASS_OF_ID = 1243079269;
    final classType = "constructor";
    final ID = 558156313;
	int errorCode;
	String errorMessage;


	RpcError({required this.errorCode, required this.errorMessage});

	static RpcError fromReader(BinaryReader reader) {
	var temp,len;var errorCode = reader.readInt();var errorMessage = reader.tgReadString();		return new RpcError(errorCode : errorCode, errorMessage : errorMessage);
	}
	List<int> getBytes(){return [readBufferFromBigInt(558156313,4),readBufferFromBigInt(this.errorCode,4,little:true,signed:true),serializeBytes(this.errorMessage),].expand((element) => element).toList();}

}

class RpcAnswerUnknown {
    static const CONSTRUCTOR_ID = 1579864942;
    static const SUBCLASS_OF_ID = 1271559536;
    final classType = "constructor";
    final ID = 1579864942;


	RpcAnswerUnknown();

	static RpcAnswerUnknown fromReader(BinaryReader reader) {
	var temp,len;		return new RpcAnswerUnknown();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1579864942,4),].expand((element) => element).toList();}

}

class RpcAnswerDroppedRunning {
    static const CONSTRUCTOR_ID = 3447252358;
    static const SUBCLASS_OF_ID = 1271559536;
    final classType = "constructor";
    final ID = 3447252358;


	RpcAnswerDroppedRunning();

	static RpcAnswerDroppedRunning fromReader(BinaryReader reader) {
	var temp,len;		return new RpcAnswerDroppedRunning();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3447252358,4),].expand((element) => element).toList();}

}

class RpcAnswerDropped {
    static const CONSTRUCTOR_ID = 2755319991;
    static const SUBCLASS_OF_ID = 1271559536;
    final classType = "constructor";
    final ID = 2755319991;
	BigInt msgId;
	int seqNo;
	int bytes;


	RpcAnswerDropped({required this.msgId, required this.seqNo, required this.bytes});

	static RpcAnswerDropped fromReader(BinaryReader reader) {
	var temp,len;var msgId = reader.readLong();var seqNo = reader.readInt();var bytes = reader.readInt();		return new RpcAnswerDropped(msgId : msgId, seqNo : seqNo, bytes : bytes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2755319991,4),readBufferFromBigInt(this.msgId,8,little:true,signed:true),readBufferFromBigInt(this.seqNo,4,little:true,signed:true),readBufferFromBigInt(this.bytes,4,little:true,signed:true),].expand((element) => element).toList();}

}

class FutureSalt {
    static const CONSTRUCTOR_ID = 155834844;
    static const SUBCLASS_OF_ID = 1172651471;
    final classType = "constructor";
    final ID = 155834844;
	int validSince;
	int validUntil;
	BigInt salt;


	FutureSalt({required this.validSince, required this.validUntil, required this.salt});

	static FutureSalt fromReader(BinaryReader reader) {
	var temp,len;var validSince = reader.readInt();var validUntil = reader.readInt();var salt = reader.readLong();		return new FutureSalt(validSince : validSince, validUntil : validUntil, salt : salt);
	}
	List<int> getBytes(){return [readBufferFromBigInt(155834844,4),readBufferFromBigInt(this.validSince,4,little:true,signed:true),readBufferFromBigInt(this.validUntil,4,little:true,signed:true),readBufferFromBigInt(this.salt,8,little:true,signed:true),].expand((element) => element).toList();}

}

class FutureSalts {
    static const CONSTRUCTOR_ID = 2924480661;
    static const SUBCLASS_OF_ID = 277935383;
    final classType = "constructor";
    final ID = 2924480661;
	BigInt reqMsgId;
	int now;
	List<dynamic> salts;


	FutureSalts({required this.reqMsgId, required this.now, required this.salts});

	static FutureSalts fromReader(BinaryReader reader) {
	var temp,len;var reqMsgId = reader.readLong();var now = reader.readInt();List<dynamic> salts = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		salts.add(FutureSalt.fromReader(reader));
}		return new FutureSalts(reqMsgId : reqMsgId, now : now, salts : salts);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2924480661,4),readBufferFromBigInt(this.reqMsgId,8,little:true,signed:true),readBufferFromBigInt(this.now,4,little:true,signed:true),readBufferFromBigInt(this.salts.length,4,little:true,signed:true),this.salts.map((x)=>(x.getBytes() as List<int>).sublist(4)).expand((element) => element),].expand((element) => element).toList();}

}

class Pong {
    static const CONSTRUCTOR_ID = 880243653;
    static const SUBCLASS_OF_ID = 2171268721;
    final classType = "constructor";
    final ID = 880243653;
	BigInt msgId;
	BigInt pingId;


	Pong({required this.msgId, required this.pingId});

	static Pong fromReader(BinaryReader reader) {
	var temp,len;var msgId = reader.readLong();var pingId = reader.readLong();		return new Pong(msgId : msgId, pingId : pingId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(880243653,4),readBufferFromBigInt(this.msgId,8,little:true,signed:true),readBufferFromBigInt(this.pingId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class DestroySessionOk {
    static const CONSTRUCTOR_ID = 3793765884;
    static const SUBCLASS_OF_ID = 2936858557;
    final classType = "constructor";
    final ID = 3793765884;
	BigInt sessionId;


	DestroySessionOk({required this.sessionId});

	static DestroySessionOk fromReader(BinaryReader reader) {
	var temp,len;var sessionId = reader.readLong();		return new DestroySessionOk(sessionId : sessionId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3793765884,4),readBufferFromBigInt(this.sessionId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class DestroySessionNone {
    static const CONSTRUCTOR_ID = 1658015945;
    static const SUBCLASS_OF_ID = 2936858557;
    final classType = "constructor";
    final ID = 1658015945;
	BigInt sessionId;


	DestroySessionNone({required this.sessionId});

	static DestroySessionNone fromReader(BinaryReader reader) {
	var temp,len;var sessionId = reader.readLong();		return new DestroySessionNone(sessionId : sessionId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1658015945,4),readBufferFromBigInt(this.sessionId,8,little:true,signed:true),].expand((element) => element).toList();}

}

class NewSessionCreated {
    static const CONSTRUCTOR_ID = 2663516424;
    static const SUBCLASS_OF_ID = 1359818801;
    final classType = "constructor";
    final ID = 2663516424;
	BigInt firstMsgId;
	BigInt uniqueId;
	BigInt serverSalt;


	NewSessionCreated({required this.firstMsgId, required this.uniqueId, required this.serverSalt});

	static NewSessionCreated fromReader(BinaryReader reader) {
	var temp,len;var firstMsgId = reader.readLong();var uniqueId = reader.readLong();var serverSalt = reader.readLong();		return new NewSessionCreated(firstMsgId : firstMsgId, uniqueId : uniqueId, serverSalt : serverSalt);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2663516424,4),readBufferFromBigInt(this.firstMsgId,8,little:true,signed:true),readBufferFromBigInt(this.uniqueId,8,little:true,signed:true),readBufferFromBigInt(this.serverSalt,8,little:true,signed:true),].expand((element) => element).toList();}

}

class HttpWait {
    static const CONSTRUCTOR_ID = 2459514271;
    static const SUBCLASS_OF_ID = 310685398;
    final classType = "constructor";
    final ID = 2459514271;
	int maxDelay;
	int waitAfter;
	int maxWait;


	HttpWait({required this.maxDelay, required this.waitAfter, required this.maxWait});

	static HttpWait fromReader(BinaryReader reader) {
	var temp,len;var maxDelay = reader.readInt();var waitAfter = reader.readInt();var maxWait = reader.readInt();		return new HttpWait(maxDelay : maxDelay, waitAfter : waitAfter, maxWait : maxWait);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2459514271,4),readBufferFromBigInt(this.maxDelay,4,little:true,signed:true),readBufferFromBigInt(this.waitAfter,4,little:true,signed:true),readBufferFromBigInt(this.maxWait,4,little:true,signed:true),].expand((element) => element).toList();}

}

class IpPort {
    static const CONSTRUCTOR_ID = 3560156531;
    static const SUBCLASS_OF_ID = 2728408870;
    final classType = "constructor";
    final ID = 3560156531;
	int ipv4;
	int port;


	IpPort({required this.ipv4, required this.port});

	static IpPort fromReader(BinaryReader reader) {
	var temp,len;var ipv4 = reader.readInt();var port = reader.readInt();		return new IpPort(ipv4 : ipv4, port : port);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3560156531,4),readBufferFromBigInt(this.ipv4,4,little:true,signed:true),readBufferFromBigInt(this.port,4,little:true,signed:true),].expand((element) => element).toList();}

}

class IpPortSecret {
    static const CONSTRUCTOR_ID = 932718150;
    static const SUBCLASS_OF_ID = 2728408870;
    final classType = "constructor";
    final ID = 932718150;
	int ipv4;
	int port;
	List<int> secret;


	IpPortSecret({required this.ipv4, required this.port, required this.secret});

	static IpPortSecret fromReader(BinaryReader reader) {
	var temp,len;var ipv4 = reader.readInt();var port = reader.readInt();var secret = reader.tgReadBytes();		return new IpPortSecret(ipv4 : ipv4, port : port, secret : secret);
	}
	List<int> getBytes(){return [readBufferFromBigInt(932718150,4),readBufferFromBigInt(this.ipv4,4,little:true,signed:true),readBufferFromBigInt(this.port,4,little:true,signed:true),serializeBytes(this.secret),].expand((element) => element).toList();}

}

class AccessPointRule {
    static const CONSTRUCTOR_ID = 1182381663;
    static const SUBCLASS_OF_ID = 2980880637;
    final classType = "constructor";
    final ID = 1182381663;
	String phonePrefixRules;
	int dcId;
	List<dynamic> ips;


	AccessPointRule({required this.phonePrefixRules, required this.dcId, required this.ips});

	static AccessPointRule fromReader(BinaryReader reader) {
	var temp,len;var phonePrefixRules = reader.tgReadString();var dcId = reader.readInt();List<dynamic> ips = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		ips.add(reader.tgReadObject());
}		return new AccessPointRule(phonePrefixRules : phonePrefixRules, dcId : dcId, ips : ips);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1182381663,4),serializeBytes(this.phonePrefixRules),readBufferFromBigInt(this.dcId,4,little:true,signed:true),readBufferFromBigInt(this.ips.length,4,little:true,signed:true),this.ips.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class TlsClientHello {
    static const CONSTRUCTOR_ID = 262524817;
    static const SUBCLASS_OF_ID = 3203533088;
    final classType = "constructor";
    final ID = 262524817;
	List<dynamic> blocks;


	TlsClientHello({required this.blocks});

	static TlsClientHello fromReader(BinaryReader reader) {
	var temp,len;List<dynamic> blocks = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		blocks.add(reader.tgReadObject());
}		return new TlsClientHello(blocks : blocks);
	}
	List<int> getBytes(){return [readBufferFromBigInt(262524817,4),readBufferFromBigInt(this.blocks.length,4,little:true,signed:true),this.blocks.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class TlsBlockString {
    static const CONSTRUCTOR_ID = 1488907607;
    static const SUBCLASS_OF_ID = 4044764304;
    final classType = "constructor";
    final ID = 1488907607;
	String data;


	TlsBlockString({required this.data});

	static TlsBlockString fromReader(BinaryReader reader) {
	var temp,len;var data = reader.tgReadString();		return new TlsBlockString(data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1488907607,4),serializeBytes(this.data),].expand((element) => element).toList();}

}

class TlsBlockRandom {
    static const CONSTRUCTOR_ID = 3265966728;
    static const SUBCLASS_OF_ID = 4044764304;
    final classType = "constructor";
    final ID = 3265966728;
	int length;


	TlsBlockRandom({required this.length});

	static TlsBlockRandom fromReader(BinaryReader reader) {
	var temp,len;var length = reader.readInt();		return new TlsBlockRandom(length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3265966728,4),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class TlsBlockZero {
    static const CONSTRUCTOR_ID = 3400654219;
    static const SUBCLASS_OF_ID = 4044764304;
    final classType = "constructor";
    final ID = 3400654219;
	int length;


	TlsBlockZero({required this.length});

	static TlsBlockZero fromReader(BinaryReader reader) {
	var temp,len;var length = reader.readInt();		return new TlsBlockZero(length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3400654219,4),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class TlsBlockDomain {
    static const CONSTRUCTOR_ID = 283665263;
    static const SUBCLASS_OF_ID = 4044764304;
    final classType = "constructor";
    final ID = 283665263;


	TlsBlockDomain();

	static TlsBlockDomain fromReader(BinaryReader reader) {
	var temp,len;		return new TlsBlockDomain();
	}
	List<int> getBytes(){return [readBufferFromBigInt(283665263,4),].expand((element) => element).toList();}

}

class TlsBlockGrease {
    static const CONSTRUCTOR_ID = 2623335513;
    static const SUBCLASS_OF_ID = 4044764304;
    final classType = "constructor";
    final ID = 2623335513;
	int seed;


	TlsBlockGrease({required this.seed});

	static TlsBlockGrease fromReader(BinaryReader reader) {
	var temp,len;var seed = reader.readInt();		return new TlsBlockGrease(seed : seed);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2623335513,4),readBufferFromBigInt(this.seed,4,little:true,signed:true),].expand((element) => element).toList();}

}

class TlsBlockScope {
    static const CONSTRUCTOR_ID = 3638474097;
    static const SUBCLASS_OF_ID = 4044764304;
    final classType = "constructor";
    final ID = 3638474097;
	List<dynamic> entries;


	TlsBlockScope({required this.entries});

	static TlsBlockScope fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> entries = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entries.add(reader.tgReadObject());
}		return new TlsBlockScope(entries : entries);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3638474097,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entries.length,4,little:true,signed:true),this.entries.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}