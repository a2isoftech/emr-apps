import 'package:emr_one_portal/shared/models/company_model.dart';

class NewInvoiceModel {
  NewInvoiceModel({
    this.purchaseOrderNumber,
    this.invoiceNo,
    this.invoiceDate,
    this.invoiceDescription,
    this.currency,
    this.invoiceNetAmount,
    this.invoiceVATAmount,
    this.uploadInvoice,
    this.confirmationEmailAddress,
    this.company,
    this.invoiceTotalAmount,
  });
  String? purchaseOrderNumber;
  String? invoiceNo;
  DateTime? invoiceDate;
  String? invoiceDescription;
  String? currency;
  String? invoiceNetAmount;
  String? invoiceVATAmount;
  String? uploadInvoice;
  String? confirmationEmailAddress;
  Company? company;
  String? invoiceTotalAmount;
}
