import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_contructor.dart';

class PaymentForm extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2954050359;
  static const SUBCLASS_OF_ID = 2689089305;
  final classType = "constructor";
  final ID = 2954050359;
  bool? canSaveCredentials;
  bool? passwordMissing;
  BigInt formId;
  BigInt botId;
  String title;
  String description;
  var photo;
  var invoice;
  BigInt providerId;
  String url;
  String? nativeProvider;
  var nativeParams;
  var savedInfo;
  var savedCredentials;
  List<dynamic> users;

  PaymentForm(
      {required this.canSaveCredentials,
      required this.passwordMissing,
      required this.formId,
      required this.botId,
      required this.title,
      required this.description,
      required this.photo,
      required this.invoice,
      required this.providerId,
      required this.url,
      required this.nativeProvider,
      required this.nativeParams,
      required this.savedInfo,
      required this.savedCredentials,
      required this.users});

  static PaymentForm fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final canSaveCredentials = (flags & 4) == 4;
    final passwordMissing = (flags & 8) == 8;
    var formId = reader.readLong();
    var botId = reader.readLong();
    var title = reader.tgReadString();
    var description = reader.tgReadString();
    var photo;
    if ((flags & 32) == 32) {
      photo = reader.tgReadObject();
    } else {
      photo = null;
    }
    var invoice = reader.tgReadObject();
    var providerId = reader.readLong();
    var url = reader.tgReadString();
    var nativeProvider;
    if ((flags & 16) == 16) {
      nativeProvider = reader.tgReadString();
    } else {
      nativeProvider = null;
    }
    var nativeParams;
    if ((flags & 16) == 16) {
      nativeParams = reader.tgReadObject();
    } else {
      nativeParams = null;
    }
    var savedInfo;
    if ((flags & 1) == 1) {
      savedInfo = reader.tgReadObject();
    } else {
      savedInfo = null;
    }
    var savedCredentials;
    if ((flags & 2) == 2) {
      savedCredentials = reader.tgReadObject();
    } else {
      savedCredentials = null;
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return PaymentForm(
        canSaveCredentials: canSaveCredentials,
        passwordMissing: passwordMissing,
        formId: formId,
        botId: botId,
        title: title,
        description: description,
        photo: photo,
        invoice: invoice,
        providerId: providerId,
        url: url,
        nativeProvider: nativeProvider,
        nativeParams: nativeParams,
        savedInfo: savedInfo,
        savedCredentials: savedCredentials,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2954050359, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.formId, 8, little: true, signed: true),
      readBufferFromBigInt(this.botId, 8, little: true, signed: true),
      serializeBytes(this.title),
      serializeBytes(this.description),
      (this.photo == null || this.photo == false)
          ? List<int>.empty()
          : [(this.photo.getBytes() as List<int>)]
              .expand((element) => element)
              .toList(),
      (this.invoice.getBytes() as List<int>),
      readBufferFromBigInt(this.providerId, 8, little: true, signed: true),
      serializeBytes(this.url),
      (this.nativeProvider == null || this.nativeProvider == false)
          ? List<int>.empty()
          : [serializeBytes(this.nativeProvider)]
              .expand((element) => element)
              .toList(),
      (this.nativeParams == null || this.nativeParams == false)
          ? List<int>.empty()
          : [(this.nativeParams.getBytes() as List<int>)]
              .expand((element) => element)
              .toList(),
      (this.savedInfo == null || this.savedInfo == false)
          ? List<int>.empty()
          : [(this.savedInfo.getBytes() as List<int>)]
              .expand((element) => element)
              .toList(),
      (this.savedCredentials == null || this.savedCredentials == false)
          ? List<int>.empty()
          : [(this.savedCredentials.getBytes() as List<int>)]
              .expand((element) => element)
              .toList(),
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
    return 'PaymentForm{ID: $ID, canSaveCredentials: $canSaveCredentials, passwordMissing: $passwordMissing, formId: $formId, botId: $botId, title: $title, description: $description, photo: $photo, invoice: $invoice, providerId: $providerId, url: $url, nativeProvider: $nativeProvider, nativeParams: $nativeParams, savedInfo: $savedInfo, savedCredentials: $savedCredentials, users: $users}';
  }
}

