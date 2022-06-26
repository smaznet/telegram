// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_contructor.dart';
import '../constructors/constructors.dart';
import '../constructors/help.dart' as help_ns;

abstract class AppUpdateBase extends BaseConstructor {}

class AppUpdate extends AppUpdateBase {
  static const CONSTRUCTOR_ID = 3434860080;
  static const SUBCLASS_OF_ID = 1486292638;
  final classType = "constructor";
  final ID = 3434860080;
  bool? canNotSkip;
  int id;
  String version;
  String text;
  List<MessageEntityBase> entities;
  DocumentBase? document;
  String? url;
  DocumentBase? sticker;

  AppUpdate(
      {this.canNotSkip,
      required this.id,
      required this.version,
      required this.text,
      required this.entities,
      this.document,
      this.url,
      this.sticker});

  static AppUpdate fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final canNotSkip = (flags & 1) == 1;
    var id = reader.readInt();
    var version = reader.tgReadString();
    var text = reader.tgReadString();
    var _vectorentities = reader.readInt();
    if (_vectorentities != 481674261) throw Exception('Wrong vectorId');
    List<MessageEntityBase> entities = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      entities.add(reader.tgReadObject());
    }
    var document;
    if ((flags & 2) == 2) {
      document = reader.tgReadObject();
    } else {
      document = null;
    }
    var url;
    if ((flags & 4) == 4) {
      url = reader.tgReadString();
    } else {
      url = null;
    }
    var sticker;
    if ((flags & 8) == 8) {
      sticker = reader.tgReadObject();
    } else {
      sticker = null;
    }
    return AppUpdate(
        canNotSkip: canNotSkip,
        id: id,
        version: version,
        text: text,
        entities: entities,
        document: document,
        url: url,
        sticker: sticker);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3434860080, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.id, 4, little: true, signed: true),
      serializeBytes(this.version),
      serializeBytes(this.text),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.entities.length, 4,
          little: true, signed: true),
      this
          .entities.map((x) => x.getBytes())
          .expand((element) => element),
      (this.document == null || this.document == false)
          ? List<int>.empty()
          : [(this.document!.getBytes())]
              .expand((element) => element)
              .toList(),
      (this.url == null || this.url == false)
          ? List<int>.empty()
          : [serializeBytes(this.url)].expand((element) => element).toList(),
      (this.sticker == null || this.sticker == false)
          ? List<int>.empty()
          : [(this.sticker!.getBytes())]
              .expand((element) => element)
              .toList(),
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
    return 'AppUpdate{ID: $ID, canNotSkip: $canNotSkip, id: $id, version: $version, text: $text, entities: $entities, document: $document, url: $url, sticker: $sticker}';
  }
}

class NoAppUpdate extends AppUpdateBase {
  static const CONSTRUCTOR_ID = 3294258486;
  static const SUBCLASS_OF_ID = 1486292638;
  final classType = "constructor";
  final ID = 3294258486;

  NoAppUpdate();

  static NoAppUpdate fromReader(BinaryReader reader) {
    return NoAppUpdate();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3294258486, 4),
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
    return 'NoAppUpdate{ID: $ID, }';
  }
}

class InviteText extends BaseConstructor {
  static const CONSTRUCTOR_ID = 415997816;
  static const SUBCLASS_OF_ID = 3480267317;
  final classType = "constructor";
  final ID = 415997816;
  String message;

  InviteText({required this.message});

  static InviteText fromReader(BinaryReader reader) {
    var message = reader.tgReadString();
    return InviteText(message: message);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(415997816, 4),
      serializeBytes(this.message),
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
    return 'InviteText{ID: $ID, message: $message}';
  }
}

class Support extends BaseConstructor {
  static const CONSTRUCTOR_ID = 398898678;
  static const SUBCLASS_OF_ID = 1901706475;
  final classType = "constructor";
  final ID = 398898678;
  String phoneNumber;
  UserBase user;

  Support({required this.phoneNumber, required this.user});

  static Support fromReader(BinaryReader reader) {
    var phoneNumber = reader.tgReadString();
    var user = reader.tgReadObject();
    return Support(phoneNumber: phoneNumber, user: user);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(398898678, 4),
      serializeBytes(this.phoneNumber),
      (this.user.getBytes()),
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
    return 'Support{ID: $ID, phoneNumber: $phoneNumber, user: $user}';
  }
}

