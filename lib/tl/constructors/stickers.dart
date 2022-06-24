import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class SuggestedShortName {
    static const CONSTRUCTOR_ID = 2248056895;
    static const SUBCLASS_OF_ID = 3293203233;
    final classType = "constructor";
    final ID = 2248056895;
	String shortName;


	SuggestedShortName({required this.shortName});

	static SuggestedShortName fromReader(BinaryReader reader) {
	var temp,len;var shortName = reader.tgReadString();		return new SuggestedShortName(shortName : shortName);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2248056895,4),serializeBytes(this.shortName),].expand((element) => element).toList();}

}