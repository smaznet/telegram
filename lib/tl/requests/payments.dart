// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_request.dart';
import '../constructors/payments.dart' as payments_ns;
import '../constructors/constructors.dart';

class GetPaymentForm extends BaseRequest<payments_ns.PaymentForm, dynamic> {
  static const CONSTRUCTOR_ID = 924093883;
  static const SUBCLASS_OF_ID = 2689089305;
  final classType = "request";
  final ID = 924093883;
  InputInvoiceBase invoice;
  DataJSON? themeParams;

  GetPaymentForm({required this.invoice, this.themeParams});

  static GetPaymentForm fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var invoice = reader.tgReadObject();
    var themeParams;
    if ((flags & 1) == 1) {
      themeParams = reader.tgReadObject();
    } else {
      themeParams = null;
    }
    return GetPaymentForm(invoice: invoice, themeParams: themeParams);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(924093883, 4),
      [0, 0, 0, 0],
      (this.invoice.getBytes()),
      (this.themeParams == null || this.themeParams == false)
          ? List<int>.empty()
          : [(this.themeParams!.getBytes())]
              .expand((element) => element)
              .toList(),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<payments_ns.PaymentForm, dynamic>();
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
    return 'GetPaymentForm{ID: $ID, invoice: $invoice, themeParams: $themeParams}';
  }
}

class GetPaymentReceipt
    extends BaseRequest<payments_ns.PaymentReceipt, dynamic> {
  static const CONSTRUCTOR_ID = 611897804;
  static const SUBCLASS_OF_ID = 1493210057;
  final classType = "request";
  final ID = 611897804;
  InputPeerBase peer;
  int msgId;

  GetPaymentReceipt({required this.peer, required this.msgId});

  static GetPaymentReceipt fromReader(BinaryReader reader) {
    var peer = reader.tgReadObject();
    var msgId = reader.readInt();
    return GetPaymentReceipt(peer: peer, msgId: msgId);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(611897804, 4),
      (this.peer.getBytes()),
      readBufferFromBigInt(this.msgId, 4, little: true, signed: true),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<payments_ns.PaymentReceipt, dynamic>();
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

class ValidateRequestedInfo
    extends BaseRequest<payments_ns.ValidatedRequestedInfo, dynamic> {
  static const CONSTRUCTOR_ID = 3066622251;
  static const SUBCLASS_OF_ID = 2407548087;
  final classType = "request";
  final ID = 3066622251;
  bool? save;
  InputInvoiceBase invoice;
  PaymentRequestedInfo info;

  ValidateRequestedInfo({this.save, required this.invoice, required this.info});

  static ValidateRequestedInfo fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final save = (flags & 1) == 1;
    var invoice = reader.tgReadObject();
    var info = reader.tgReadObject();
    return ValidateRequestedInfo(save: save, invoice: invoice, info: info);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3066622251, 4),
      [0, 0, 0, 0],
      (this.invoice.getBytes()),
      (this.info.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<payments_ns.ValidatedRequestedInfo, dynamic>();
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
    return 'ValidateRequestedInfo{ID: $ID, save: $save, invoice: $invoice, info: $info}';
  }
}

class SendPaymentForm
    extends BaseRequest<payments_ns.PaymentResultBase, dynamic> {
  static const CONSTRUCTOR_ID = 755192367;
  static const SUBCLASS_OF_ID = 2330028701;
  final classType = "request";
  final ID = 755192367;
  BigInt formId;
  InputInvoiceBase invoice;
  String? requestedInfoId;
  String? shippingOptionId;
  InputPaymentCredentialsBase credentials;
  BigInt? tipAmount;

  SendPaymentForm(
      {required this.formId,
      required this.invoice,
      this.requestedInfoId,
      this.shippingOptionId,
      required this.credentials,
      this.tipAmount});

  static SendPaymentForm fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    var formId = reader.readLong();
    var invoice = reader.tgReadObject();
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
        invoice: invoice,
        requestedInfoId: requestedInfoId,
        shippingOptionId: shippingOptionId,
        credentials: credentials,
        tipAmount: tipAmount);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(755192367, 4),
      [0, 0, 0, 0],
      readBufferFromBigInt(this.formId, 8, little: true, signed: true),
      (this.invoice.getBytes()),
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
      (this.credentials.getBytes()),
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
    return reader.tgReadObject<payments_ns.PaymentResultBase, dynamic>();
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
    return 'SendPaymentForm{ID: $ID, formId: $formId, invoice: $invoice, requestedInfoId: $requestedInfoId, shippingOptionId: $shippingOptionId, credentials: $credentials, tipAmount: $tipAmount}';
  }
}

class GetSavedInfo extends BaseRequest<payments_ns.SavedInfo, dynamic> {
  static const CONSTRUCTOR_ID = 578650699;
  static const SUBCLASS_OF_ID = 2906452294;
  final classType = "request";
  final ID = 578650699;

  GetSavedInfo();

  static GetSavedInfo fromReader(BinaryReader reader) {
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
    return reader.tgReadObject<payments_ns.SavedInfo, dynamic>();
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

class ClearSavedInfo extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 3627905217;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 3627905217;
  bool? credentials;
  bool? info;

  ClearSavedInfo({this.credentials, this.info});

  static ClearSavedInfo fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final credentials = (flags & 1) == 1;
    final info = (flags & 2) == 2;
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
    return 'ClearSavedInfo{ID: $ID, credentials: $credentials, info: $info}';
  }
}

