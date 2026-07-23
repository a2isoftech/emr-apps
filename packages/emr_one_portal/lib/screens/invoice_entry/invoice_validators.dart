import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';

class InvoiceValidator extends InputValidators {
  InvoiceValidator({required super.context});

  String? validatePurchaseOrderNumber(String? purchaseOrderNumber) {
    if (purchaseOrderNumber != null && purchaseOrderNumber.isNotEmpty) {
      return RegExp(r'^\d{9}$').hasMatch(purchaseOrderNumber)
          ? null
          : context.l10n.invoicePurchaseOrderNumberValidation;
    }
    return context.l10n.invoicePurchaseOrderNumberEmptyValidation;
  }

  String? validateInvoiceDate(String? invoiceDate) {
    return (invoiceDate ?? '').isEmpty
        ? context.l10n.invoiceDateValidation
        : null;
  }

  String? validateCompanyDetails(String? companyDetails) {
    if (companyDetails?.isEmpty ?? true) {
      return context.l10n.companyValidation;
    }
    return null;
  }

  bool canSubmitInvoice(NewInvoiceModel invoice) =>
      validatePurchaseOrderNumber(invoice.purchaseOrderNumber) == null &&
      validateInvoiceOrCreditNoteNumber(
            invoice.invoiceNo,
            DocumentTypeEnum.invoice,
          ) ==
          null &&
      validateInvoiceDate(invoice.invoiceDate?.toString()) == null &&
      validateDescription(invoice.invoiceDescription) == null &&
      validateCurrency(invoice.currency) == null &&
      validateNetAmount(invoice.invoiceNetAmount) == null &&
      validateVatAmount(invoice.invoiceVATAmount, invoice.invoiceNetAmount) ==
          null &&
      validateFileUploaded(invoice.uploadInvoice, DocumentTypeEnum.invoice) ==
          null &&
      validateCompanyDetails(invoice.company?.name) == null;
}
