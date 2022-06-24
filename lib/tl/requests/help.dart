import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class GetConfig {
    static const CONSTRUCTOR_ID = 3304659051;
    static const SUBCLASS_OF_ID = 1201231714;
    final classType = "request";
    final ID = 3304659051;


	GetConfig();

	static GetConfig fromReader(BinaryReader reader) {
	var temp,len;		return new GetConfig();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3304659051,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetNearestDc {
    static const CONSTRUCTOR_ID = 531836966;
    static const SUBCLASS_OF_ID = 1983421984;
    final classType = "request";
    final ID = 531836966;


	GetNearestDc();

	static GetNearestDc fromReader(BinaryReader reader) {
	var temp,len;		return new GetNearestDc();
	}
	List<int> getBytes(){return [readBufferFromBigInt(531836966,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAppUpdate {
    static const CONSTRUCTOR_ID = 1378703997;
    static const SUBCLASS_OF_ID = 854462511;
    final classType = "request";
    final ID = 1378703997;
	String source;


	GetAppUpdate({required this.source});

	static GetAppUpdate fromReader(BinaryReader reader) {
	var temp,len;var source = reader.tgReadString();		return new GetAppUpdate(source : source);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1378703997,4),serializeBytes(this.source),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetInviteText {
    static const CONSTRUCTOR_ID = 1295590211;
    static const SUBCLASS_OF_ID = 3853016587;
    final classType = "request";
    final ID = 1295590211;


	GetInviteText();

	static GetInviteText fromReader(BinaryReader reader) {
	var temp,len;		return new GetInviteText();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1295590211,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetSupport {
    static const CONSTRUCTOR_ID = 2631862477;
    static const SUBCLASS_OF_ID = 193609672;
    final classType = "request";
    final ID = 2631862477;


	GetSupport();

	static GetSupport fromReader(BinaryReader reader) {
	var temp,len;		return new GetSupport();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2631862477,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAppChangelog {
    static const CONSTRUCTOR_ID = 2417028975;
    static const SUBCLASS_OF_ID = 4202248750;
    final classType = "request";
    final ID = 2417028975;
	String prevAppVersion;


	GetAppChangelog({required this.prevAppVersion});

	static GetAppChangelog fromReader(BinaryReader reader) {
	var temp,len;var prevAppVersion = reader.tgReadString();		return new GetAppChangelog(prevAppVersion : prevAppVersion);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2417028975,4),serializeBytes(this.prevAppVersion),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetBotUpdatesStatus {
    static const CONSTRUCTOR_ID = 3961704397;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 3961704397;
	int pendingUpdatesCount;
	String message;


	SetBotUpdatesStatus({required this.pendingUpdatesCount, required this.message});

	static SetBotUpdatesStatus fromReader(BinaryReader reader) {
	var temp,len;var pendingUpdatesCount = reader.readInt();var message = reader.tgReadString();		return new SetBotUpdatesStatus(pendingUpdatesCount : pendingUpdatesCount, message : message);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3961704397,4),readBufferFromBigInt(this.pendingUpdatesCount,4,little:true,signed:true),serializeBytes(this.message),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetCdnConfig {
    static const CONSTRUCTOR_ID = 1375900482;
    static const SUBCLASS_OF_ID = 2274463212;
    final classType = "request";
    final ID = 1375900482;


	GetCdnConfig();

	static GetCdnConfig fromReader(BinaryReader reader) {
	var temp,len;		return new GetCdnConfig();
	}
	List<int> getBytes(){return [readBufferFromBigInt(1375900482,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetRecentMeUrls {
    static const CONSTRUCTOR_ID = 1036054804;
    static const SUBCLASS_OF_ID = 2677659895;
    final classType = "request";
    final ID = 1036054804;
	String referer;


	GetRecentMeUrls({required this.referer});

	static GetRecentMeUrls fromReader(BinaryReader reader) {
	var temp,len;var referer = reader.tgReadString();		return new GetRecentMeUrls(referer : referer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1036054804,4),serializeBytes(this.referer),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetTermsOfServiceUpdate {
    static const CONSTRUCTOR_ID = 749019089;
    static const SUBCLASS_OF_ID = 3949960262;
    final classType = "request";
    final ID = 749019089;


	GetTermsOfServiceUpdate();

	static GetTermsOfServiceUpdate fromReader(BinaryReader reader) {
	var temp,len;		return new GetTermsOfServiceUpdate();
	}
	List<int> getBytes(){return [readBufferFromBigInt(749019089,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class AcceptTermsOfService {
    static const CONSTRUCTOR_ID = 4000511898;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 4000511898;
	var id;


	AcceptTermsOfService({required this.id});

	static AcceptTermsOfService fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();		return new AcceptTermsOfService(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4000511898,4),(this.id.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetDeepLinkInfo {
    static const CONSTRUCTOR_ID = 1072547679;
    static const SUBCLASS_OF_ID = 1508534000;
    final classType = "request";
    final ID = 1072547679;
	String path;


	GetDeepLinkInfo({required this.path});

	static GetDeepLinkInfo fromReader(BinaryReader reader) {
	var temp,len;var path = reader.tgReadString();		return new GetDeepLinkInfo(path : path);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1072547679,4),serializeBytes(this.path),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetAppConfig {
    static const CONSTRUCTOR_ID = 2559656208;
    static const SUBCLASS_OF_ID = 278193419;
    final classType = "request";
    final ID = 2559656208;


	GetAppConfig();

	static GetAppConfig fromReader(BinaryReader reader) {
	var temp,len;		return new GetAppConfig();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2559656208,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SaveAppLog {
    static const CONSTRUCTOR_ID = 1862465352;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 1862465352;
	List<dynamic> events;


	SaveAppLog({required this.events});

	static SaveAppLog fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> events = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		events.add(reader.tgReadObject());
}		return new SaveAppLog(events : events);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1862465352,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.events.length,4,little:true,signed:true),this.events.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetPassportConfig {
    static const CONSTRUCTOR_ID = 3328290056;
    static const SUBCLASS_OF_ID = 1044550453;
    final classType = "request";
    final ID = 3328290056;
	int hash;


	GetPassportConfig({required this.hash});

	static GetPassportConfig fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readInt();		return new GetPassportConfig(hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3328290056,4),readBufferFromBigInt(this.hash,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetSupportName {
    static const CONSTRUCTOR_ID = 3546343212;
    static const SUBCLASS_OF_ID = 3585326847;
    final classType = "request";
    final ID = 3546343212;


	GetSupportName();

	static GetSupportName fromReader(BinaryReader reader) {
	var temp,len;		return new GetSupportName();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3546343212,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetUserInfo {
    static const CONSTRUCTOR_ID = 59377875;
    static const SUBCLASS_OF_ID = 587564554;
    final classType = "request";
    final ID = 59377875;
	var userId;


	GetUserInfo({required this.userId});

	static GetUserInfo fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.tgReadObject();		return new GetUserInfo(userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(59377875,4),(this.userId.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class EditUserInfo {
    static const CONSTRUCTOR_ID = 1723407216;
    static const SUBCLASS_OF_ID = 587564554;
    final classType = "request";
    final ID = 1723407216;
	var userId;
	String message;
	List<dynamic> entities;


	EditUserInfo({required this.userId, required this.message, required this.entities});

	static EditUserInfo fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.tgReadObject();var message = reader.tgReadString();reader.readInt();
List<dynamic> entities = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		entities.add(reader.tgReadObject());
}		return new EditUserInfo(userId : userId, message : message, entities : entities);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1723407216,4),(this.userId.getBytes() as List<int>),serializeBytes(this.message),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.entities.length,4,little:true,signed:true),this.entities.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetPromoData {
    static const CONSTRUCTOR_ID = 3231151137;
    static const SUBCLASS_OF_ID = 3585125367;
    final classType = "request";
    final ID = 3231151137;


	GetPromoData();

	static GetPromoData fromReader(BinaryReader reader) {
	var temp,len;		return new GetPromoData();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3231151137,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class HidePromoData {
    static const CONSTRUCTOR_ID = 505748629;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 505748629;
	var peer;


	HidePromoData({required this.peer});

	static HidePromoData fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();		return new HidePromoData(peer : peer);
	}
	List<int> getBytes(){return [readBufferFromBigInt(505748629,4),(this.peer.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DismissSuggestion {
    static const CONSTRUCTOR_ID = 4111317665;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 4111317665;
	var peer;
	String suggestion;


	DismissSuggestion({required this.peer, required this.suggestion});

	static DismissSuggestion fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var suggestion = reader.tgReadString();		return new DismissSuggestion(peer : peer, suggestion : suggestion);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4111317665,4),(this.peer.getBytes() as List<int>),serializeBytes(this.suggestion),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetCountriesList {
    static const CONSTRUCTOR_ID = 1935116200;
    static const SUBCLASS_OF_ID = 1297383408;
    final classType = "request";
    final ID = 1935116200;
	String langCode;
	int hash;


	GetCountriesList({required this.langCode, required this.hash});

	static GetCountriesList fromReader(BinaryReader reader) {
	var temp,len;var langCode = reader.tgReadString();var hash = reader.readInt();		return new GetCountriesList(langCode : langCode, hash : hash);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1935116200,4),serializeBytes(this.langCode),readBufferFromBigInt(this.hash,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetPremiumPromo {
    static const CONSTRUCTOR_ID = 3088815060;
    static const SUBCLASS_OF_ID = 1462837209;
    final classType = "request";
    final ID = 3088815060;


	GetPremiumPromo();

	static GetPremiumPromo fromReader(BinaryReader reader) {
	var temp,len;		return new GetPremiumPromo();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3088815060,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}