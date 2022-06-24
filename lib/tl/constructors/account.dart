import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class PrivacyRules {
    static const CONSTRUCTOR_ID = 1352683077;
    static const SUBCLASS_OF_ID = 3042622082;
    final classType = "constructor";
    final ID = 1352683077;
	List<dynamic> rules;
	List<dynamic> chats;
	List<dynamic> users;


	PrivacyRules({required this.rules, required this.chats, required this.users});

	static PrivacyRules fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> rules = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		rules.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> chats = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		chats.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new PrivacyRules(rules : rules, chats : chats, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1352683077,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.rules!.length,4,little:true,signed:true),this.rules!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.chats!.length,4,little:true,signed:true),this.chats!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users!.length,4,little:true,signed:true),this.users!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class Authorizations {
    static const CONSTRUCTOR_ID = 1275039392;
    static const SUBCLASS_OF_ID = 200663295;
    final classType = "constructor";
    final ID = 1275039392;
	int authorizationTtlDays;
	List<dynamic> authorizations;


	Authorizations({required this.authorizationTtlDays, required this.authorizations});

	static Authorizations fromReader(BinaryReader reader) {
	var temp,len;var authorizationTtlDays = reader.readInt();reader.readInt();
List<dynamic> authorizations = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		authorizations.add(reader.tgReadObject());
}		return new Authorizations(authorizationTtlDays : authorizationTtlDays, authorizations : authorizations);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1275039392,4),readBufferFromBigInt(this.authorizationTtlDays,4,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.authorizations!.length,4,little:true,signed:true),this.authorizations!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class Password {
    static const CONSTRUCTOR_ID = 408623183;
    static const SUBCLASS_OF_ID = 1403130275;
    final classType = "constructor";
    final ID = 408623183;
	bool? hasRecovery;
	bool? hasSecureValues;
	bool? hasPassword;
	var currentAlgo;
	List<int>? srp_B;
	BigInt? srpId;
	String? hint;
	String? emailUnconfirmedPattern;
	var newAlgo;
	var newSecureAlgo;
	List<int> secureRandom;
	int? pendingResetDate;


	Password({required this.hasRecovery, required this.hasSecureValues, required this.hasPassword, required this.currentAlgo, required this.srp_B, required this.srpId, required this.hint, required this.emailUnconfirmedPattern, required this.newAlgo, required this.newSecureAlgo, required this.secureRandom, required this.pendingResetDate});

	static Password fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final hasRecovery = false;final hasSecureValues = false;final hasPassword = false;var currentAlgo;if ((flags & 4)==1){currentAlgo = reader.tgReadObject(); } else {currentAlgo=null;}var srp_B;if ((flags & 4)==1){srp_B = reader.tgReadBytes(); } else {srp_B=null;}var srpId;if ((flags & 4)==1){srpId = reader.readLong(); } else {srpId=null;}var hint;if ((flags & 8)==1){hint = reader.tgReadString(); } else {hint=null;}var emailUnconfirmedPattern;if ((flags & 16)==1){emailUnconfirmedPattern = reader.tgReadString(); } else {emailUnconfirmedPattern=null;}var newAlgo = reader.tgReadObject();var newSecureAlgo = reader.tgReadObject();var secureRandom = reader.tgReadBytes();var pendingResetDate;if ((flags & 32)==1){pendingResetDate = reader.readInt(); } else {pendingResetDate=null;}		return new Password(hasRecovery : hasRecovery, hasSecureValues : hasSecureValues, hasPassword : hasPassword, currentAlgo : currentAlgo, srp_B : srp_B, srpId : srpId, hint : hint, emailUnconfirmedPattern : emailUnconfirmedPattern, newAlgo : newAlgo, newSecureAlgo : newSecureAlgo, secureRandom : secureRandom, pendingResetDate : pendingResetDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(408623183,4),[0,0,0,0],(this.currentAlgo==null||this.currentAlgo==false)?new List<int>.empty():[(this.currentAlgo.getBytes() as List<int>)].expand((element) => element).toList(),(this.srp_B==null||this.srp_B==false)?new List<int>.empty():[serializeBytes(this.srp_B)].expand((element) => element).toList(),(this.srpId==null||this.srpId==false)?new List<int>.empty():[readBufferFromBigInt(this.srpId,8,little:true,signed:true)].expand((element) => element).toList(),(this.hint==null||this.hint==false)?new List<int>.empty():[serializeBytes(this.hint)].expand((element) => element).toList(),(this.emailUnconfirmedPattern==null||this.emailUnconfirmedPattern==false)?new List<int>.empty():[serializeBytes(this.emailUnconfirmedPattern)].expand((element) => element).toList(),(this.newAlgo.getBytes() as List<int>),(this.newSecureAlgo.getBytes() as List<int>),serializeBytes(this.secureRandom),(this.pendingResetDate==null||this.pendingResetDate==false)?new List<int>.empty():[readBufferFromBigInt(this.pendingResetDate,4,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PasswordSettings {
    static const CONSTRUCTOR_ID = 2589733861;
    static const SUBCLASS_OF_ID = 3527389304;
    final classType = "constructor";
    final ID = 2589733861;
	String? email;
	var secureSettings;


	PasswordSettings({required this.email, required this.secureSettings});

	static PasswordSettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var email;if ((flags & 1)==1){email = reader.tgReadString(); } else {email=null;}var secureSettings;if ((flags & 2)==1){secureSettings = reader.tgReadObject(); } else {secureSettings=null;}		return new PasswordSettings(email : email, secureSettings : secureSettings);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2589733861,4),[0,0,0,0],(this.email==null||this.email==false)?new List<int>.empty():[serializeBytes(this.email)].expand((element) => element).toList(),(this.secureSettings==null||this.secureSettings==false)?new List<int>.empty():[(this.secureSettings.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class PasswordInputSettings {
    static const CONSTRUCTOR_ID = 3258394569;
    static const SUBCLASS_OF_ID = 205679782;
    final classType = "constructor";
    final ID = 3258394569;
	var newAlgo;
	List<int>? newPasswordHash;
	String? hint;
	String? email;
	var newSecureSettings;


	PasswordInputSettings({required this.newAlgo, required this.newPasswordHash, required this.hint, required this.email, required this.newSecureSettings});

	static PasswordInputSettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var newAlgo;if ((flags & 1)==1){newAlgo = reader.tgReadObject(); } else {newAlgo=null;}var newPasswordHash;if ((flags & 1)==1){newPasswordHash = reader.tgReadBytes(); } else {newPasswordHash=null;}var hint;if ((flags & 1)==1){hint = reader.tgReadString(); } else {hint=null;}var email;if ((flags & 2)==1){email = reader.tgReadString(); } else {email=null;}var newSecureSettings;if ((flags & 4)==1){newSecureSettings = reader.tgReadObject(); } else {newSecureSettings=null;}		return new PasswordInputSettings(newAlgo : newAlgo, newPasswordHash : newPasswordHash, hint : hint, email : email, newSecureSettings : newSecureSettings);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3258394569,4),[0,0,0,0],(this.newAlgo==null||this.newAlgo==false)?new List<int>.empty():[(this.newAlgo.getBytes() as List<int>)].expand((element) => element).toList(),(this.newPasswordHash==null||this.newPasswordHash==false)?new List<int>.empty():[serializeBytes(this.newPasswordHash)].expand((element) => element).toList(),(this.hint==null||this.hint==false)?new List<int>.empty():[serializeBytes(this.hint)].expand((element) => element).toList(),(this.email==null||this.email==false)?new List<int>.empty():[serializeBytes(this.email)].expand((element) => element).toList(),(this.newSecureSettings==null||this.newSecureSettings==false)?new List<int>.empty():[(this.newSecureSettings.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class TmpPassword {
    static const CONSTRUCTOR_ID = 3680828724;
    static const SUBCLASS_OF_ID = 2959382829;
    final classType = "constructor";
    final ID = 3680828724;
	List<int> tmpPassword;
	int validUntil;


	TmpPassword({required this.tmpPassword, required this.validUntil});

	static TmpPassword fromReader(BinaryReader reader) {
	var temp,len;var tmpPassword = reader.tgReadBytes();var validUntil = reader.readInt();		return new TmpPassword(tmpPassword : tmpPassword, validUntil : validUntil);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3680828724,4),serializeBytes(this.tmpPassword),readBufferFromBigInt(this.validUntil,4,little:true,signed:true),].expand((element) => element).toList();}

}

class WebAuthorizations {
    static const CONSTRUCTOR_ID = 3981887996;
    static const SUBCLASS_OF_ID = 2587253554;
    final classType = "constructor";
    final ID = 3981887996;
	List<dynamic> authorizations;
	List<dynamic> users;


	WebAuthorizations({required this.authorizations, required this.users});

	static WebAuthorizations fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> authorizations = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		authorizations.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new WebAuthorizations(authorizations : authorizations, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3981887996,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.authorizations!.length,4,little:true,signed:true),this.authorizations!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users!.length,4,little:true,signed:true),this.users!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class AuthorizationForm {
    static const CONSTRUCTOR_ID = 2905480408;
    static const SUBCLASS_OF_ID = 2013567636;
    final classType = "constructor";
    final ID = 2905480408;
	List<dynamic> requiredTypes;
	List<dynamic> values;
	List<dynamic> errors;
	List<dynamic> users;
	String? privacyPolicyUrl;


	AuthorizationForm({required this.requiredTypes, required this.values, required this.errors, required this.users, required this.privacyPolicyUrl});

	static AuthorizationForm fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();reader.readInt();
List<dynamic> requiredTypes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		requiredTypes.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> values = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		values.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> errors = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		errors.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}var privacyPolicyUrl;if ((flags & 1)==1){privacyPolicyUrl = reader.tgReadString(); } else {privacyPolicyUrl=null;}		return new AuthorizationForm(requiredTypes : requiredTypes, values : values, errors : errors, users : users, privacyPolicyUrl : privacyPolicyUrl);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2905480408,4),[0,0,0,0],readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.requiredTypes!.length,4,little:true,signed:true),this.requiredTypes!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.values!.length,4,little:true,signed:true),this.values!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.errors!.length,4,little:true,signed:true),this.errors!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users!.length,4,little:true,signed:true),this.users!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.privacyPolicyUrl==null||this.privacyPolicyUrl==false)?new List<int>.empty():[serializeBytes(this.privacyPolicyUrl)].expand((element) => element).toList(),].expand((element) => element).toList();}

}

