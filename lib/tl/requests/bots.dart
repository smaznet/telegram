import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_request.dart';

class SendCustomRequest extends BaseRequest {
  static const CONSTRUCTOR_ID = 2854709741;
  static const SUBCLASS_OF_ID = 2902676200;
  final classType = "request";
  final ID = 2854709741;
  String customMethod;
  var params;

  SendCustomRequest({required this.customMethod, required this.params});

  static SendCustomRequest fromReader(BinaryReader reader) {
    var len;
    var customMethod = reader.tgReadString();
    var params = reader.tgReadObject();
    return SendCustomRequest(customMethod: customMethod, params: params);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2854709741, 4),
      serializeBytes(this.customMethod),
      (this.params.getBytes() as List<int>),
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
    return 'SendCustomRequest{ID: $ID, customMethod: $customMethod, params: $params}';
  }
}

class AnswerWebhookJSONQuery extends BaseRequest {
  static const CONSTRUCTOR_ID = 3860938573;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3860938573;
  BigInt queryId;
  var data;

  AnswerWebhookJSONQuery({required this.queryId, required this.data});

  static AnswerWebhookJSONQuery fromReader(BinaryReader reader) {
    var len;
    var queryId = reader.readLong();
    var data = reader.tgReadObject();
    return AnswerWebhookJSONQuery(queryId: queryId, data: data);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3860938573, 4),
      readBufferFromBigInt(this.queryId, 8, little: true, signed: true),
      (this.data.getBytes() as List<int>),
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
    return 'AnswerWebhookJSONQuery{ID: $ID, queryId: $queryId, data: $data}';
  }
}

class SetBotCommands extends BaseRequest {
  static const CONSTRUCTOR_ID = 85399130;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 85399130;
  var scope;
  String langCode;
  List<dynamic> commands;

  SetBotCommands(
      {required this.scope, required this.langCode, required this.commands});

  static SetBotCommands fromReader(BinaryReader reader) {
    var len;
    var scope = reader.tgReadObject();
    var langCode = reader.tgReadString();
    var _vectorcommands = reader.readInt();
    if (_vectorcommands != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> commands = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      commands.add(reader.tgReadObject());
    }
    return SetBotCommands(scope: scope, langCode: langCode, commands: commands);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(85399130, 4),
      (this.scope.getBytes() as List<int>),
      serializeBytes(this.langCode),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.commands!.length, 4,
          little: true, signed: true),
      this
          .commands!
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
    return 'SetBotCommands{ID: $ID, scope: $scope, langCode: $langCode, commands: $commands}';
  }
}

class ResetBotCommands extends BaseRequest {
  static const CONSTRUCTOR_ID = 1032708345;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1032708345;
  var scope;
  String langCode;

  ResetBotCommands({required this.scope, required this.langCode});

  static ResetBotCommands fromReader(BinaryReader reader) {
    var len;
    var scope = reader.tgReadObject();
    var langCode = reader.tgReadString();
    return ResetBotCommands(scope: scope, langCode: langCode);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1032708345, 4),
      (this.scope.getBytes() as List<int>),
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
    return 'ResetBotCommands{ID: $ID, scope: $scope, langCode: $langCode}';
  }
}

class GetBotCommands extends BaseRequest {
  static const CONSTRUCTOR_ID = 3813412310;
  static const SUBCLASS_OF_ID = 4209579305;
  final classType = "request";
  final ID = 3813412310;
  var scope;
  String langCode;

  GetBotCommands({required this.scope, required this.langCode});

  static GetBotCommands fromReader(BinaryReader reader) {
    var len;
    var scope = reader.tgReadObject();
    var langCode = reader.tgReadString();
    return GetBotCommands(scope: scope, langCode: langCode);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3813412310, 4),
      (this.scope.getBytes() as List<int>),
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
    return 'GetBotCommands{ID: $ID, scope: $scope, langCode: $langCode}';
  }
}

class SetBotMenuButton extends BaseRequest {
  static const CONSTRUCTOR_ID = 1157944655;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 1157944655;
  var userId;
  var button;

  SetBotMenuButton({required this.userId, required this.button});

  static SetBotMenuButton fromReader(BinaryReader reader) {
    var len;
    var userId = reader.tgReadObject();
    var button = reader.tgReadObject();
    return SetBotMenuButton(userId: userId, button: button);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1157944655, 4),
      (this.userId.getBytes() as List<int>),
      (this.button.getBytes() as List<int>),
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
    return 'SetBotMenuButton{ID: $ID, userId: $userId, button: $button}';
  }
}

class GetBotMenuButton extends BaseRequest {
  static const CONSTRUCTOR_ID = 2623597352;
  static const SUBCLASS_OF_ID = 1282522428;
  final classType = "request";
  final ID = 2623597352;
  var userId;

  GetBotMenuButton({required this.userId});

  static GetBotMenuButton fromReader(BinaryReader reader) {
    var len;
    var userId = reader.tgReadObject();
    return GetBotMenuButton(userId: userId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2623597352, 4),
      (this.userId.getBytes() as List<int>),
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
    return 'GetBotMenuButton{ID: $ID, userId: $userId}';
  }
}

class SetBotBroadcastDefaultAdminRights extends BaseRequest {
  static const CONSTRUCTOR_ID = 2021942497;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2021942497;
  var adminRights;

  SetBotBroadcastDefaultAdminRights({required this.adminRights});

  static SetBotBroadcastDefaultAdminRights fromReader(BinaryReader reader) {
    var len;
    var adminRights = reader.tgReadObject();
    return SetBotBroadcastDefaultAdminRights(adminRights: adminRights);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2021942497, 4),
      (this.adminRights.getBytes() as List<int>),
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
    return 'SetBotBroadcastDefaultAdminRights{ID: $ID, adminRights: $adminRights}';
  }
}

class SetBotGroupDefaultAdminRights extends BaseRequest {
  static const CONSTRUCTOR_ID = 2455685610;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2455685610;
  var adminRights;

  SetBotGroupDefaultAdminRights({required this.adminRights});

  static SetBotGroupDefaultAdminRights fromReader(BinaryReader reader) {
    var len;
    var adminRights = reader.tgReadObject();
    return SetBotGroupDefaultAdminRights(adminRights: adminRights);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2455685610, 4),
      (this.adminRights.getBytes() as List<int>),
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
    return 'SetBotGroupDefaultAdminRights{ID: $ID, adminRights: $adminRights}';
  }
}