class TermsOfService extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2013922064;
  static const SUBCLASS_OF_ID = 552502034;
  final classType = "constructor";
  final ID = 2013922064;
  bool? popup;
  DataJSON id;
  String text;
  List<MessageEntityBase> entities;
  int? minAgeConfirm;

  TermsOfService(
      {this.popup,
      required this.id,
      required this.text,
      required this.entities,
      this.minAgeConfirm});

  static TermsOfService fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final popup = (flags & 1) == 1;
    var id = reader.tgReadObject();
    var text = reader.tgReadString();
    var _vectorentities = reader.readInt();
    if (_vectorentities != 481674261) throw Exception('Wrong vectorId');
    List<MessageEntityBase> entities = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      entities.add(reader.tgReadObject());
    }
    var minAgeConfirm;
    if ((flags & 2) == 2) {
      minAgeConfirm = reader.readInt();
    } else {
      minAgeConfirm = null;
    }
    return TermsOfService(
        popup: popup,
        id: id,
        text: text,
        entities: entities,
        minAgeConfirm: minAgeConfirm);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2013922064, 4),
      [0, 0, 0, 0],
      (this.id.getBytes()),
      serializeBytes(this.text),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.entities.length, 4,
          little: true, signed: true),
      this
          .entities.map((x) => x.getBytes())
          .expand((element) => element),
      (this.minAgeConfirm == null || this.minAgeConfirm == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.minAgeConfirm, 4,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
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
    return 'TermsOfService{ID: $ID, popup: $popup, id: $id, text: $text, entities: $entities, minAgeConfirm: $minAgeConfirm}';
  }
}

class RecentMeUrls extends BaseConstructor {
  static const CONSTRUCTOR_ID = 235081943;
  static const SUBCLASS_OF_ID = 4067017847;
  final classType = "constructor";
  final ID = 235081943;
  List<RecentMeUrlBase> urls;
  List<ChatBase> chats;
  List<UserBase> users;

  RecentMeUrls({required this.urls, required this.chats, required this.users});

  static RecentMeUrls fromReader(BinaryReader reader) {
    var len;
    var _vectorurls = reader.readInt();
    if (_vectorurls != 481674261) throw Exception('Wrong vectorId');
    List<RecentMeUrlBase> urls = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      urls.add(reader.tgReadObject());
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
    return RecentMeUrls(urls: urls, chats: chats, users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(235081943, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.urls.length, 4, little: true, signed: true),
      this
          .urls.map((x) => x.getBytes())
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
    return 'RecentMeUrls{ID: $ID, urls: $urls, chats: $chats, users: $users}';
  }
}

abstract class TermsOfServiceUpdateBase extends BaseConstructor {}

class TermsOfServiceUpdateEmpty extends TermsOfServiceUpdateBase {
  static const CONSTRUCTOR_ID = 3811614591;
  static const SUBCLASS_OF_ID = 691808631;
  final classType = "constructor";
  final ID = 3811614591;
  int expires;

  TermsOfServiceUpdateEmpty({required this.expires});

  static TermsOfServiceUpdateEmpty fromReader(BinaryReader reader) {
    var expires = reader.readInt();
    return TermsOfServiceUpdateEmpty(expires: expires);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3811614591, 4),
      readBufferFromBigInt(this.expires, 4, little: true, signed: true),
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
    return 'TermsOfServiceUpdateEmpty{ID: $ID, expires: $expires}';
  }
}

class TermsOfServiceUpdate extends TermsOfServiceUpdateBase {
  static const CONSTRUCTOR_ID = 686618977;
  static const SUBCLASS_OF_ID = 691808631;
  final classType = "constructor";
  final ID = 686618977;
  int expires;
  help_ns.TermsOfService termsOfService;

  TermsOfServiceUpdate({required this.expires, required this.termsOfService});

  static TermsOfServiceUpdate fromReader(BinaryReader reader) {
    var expires = reader.readInt();
    var termsOfService = reader.tgReadObject();
    return TermsOfServiceUpdate(
        expires: expires, termsOfService: termsOfService);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(686618977, 4),
      readBufferFromBigInt(this.expires, 4, little: true, signed: true),
      (this.termsOfService.getBytes()),
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
    return 'TermsOfServiceUpdate{ID: $ID, expires: $expires, termsOfService: $termsOfService}';
  }
}

