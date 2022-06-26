// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_request.dart';
import '../constructors/photos.dart' as photos_ns;
import '../constructors/constructors.dart';

class UpdateProfilePhoto extends BaseRequest<photos_ns.Photo, dynamic> {
  static const CONSTRUCTOR_ID = 1926525996;
  static const SUBCLASS_OF_ID = 3264396580;
  final classType = "request";
  final ID = 1926525996;
  InputPhotoBase id;

  UpdateProfilePhoto({required this.id});

  static UpdateProfilePhoto fromReader(BinaryReader reader) {
    var id = reader.tgReadObject();
    return UpdateProfilePhoto(id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1926525996, 4),
      (this.id.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<photos_ns.Photo, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'UpdateProfilePhoto{ID: $ID, id: $id}';
  }
}

class UploadProfilePhoto extends BaseRequest<photos_ns.Photo, dynamic> {
  static const CONSTRUCTOR_ID = 2314407785;
  static const SUBCLASS_OF_ID = 3264396580;
  final classType = "request";
  final ID = 2314407785;
  InputFileBase? file;
  InputFileBase? video;
  double? videoStartTs;

  UploadProfilePhoto({this.file, this.video, this.videoStartTs});

  static UploadProfilePhoto fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var file;
    if ((flags & 1) == 1) {
      file = reader.tgReadObject();
    } else {
      file = null;
    }
    var video;
    if ((flags & 2) == 2) {
      video = reader.tgReadObject();
    } else {
      video = null;
    }
    var videoStartTs;
    if ((flags & 4) == 4) {
      videoStartTs = reader.readDouble();
    } else {
      videoStartTs = null;
    }
    return UploadProfilePhoto(
        file: file, video: video, videoStartTs: videoStartTs);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2314407785, 4),
      [0, 0, 0, 0],
      (this.file == null || this.file == false)
          ? List<int>.empty()
          : [(this.file!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.video == null || this.video == false)
          ? List<int>.empty()
          : [(this.video!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.videoStartTs == null || this.videoStartTs == false)
          ? List<int>.empty()
          : [readBufferFromBigInt(this.videoStartTs, 4)]
              .expand((element) => element)
              .toList(),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<photos_ns.Photo, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'UploadProfilePhoto{ID: $ID, file: $file, video: $video, videoStartTs: $videoStartTs}';
  }
}

class DeletePhotos extends BaseRequest<List<BigInt>, BigInt> {
  static const CONSTRUCTOR_ID = 2278522671;
  static const SUBCLASS_OF_ID = 2300109160;
  final classType = "request";
  final ID = 2278522671;
  List<InputPhotoBase> id;

  DeletePhotos({required this.id});

  static DeletePhotos fromReader(BinaryReader reader) {
    var len;
    var _vectorid = reader.readInt();
    if (_vectorid != 481674261) throw Exception('Wrong vectorId');
    List<InputPhotoBase> id = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      id.add(reader.tgReadObject());
    }
    return DeletePhotos(id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2278522671, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.id.length, 4, little: true, signed: true),
      this
          .id.map((x) => x.getBytes())
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  List<BigInt> readResult(BinaryReader reader) {
    reader.readInt();
    final range = reader.readInt();
    final List<BigInt> result = [];
    for (int i = 0; i < range; i++) {
      result.add(reader.readLong());
    }
    return result;
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'DeletePhotos{ID: $ID, id: $id}';
  }
}

class GetUserPhotos extends BaseRequest<photos_ns.PhotosBase, dynamic> {
  static const CONSTRUCTOR_ID = 2446144168;
  static const SUBCLASS_OF_ID = 667924839;
  final classType = "request";
  final ID = 2446144168;
  InputUserBase userId;
  int offset;
  BigInt maxId;
  int limit;

  GetUserPhotos(
      {required this.userId,
      required this.offset,
      required this.maxId,
      required this.limit});

  static GetUserPhotos fromReader(BinaryReader reader) {
    var userId = reader.tgReadObject();
    var offset = reader.readInt();
    var maxId = reader.readLong();
    var limit = reader.readInt();
    return GetUserPhotos(
        userId: userId, offset: offset, maxId: maxId, limit: limit);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2446144168, 4),
      (this.userId.getBytes()),
      readBufferFromBigInt(this.offset, 4, little: true, signed: true),
      readBufferFromBigInt(this.maxId, 8, little: true, signed: true),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<photos_ns.PhotosBase, dynamic>();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'GetUserPhotos{ID: $ID, userId: $userId, offset: $offset, maxId: $maxId, limit: $limit}';
  }
}