class SentEmailCode {
    static const CONSTRUCTOR_ID = 2166326607;
    static const SUBCLASS_OF_ID = 1777582190;
    final classType = "constructor";
    final ID = 2166326607;
	String emailPattern;
	int length;


	SentEmailCode({required this.emailPattern, required this.length});

	static SentEmailCode fromReader(BinaryReader reader) {
	var temp,len;var emailPattern = reader.tgReadString();var length = reader.readInt();		return new SentEmailCode(emailPattern : emailPattern, length : length);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2166326607,4),serializeBytes(this.emailPattern),readBufferFromBigInt(this.length,4,little:true,signed:true),].expand((element) => element).toList();}

}

class Takeout {
    static const CONSTRUCTOR_ID = 1304052993;
    static const SUBCLASS_OF_ID = 2218704517;
    final classType = "constructor";
    final ID = 1304052993;
	BigInt id;


	Takeout({required this.id});

	static Takeout fromReader(BinaryReader reader) {
	var temp,len;var id = reader.readLong();		return new Takeout(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1304052993,4),readBufferFromBigInt(this.id,8,little:true,signed:true),].expand((element) => element).toList();}

}

class WallPapersNotModified {
    static const CONSTRUCTOR_ID = 471437699;
    static const SUBCLASS_OF_ID = 2730838269;
    final classType = "constructor";
    final ID = 471437699;


