import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_contructor.dart';

class UserFull extends BaseConstructor {
  static const CONSTRUCTOR_ID = 997004590;
  static const SUBCLASS_OF_ID = 2212470261;
  final classType = "constructor";
  final ID = 997004590;
  var fullUser;
  List<dynamic> chats;
  List<dynamic> users;

  UserFull({required this.fullUser, required this.chats, required this.users});

  static UserFull fromReader(BinaryReader reader) {
    var len;
    var fullUser = reader.tgReadObject();
    var _vectorchats = reader.readInt();
    if (_vectorchats != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> chats = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      chats.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return UserFull(fullUser: fullUser, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(997004590, 4),
      (this.fullUser.getBytes() as List<int>),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.chats!.length, 4, little: true, signed: true),
      this
          .chats!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users!.length, 4, little: true, signed: true),
      this
          .users!
          .map((x) => (x.getBytes() as List<int>))
          .expand((element) => element),
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
    return 'UserFull{ID: $ID, fullUser: $fullUser, chats: $chats, users: $users}';
  }
}