abstract class DeepLinkInfoBase extends BaseConstructor {}

class DeepLinkInfoEmpty extends DeepLinkInfoBase {
  static const CONSTRUCTOR_ID = 1722786150;
  static const SUBCLASS_OF_ID = 2555030584;
  final classType = "constructor";
  final ID = 1722786150;

  DeepLinkInfoEmpty();

  static DeepLinkInfoEmpty fromReader(BinaryReader reader) {
    return DeepLinkInfoEmpty();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1722786150, 4),
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
    return 'DeepLinkInfoEmpty{ID: $ID, }';
  }
}

class DeepLinkInfo extends DeepLinkInfoBase {
  static const CONSTRUCTOR_ID = 1783556146;
  static const SUBCLASS_OF_ID = 2555030584;
  final classType = "constructor";
  final ID = 1783556146;
  bool? updateApp;
  String message;
  List<MessageEntityBase>? entities;

  DeepLinkInfo({this.updateApp, required this.message, this.entities});

  static DeepLinkInfo fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final updateApp = (flags & 1) == 1;
    var message = reader.tgReadString();
    var entities;
    if ((flags & 2) == 2) {
      var _vectorentities = reader.readInt();
      if (_vectorentities != 481674261) throw Exception('Wrong vectorId');
      List<MessageEntityBase> entities = [];
      len = reader.readInt();
      for (var i = 0; i < len; i++) {
        entities.add(reader.tgReadObject());
      }
    } else {
      entities = null;
    }
    return DeepLinkInfo(
        updateApp: updateApp, message: message, entities: entities);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1783556146, 4),
      [0, 0, 0, 0],
      serializeBytes(this.message),
      (this.entities == null || this.entities == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
              readBufferFromBigInt(this.entities!.length, 4,
                  little: true, signed: true),
              this
                  .entities!
                  .map((x) => x.getBytes())
                  .expand((element) => element)
            ].expand((element) => element).toList(),
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
    return 'DeepLinkInfo{ID: $ID, updateApp: $updateApp, message: $message, entities: $entities}';
  }
}

abstract class PassportConfigBase extends BaseConstructor {}

class PassportConfigNotModified extends PassportConfigBase {
  static const CONSTRUCTOR_ID = 3216634967;
  static const SUBCLASS_OF_ID = 3328622765;
  final classType = "constructor";
  final ID = 3216634967;

  PassportConfigNotModified();

  static PassportConfigNotModified fromReader(BinaryReader reader) {
    return PassportConfigNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3216634967, 4),
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
    return 'PassportConfigNotModified{ID: $ID, }';
  }
}

class PassportConfig extends PassportConfigBase {
  static const CONSTRUCTOR_ID = 2694370991;
  static const SUBCLASS_OF_ID = 3328622765;
  final classType = "constructor";
  final ID = 2694370991;
  int hash;
  DataJSON countriesLangs;

  PassportConfig({required this.hash, required this.countriesLangs});

  static PassportConfig fromReader(BinaryReader reader) {
    var hash = reader.readInt();
    var countriesLangs = reader.tgReadObject();
    return PassportConfig(hash: hash, countriesLangs: countriesLangs);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2694370991, 4),
      readBufferFromBigInt(this.hash, 4, little: true, signed: true),
      (this.countriesLangs.getBytes()),
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
    return 'PassportConfig{ID: $ID, hash: $hash, countriesLangs: $countriesLangs}';
  }
}

class SupportName extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2349199817;
  static const SUBCLASS_OF_ID = 2135996354;
  final classType = "constructor";
  final ID = 2349199817;
  String name;

  SupportName({required this.name});

  static SupportName fromReader(BinaryReader reader) {
    var name = reader.tgReadString();
    return SupportName(name: name);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2349199817, 4),
      serializeBytes(this.name),
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
    return 'SupportName{ID: $ID, name: $name}';
  }
}

abstract class UserInfoBase extends BaseConstructor {}