class ValidatedRequestedInfo extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3510966403;
  static const SUBCLASS_OF_ID = 2407548087;
  final classType = "constructor";
  final ID = 3510966403;
  String? id;
  List<dynamic>? shippingOptions;

  ValidatedRequestedInfo({required this.id, required this.shippingOptions});

  static ValidatedRequestedInfo fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var id;
    if ((flags & 1) == 1) {
      id = reader.tgReadString();
    } else {
      id = null;
    }
    var shippingOptions;
    if ((flags & 2) == 2) {
      var _vectorshippingOptions = reader.readInt();
      if (_vectorshippingOptions != 481674261)
        throw Exception('Wrong vectorId');
      List<dynamic> shippingOptions = [];
      len = reader.readInt();
      for (var i = 0; i < len; i++) {
        shippingOptions.add(reader.tgReadObject());
      }
    } else {
      shippingOptions = null;
    }
    return ValidatedRequestedInfo(id: id, shippingOptions: shippingOptions);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3510966403, 4),
      [0, 0, 0, 0],
      (this.id == null || this.id == false)
          ? List<int>.empty()
          : [serializeBytes(this.id)].expand((element) => element).toList(),
      (this.shippingOptions == null || this.shippingOptions == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
              readBufferFromBigInt(this.shippingOptions!.length, 4,
                  little: true, signed: true),
              this
                  .shippingOptions!
                  .map((x) => (x.getBytes() as List<int>))
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
    return 'ValidatedRequestedInfo{ID: $ID, id: $id, shippingOptions: $shippingOptions}';
  }
}

class PaymentResult extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1314881805;
  static const SUBCLASS_OF_ID = 2330028701;
  final classType = "constructor";
  final ID = 1314881805;
  var updates;

  PaymentResult({required this.updates});

  static PaymentResult fromReader(BinaryReader reader) {
    var len;
    var updates = reader.tgReadObject();
    return PaymentResult(updates: updates);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1314881805, 4),
      (this.updates.getBytes() as List<int>),
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
    return 'PaymentResult{ID: $ID, updates: $updates}';
  }
}

class PaymentVerificationNeeded extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3628142905;
  static const SUBCLASS_OF_ID = 2330028701;
  final classType = "constructor";
  final ID = 3628142905;
  String url;

  PaymentVerificationNeeded({required this.url});

  static PaymentVerificationNeeded fromReader(BinaryReader reader) {
    var len;
    var url = reader.tgReadString();
    return PaymentVerificationNeeded(url: url);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3628142905, 4),
      serializeBytes(this.url),
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
    return 'PaymentVerificationNeeded{ID: $ID, url: $url}';
  }
}

