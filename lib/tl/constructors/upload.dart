import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_contructor.dart';

class File extends BaseConstructor {
  static const CONSTRUCTOR_ID = 157948117;
  static const SUBCLASS_OF_ID = 1822152488;
  final classType = "constructor";
  final ID = 157948117;
  var type;
  int mtime;
  List<int> bytes;

  File({required this.type, required this.mtime, required this.bytes});

  static File fromReader(BinaryReader reader) {
    var len;
    var type = reader.tgReadObject();
    var mtime = reader.readInt();
    var bytes = reader.tgReadBytes();
    return File(type: type, mtime: mtime, bytes: bytes);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(157948117, 4),
      (this.type.getBytes() as List<int>),
      readBufferFromBigInt(this.mtime, 4, little: true, signed: true),
      serializeBytes(this.bytes),
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
    return 'File{ID: $ID, type: $type, mtime: $mtime, bytes: $bytes}';
  }
}

class FileCdnRedirect extends BaseConstructor {
  static const CONSTRUCTOR_ID = 4052539972;
  static const SUBCLASS_OF_ID = 1822152488;
  final classType = "constructor";
  final ID = 4052539972;
  int dcId;
  List<int> fileToken;
  List<int> encryptionKey;
  List<int> encryptionIv;
  List<dynamic> fileHashes;

  FileCdnRedirect(
      {required this.dcId,
      required this.fileToken,
      required this.encryptionKey,
      required this.encryptionIv,
      required this.fileHashes});

  static FileCdnRedirect fromReader(BinaryReader reader) {
    var len;
    var dcId = reader.readInt();
    var fileToken = reader.tgReadBytes();
    var encryptionKey = reader.tgReadBytes();
    var encryptionIv = reader.tgReadBytes();
    var _vectorfileHashes = reader.readInt();
    if (_vectorfileHashes != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> fileHashes = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      fileHashes.add(reader.tgReadObject());
    }
    return FileCdnRedirect(
        dcId: dcId,
        fileToken: fileToken,
        encryptionKey: encryptionKey,
        encryptionIv: encryptionIv,
        fileHashes: fileHashes);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4052539972, 4),
      readBufferFromBigInt(this.dcId, 4, little: true, signed: true),
      serializeBytes(this.fileToken),
      serializeBytes(this.encryptionKey),
      serializeBytes(this.encryptionIv),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.fileHashes!.length, 4,
          little: true, signed: true),
      this
          .fileHashes!
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
    return 'FileCdnRedirect{ID: $ID, dcId: $dcId, fileToken: $fileToken, encryptionKey: $encryptionKey, encryptionIv: $encryptionIv, fileHashes: $fileHashes}';
  }
}

class WebFile extends BaseConstructor {
  static const CONSTRUCTOR_ID = 568808380;
  static const SUBCLASS_OF_ID = 1760657233;
  final classType = "constructor";
  final ID = 568808380;
  int size;
  String mimeType;
  var fileType;
  int mtime;
  List<int> bytes;

  WebFile(
      {required this.size,
      required this.mimeType,
      required this.fileType,
      required this.mtime,
      required this.bytes});

  static WebFile fromReader(BinaryReader reader) {
    var len;
    var size = reader.readInt();
    var mimeType = reader.tgReadString();
    var fileType = reader.tgReadObject();
    var mtime = reader.readInt();
    var bytes = reader.tgReadBytes();
    return WebFile(
        size: size,
        mimeType: mimeType,
        fileType: fileType,
        mtime: mtime,
        bytes: bytes);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(568808380, 4),
      readBufferFromBigInt(this.size, 4, little: true, signed: true),
      serializeBytes(this.mimeType),
      (this.fileType.getBytes() as List<int>),
      readBufferFromBigInt(this.mtime, 4, little: true, signed: true),
      serializeBytes(this.bytes),
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
    return 'WebFile{ID: $ID, size: $size, mimeType: $mimeType, fileType: $fileType, mtime: $mtime, bytes: $bytes}';
  }
}

class CdnFileReuploadNeeded extends BaseConstructor {
  static const CONSTRUCTOR_ID = 4004045934;
  static const SUBCLASS_OF_ID = 4123851048;
  final classType = "constructor";
  final ID = 4004045934;
  List<int> requestToken;

  CdnFileReuploadNeeded({required this.requestToken});

  static CdnFileReuploadNeeded fromReader(BinaryReader reader) {
    var len;
    var requestToken = reader.tgReadBytes();
    return CdnFileReuploadNeeded(requestToken: requestToken);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4004045934, 4),
      serializeBytes(this.requestToken),
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
    return 'CdnFileReuploadNeeded{ID: $ID, requestToken: $requestToken}';
  }
}

class CdnFile extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2845821519;
  static const SUBCLASS_OF_ID = 4123851048;
  final classType = "constructor";
  final ID = 2845821519;
  List<int> bytes;

  CdnFile({required this.bytes});

  static CdnFile fromReader(BinaryReader reader) {
    var len;
    var bytes = reader.tgReadBytes();
    return CdnFile(bytes: bytes);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2845821519, 4),
      serializeBytes(this.bytes),
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
    return 'CdnFile{ID: $ID, bytes: $bytes}';
  }
}