class UserInfoEmpty extends UserInfoBase {
  static const CONSTRUCTOR_ID = 4088278765;
  static const SUBCLASS_OF_ID = 1548998616;
  final classType = "constructor";
  final ID = 4088278765;

  UserInfoEmpty();

  static UserInfoEmpty fromReader(BinaryReader reader) {
    return UserInfoEmpty();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4088278765, 4),
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
    return 'UserInfoEmpty{ID: $ID, }';
  }
}

class UserInfo extends UserInfoBase {
  static const CONSTRUCTOR_ID = 32192344;
  static const SUBCLASS_OF_ID = 1548998616;
  final classType = "constructor";
  final ID = 32192344;
  String message;
  List<MessageEntityBase> entities;
  String author;
  int date;

  UserInfo(
      {required this.message,
      required this.entities,
      required this.author,
      required this.date});

  static UserInfo fromReader(BinaryReader reader) {
    var len;
    var message = reader.tgReadString();
    var _vectorentities = reader.readInt();
    if (_vectorentities != 481674261) throw Exception('Wrong vectorId');
    List<MessageEntityBase> entities = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      entities.add(reader.tgReadObject());
    }
    var author = reader.tgReadString();
    var date = reader.readInt();
    return UserInfo(
        message: message, entities: entities, author: author, date: date);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(32192344, 4),
      serializeBytes(this.message),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.entities.length, 4,
          little: true, signed: true),
      this
          .entities.map((x) => x.getBytes())
          .expand((element) => element),
      serializeBytes(this.author),
      readBufferFromBigInt(this.date, 4, little: true, signed: true),
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
    return 'UserInfo{ID: $ID, message: $message, entities: $entities, author: $author, date: $date}';
  }
}

abstract class PromoDataBase extends BaseConstructor {}

class PromoDataEmpty extends PromoDataBase {
  static const CONSTRUCTOR_ID = 2566302837;
  static const SUBCLASS_OF_ID = 2639877442;
  final classType = "constructor";
  final ID = 2566302837;
  int expires;

  PromoDataEmpty({required this.expires});

  static PromoDataEmpty fromReader(BinaryReader reader) {
    var expires = reader.readInt();
    return PromoDataEmpty(expires: expires);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2566302837, 4),
      readBufferFromBigInt(this.expires, 4, little: true, signed: true),
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
    return 'PromoDataEmpty{ID: $ID, expires: $expires}';
  }
}

class PromoData extends PromoDataBase {
  static const CONSTRUCTOR_ID = 2352576831;
  static const SUBCLASS_OF_ID = 2639877442;
  final classType = "constructor";
  final ID = 2352576831;
  bool? proxy;
  int expires;
  PeerBase peer;
  List<ChatBase> chats;
  List<UserBase> users;
  String? psaType;
  String? psaMessage;

  PromoData(
      {this.proxy,
      required this.expires,
      required this.peer,
      required this.chats,
      required this.users,
      this.psaType,
      this.psaMessage});

  static PromoData fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final proxy = (flags & 1) == 1;
    var expires = reader.readInt();
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
    var psaType;
    if ((flags & 2) == 2) {
      psaType = reader.tgReadString();
    } else {
      psaType = null;
    }
    var psaMessage;
    if ((flags & 4) == 4) {
      psaMessage = reader.tgReadString();
    } else {
      psaMessage = null;
    }
    return PromoData(
        proxy: proxy,
        expires: expires,
        peer: peer,
        chats: chats,
        users: users,
        psaType: psaType,
        psaMessage: psaMessage);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2352576831, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.expires, 4, little: true, signed: true),
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
      (this.psaType == null || this.psaType == false)
          ? List<int>.empty()
          : [serializeBytes(this.psaType)]
              .expand((element) => element)
              .toList(),
      (this.psaMessage == null || this.psaMessage == false)
          ? List<int>.empty()
          : [serializeBytes(this.psaMessage)]
              .expand((element) => element)
              .toList(),
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
    return 'PromoData{ID: $ID, proxy: $proxy, expires: $expires, peer: $peer, chats: $chats, users: $users, psaType: $psaType, psaMessage: $psaMessage}';
  }
}

