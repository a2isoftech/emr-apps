import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class InputValidators {
  InputValidators({
    required this.context,
  });

  final BuildContext context;

  String? validateDescription(String? description) {
    return (description ?? '').isEmpty
        ? context.l10n.errMsgDescriptionValidation
        : null;
  }

  String? validateVatAmount(String? vatTotal, String? netTotal) {
    if (vatTotal != null && vatTotal.isNotEmpty) {
      if (RegExp(r'^\d*\.?\d{0,2}$').hasMatch(vatTotal)) {
        final vatAmount = double.tryParse(vatTotal);
        final netAmount = double.tryParse(netTotal ?? '0.0');
        return vatAmount != null &&
                netAmount != null &&
                vatAmount <= (netAmount * 0.2002)
            ? null
            : context.l10n.errMsgExpectedVATAmount;
      }
      return context.l10n.errMsgVATAmountValidation;
    }
    return context.l10n.errMsgVATAmountNullValidation;
  }

  String? validateNetAmount(String? netAmount) {
    if (netAmount != null && netAmount.isNotEmpty) {
      return RegExp(r'^\d*\.?\d{0,2}$').hasMatch(netAmount)
          ? null
          : context.l10n.errMsgNetAmountValidation;
    }
    return context.l10n.errMsgNetAmountNullValidation;
  }

  String? validateCurrency(String? currency) {
    if (currency == null) {
      return context.l10n.errMsgCurrencyValidation;
    }
    return null;
  }

  String? validateFileUploaded(
    String? fileUploaded,
    DocumentTypeEnum documentType,
  ) {
    if ((fileUploaded ?? '').isEmpty) {
      if (documentType == DocumentTypeEnum.creditNote) {
        return context.l10n.creditNotePDFValidation;
      } else {
        return context.l10n.invoicePDFValidation;
      }
    }
    return null;
  }

  String? validateInvoiceOrCreditNoteNumber(
    String? number,
    DocumentTypeEnum documentType,
  ){
    if (number != null && number.isNotEmpty){
      if (RegExp(r'^[A-Za-z0-9\-]{1,39}$').hasMatch(number)){
        return null;
      }
      else{
        if (number.length > 39) {
          return documentType == DocumentTypeEnum.creditNote
              ? context.l10n.creditNoteNumberTooLongError
              : context.l10n.invoiceNumberTooLongError;
      }
      return documentType == DocumentTypeEnum.creditNote
            ? context.l10n.creditNoteNumberValidation
            : context.l10n.invoiceNumberValidation;
    }
  }
  // Empty field handling
    return documentType == DocumentTypeEnum.creditNote
        ? context.l10n.creditNoteNumberEmptyValidation
        : context.l10n.invoiceNumberEmptyValidation;
}

}
