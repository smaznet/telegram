import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class GetLangPack {
    static const CONSTRUCTOR_ID = 4075959050;
    static const SUBCLASS_OF_ID = 1382427989;
    final classType = "request";
    final ID = 4075959050;
	String langPack;
	String langCode;


	GetLangPack({required this.langPack, required this.langCode});

	static GetLangPack fromReader(BinaryReader reader) {
	var temp,len;var langPack = reader.tgReadString();var langCode = reader.tgReadString();		return new GetLangPack(langPack : langPack, langCode : langCode);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4075959050,4),serializeBytes(this.langPack),serializeBytes(this.langCode),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetStrings {
    static const CONSTRUCTOR_ID = 4025104387;
    static const SUBCLASS_OF_ID = 3350672701;
    final classType = "request";
    final ID = 4025104387;
	String langPack;
	String langCode;
	List<String> keys;


	GetStrings({required this.langPack, required this.langCode, required this.keys});

	static GetStrings fromReader(BinaryReader reader) {
	var temp,len;var langPack = reader.tgReadString();var langCode = reader.tgReadString();reader.readInt();
List<String> keys = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		keys.add(reader.tgReadString());
}		return new GetStrings(langPack : langPack, langCode : langCode, keys : keys);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4025104387,4),serializeBytes(this.langPack),serializeBytes(this.langCode),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.keys.length,4,little:true,signed:true),this.keys.map((x)=>serializeBytes(x)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetDifference {
    static const CONSTRUCTOR_ID = 3449309861;
    static const SUBCLASS_OF_ID = 1382427989;
    final classType = "request";
    final ID = 3449309861;
	String langPack;
	String langCode;
	int fromVersion;


	GetDifference({required this.langPack, required this.langCode, required this.fromVersion});

	static GetDifference fromReader(BinaryReader reader) {
	var temp,len;var langPack = reader.tgReadString();var langCode = reader.tgReadString();var fromVersion = reader.readInt();		return new GetDifference(langPack : langPack, langCode : langCode, fromVersion : fromVersion);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3449309861,4),serializeBytes(this.langPack),serializeBytes(this.langCode),readBufferFromBigInt(this.fromVersion,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetLanguages {
    static const CONSTRUCTOR_ID = 1120311183;
    static const SUBCLASS_OF_ID = 671683273;
    final classType = "request";
    final ID = 1120311183;
	String langPack;


	GetLanguages({required this.langPack});

	static GetLanguages fromReader(BinaryReader reader) {
	var temp,len;var langPack = reader.tgReadString();		return new GetLanguages(langPack : langPack);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1120311183,4),serializeBytes(this.langPack),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetLanguage {
    static const CONSTRUCTOR_ID = 1784243458;
    static const SUBCLASS_OF_ID = 2880211383;
    final classType = "request";
    final ID = 1784243458;
	String langPack;
	String langCode;


	GetLanguage({required this.langPack, required this.langCode});

	static GetLanguage fromReader(BinaryReader reader) {
	var temp,len;var langPack = reader.tgReadString();var langCode = reader.tgReadString();		return new GetLanguage(langPack : langPack, langCode : langCode);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1784243458,4),serializeBytes(this.langPack),serializeBytes(this.langCode),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}