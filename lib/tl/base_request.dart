import 'package:telegram/tl/tlobject.dart';

import '../extensions/binary_reader.dart';

abstract class BaseRequest extends TLObject {
  readResult(BinaryReader reader);
}
