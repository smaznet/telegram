// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_request.dart';
import '../constructors/messages.dart' as messages_ns;
import '../constructors/constructors.dart';
import '../constructors/stickers.dart' as stickers_ns;

class CreateStickerSet
    extends BaseRequest<messages_ns.StickerSetBase, dynamic> {
  static const CONSTRUCTOR_ID = 2418125671;
  static const SUBCLASS_OF_ID = 2607827546;
  final classType = "request";
  final ID = 2418125671;
  bool? masks;
  bool? animated;
  bool? videos;
  InputUserBase userId;
  String title;
  String shortName;
  InputDocumentBase? thumb;
  List<InputStickerSetItem> stickers;
  String? software;

  CreateStickerSet(
      {this.masks,
      this.animated,
      this.videos,
      required this.userId,
      required this.title,
      required this.shortName,
      this.thumb,
      required this.stickers,
      this.software});

  static CreateStickerSet fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final masks = (flags & 1) == 1;
    final animated = (flags & 2) == 2;
    final videos = (flags & 16) == 16;
    var userId = reader.tgReadObject();
    var title = reader.tgReadString();
    var shortName = reader.tgReadString();
    var thumb;
    if ((flags & 4) == 4) {
      thumb = reader.tgReadObject();
    } else {
      thumb = null;
    }
    var _vectorstickers = reader.readInt();
    if (_vectorstickers != 481674261) throw Exception('Wrong vectorId');
    List<InputStickerSetItem> stickers = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      stickers.add(reader.tgReadObject());
    }
    var software;
    if ((flags & 8) == 8) {
      software = reader.tgReadString();
    } else {
      software = null;
    }
    return CreateStickerSet(
        masks: masks,
        animated: animated,
        videos: videos,
        userId: userId,
        title: title,
        shortName: shortName,
        thumb: thumb,
        stickers: stickers,
        software: software);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2418125671, 4),
      [0, 0, 0, 0],
      (this.userId.getBytes()),
      serializeBytes(this.title),
      serializeBytes(this.shortName),
      (this.thumb == null || this.thumb == false)
          ? List<int>.empty()
          : [(this.thumb!.getBytes())]
              .expand((element) => element)
              .toList(),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.stickers.length, 4,
          little: true, signed: true),
      this
          .stickers.map((x) => x.getBytes())
          .expand((element) => element),
      (this.software == null || this.software == false)
          ? List<int>.empty()
          : [serializeBytes(this.software)]
              .expand((element) => element)
              .toList(),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.StickerSetBase, dynamic>();
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
    return 'CreateStickerSet{ID: $ID, masks: $masks, animated: $animated, videos: $videos, userId: $userId, title: $title, shortName: $shortName, thumb: $thumb, stickers: $stickers, software: $software}';
  }
}

class RemoveStickerFromSet
    extends BaseRequest<messages_ns.StickerSetBase, dynamic> {
  static const CONSTRUCTOR_ID = 4151709521;
  static const SUBCLASS_OF_ID = 2607827546;
  final classType = "request";
  final ID = 4151709521;
  InputDocumentBase sticker;

  RemoveStickerFromSet({required this.sticker});

  static RemoveStickerFromSet fromReader(BinaryReader reader) {
    var sticker = reader.tgReadObject();
    return RemoveStickerFromSet(sticker: sticker);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4151709521, 4),
      (this.sticker.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.StickerSetBase, dynamic>();
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
    return 'RemoveStickerFromSet{ID: $ID, sticker: $sticker}';
  }
}

class ChangeStickerPosition
    extends BaseRequest<messages_ns.StickerSetBase, dynamic> {
  static const CONSTRUCTOR_ID = 4290172106;
  static const SUBCLASS_OF_ID = 2607827546;
  final classType = "request";
  final ID = 4290172106;
  InputDocumentBase sticker;
  int position;

  ChangeStickerPosition({required this.sticker, required this.position});

  static ChangeStickerPosition fromReader(BinaryReader reader) {
    var sticker = reader.tgReadObject();
    var position = reader.readInt();
    return ChangeStickerPosition(sticker: sticker, position: position);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4290172106, 4),
      (this.sticker.getBytes()),
      readBufferFromBigInt(this.position, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.StickerSetBase, dynamic>();
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
    return 'ChangeStickerPosition{ID: $ID, sticker: $sticker, position: $position}';
  }
}

class AddStickerToSet extends BaseRequest<messages_ns.StickerSetBase, dynamic> {
  static const CONSTRUCTOR_ID = 2253651646;
  static const SUBCLASS_OF_ID = 2607827546;
  final classType = "request";
  final ID = 2253651646;
  InputStickerSetBase stickerset;
  InputStickerSetItem sticker;

  AddStickerToSet({required this.stickerset, required this.sticker});

  static AddStickerToSet fromReader(BinaryReader reader) {
    var stickerset = reader.tgReadObject();
    var sticker = reader.tgReadObject();
    return AddStickerToSet(stickerset: stickerset, sticker: sticker);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2253651646, 4),
      (this.stickerset.getBytes()),
      (this.sticker.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.StickerSetBase, dynamic>();
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
    return 'AddStickerToSet{ID: $ID, stickerset: $stickerset, sticker: $sticker}';
  }
}

class SetStickerSetThumb
    extends BaseRequest<messages_ns.StickerSetBase, dynamic> {
  static const CONSTRUCTOR_ID = 2587250224;
  static const SUBCLASS_OF_ID = 2607827546;
  final classType = "request";
  final ID = 2587250224;
  InputStickerSetBase stickerset;
  InputDocumentBase thumb;

  SetStickerSetThumb({required this.stickerset, required this.thumb});

  static SetStickerSetThumb fromReader(BinaryReader reader) {
    var stickerset = reader.tgReadObject();
    var thumb = reader.tgReadObject();
    return SetStickerSetThumb(stickerset: stickerset, thumb: thumb);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2587250224, 4),
      (this.stickerset.getBytes()),
      (this.thumb.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<messages_ns.StickerSetBase, dynamic>();
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
    return 'SetStickerSetThumb{ID: $ID, stickerset: $stickerset, thumb: $thumb}';
  }
}

class CheckShortName extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 676017721;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 676017721;
  String shortName;

  CheckShortName({required this.shortName});

  static CheckShortName fromReader(BinaryReader reader) {
    var shortName = reader.tgReadString();
    return CheckShortName(shortName: shortName);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(676017721, 4),
      serializeBytes(this.shortName),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<bool, dynamic>();
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
    return 'CheckShortName{ID: $ID, shortName: $shortName}';
  }
}

class SuggestShortName
    extends BaseRequest<stickers_ns.SuggestedShortName, dynamic> {
  static const CONSTRUCTOR_ID = 1303364867;
  static const SUBCLASS_OF_ID = 3293203233;
  final classType = "request";
  final ID = 1303364867;
  String title;

  SuggestShortName({required this.title});

  static SuggestShortName fromReader(BinaryReader reader) {
    var title = reader.tgReadString();
    return SuggestShortName(title: title);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1303364867, 4),
      serializeBytes(this.title),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<stickers_ns.SuggestedShortName, dynamic>();
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
    return 'SuggestShortName{ID: $ID, title: $title}';
  }
}