class PaymentReceipt extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1891958275;
  static const SUBCLASS_OF_ID = 1493210057;
  final classType = "constructor";
  final ID = 1891958275;
  int date;
  BigInt botId;
  BigInt providerId;
  String title;
  String description;
  var photo;
  var invoice;
  var info;
  var shipping;
  BigInt? tipAmount;
  String currency;
  BigInt totalAmount;
  String credentialsTitle;
  List<dynamic> users;

  PaymentReceipt(
      {required this.date,
      required this.botId,
      required this.providerId,
      required this.title,
      required this.description,
      required this.photo,
      required this.invoice,
      required this.info,
      required this.shipping,
      required this.tipAmount,
      required this.currency,
      required this.totalAmount,
      required this.credentialsTitle,
      required this.users});

  static PaymentReceipt fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var date = reader.readInt();
    var botId = reader.readLong();
    var providerId = reader.readLong();
    var title = reader.tgReadString();
    var description = reader.tgReadString();
    var photo;
    if ((flags & 4) == 4) {
      photo = reader.tgReadObject();
    } else {
      photo = null;
    }
    var invoice = reader.tgReadObject();
    var info;
    if ((flags & 1) == 1) {
      info = reader.tgReadObject();
    } else {
      info = null;
    }
    var shipping;
    if ((flags & 2) == 2) {
      shipping = reader.tgReadObject();
    } else {
      shipping = null;
    }
    var tipAmount;
    if ((flags & 8) == 8) {
      tipAmount = reader.readLong();
    } else {
      tipAmount = null;
    }
    var currency = reader.tgReadString();
    var totalAmount = reader.readLong();
    var credentialsTitle = reader.tgReadString();
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return PaymentReceipt(
        date: date,
        botId: botId,
        providerId: providerId,
        title: title,
        description: description,
        photo: photo,
        invoice: invoice,
        info: info,
        shipping: shipping,
        tipAmount: tipAmount,
        currency: currency,
        totalAmount: totalAmount,
        credentialsTitle: credentialsTitle,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1891958275, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.date, 4, little: true, signed: true),
      readBufferFromBigInt(this.botId, 8, little: true, signed: true),
      readBufferFromBigInt(this.providerId, 8, little: true, signed: true),
      serializeBytes(this.title),
      serializeBytes(this.description),
      (this.photo == null || this.photo == false)
          ? List<int>.empty()
          : [(this.photo.getBytes() as List<int>)]
              .expand((element) => element)
              .toList(),
      (this.invoice.getBytes() as List<int>),
      (this.info == null || this.info == false)
          ? List<int>.empty()
          : [(this.info.getBytes() as List<int>)]
              .expand((element) => element)
              .toList(),
      (this.shipping == null || this.shipping == false)
          ? List<int>.empty()
          : [(this.shipping.getBytes() as List<int>)]
              .expand((element) => element)
              .toList(),
      (this.tipAmount == null || this.tipAmount == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.tipAmount, 8,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
      serializeBytes(this.currency),
      readBufferFromBigInt(this.totalAmount, 8, little: true, signed: true),
      serializeBytes(this.credentialsTitle),
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
    return 'PaymentReceipt{ID: $ID, date: $date, botId: $botId, providerId: $providerId, title: $title, description: $description, photo: $photo, invoice: $invoice, info: $info, shipping: $shipping, tipAmount: $tipAmount, currency: $currency, totalAmount: $totalAmount, credentialsTitle: $credentialsTitle, users: $users}';
  }
}

class SavedInfo extends BaseConstructor {
  static const CONSTRUCTOR_ID = 4220511292;
  static const SUBCLASS_OF_ID = 2906452294;
  final classType = "constructor";
  final ID = 4220511292;
  bool? hasSavedCredentials;
  var savedInfo;

  SavedInfo({required this.hasSavedCredentials, required this.savedInfo});

  static SavedInfo fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final hasSavedCredentials = (flags & 2) == 2;
    var savedInfo;
    if ((flags & 1) == 1) {
      savedInfo = reader.tgReadObject();
    } else {
      savedInfo = null;
    }
    return SavedInfo(
        hasSavedCredentials: hasSavedCredentials, savedInfo: savedInfo);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4220511292, 4),
      [0, 0, 0, 0],
      (this.savedInfo == null || this.savedInfo == false)
          ? List<int>.empty()
          : [(this.savedInfo.getBytes() as List<int>)]
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
    return 'SavedInfo{ID: $ID, hasSavedCredentials: $hasSavedCredentials, savedInfo: $savedInfo}';
  }
}

class BankCardData extends BaseConstructor {
  static const CONSTRUCTOR_ID = 1042605427;
  static const SUBCLASS_OF_ID = 2356008587;
  final classType = "constructor";
  final ID = 1042605427;
  String title;
  List<dynamic> openUrls;

  BankCardData({required this.title, required this.openUrls});

  static BankCardData fromReader(BinaryReader reader) {
    var len;
    var title = reader.tgReadString();
    var _vectoropenUrls = reader.readInt();
    if (_vectoropenUrls != 481674261) throw Exception('Wrong vectorId');
    List<dynamic> openUrls = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      openUrls.add(reader.tgReadObject());
    }
    return BankCardData(title: title, openUrls: openUrls);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1042605427, 4),
      serializeBytes(this.title),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.openUrls!.length, 4,
          little: true, signed: true),
      this
          .openUrls!
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
    return 'BankCardData{ID: $ID, title: $title, openUrls: $openUrls}';
  }
}

class ExportedInvoice extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2932919257;
  static const SUBCLASS_OF_ID = 907039794;
  final classType = "constructor";
  final ID = 2932919257;
  String url;

  ExportedInvoice({required this.url});

  static ExportedInvoice fromReader(BinaryReader reader) {
    var len;
    var url = reader.tgReadString();
    return ExportedInvoice(url: url);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2932919257, 4),
      serializeBytes(this.url),
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
    return 'ExportedInvoice{ID: $ID, url: $url}';
  }
}