class GetBankCardData extends BaseRequest<payments_ns.BankCardData, dynamic> {
  static const CONSTRUCTOR_ID = 779736953;
  static const SUBCLASS_OF_ID = 2356008587;
  final classType = "request";
  final ID = 779736953;
  String number;

  GetBankCardData({required this.number});

  static GetBankCardData fromReader(BinaryReader reader) {
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
    return reader.tgReadObject<payments_ns.BankCardData, dynamic>();
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

class ExportInvoice extends BaseRequest<payments_ns.ExportedInvoice, dynamic> {
  static const CONSTRUCTOR_ID = 261206117;
  static const SUBCLASS_OF_ID = 907039794;
  final classType = "request";
  final ID = 261206117;
  InputMediaBase invoiceMedia;

  ExportInvoice({required this.invoiceMedia});

  static ExportInvoice fromReader(BinaryReader reader) {
    var invoiceMedia = reader.tgReadObject();
    return ExportInvoice(invoiceMedia: invoiceMedia);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(261206117, 4),
      (this.invoiceMedia.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<payments_ns.ExportedInvoice, dynamic>();
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
    return 'ExportInvoice{ID: $ID, invoiceMedia: $invoiceMedia}';
  }
}

class AssignAppStoreTransaction extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 267129798;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 267129798;
  bool? restore;
  String transactionId;
  List<int> receipt;

  AssignAppStoreTransaction(
      {this.restore, required this.transactionId, required this.receipt});

  static AssignAppStoreTransaction fromReader(BinaryReader reader) {
    final flags = reader.readInt();
    final restore = (flags & 1) == 1;
    var transactionId = reader.tgReadString();
    var receipt = reader.tgReadBytes();
    return AssignAppStoreTransaction(
        restore: restore, transactionId: transactionId, receipt: receipt);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(267129798, 4),
      [0, 0, 0, 0],
      serializeBytes(this.transactionId),
      serializeBytes(this.receipt),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<UpdatesBase, dynamic>();
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
    return 'AssignAppStoreTransaction{ID: $ID, restore: $restore, transactionId: $transactionId, receipt: ${receipt.sublist(0, 5)}<...${receipt.length}>}';
  }
}

class AssignPlayMarketTransaction extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 1336560365;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 1336560365;
  String purchaseToken;

  AssignPlayMarketTransaction({required this.purchaseToken});

  static AssignPlayMarketTransaction fromReader(BinaryReader reader) {
    var purchaseToken = reader.tgReadString();
    return AssignPlayMarketTransaction(purchaseToken: purchaseToken);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(1336560365, 4),
      serializeBytes(this.purchaseToken),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<UpdatesBase, dynamic>();
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
    return 'AssignPlayMarketTransaction{ID: $ID, purchaseToken: $purchaseToken}';
  }
}

class RestorePlayMarketReceipt extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 3513049962;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 3513049962;
  List<int> receipt;

  RestorePlayMarketReceipt({required this.receipt});

  static RestorePlayMarketReceipt fromReader(BinaryReader reader) {
    var receipt = reader.tgReadBytes();
    return RestorePlayMarketReceipt(receipt: receipt);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3513049962, 4),
      serializeBytes(this.receipt),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<UpdatesBase, dynamic>();
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
    return 'RestorePlayMarketReceipt{ID: $ID, receipt: ${receipt.sublist(0, 5)}<...${receipt.length}>}';
  }
}

class CanPurchasePremium extends BaseRequest<bool, dynamic> {
  static const CONSTRUCTOR_ID = 2859110600;
  static const SUBCLASS_OF_ID = 4122188204;
  final classType = "request";
  final ID = 2859110600;

  CanPurchasePremium();

  static CanPurchasePremium fromReader(BinaryReader reader) {
    return CanPurchasePremium();
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2859110600, 4),
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
    return 'CanPurchasePremium{ID: $ID, }';
  }
}

class RequestRecurringPayment extends BaseRequest<UpdatesBase, dynamic> {
  static const CONSTRUCTOR_ID = 342791565;
  static const SUBCLASS_OF_ID = 2331323052;
  final classType = "request";
  final ID = 342791565;
  InputUserBase userId;
  String recurringInitCharge;
  InputMediaBase invoiceMedia;

  RequestRecurringPayment(
      {required this.userId,
      required this.recurringInitCharge,
      required this.invoiceMedia});

  static RequestRecurringPayment fromReader(BinaryReader reader) {
    var userId = reader.tgReadObject();
    var recurringInitCharge = reader.tgReadString();
    var invoiceMedia = reader.tgReadObject();
    return RequestRecurringPayment(
        userId: userId,
        recurringInitCharge: recurringInitCharge,
        invoiceMedia: invoiceMedia);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(342791565, 4),
      (this.userId.getBytes()),
      serializeBytes(this.recurringInitCharge),
      (this.invoiceMedia.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  readResult(BinaryReader reader) {
    return reader.tgReadObject<UpdatesBase, dynamic>();
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
    return 'RequestRecurringPayment{ID: $ID, userId: $userId, recurringInitCharge: $recurringInitCharge, invoiceMedia: $invoiceMedia}';
  }
}
