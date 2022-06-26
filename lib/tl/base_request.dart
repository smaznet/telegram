import 'package:telegram/tl/tlobject.dart';

import '../extensions/binary_reader.dart';

abstract class BaseRequest<T, X> extends TLObject {
  readResult(BinaryReader reader);
}
