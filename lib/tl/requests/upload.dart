import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_request.dart';

class SaveFilePart extends BaseRequest {
  static const CONSTRUCTOR_ID = 3003426337;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3003426337;
  BigInt fileId;
  int filePart;
  List<int> bytes;

  SaveFilePart(
      {required this.fileId, required this.filePart, required this.bytes});

  static SaveFilePart fromReader(BinaryReader reader) {
    var len;
    var fileId = reader.readLong();
    var filePart = reader.readInt();
    var bytes = reader.tgReadBytes();
    return SaveFilePart(fileId: fileId, filePart: filePart, bytes: bytes);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3003426337, 4),
      readBufferFromBigInt(this.fileId, 8, little: true, signed: true),
      readBufferFromBigInt(this.filePart, 4, little: true, signed: true),
      serializeBytes(this.bytes),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
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
    return 'SaveFilePart{ID: $ID, fileId: $fileId, filePart: $filePart, bytes: $bytes}';
  }
}

class GetFile extends BaseRequest {
  static const CONSTRUCTOR_ID = 3193124286;
  static const SUBCLASS_OF_ID = 1822152488;
  final classType = "request";
  final ID = 3193124286;
  bool? precise;
  bool? cdnSupported;
  var location;
  BigInt offset;
  int limit;

  GetFile(
      {required this.precise,
      required this.cdnSupported,
      required this.location,
      required this.offset,
      required this.limit});

  static GetFile fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final precise = (flags & 1) == 1;
    final cdnSupported = (flags & 2) == 2;
    var location = reader.tgReadObject();
    var offset = reader.readLong();
    var limit = reader.readInt();
    return GetFile(
        precise: precise,
        cdnSupported: cdnSupported,
        location: location,
        offset: offset,
        limit: limit);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3193124286, 4),
      [0, 0, 0, 0],
      (this.location.getBytes() as List<int>),
      readBufferFromBigInt(this.offset, 8, little: true, signed: true),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
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
    return 'GetFile{ID: $ID, precise: $precise, cdnSupported: $cdnSupported, location: $location, offset: $offset, limit: $limit}';
  }
}

class SaveBigFilePart extends BaseRequest {
  static const CONSTRUCTOR_ID = 3732629309;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3732629309;
  BigInt fileId;
  int filePart;
  int fileTotalParts;
  List<int> bytes;

  SaveBigFilePart(
      {required this.fileId,
      required this.filePart,
      required this.fileTotalParts,
      required this.bytes});

  static SaveBigFilePart fromReader(BinaryReader reader) {
    var len;
    var fileId = reader.readLong();
    var filePart = reader.readInt();
    var fileTotalParts = reader.readInt();
    var bytes = reader.tgReadBytes();
    return SaveBigFilePart(
        fileId: fileId,
        filePart: filePart,
        fileTotalParts: fileTotalParts,
        bytes: bytes);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3732629309, 4),
      readBufferFromBigInt(this.fileId, 8, little: true, signed: true),
      readBufferFromBigInt(this.filePart, 4, little: true, signed: true),
      readBufferFromBigInt(this.fileTotalParts, 4, little: true, signed: true),
      serializeBytes(this.bytes),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
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
    return 'SaveBigFilePart{ID: $ID, fileId: $fileId, filePart: $filePart, fileTotalParts: $fileTotalParts, bytes: $bytes}';
  }
}

class GetWebFile extends BaseRequest {
  static const CONSTRUCTOR_ID = 619086221;
  static const SUBCLASS_OF_ID = 1760657233;
  final classType = "request";
  final ID = 619086221;
  var location;
  int offset;
  int limit;

  GetWebFile(
      {required this.location, required this.offset, required this.limit});

  static GetWebFile fromReader(BinaryReader reader) {
    var len;
    var location = reader.tgReadObject();
    var offset = reader.readInt();
    var limit = reader.readInt();
    return GetWebFile(location: location, offset: offset, limit: limit);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(619086221, 4),
      (this.location.getBytes() as List<int>),
      readBufferFromBigInt(this.offset, 4, little: true, signed: true),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
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
    return 'GetWebFile{ID: $ID, location: $location, offset: $offset, limit: $limit}';
  }
}

class GetCdnFile extends BaseRequest {
  static const CONSTRUCTOR_ID = 962554330;
  static const SUBCLASS_OF_ID = 4123851048;
  final classType = "request";
  final ID = 962554330;
  List<int> fileToken;
  BigInt offset;
  int limit;

  GetCdnFile(
      {required this.fileToken, required this.offset, required this.limit});

  static GetCdnFile fromReader(BinaryReader reader) {
    var len;
    var fileToken = reader.tgReadBytes();
    var offset = reader.readLong();
    var limit = reader.readInt();
    return GetCdnFile(fileToken: fileToken, offset: offset, limit: limit);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(962554330, 4),
      serializeBytes(this.fileToken),
      readBufferFromBigInt(this.offset, 8, little: true, signed: true),
      readBufferFromBigInt(this.limit, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
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
    return 'GetCdnFile{ID: $ID, fileToken: $fileToken, offset: $offset, limit: $limit}';
  }
}

class ReuploadCdnFile extends BaseRequest {
  static const CONSTRUCTOR_ID = 2603046056;
  static const SUBCLASS_OF_ID = 2777941798;
  final classType = "request";
  final ID = 2603046056;
  List<int> fileToken;
  List<int> requestToken;

  ReuploadCdnFile({required this.fileToken, required this.requestToken});

  static ReuploadCdnFile fromReader(BinaryReader reader) {
    var len;
    var fileToken = reader.tgReadBytes();
    var requestToken = reader.tgReadBytes();
    return ReuploadCdnFile(fileToken: fileToken, requestToken: requestToken);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2603046056, 4),
      serializeBytes(this.fileToken),
      serializeBytes(this.requestToken),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
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
    return 'ReuploadCdnFile{ID: $ID, fileToken: $fileToken, requestToken: $requestToken}';
  }
}

class GetCdnFileHashes extends BaseRequest {
  static const CONSTRUCTOR_ID = 2447130417;
  static const SUBCLASS_OF_ID = 2777941798;
  final classType = "request";
  final ID = 2447130417;
  List<int> fileToken;
  BigInt offset;

  GetCdnFileHashes({required this.fileToken, required this.offset});

  static GetCdnFileHashes fromReader(BinaryReader reader) {
    var len;
    var fileToken = reader.tgReadBytes();
    var offset = reader.readLong();
    return GetCdnFileHashes(fileToken: fileToken, offset: offset);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2447130417, 4),
      serializeBytes(this.fileToken),
      readBufferFromBigInt(this.offset, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
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
    return 'GetCdnFileHashes{ID: $ID, fileToken: $fileToken, offset: $offset}';
  }
}

class GetFileHashes extends BaseRequest {
  static const CONSTRUCTOR_ID = 2438371370;
  static const SUBCLASS_OF_ID = 2777941798;
  final classType = "request";
  final ID = 2438371370;
  var location;
  BigInt offset;

  GetFileHashes({required this.location, required this.offset});

  static GetFileHashes fromReader(BinaryReader reader) {
    var len;
    var location = reader.tgReadObject();
    var offset = reader.readLong();
    return GetFileHashes(location: location, offset: offset);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2438371370, 4),
      (this.location.getBytes() as List<int>),
      readBufferFromBigInt(this.offset, 8, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject();
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
    return 'GetFileHashes{ID: $ID, location: $location, offset: $offset}';
  }
}
