import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_request.dart';

class EditPeerFolders extends BaseRequest {
  static const CONSTRUCTOR_ID = 1749536939;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 1749536939;
  List<dynamic> folderPeers;

  EditPeerFolders({required this.folderPeers});

  static EditPeerFolders fromReader(BinaryReader reader) {
    var len;
    var _vectorfolderPeers = reader.readInt();
    if (_vectorfolderPeers != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> folderPeers = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      folderPeers.add(reader.tgReadObject());
    }
    return EditPeerFolders(folderPeers: folderPeers);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1749536939, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.folderPeers!.length, 4,
          little: true, signed: true),
      this
          .folderPeers!
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
    return 'EditPeerFolders{ID: $ID, folderPeers: $folderPeers}';
  }
}

class DeleteFolder extends BaseRequest {
  static const CONSTRUCTOR_ID = 472471681;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 472471681;
  int folderId;

  DeleteFolder({required this.folderId});

  static DeleteFolder fromReader(BinaryReader reader) {
    var len;
    var folderId = reader.readInt();
    return DeleteFolder(folderId: folderId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(472471681, 4),
      readBufferFromBigInt(this.folderId, 4, little: true, signed: true),
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
    return 'DeleteFolder{ID: $ID, folderId: $folderId}';
  }
}
