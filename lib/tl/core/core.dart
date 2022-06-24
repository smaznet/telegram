import 'GZIP_packed.dart';
import 'RPC_result.dart';
import 'message_container.dart';

final coreObjects = {
  RPCResult.CONSTRUCTOR_ID: (reader) => RPCResult.fromReader(reader),
  GZIPPacked.CONSTRUCTOR_ID: (reader) => GZIPPacked.fromReader(reader),
  MessageContainer.CONSTRUCTOR_ID: (reader) =>
      MessageContainer.fromReader(reader),
};