	WallPapersNotModified();

	static WallPapersNotModified fromReader(BinaryReader reader) {
	var temp,len;		return new WallPapersNotModified();
	}
	List<int> getBytes(){return [readBufferFromBigInt(471437699,4),].expand((element) => element).toList();}

}

class WallPapers {
    static const CONSTRUCTOR_ID = 3452142988;
    static const SUBCLASS_OF_ID = 2730838269;
    final classType = "constructor";
    final ID = 3452142988;
	BigInt hash;
	List<dynamic> wallpapers;


	WallPapers({required this.hash, required this.wallpapers});

	static WallPapers fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();reader.readInt();
List<dynamic> wallpapers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		wallpapers.add(reader.tgReadObject());
}		return new WallPapers(hash : hash, wallpapers : wallpapers);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3452142988,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.wallpapers!.length,4,little:true,signed:true),this.wallpapers!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class AutoDownloadSettings {
    static const CONSTRUCTOR_ID = 1674235686;
    static const SUBCLASS_OF_ID = 800610593;
    final classType = "constructor";
    final ID = 1674235686;
	var low;
	var medium;
	var high;


	AutoDownloadSettings({required this.low, required this.medium, required this.high});

	static AutoDownloadSettings fromReader(BinaryReader reader) {
	var temp,len;var low = reader.tgReadObject();var medium = reader.tgReadObject();var high = reader.tgReadObject();		return new AutoDownloadSettings(low : low, medium : medium, high : high);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1674235686,4),(this.low.getBytes() as List<int>),(this.medium.getBytes() as List<int>),(this.high.getBytes() as List<int>),].expand((element) => element).toList();}

}

class ThemesNotModified {
    static const CONSTRUCTOR_ID = 4095653410;
    static const SUBCLASS_OF_ID = 2143625732;
    final classType = "constructor";
    final ID = 4095653410;


	ThemesNotModified();

	static ThemesNotModified fromReader(BinaryReader reader) {
	var temp,len;		return new ThemesNotModified();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4095653410,4),].expand((element) => element).toList();}

}

class Themes {
    static const CONSTRUCTOR_ID = 2587724909;
    static const SUBCLASS_OF_ID = 2143625732;
    final classType = "constructor";
    final ID = 2587724909;
	BigInt hash;
	List<dynamic> themes;


	Themes({required this.hash, required this.themes});

