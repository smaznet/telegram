import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_request.dart';

class GetLangPack extends BaseRequest {
  static const CONSTRUCTOR_ID = 4075959050;
  static const SUBCLASS_OF_ID = 1382427989;
  final classType = "request";
  final ID = 4075959050;
  String langPack;
  String langCode;

  GetLangPack({required this.langPack, required this.langCode});

  static GetLangPack fromReader(BinaryReader reader) {
    var len;
    var langPack = reader.tgReadString();
    var langCode = reader.tgReadString();
    return GetLangPack(langPack: langPack, langCode: langCode);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4075959050, 4),
      serializeBytes(this.langPack),
      serializeBytes(this.langCode),
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
    return 'GetLangPack{ID: $ID, langPack: $langPack, langCode: $langCode}';
  }
}

class GetStrings extends BaseRequest {
  static const CONSTRUCTOR_ID = 4025104387;
  static const SUBCLASS_OF_ID = 3350672701;
  final classType = "request";
  final ID = 4025104387;
  String langPack;
  String langCode;
  List<String> keys;

  GetStrings(
      {required this.langPack, required this.langCode, required this.keys});

  static GetStrings fromReader(BinaryReader reader) {
    var len;
    var langPack = reader.tgReadString();
    var langCode = reader.tgReadString();
    var _vectorkeys = reader.readInt();
    if (_vectorkeys != 481674261) throw Exception('Wrong vectorId');
    List<String> keys = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      keys.add(reader.tgReadString());
    }
    return GetStrings(langPack: langPack, langCode: langCode, keys: keys);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4025104387, 4),
      serializeBytes(this.langPack),
      serializeBytes(this.langCode),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.keys!.length, 4, little: true, signed: true),
      this.keys!.map((x) => serializeBytes(x)).expand((element) => element),
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
    return 'GetStrings{ID: $ID, langPack: $langPack, langCode: $langCode, keys: $keys}';
  }
}

class GetDifference extends BaseRequest {
  static const CONSTRUCTOR_ID = 3449309861;
  static const SUBCLASS_OF_ID = 1382427989;
  final classType = "request";
  final ID = 3449309861;
  String langPack;
  String langCode;
  int fromVersion;

  GetDifference(
      {required this.langPack,
      required this.langCode,
      required this.fromVersion});

  static GetDifference fromReader(BinaryReader reader) {
    var len;
    var langPack = reader.tgReadString();
    var langCode = reader.tgReadString();
    var fromVersion = reader.readInt();
    return GetDifference(
        langPack: langPack, langCode: langCode, fromVersion: fromVersion);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3449309861, 4),
      serializeBytes(this.langPack),
      serializeBytes(this.langCode),
      readBufferFromBigInt(this.fromVersion, 4, little: true, signed: true),
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
    return 'GetDifference{ID: $ID, langPack: $langPack, langCode: $langCode, fromVersion: $fromVersion}';
  }
}

class GetLanguages extends BaseRequest {
  static const CONSTRUCTOR_ID = 1120311183;
  static const SUBCLASS_OF_ID = 671683273;
  final classType = "request";
  final ID = 1120311183;
  String langPack;

  GetLanguages({required this.langPack});

  static GetLanguages fromReader(BinaryReader reader) {
    var len;
    var langPack = reader.tgReadString();
    return GetLanguages(langPack: langPack);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1120311183, 4),
      serializeBytes(this.langPack),
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
    return 'GetLanguages{ID: $ID, langPack: $langPack}';
  }
}

class GetLanguage extends BaseRequest {
  static const CONSTRUCTOR_ID = 1784243458;
  static const SUBCLASS_OF_ID = 2880211383;
  final classType = "request";
  final ID = 1784243458;
  String langPack;
  String langCode;

  GetLanguage({required this.langPack, required this.langCode});

  static GetLanguage fromReader(BinaryReader reader) {
    var len;
    var langPack = reader.tgReadString();
    var langCode = reader.tgReadString();
    return GetLanguage(langPack: langPack, langCode: langCode);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1784243458, 4),
      serializeBytes(this.langPack),
      serializeBytes(this.langCode),
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
    return 'GetLanguage{ID: $ID, langPack: $langPack, langCode: $langCode}';
  }
}
