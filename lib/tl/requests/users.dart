import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_request.dart';

class GetUsers extends BaseRequest {
  static const CONSTRUCTOR_ID = 227648840;
  static const SUBCLASS_OF_ID = 67557965;
  final classType = "request";
  final ID = 227648840;
  List<dynamic> id;

  GetUsers({required this.id});

  static GetUsers fromReader(BinaryReader reader) {
    var len;
    var _vectorid = reader.readInt();
    if (_vectorid != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> id = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      id.add(reader.tgReadObject());
    }
    return GetUsers(id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(227648840, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.id!.length, 4, little: true, signed: true),
      this
          .id!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
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
    return 'GetUsers{ID: $ID, id: $id}';
  }
}

class GetFullUser extends BaseRequest {
  static const CONSTRUCTOR_ID = 3054459160;
  static const SUBCLASS_OF_ID = 2212470261;
  final classType = "request";
  final ID = 3054459160;
  var id;

  GetFullUser({required this.id});

  static GetFullUser fromReader(BinaryReader reader) {
    var len;
    var id = reader.tgReadObject();
    return GetFullUser(id: id);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3054459160, 4),
      (this.id.getBytes() as List<int>),
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
    return 'GetFullUser{ID: $ID, id: $id}';
  }
}

class SetSecureValueErrors extends BaseRequest {
  static const CONSTRUCTOR_ID = 2429064373;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2429064373;
  var id;
  List<dynamic> errors;

  SetSecureValueErrors({required this.id, required this.errors});

  static SetSecureValueErrors fromReader(BinaryReader reader) {
    var len;
    var id = reader.tgReadObject();
    var _vectorerrors = reader.readInt();
    if (_vectorerrors != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> errors = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      errors.add(reader.tgReadObject());
    }
    return SetSecureValueErrors(id: id, errors: errors);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2429064373, 4),
      (this.id.getBytes() as List<int>),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.errors!.length, 4, little: true, signed: true),
      this
          .errors!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
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
    return 'SetSecureValueErrors{ID: $ID, id: $id, errors: $errors}';
  }
}
