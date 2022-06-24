import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class GetPaymentForm {
    static const CONSTRUCTOR_ID = 924093883;
    static const SUBCLASS_OF_ID = 2689089305;
    final classType = "request";
    final ID = 924093883;
	var invoice;
	var themeParams;


	GetPaymentForm({required this.invoice, required this.themeParams});

	static GetPaymentForm fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var invoice = reader.tgReadObject();var themeParams;if ((flags & 1)==1){themeParams = reader.tgReadObject(); } else {themeParams=null;}		return new GetPaymentForm(invoice : invoice, themeParams : themeParams);
	}
	List<int> getBytes(){return [readBufferFromBigInt(924093883,4),[0,0,0,0],(this.invoice.getBytes() as List<int>),(this.themeParams==null||this.themeParams==false)?new List<int>.empty():[(this.themeParams.getBytes() as List<int>)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetPaymentReceipt {
    static const CONSTRUCTOR_ID = 611897804;
    static const SUBCLASS_OF_ID = 1493210057;
    final classType = "request";
    final ID = 611897804;
	var peer;
	int msgId;


	GetPaymentReceipt({required this.peer, required this.msgId});

	static GetPaymentReceipt fromReader(BinaryReader reader) {
	var temp,len;var peer = reader.tgReadObject();var msgId = reader.readInt();		return new GetPaymentReceipt(peer : peer, msgId : msgId);
	}
	List<int> getBytes(){return [readBufferFromBigInt(611897804,4),(this.peer.getBytes() as List<int>),readBufferFromBigInt(this.msgId,4,little:true,signed:true),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ValidateRequestedInfo {
    static const CONSTRUCTOR_ID = 3066622251;
    static const SUBCLASS_OF_ID = 2407548087;
    final classType = "request";
    final ID = 3066622251;
	bool? save;
	var invoice;
	var info;


	ValidateRequestedInfo({required this.save, required this.invoice, required this.info});

	static ValidateRequestedInfo fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final save = false;var invoice = reader.tgReadObject();var info = reader.tgReadObject();		return new ValidateRequestedInfo(save : save, invoice : invoice, info : info);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3066622251,4),[0,0,0,0],(this.invoice.getBytes() as List<int>),(this.info.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class SendPaymentForm {
    static const CONSTRUCTOR_ID = 755192367;
    static const SUBCLASS_OF_ID = 2330028701;
    final classType = "request";
    final ID = 755192367;
	BigInt formId;
	var invoice;
	String? requestedInfoId;
	String? shippingOptionId;
	var credentials;
	BigInt? tipAmount;


	SendPaymentForm({required this.formId, required this.invoice, required this.requestedInfoId, required this.shippingOptionId, required this.credentials, required this.tipAmount});

	static SendPaymentForm fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();var formId = reader.readLong();var invoice = reader.tgReadObject();var requestedInfoId;if ((flags & 1)==1){requestedInfoId = reader.tgReadString(); } else {requestedInfoId=null;}var shippingOptionId;if ((flags & 2)==1){shippingOptionId = reader.tgReadString(); } else {shippingOptionId=null;}var credentials = reader.tgReadObject();var tipAmount;if ((flags & 4)==1){tipAmount = reader.readLong(); } else {tipAmount=null;}		return new SendPaymentForm(formId : formId, invoice : invoice, requestedInfoId : requestedInfoId, shippingOptionId : shippingOptionId, credentials : credentials, tipAmount : tipAmount);
	}
	List<int> getBytes(){return [readBufferFromBigInt(755192367,4),[0,0,0,0],readBufferFromBigInt(this.formId,8,little:true,signed:true),(this.invoice.getBytes() as List<int>),(this.requestedInfoId==null||this.requestedInfoId==false)?new List<int>.empty():[serializeBytes(this.requestedInfoId)].expand((element) => element).toList(),(this.shippingOptionId==null||this.shippingOptionId==false)?new List<int>.empty():[serializeBytes(this.shippingOptionId)].expand((element) => element).toList(),(this.credentials.getBytes() as List<int>),(this.tipAmount==null||this.tipAmount==false)?new List<int>.empty():[readBufferFromBigInt(this.tipAmount,8,little:true,signed:true)].expand((element) => element).toList(),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetSavedInfo {
    static const CONSTRUCTOR_ID = 578650699;
    static const SUBCLASS_OF_ID = 2906452294;
    final classType = "request";
    final ID = 578650699;


	GetSavedInfo();

	static GetSavedInfo fromReader(BinaryReader reader) {
	var temp,len;		return new GetSavedInfo();
	}
	List<int> getBytes(){return [readBufferFromBigInt(578650699,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ClearSavedInfo {
    static const CONSTRUCTOR_ID = 3627905217;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 3627905217;
	bool? credentials;
	bool? info;


	ClearSavedInfo({required this.credentials, required this.info});

	static ClearSavedInfo fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final credentials = false;final info = false;		return new ClearSavedInfo(credentials : credentials, info : info);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3627905217,4),[0,0,0,0],].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class GetBankCardData {
    static const CONSTRUCTOR_ID = 779736953;
    static const SUBCLASS_OF_ID = 2356008587;
    final classType = "request";
    final ID = 779736953;
	String number;


	GetBankCardData({required this.number});

	static GetBankCardData fromReader(BinaryReader reader) {
	var temp,len;var number = reader.tgReadString();		return new GetBankCardData(number : number);
	}
	List<int> getBytes(){return [readBufferFromBigInt(779736953,4),serializeBytes(this.number),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class ExportInvoice {
    static const CONSTRUCTOR_ID = 261206117;
    static const SUBCLASS_OF_ID = 907039794;
    final classType = "request";
    final ID = 261206117;
	var invoiceMedia;


	ExportInvoice({required this.invoiceMedia});

	static ExportInvoice fromReader(BinaryReader reader) {
	var temp,len;var invoiceMedia = reader.tgReadObject();		return new ExportInvoice(invoiceMedia : invoiceMedia);
	}
	List<int> getBytes(){return [readBufferFromBigInt(261206117,4),(this.invoiceMedia.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class AssignAppStoreTransaction {
    static const CONSTRUCTOR_ID = 267129798;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 267129798;
	bool? restore;
	String transactionId;
	List<int> receipt;


	AssignAppStoreTransaction({required this.restore, required this.transactionId, required this.receipt});

	static AssignAppStoreTransaction fromReader(BinaryReader reader) {
	var temp,len;final flags = reader.readInt();final restore = false;var transactionId = reader.tgReadString();var receipt = reader.tgReadBytes();		return new AssignAppStoreTransaction(restore : restore, transactionId : transactionId, receipt : receipt);
	}
	List<int> getBytes(){return [readBufferFromBigInt(267129798,4),[0,0,0,0],serializeBytes(this.transactionId),serializeBytes(this.receipt),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class AssignPlayMarketTransaction {
    static const CONSTRUCTOR_ID = 1336560365;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 1336560365;
	String purchaseToken;


	AssignPlayMarketTransaction({required this.purchaseToken});

	static AssignPlayMarketTransaction fromReader(BinaryReader reader) {
	var temp,len;var purchaseToken = reader.tgReadString();		return new AssignPlayMarketTransaction(purchaseToken : purchaseToken);
	}
	List<int> getBytes(){return [readBufferFromBigInt(1336560365,4),serializeBytes(this.purchaseToken),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class RestorePlayMarketReceipt {
    static const CONSTRUCTOR_ID = 3513049962;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 3513049962;
	List<int> receipt;


	RestorePlayMarketReceipt({required this.receipt});

	static RestorePlayMarketReceipt fromReader(BinaryReader reader) {
	var temp,len;var receipt = reader.tgReadBytes();		return new RestorePlayMarketReceipt(receipt : receipt);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3513049962,4),serializeBytes(this.receipt),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class CanPurchasePremium {
    static const CONSTRUCTOR_ID = 2859110600;
    static const SUBCLASS_OF_ID = 4122188204;
    final classType = "request";
    final ID = 2859110600;


	CanPurchasePremium();

	static CanPurchasePremium fromReader(BinaryReader reader) {
	var temp,len;		return new CanPurchasePremium();
	}
	List<int> getBytes(){return [readBufferFromBigInt(2859110600,4),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}

class RequestRecurringPayment {
    static const CONSTRUCTOR_ID = 342791565;
    static const SUBCLASS_OF_ID = 2331323052;
    final classType = "request";
    final ID = 342791565;
	var userId;
	String recurringInitCharge;
	var invoiceMedia;


	RequestRecurringPayment({required this.userId, required this.recurringInitCharge, required this.invoiceMedia});

	static RequestRecurringPayment fromReader(BinaryReader reader) {
	var temp,len;var userId = reader.tgReadObject();var recurringInitCharge = reader.tgReadString();var invoiceMedia = reader.tgReadObject();		return new RequestRecurringPayment(userId : userId, recurringInitCharge : recurringInitCharge, invoiceMedia : invoiceMedia);
	}
	List<int> getBytes(){return [readBufferFromBigInt(342791565,4),(this.userId.getBytes() as List<int>),serializeBytes(this.recurringInitCharge),(this.invoiceMedia.getBytes() as List<int>),].expand((element) => element).toList();}
	readResult(BinaryReader reader) {
	return reader.tgReadObject();
	}

}