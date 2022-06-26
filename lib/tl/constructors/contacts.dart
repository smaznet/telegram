// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_contructor.dart';
import '../constructors/constructors.dart';

abstract class ContactsBase extends BaseConstructor {}

class ContactsNotModified extends ContactsBase {
  static const CONSTRUCTOR_ID = 3075189202;
  static const SUBCLASS_OF_ID = 951985654;
  final classType = "constructor";
  final ID = 3075189202;

  ContactsNotModified();

  static ContactsNotModified fromReader(BinaryReader reader) {
    return ContactsNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3075189202, 4),
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
    return 'ContactsNotModified{ID: $ID, }';
  }
}

class Contacts extends ContactsBase {
  static const CONSTRUCTOR_ID = 3941105218;
  static const SUBCLASS_OF_ID = 951985654;
  final classType = "constructor";
  final ID = 3941105218;
  List<Contact> contacts;
  int savedCount;
  List<UserBase> users;

  Contacts(
      {required this.contacts, required this.savedCount, required this.users});

  static Contacts fromReader(BinaryReader reader) {
    var len;
    var _vectorcontacts = reader.readInt();
    if (_vectorcontacts != 481674261) throw Exception('Wrong vectorId');
    List<Contact> contacts = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      contacts.add(reader.tgReadObject());
    }
    var savedCount = reader.readInt();
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return Contacts(contacts: contacts, savedCount: savedCount, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3941105218, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.contacts.length, 4,
          little: true, signed: true),
      this
          .contacts.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(this.savedCount, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
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
    return 'Contacts{ID: $ID, contacts: $contacts, savedCount: $savedCount, users: $users}';
  }
}

class ImportedContacts extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2010127419;
  static const SUBCLASS_OF_ID = 2171776403;
  final classType = "constructor";
  final ID = 2010127419;
  List<ImportedContact> imported;
  List<PopularContact> popularInvites;
  List<BigInt> retryContacts;
  List<UserBase> users;

  ImportedContacts(
      {required this.imported,
      required this.popularInvites,
      required this.retryContacts,
      required this.users});

  static ImportedContacts fromReader(BinaryReader reader) {
    var len;
    var _vectorimported = reader.readInt();
    if (_vectorimported != 481674261) throw Exception('Wrong vectorId');
    List<ImportedContact> imported = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      imported.add(reader.tgReadObject());
    }
    var _vectorpopularInvites = reader.readInt();
    if (_vectorpopularInvites != 481674261) throw Exception('Wrong vectorId');
    List<PopularContact> popularInvites = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      popularInvites.add(reader.tgReadObject());
    }
    var _vectorretryContacts = reader.readInt();
    if (_vectorretryContacts != 481674261) throw Exception('Wrong vectorId');
    List<BigInt> retryContacts = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      retryContacts.add(reader.readLong());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return ImportedContacts(
        imported: imported,
        popularInvites: popularInvites,
        retryContacts: retryContacts,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2010127419, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.imported.length, 4,
          little: true, signed: true),
      this
          .imported.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.popularInvites.length, 4,
          little: true, signed: true),
      this
          .popularInvites.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.retryContacts.length, 4,
          little: true, signed: true),
      this
          .retryContacts.map((x) => readBufferFromBigInt(x, 8, little: true, signed: true))
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
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
    return 'ImportedContacts{ID: $ID, imported: $imported, popularInvites: $popularInvites, retryContacts: $retryContacts, users: $users}';
  }
}

abstract class BlockedBase extends BaseConstructor {}

class Blocked extends BlockedBase {
  static const CONSTRUCTOR_ID = 182326673;
  static const SUBCLASS_OF_ID = 4290400079;
  final classType = "constructor";
  final ID = 182326673;
  List<PeerBlocked> blocked;
  List<ChatBase> chats;
  List<UserBase> users;

  Blocked({required this.blocked, required this.chats, required this.users});

  static Blocked fromReader(BinaryReader reader) {
    var len;
    var _vectorblocked = reader.readInt();
    if (_vectorblocked != 481674261) throw Exception('Wrong vectorId');
    List<PeerBlocked> blocked = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      blocked.add(reader.tgReadObject());
    }
    var _vectorchats = reader.readInt();
    if (_vectorchats != 481674261) throw Exception('Wrong vectorId');
    List<ChatBase> chats = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      chats.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return Blocked(blocked: blocked, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(182326673, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.blocked.length, 4, little: true, signed: true),
      this
          .blocked.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.chats.length, 4, little: true, signed: true),
      this
          .chats.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
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
    return 'Blocked{ID: $ID, blocked: $blocked, chats: $chats, users: $users}';
  }
}

class BlockedSlice extends BlockedBase {
  static const CONSTRUCTOR_ID = 3781575060;
  static const SUBCLASS_OF_ID = 4290400079;
  final classType = "constructor";
  final ID = 3781575060;
  int count;
  List<PeerBlocked> blocked;
  List<ChatBase> chats;
  List<UserBase> users;

  BlockedSlice(
      {required this.count,
      required this.blocked,
      required this.chats,
      required this.users});

