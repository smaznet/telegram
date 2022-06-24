import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class CreateStickerSet {
    static const CONSTRUCTOR_ID = 2418125671;
    static const SUBCLASS_OF_ID = 2607827546;
    final classType = "request";
    final ID = 2418125671;
	bool? masks;
	bool? animated;
	bool? videos;
	var userId;
	String title;
	String shortName;
	var thumb;
	List<dynamic> stickers;
	String? software;


	CreateStickerSet({required this.masks, required this.animated, required this.videos, required this.userId, required this.title, required this.shortName, required this.thumb, required this.stickers, required this.software});

	static CreateStickerSet fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final masks = false;final animated = false;final videos = false;var userId = reader.tgReadObject();var title = reader.tgReadString();var shortName = reader.tgReadString();var thumb;if ((flags & 4)==1){thumb = reader.tgReadObject(); } else {thumb=null;}reader.readInt();
List<dynamic> stickers = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		stickers.add(reader.tgReadObject());
}var software;if ((flags & 8)==1){software = reader.tgReadString(); } else {software=null;}		return new CreateStickerSet(masks : masks, animated : animated, videos : videos, userId : userId, title : title, shortName : shortName, thumb : thumb, stickers : stickers, software : software);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2418125671,4),[0,0,0,0],(this.userId.getBytes() as List<int>),serializeBytes(this.title),serializeBytes(this.shortName),(this.thumb==null||this.thumb==false)?new List<int>.empty():[(this.thumb.getBytes() as List<int>)].expand((element) => element).toList(),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.stickers!.length,4,little:true,signed:true),this.stickers!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),(this.software==null||this.software==false)?new List<int>.empty():[serializeBytes(this.software)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class RemoveStickerFromSet {
    static const CONSTRUCTOR_ID = 4151709521;
    static const SUBCLASS_OF_ID = 2607827546;
    final classType = "request";
    final ID = 4151709521;
	var sticker;


	RemoveStickerFromSet({required this.sticker});

	static RemoveStickerFromSet fromReader(BinaryReader reader) {
	var temp,len;var sticker = reader.tgReadObject();		return new RemoveStickerFromSet(sticker : sticker);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4151709521,4),(this.sticker.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ChangeStickerPosition {
    static const CONSTRUCTOR_ID = 4290172106;
    static const SUBCLASS_OF_ID = 2607827546;
    final classType = "request";
    final ID = 4290172106;
	var sticker;
	int position;


	ChangeStickerPosition({required this.sticker, required this.position});

	static ChangeStickerPosition fromReader(BinaryReader reader) {
	var temp,len;var sticker = reader.tgReadObject();var position = reader.readInt();		return new ChangeStickerPosition(sticker : sticker, position : position);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4290172106,4),(this.sticker.getBytes() as List<int>),readBufferFromBigInt(this.position,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class AddStickerToSet {
    static const CONSTRUCTOR_ID = 2253651646;
    static const SUBCLASS_OF_ID = 2607827546;
    final classType = "request";
    final ID = 2253651646;
	var stickerset;
	var sticker;


	AddStickerToSet({required this.stickerset, required this.sticker});

	static AddStickerToSet fromReader(BinaryReader reader) {
	var temp,len;var stickerset = reader.tgReadObject();var sticker = reader.tgReadObject();		return new AddStickerToSet(stickerset : stickerset, sticker : sticker);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2253651646,4),(this.stickerset.getBytes() as List<int>),(this.sticker.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetStickerSetThumb {
    static const CONSTRUCTOR_ID = 2587250224;
    static const SUBCLASS_OF_ID = 2607827546;
    final classType = "request";
    final ID = 2587250224;
	var stickerset;
	var thumb;


	SetStickerSetThumb({required this.stickerset, required this.thumb});

	static SetStickerSetThumb fromReader(BinaryReader reader) {
	var temp,len;var stickerset = reader.tgReadObject();var thumb = reader.tgReadObject();		return new SetStickerSetThumb(stickerset : stickerset, thumb : thumb);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2587250224,4),(this.stickerset.getBytes() as List<int>),(this.thumb.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class CheckShortName {
    static const CONSTRUCTOR_ID = 676017721;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 676017721;
	String shortName;


	CheckShortName({required this.shortName});

	static CheckShortName fromReader(BinaryReader reader) {
	var temp,len;var shortName = reader.tgReadString();		return new CheckShortName(shortName : shortName);
	}
	List<int> getBytes(){return [readBufferFromBigInt(676017721,4),serializeBytes(this.shortName),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SuggestShortName {
    static const CONSTRUCTOR_ID = 1303364867;
    static const SUBCLASS_OF_ID = 3293203233;
    final classType = "request";
    final ID = 1303364867;
	String title;


	SuggestShortName({required this.title});

	static SuggestShortName fromReader(BinaryReader reader) {
	var temp,len;var title = reader.tgReadString();		return new SuggestShortName(title : title);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1303364867,4),serializeBytes(this.title),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}