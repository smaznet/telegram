import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class SendCustomRequest {
    static const CONSTRUCTOR_ID = 2854709741;
    static const SUBCLASS_OF_ID = 1992315082;
    final classType = "request";
    final ID = 2854709741;
	String customMethod;
	var params;


	SendCustomRequest({required this.customMethod, required this.params});

	static SendCustomRequest fromReader(BinaryReader reader) {
	var temp,len;var customMethod = reader.tgReadString();var params = reader.tgReadObject();		return new SendCustomRequest(customMethod : customMethod, params : params);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2854709741,4),serializeBytes(this.customMethod),(this.params.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class AnswerWebhookJSONQuery {
    static const CONSTRUCTOR_ID = 3860938573;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 3860938573;
	BigInt queryId;
	var data;


	AnswerWebhookJSONQuery({required this.queryId, required this.data});

	static AnswerWebhookJSONQuery fromReader(BinaryReader reader) {
	var temp,len;var queryId = reader.readLong();var data = reader.tgReadObject();		return new AnswerWebhookJSONQuery(queryId : queryId, data : data);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3860938573,4),readBufferFromBigInt(this.queryId,8,little:true,signed:true),(this.data.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetBotCommands {
    static const CONSTRUCTOR_ID = 85399130;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 85399130;
	var scope;
	String langCode;
	List<dynamic> commands;


	SetBotCommands({required this.scope, required this.langCode, required this.commands});

	static SetBotCommands fromReader(BinaryReader reader) {
	var temp,len;var scope = reader.tgReadObject();var langCode = reader.tgReadString();reader.readInt();
List<dynamic> commands = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		commands.add(reader.tgReadObject());
}		return new SetBotCommands(scope : scope, langCode : langCode, commands : commands);
	}
	List<int> getBytes(){return [readBufferFromBigInt(85399130,4),(this.scope.getBytes() as List<int>),serializeBytes(this.langCode),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.commands.length,4,little:true,signed:true),this.commands.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ResetBotCommands {
    static const CONSTRUCTOR_ID = 1032708345;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 1032708345;
	var scope;
	String langCode;


	ResetBotCommands({required this.scope, required this.langCode});

	static ResetBotCommands fromReader(BinaryReader reader) {
	var temp,len;var scope = reader.tgReadObject();var langCode = reader.tgReadString();		return new ResetBotCommands(scope : scope, langCode : langCode);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1032708345,4),(this.scope.getBytes() as List<int>),serializeBytes(this.langCode),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetBotCommands {
    static const CONSTRUCTOR_ID = 3813412310;
    static const SUBCLASS_OF_ID = 565494953;
    final classType = "request";
    final ID = 3813412310;
	var scope;
	String langCode;


	GetBotCommands({required this.scope, required this.langCode});

	static GetBotCommands fromReader(BinaryReader reader) {
	var temp,len;var scope = reader.tgReadObject();var langCode = reader.tgReadString();		return new GetBotCommands(scope : scope, langCode : langCode);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3813412310,4),(this.scope.getBytes() as List<int>),serializeBytes(this.langCode),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetBotMenuButton {
    static const CONSTRUCTOR_ID = 1157944655;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 1157944655;
	var userId;
	var button;


	SetBotMenuButton({required this.userId, required this.button});

	static SetBotMenuButton fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.tgReadObject();var button = reader.tgReadObject();		return new SetBotMenuButton(userId : userId, button : button);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1157944655,4),(this.userId.getBytes() as List<int>),(this.button.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetBotMenuButton {
    static const CONSTRUCTOR_ID = 2623597352;
    static const SUBCLASS_OF_ID = 577571731;
    final classType = "request";
    final ID = 2623597352;
	var userId;


	GetBotMenuButton({required this.userId});

	static GetBotMenuButton fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.tgReadObject();		return new GetBotMenuButton(userId : userId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2623597352,4),(this.userId.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetBotBroadcastDefaultAdminRights {
    static const CONSTRUCTOR_ID = 2021942497;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 2021942497;
	var adminRights;


	SetBotBroadcastDefaultAdminRights({required this.adminRights});

	static SetBotBroadcastDefaultAdminRights fromReader(BinaryReader reader) {
	var temp,len;var adminRights = reader.tgReadObject();		return new SetBotBroadcastDefaultAdminRights(adminRights : adminRights);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2021942497,4),(this.adminRights.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetBotGroupDefaultAdminRights {
    static const CONSTRUCTOR_ID = 2455685610;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 2455685610;
	var adminRights;


	SetBotGroupDefaultAdminRights({required this.adminRights});

	static SetBotGroupDefaultAdminRights fromReader(BinaryReader reader) {
	var temp,len;var adminRights = reader.tgReadObject();		return new SetBotGroupDefaultAdminRights(adminRights : adminRights);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2455685610,4),(this.adminRights.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}