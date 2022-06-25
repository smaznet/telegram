import '../../utils.dart';
import '../../extensions/binary_reader.dart';

import '../base_request.dart';

class GetPaymentForm extends BaseRequest {
  static const CONSTRUCTOR_ID = 2318613645;
  static const SUBCLASS_OF_ID = 2689089305;
  final classType = "request";
  final ID = 2318613645;
  var peer;
  int msgId;
  var themeParams;

  GetPaymentForm(
      {required this.peer, required this.msgId, required this.themeParams});

  static GetPaymentForm fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var peer = reader.tgReadObject();
    var msgId = reader.readInt();
    var themeParams;
    if ((flags & 1) == 1) {
      themeParams = reader.tgReadObject();
    } else {
      themeParams = null;
    }
    return GetPaymentForm(peer: peer, msgId: msgId, themeParams: themeParams);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2318613645, 4),
      [0, 0, 0, 0],
      (this.peer.getBytes() as List<int>),
      readBufferFromBigInt(this.msgId, 4, little: true, signed: true),
      (this.themeParams == null || this.themeParams == false)
          ? List<int>.empty()
          : [(this.themeParams.getBytes() as List<int>)]
              .expand((element) => element)
              .toList(),
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
    return 'GetPaymentForm{ID: $ID, peer: $peer, msgId: $msgId, themeParams: $themeParams}';
  }
}

class GetPaymentReceipt extends BaseRequest {
  static const CONSTRUCTOR_ID = 611897804;
  static const SUBCLASS_OF_ID = 1493210057;
  final classType = "request";
  final ID = 611897804;
  var peer;
  int msgId;

  GetPaymentReceipt({required this.peer, required this.msgId});

  static GetPaymentReceipt fromReader(BinaryReader reader) {
    var len;
    var peer = reader.tgReadObject();
    var msgId = reader.readInt();
    return GetPaymentReceipt(peer: peer, msgId: msgId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(611897804, 4),
      (this.peer.getBytes() as List<int>),
      readBufferFromBigInt(this.msgId, 4, little: true, signed: true),
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
    return 'GetPaymentReceipt{ID: $ID, peer: $peer, msgId: $msgId}';
  }
}

class ValidateRequestedInfo extends BaseRequest {
  static const CONSTRUCTOR_ID = 3675271536;
  static const SUBCLASS_OF_ID = 2407548087;
  final classType = "request";
  final ID = 3675271536;
  bool? save;
  var peer;
  int msgId;
  var info;

  ValidateRequestedInfo(
      {required this.save,
      required this.peer,
      required this.msgId,
      required this.info});

  static ValidateRequestedInfo fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final save = false;
    var peer = reader.tgReadObject();
    var msgId = reader.readInt();
    var info = reader.tgReadObject();
    return ValidateRequestedInfo(
        save: save, peer: peer, msgId: msgId, info: info);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3675271536, 4),
      [0, 0, 0, 0],
      (this.peer.getBytes() as List<int>),
      readBufferFromBigInt(this.msgId, 4, little: true, signed: true),
      (this.info.getBytes() as List<int>),
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
    return 'ValidateRequestedInfo{ID: $ID, save: $save, peer: $peer, msgId: $msgId, info: $info}';
  }
}

class SendPaymentForm extends BaseRequest {
  static const CONSTRUCTOR_ID = 818134173;
  static const SUBCLASS_OF_ID = 2330028701;
  final classType = "request";
  final ID = 818134173;
  BigInt formId;
  var peer;
  int msgId;
  String? requestedInfoId;
  String? shippingOptionId;
  var credentials;
  BigInt? tipAmount;

  SendPaymentForm(
      {required this.formId,
      required this.peer,
      required this.msgId,
      required this.requestedInfoId,
      required this.shippingOptionId,
      required this.credentials,
      required this.tipAmount});

  static SendPaymentForm fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    var formId = reader.readLong();
    var peer = reader.tgReadObject();
    var msgId = reader.readInt();
    var requestedInfoId;
    if ((flags & 1) == 1) {
      requestedInfoId = reader.tgReadString();
    } else {
      requestedInfoId = null;
    }
    var shippingOptionId;
    if ((flags & 2) == 2) {
      shippingOptionId = reader.tgReadString();
    } else {
      shippingOptionId = null;
    }
    var credentials = reader.tgReadObject();
    var tipAmount;
    if ((flags & 4) == 4) {
      tipAmount = reader.readLong();
    } else {
      tipAmount = null;
    }
    return SendPaymentForm(
        formId: formId,
        peer: peer,
        msgId: msgId,
        requestedInfoId: requestedInfoId,
        shippingOptionId: shippingOptionId,
        credentials: credentials,
        tipAmount: tipAmount);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(818134173, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.formId, 8, little: true, signed: true),
      (this.peer.getBytes() as List<int>),
      readBufferFromBigInt(this.msgId, 4, little: true, signed: true),
      (this.requestedInfoId == null || this.requestedInfoId == false)
          ? List<int>.empty()
          : [serializeBytes(this.requestedInfoId)]
              .expand((element) => element)
              .toList(),
      (this.shippingOptionId == null || this.shippingOptionId == false)
          ? List<int>.empty()
          : [serializeBytes(this.shippingOptionId)]
              .expand((element) => element)
              .toList(),
      (this.credentials.getBytes() as List<int>),
      (this.tipAmount == null || this.tipAmount == false)
          ? List<int>.empty()
          : [
              readBufferFromBigInt(this.tipAmount, 8,
                  little: true, signed: true)
            ].expand((element) => element).toList(),
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
    return 'SendPaymentForm{ID: $ID, formId: $formId, peer: $peer, msgId: $msgId, requestedInfoId: $requestedInfoId, shippingOptionId: $shippingOptionId, credentials: $credentials, tipAmount: $tipAmount}';
  }
}

class GetSavedInfo extends BaseRequest {
  static const CONSTRUCTOR_ID = 578650699;
  static const SUBCLASS_OF_ID = 2906452294;
  final classType = "request";
  final ID = 578650699;

  GetSavedInfo();

  static GetSavedInfo fromReader(BinaryReader reader) {
    var len;
    return GetSavedInfo();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(578650699, 4),
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
    return 'GetSavedInfo{ID: $ID, }';
  }
}

class ClearSavedInfo extends BaseRequest {
  static const CONSTRUCTOR_ID = 3627905217;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3627905217;
  bool? credentials;
  bool? info;

  ClearSavedInfo({required this.credentials, required this.info});

  static ClearSavedInfo fromReader(BinaryReader reader) {
    var len;
    final flags = reader.readInt();
    final credentials = false;
    final info = false;
    return ClearSavedInfo(credentials: credentials, info: info);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3627905217, 4),
      [0, 0, 0, 0],
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
    return 'ClearSavedInfo{ID: $ID, credentials: $credentials, info: $info}';
  }
}

class GetBankCardData extends BaseRequest {
  static const CONSTRUCTOR_ID = 779736953;
  static const SUBCLASS_OF_ID = 2356008587;
  final classType = "request";
  final ID = 779736953;
  String number;

  GetBankCardData({required this.number});

  static GetBankCardData fromReader(BinaryReader reader) {
    var len;
    var number = reader.tgReadString();
    return GetBankCardData(number: number);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(779736953, 4),
      serializeBytes(this.number),
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
    return 'GetBankCardData{ID: $ID, number: $number}';
  }
}
