import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class UpdateProfilePhoto {
    static const CONSTRUCTOR_ID = 1926525996;
    static const SUBCLASS_OF_ID = 4203905254;
    final classType = "request";
    final ID = 1926525996;
	var id;


	UpdateProfilePhoto({required this.id});

	static UpdateProfilePhoto fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();		return new UpdateProfilePhoto(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1926525996,4),(this.id.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class UploadProfilePhoto {
    static const CONSTRUCTOR_ID = 2314407785;
    static const SUBCLASS_OF_ID = 4203905254;
    final classType = "request";
    final ID = 2314407785;
	var file;
	var video;
	double videoStartTs;


	UploadProfilePhoto({required this.file, required this.video, required this.videoStartTs});

	static UploadProfilePhoto fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var file;if ((flags & 1)==1){file = reader.tgReadObject(); } else {file=null;}var video;if ((flags & 2)==1){video = reader.tgReadObject(); } else {video=null;}var videoStartTs;if ((flags & 4)==1){videoStartTs = reader.readDouble(); } else {videoStartTs=null;}		return new UploadProfilePhoto(file : file, video : video, videoStartTs : videoStartTs);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2314407785,4),[0,0,0,0],(this.file==null||this.file==false)?new List<int>.empty():[(this.file.getBytes() as List<int>)].expand((element) => element).toList(),(this.video==null||this.video==false)?new List<int>.empty():[(this.video.getBytes() as List<int>)].expand((element) => element).toList(),(this.videoStartTs==null||this.videoStartTs==false)?new List<int>.empty():[readBufferFromBigInt(this.videoStartTs,4)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class DeletePhotos {
    static const CONSTRUCTOR_ID = 2278522671;
    static const SUBCLASS_OF_ID = 3827148722;
    final classType = "request";
    final ID = 2278522671;
	List<dynamic> id;


	DeletePhotos({required this.id});

	static DeletePhotos fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.tgReadObject());
}		return new DeletePhotos(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2278522671,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	List<BigInt> readResult(BinaryReader reader) {
	
reader.readInt();
final range = reader.readInt();
final List<BigInt> result = [];
 for (int i=0;i<range;i++){
	result.add(reader.readLong());}
	return result;
	}

}

class GetUserPhotos {
    static const CONSTRUCTOR_ID = 2446144168;
    static const SUBCLASS_OF_ID = 1756542634;
    final classType = "request";
    final ID = 2446144168;
	var userId;
	int offset;
	BigInt maxId;
	int limit;


	GetUserPhotos({required this.userId, required this.offset, required this.maxId, required this.limit});

	static GetUserPhotos fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.tgReadObject();var offset = reader.readInt();var maxId = reader.readLong();var limit = reader.readInt();		return new GetUserPhotos(userId : userId, offset : offset, maxId : maxId, limit : limit);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2446144168,4),(this.userId.getBytes() as List<int>),readBufferFromBigInt(this.offset,4,little:true,signed:true),readBufferFromBigInt(this.maxId,8,little:true,signed:true),readBufferFromBigInt(this.limit,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}