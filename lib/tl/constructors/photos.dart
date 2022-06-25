import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_contructor.dart';

class Photos extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2378853029;
  static const SUBCLASS_OF_ID = 667924839;
  final classType = "constructor";
  final ID = 2378853029;
  List<dynamic> photos;
  List<dynamic> users;

  Photos({required this.photos, required this.users});

  static Photos fromReader(BinaryReader reader) {
    var len;
    var _vectorphotos = reader.readInt();
    if (_vectorphotos != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> photos = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      photos.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return Photos(photos: photos, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2378853029, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.photos!.length, 4, little: true, signed: true),
      this
          .photos!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users!.length, 4, little: true, signed: true),
      this
          .users!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
    ].expand((element) => element).toList();
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
    return 'Photos{ID: $ID, photos: $photos, users: $users}';
  }
}

class PhotosSlice extends BaseConstructor {
  static const CONSTRUCTOR_ID = 352657236;
  static const SUBCLASS_OF_ID = 667924839;
  final classType = "constructor";
  final ID = 352657236;
  int count;
  List<dynamic> photos;
  List<dynamic> users;

  PhotosSlice({required this.count, required this.photos, required this.users});

  static PhotosSlice fromReader(BinaryReader reader) {
    var len;
    var count = reader.readInt();
    var _vectorphotos = reader.readInt();
    if (_vectorphotos != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> photos = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      photos.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return PhotosSlice(count: count, photos: photos, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(352657236, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.photos!.length, 4, little: true, signed: true),
      this
          .photos!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users!.length, 4, little: true, signed: true),
      this
          .users!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
    ].expand((element) => element).toList();
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
    return 'PhotosSlice{ID: $ID, count: $count, photos: $photos, users: $users}';
  }
}

class Photo extends BaseConstructor {
  static const CONSTRUCTOR_ID = 539045032;
  static const SUBCLASS_OF_ID = 3264396580;
  final classType = "constructor";
  final ID = 539045032;
  var photo;
  List<dynamic> users;

  Photo({required this.photo, required this.users});

  static Photo fromReader(BinaryReader reader) {
    var len;
    var photo = reader.tgReadObject();
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return Photo(photo: photo, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(539045032, 4),
      (this.photo.getBytes() as List<int>),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users!.length, 4, little: true, signed: true),
      this
          .users!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
    ].expand((element) => element).toList();
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
    return 'Photo{ID: $ID, photo: $photo, users: $users}';
  }
}
