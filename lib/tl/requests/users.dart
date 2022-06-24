import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class GetUsers {
    static const CONSTRUCTOR_ID = 227648840;
    static const SUBCLASS_OF_ID = 2508577761;
    final classType = "request";
    final ID = 227648840;
	List<dynamic> id;


	GetUsers({required this.id});

	static GetUsers fromReader(BinaryReader reader) {
	var temp,len;reader.readInt();
List<dynamic> id = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		id.add(reader.tgReadObject());
}		return new GetUsers(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(227648840,4),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.id.length,4,little:true,signed:true),this.id.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetFullUser {
    static const CONSTRUCTOR_ID = 3054459160;
    static const SUBCLASS_OF_ID = 926104839;
    final classType = "request";
    final ID = 3054459160;
	var id;


	GetFullUser({required this.id});

	static GetFullUser fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();		return new GetFullUser(id : id);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3054459160,4),(this.id.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SetSecureValueErrors {
    static const CONSTRUCTOR_ID = 2429064373;
    static const SUBCLASS_OF_ID = 1456026164;
    final classType = "request";
    final ID = 2429064373;
	var id;
	List<dynamic> errors;


	SetSecureValueErrors({required this.id, required this.errors});

	static SetSecureValueErrors fromReader(BinaryReader reader) {
	var temp,len;var id = reader.tgReadObject();reader.readInt();
List<dynamic> errors = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		errors.add(reader.tgReadObject());
}		return new SetSecureValueErrors(id : id, errors : errors);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2429064373,4),(this.id.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.errors.length,4,little:true,signed:true),this.errors.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}