	static Themes fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();reader.readInt();
List<dynamic> themes = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		themes.add(reader.tgReadObject());
}		return new Themes(hash : hash, themes : themes);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2587724909,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.themes!.length,4,little:true,signed:true),this.themes!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class ContentSettings {
    static const CONSTRUCTOR_ID = 1474462241;
    static const SUBCLASS_OF_ID = 2923427985;
    final classType = "constructor";
    final ID = 1474462241;
	bool? sensitiveEnabled;
	bool? sensitiveCanChange;


	ContentSettings({required this.sensitiveEnabled, required this.sensitiveCanChange});

	static ContentSettings fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final sensitiveEnabled = false;final sensitiveCanChange = false;		return new ContentSettings(sensitiveEnabled : sensitiveEnabled, sensitiveCanChange : sensitiveCanChange);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1474462241,4),[0,0,0,0],].expand((element) => element).toList();}

}

class ResetPasswordFailedWait {
    static const CONSTRUCTOR_ID = 3816265825;
    static const SUBCLASS_OF_ID = 1230009366;
    final classType = "constructor";
    final ID = 3816265825;
	int retryDate;


	ResetPasswordFailedWait({required this.retryDate});

	static ResetPasswordFailedWait fromReader(BinaryReader reader) {
	var temp,len;var retryDate = reader.readInt();		return new ResetPasswordFailedWait(retryDate : retryDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3816265825,4),readBufferFromBigInt(this.retryDate,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ResetPasswordRequestedWait {
    static const CONSTRUCTOR_ID = 3924819069;
    static const SUBCLASS_OF_ID = 1230009366;
    final classType = "constructor";
    final ID = 3924819069;
	int untilDate;


	ResetPasswordRequestedWait({required this.untilDate});

	static ResetPasswordRequestedWait fromReader(BinaryReader reader) {
	var temp,len;var untilDate = reader.readInt();		return new ResetPasswordRequestedWait(untilDate : untilDate);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3924819069,4),readBufferFromBigInt(this.untilDate,4,little:true,signed:true),].expand((element) => element).toList();}

}

class ResetPasswordOk {
    static const CONSTRUCTOR_ID = 3911636542;
    static const SUBCLASS_OF_ID = 1230009366;
    final classType = "constructor";
    final ID = 3911636542;


	ResetPasswordOk();

	static ResetPasswordOk fromReader(BinaryReader reader) {
	var temp,len;		return new ResetPasswordOk();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3911636542,4),].expand((element) => element).toList();}

}

class SavedRingtonesNotModified {
    static const CONSTRUCTOR_ID = 4227262641;
    static const SUBCLASS_OF_ID = 666683742;
    final classType = "constructor";
    final ID = 4227262641;


	SavedRingtonesNotModified();

	static SavedRingtonesNotModified fromReader(BinaryReader reader) {
	var temp,len;		return new SavedRingtonesNotModified();
	}
	List<int> getBytes(){return [readBufferFromBigInt(4227262641,4),].expand((element) => element).toList();}

}

class SavedRingtones {
    static const CONSTRUCTOR_ID = 3253284037;
    static const SUBCLASS_OF_ID = 666683742;
    final classType = "constructor";
    final ID = 3253284037;
	BigInt hash;
	List<dynamic> ringtones;


	SavedRingtones({required this.hash, required this.ringtones});

	static SavedRingtones fromReader(BinaryReader reader) {
	var temp,len;var hash = reader.readLong();reader.readInt();
List<dynamic> ringtones = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		ringtones.add(reader.tgReadObject());
}		return new SavedRingtones(hash : hash, ringtones : ringtones);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3253284037,4),readBufferFromBigInt(this.hash,8,little:true,signed:true),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.ringtones!.length,4,little:true,signed:true),this.ringtones!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class SavedRingtone {
    static const CONSTRUCTOR_ID = 3072737133;
    static const SUBCLASS_OF_ID = 2984412196;
    final classType = "constructor";
    final ID = 3072737133;


	SavedRingtone();

	static SavedRingtone fromReader(BinaryReader reader) {
	var temp,len;		return new SavedRingtone();
	}
	List<int> getBytes(){return [readBufferFromBigInt(3072737133,4),].expand((element) => element).toList();}

}

class SavedRingtoneConverted {
    static const CONSTRUCTOR_ID = 523271863;
    static const SUBCLASS_OF_ID = 2984412196;
    final classType = "constructor";
    final ID = 523271863;
	var document;


	SavedRingtoneConverted({required this.document});

	static SavedRingtoneConverted fromReader(BinaryReader reader) {
	var temp,len;var document = reader.tgReadObject();		return new SavedRingtoneConverted(document : document);
	}
	List<int> getBytes(){return [readBufferFromBigInt(523271863,4),(this.document.getBytes() as List<int>),].expand((element) => element).toList();}

}