class CountryCode extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1107543535;
  static const SUBCLASS_OF_ID = 1995654757;
  final classType = "constructor";
  final ID = 1107543535;
  String countryCode;
  List<String>? prefixes;
  List<String>? patterns;

  CountryCode({required this.countryCode, this.prefixes, this.patterns});

  static CountryCode fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var countryCode = reader.tgReadString();
    var prefixes;
    if ((flags & 1) == 1) {
      var _vectorprefixes = reader.readInt();
      if (_vectorprefixes != 481674261) throw Exception('Wrong vectorId');
      List<String> prefixes = [];
      len = reader.readInt();
      for (var i = 0; i < len; i++) {
        prefixes.add(reader.tgReadString());
      }
    } else {
      prefixes = null;
    }
    var patterns;
    if ((flags & 2) == 2) {
      var _vectorpatterns = reader.readInt();
      if (_vectorpatterns != 481674261) throw Exception('Wrong vectorId');
      List<String> patterns = [];
      len = reader.readInt();
      for (var i = 0; i < len; i++) {
        patterns.add(reader.tgReadString());
      }
    } else {
      patterns = null;
    }
    return CountryCode(
        countryCode: countryCode, prefixes: prefixes, patterns: patterns);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1107543535, 4),
      [0, 0, 0, 0],
      serializeBytes(this.countryCode),
      (this.prefixes == null || this.prefixes == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
              readBufferFromBigInt(this.prefixes!.length, 4,
                  little: true, signed: true),
              this
                  .prefixes!
                  .map((x) => serializeBytes(x))
                  .expand((element) => element)
            ].expand((element) => element).toList(),
      (this.patterns == null || this.patterns == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
              readBufferFromBigInt(this.patterns!.length, 4,
                  little: true, signed: true),
              this
                  .patterns!
                  .map((x) => serializeBytes(x))
                  .expand((element) => element)
            ].expand((element) => element).toList(),
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
    return 'CountryCode{ID: $ID, countryCode: $countryCode, prefixes: $prefixes, patterns: $patterns}';
  }
}

class Country extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3280440867;
  static const SUBCLASS_OF_ID = 2720964136;
  final classType = "constructor";
  final ID = 3280440867;
  bool? hidden;
  String iso2;
  String defaultName;
  String? name;
  List<help_ns.CountryCode> countryCodes;

  Country(
      {this.hidden,
      required this.iso2,
      required this.defaultName,
      this.name,
      required this.countryCodes});

  static Country fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final hidden = (flags & 1) == 1;
    var iso2 = reader.tgReadString();
    var defaultName = reader.tgReadString();
    var name;
    if ((flags & 2) == 2) {
      name = reader.tgReadString();
    } else {
      name = null;
    }
    var _vectorcountryCodes = reader.readInt();
    if (_vectorcountryCodes != 481674261) throw Exception('Wrong vectorId');
    List<help_ns.CountryCode> countryCodes = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      countryCodes.add(reader.tgReadObject());
    }
    return Country(
        hidden: hidden,
        iso2: iso2,
        defaultName: defaultName,
        name: name,
        countryCodes: countryCodes);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3280440867, 4),
      [0, 0, 0, 0],
      serializeBytes(this.iso2),
      serializeBytes(this.defaultName),
      (this.name == null || this.name == false)
          ? List<int>.empty()
          : [serializeBytes(this.name)].expand((element) => element).toList(),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.countryCodes.length, 4,
          little: true, signed: true),
      this
          .countryCodes.map((x) => x.getBytes())
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
    return 'Country{ID: $ID, hidden: $hidden, iso2: $iso2, defaultName: $defaultName, name: $name, countryCodes: $countryCodes}';
  }
}

abstract class CountriesListBase extends BaseConstructor {}

class CountriesListNotModified extends CountriesListBase {
  static const CONSTRUCTOR_ID = 2479628082;
  static const SUBCLASS_OF_ID = 3929144968;
  final classType = "constructor";
  final ID = 2479628082;

  CountriesListNotModified();

  static CountriesListNotModified fromReader(BinaryReader reader) {
    return CountriesListNotModified();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2479628082, 4),
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
    return 'CountriesListNotModified{ID: $ID, }';
  }
}

class CountriesList extends CountriesListBase {
  static const CONSTRUCTOR_ID = 2278585758;
  static const SUBCLASS_OF_ID = 3929144968;
  final classType = "constructor";
  final ID = 2278585758;
  List<help_ns.Country> countries;
  int hash;

