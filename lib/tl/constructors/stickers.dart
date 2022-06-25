import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_contructor.dart';

class SuggestedShortName extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2248056895;
  static const SUBCLASS_OF_ID = 3293203233;
  final classType = "constructor";
  final ID = 2248056895;
  String shortName;

  SuggestedShortName({required this.shortName});

  static SuggestedShortName fromReader(BinaryReader reader) {
    var len;
    var shortName = reader.tgReadString();
    return SuggestedShortName(shortName: shortName);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2248056895, 4),
      serializeBytes(this.shortName),
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
    return 'SuggestedShortName{ID: $ID, shortName: $shortName}';
  }
}