  static BlockedSlice fromReader(BinaryReader reader) {
    var len;
    var count = reader.readInt();
    var _vectorblocked = reader.readInt();
    if (_vectorblocked != 481674261) throw Exception('Wrong vectorId');
    List<PeerBlocked> blocked = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      blocked.add(reader.tgReadObject());
    }
    var _vectorchats = reader.readInt();
    if (_vectorchats != 481674261) throw Exception('Wrong vectorId');
    List<ChatBase> chats = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      chats.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return BlockedSlice(
        count: count, blocked: blocked, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3781575060, 4),
      readBufferFromBigInt(this.count, 4, little: true, signed: true),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.blocked.length, 4, little: true, signed: true),
      this
          .blocked.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.chats.length, 4, little: true, signed: true),
      this
          .chats.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
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
    return 'BlockedSlice{ID: $ID, count: $count, blocked: $blocked, chats: $chats, users: $users}';
  }
}

class Found extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3004386717;
  static const SUBCLASS_OF_ID = 1132896995;
  final classType = "constructor";
  final ID = 3004386717;
  List<PeerBase> myResults;
  List<PeerBase> results;
  List<ChatBase> chats;
  List<UserBase> users;

  Found(
      {required this.myResults,
      required this.results,
      required this.chats,
      required this.users});

  static Found fromReader(BinaryReader reader) {
    var len;
    var _vectormyResults = reader.readInt();
    if (_vectormyResults != 481674261) throw Exception('Wrong vectorId');
    List<PeerBase> myResults = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      myResults.add(reader.tgReadObject());
    }
    var _vectorresults = reader.readInt();
    if (_vectorresults != 481674261) throw Exception('Wrong vectorId');
    List<PeerBase> results = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      results.add(reader.tgReadObject());
    }
    var _vectorchats = reader.readInt();
    if (_vectorchats != 481674261) throw Exception('Wrong vectorId');
    List<ChatBase> chats = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      chats.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return Found(
        myResults: myResults, results: results, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3004386717, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.myResults.length, 4,
          little: true, signed: true),
      this
          .myResults.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.results.length, 4, little: true, signed: true),
      this
          .results.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.chats.length, 4, little: true, signed: true),
      this
          .chats.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
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
    return 'Found{ID: $ID, myResults: $myResults, results: $results, chats: $chats, users: $users}';
  }
}

class ResolvedPeer extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2131196633;
  static const SUBCLASS_OF_ID = 4033196968;
  final classType = "constructor";
  final ID = 2131196633;
  PeerBase peer;
  List<ChatBase> chats;
  List<UserBase> users;

  ResolvedPeer({required this.peer, required this.chats, required this.users});

  static ResolvedPeer fromReader(BinaryReader reader) {
    var len;
    var peer = reader.tgReadObject();
    var _vectorchats = reader.readInt();
    if (_vectorchats != 481674261) throw Exception('Wrong vectorId');
    List<ChatBase> chats = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      chats.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return ResolvedPeer(peer: peer, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2131196633, 4),
      (this.peer.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.chats.length, 4, little: true, signed: true),
      this
          .chats.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
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
    return 'ResolvedPeer{ID: $ID, peer: $peer, chats: $chats, users: $users}';
  }
}

abstract class TopPeersBase extends BaseConstructor {}

class TopPeersNotModified extends TopPeersBase {
  static const CONSTRUCTOR_ID = 3727060725;
  static const SUBCLASS_OF_ID = 2666052488;
  final classType = "constructor";
  final ID = 3727060725;

  TopPeersNotModified();

  static TopPeersNotModified fromReader(BinaryReader reader) {
    return TopPeersNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3727060725, 4),
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
    return 'TopPeersNotModified{ID: $ID, }';
  }
}

class TopPeers extends TopPeersBase {
  static const CONSTRUCTOR_ID = 1891070632;
  static const SUBCLASS_OF_ID = 2666052488;
  final classType = "constructor";
  final ID = 1891070632;
  List<TopPeerCategoryPeers> categories;
  List<ChatBase> chats;
  List<UserBase> users;

  TopPeers(
      {required this.categories, required this.chats, required this.users});

  static TopPeers fromReader(BinaryReader reader) {
    var len;
    var _vectorcategories = reader.readInt();
    if (_vectorcategories != 481674261) throw Exception('Wrong vectorId');
    List<TopPeerCategoryPeers> categories = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      categories.add(reader.tgReadObject());
    }
    var _vectorchats = reader.readInt();
    if (_vectorchats != 481674261) throw Exception('Wrong vectorId');
    List<ChatBase> chats = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      chats.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return TopPeers(categories: categories, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1891070632, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.categories.length, 4,
          little: true, signed: true),
      this
          .categories.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.chats.length, 4, little: true, signed: true),
      this
          .chats.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
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
    return 'TopPeers{ID: $ID, categories: $categories, chats: $chats, users: $users}';
  }
}

class TopPeersDisabled extends TopPeersBase {
  static const CONSTRUCTOR_ID = 3039597469;
  static const SUBCLASS_OF_ID = 2666052488;
  final classType = "constructor";
  final ID = 3039597469;

  TopPeersDisabled();

  static TopPeersDisabled fromReader(BinaryReader reader) {
    return TopPeersDisabled();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3039597469, 4),
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
    return 'TopPeersDisabled{ID: $ID, }';
  }
}