  CountriesList({required this.countries, required this.hash});

  static CountriesList fromReader(BinaryReader reader) {
    var len;
    var _vectorcountries = reader.readInt();
    if (_vectorcountries != 481674261) throw Exception('Wrong vectorId');
    List<help_ns.Country> countries = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      countries.add(reader.tgReadObject());
    }
    var hash = reader.readInt();
    return CountriesList(countries: countries, hash: hash);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2278585758, 4),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.countries.length, 4,
          little: true, signed: true),
      this
          .countries.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(this.hash, 4, little: true, signed: true),
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
    return 'CountriesList{ID: $ID, countries: $countries, hash: $hash}';
  }
}

class PremiumPromo extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2320448553;
  static const SUBCLASS_OF_ID = 3381109560;
  final classType = "constructor";
  final ID = 2320448553;
  String statusText;
  List<MessageEntityBase> statusEntities;
  List<String> videoSections;
  List<DocumentBase> videos;
  String currency;
  BigInt monthlyAmount;
  List<UserBase> users;

  PremiumPromo(
      {required this.statusText,
      required this.statusEntities,
      required this.videoSections,
      required this.videos,
      required this.currency,
      required this.monthlyAmount,
      required this.users});

  static PremiumPromo fromReader(BinaryReader reader) {
    var len;
    var statusText = reader.tgReadString();
    var _vectorstatusEntities = reader.readInt();
    if (_vectorstatusEntities != 481674261) throw Exception('Wrong vectorId');
    List<MessageEntityBase> statusEntities = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      statusEntities.add(reader.tgReadObject());
    }
    var _vectorvideoSections = reader.readInt();
    if (_vectorvideoSections != 481674261) throw Exception('Wrong vectorId');
    List<String> videoSections = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      videoSections.add(reader.tgReadString());
    }
    var _vectorvideos = reader.readInt();
    if (_vectorvideos != 481674261) throw Exception('Wrong vectorId');
    List<DocumentBase> videos = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      videos.add(reader.tgReadObject());
    }
    var currency = reader.tgReadString();
    var monthlyAmount = reader.readLong();
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return PremiumPromo(
        statusText: statusText,
        statusEntities: statusEntities,
        videoSections: videoSections,
        videos: videos,
        currency: currency,
        monthlyAmount: monthlyAmount,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2320448553, 4),
      serializeBytes(this.statusText),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.statusEntities.length, 4,
          little: true, signed: true),
      this
          .statusEntities.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.videoSections.length, 4,
          little: true, signed: true),
      this
          .videoSections.map((x) => serializeBytes(x))
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.videos.length, 4, little: true, signed: true),
      this
          .videos.map((x) => x.getBytes())
          .expand((element) => element),
      serializeBytes(this.currency),
      readBufferFromBigInt(this.monthlyAmount, 8, little: true, signed: true),
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
    return 'PremiumPromo{ID: $ID, statusText: $statusText, statusEntities: $statusEntities, videoSections: $videoSections, videos: $videos, currency: $currency, monthlyAmount: $monthlyAmount, users: $users}';
  }
}

class ConfigSimple extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1515793004;
  static const SUBCLASS_OF_ID = 689453764;
  final classType = "constructor";
  final ID = 1515793004;
  int date;
  int expires;
  List<AccessPointRule> rules;

  ConfigSimple(
      {required this.date, required this.expires, required this.rules});

  static ConfigSimple fromReader(BinaryReader reader) {
    var len;
    var date = reader.readInt();
    var expires = reader.readInt();
    List<AccessPointRule> rules = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      rules.add(reader.tgReadObject());
    }
    return ConfigSimple(date: date, expires: expires, rules: rules);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1515793004, 4),
      readBufferFromBigInt(this.date, 4, little: true, signed: true),
      readBufferFromBigInt(this.expires, 4, little: true, signed: true),
      readBufferFromBigInt(this.rules.length, 4, little: true, signed: true),
      this
          .rules.map((x) => x.getBytes())
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
    return 'ConfigSimple{ID: $ID, date: $date, expires: $expires, rules: $rules}';
  }
}
