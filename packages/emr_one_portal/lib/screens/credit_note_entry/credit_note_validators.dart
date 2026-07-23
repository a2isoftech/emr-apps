import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal/shared/models/new_credit_note_model.dart';

class CreditNoteValidator extends InputValidators {
  CreditNoteValidator({
    required super.context,
  });

  String? validateCreditNoteDate(String? creditNoteDate) {
    return (creditNoteDate ?? '').isEmpty
        ? context.l10n.creditNoteDateValidation
        : null;
  }

  String? validateCompany(String? company) {
    if (company == null) {
      return context.l10n.creditNoteCompanyValidation;
    }
    return null;
  }

  bool canSubmitCreaditNote(NewCreditNoteModel creditNote) =>
      validateCompany(creditNote.company?.name) == null &&
      validateInvoiceOrCreditNoteNumber(
              creditNote.creditNoteNo, DocumentTypeEnum.creditNote,) ==
          null &&
      validateCreditNoteDate(creditNote.creditNoteDate?.toString()) == null &&
      validateDescription(creditNote.creditNoteDescription) == null &&
      validateCurrency(creditNote.currency) == null &&
      validateNetAmount(creditNote.creditNoteNetAmount) == null &&
      validateVatAmount(
            creditNote.creditNoteVATAmount,
            creditNote.creditNoteNetAmount,
          ) ==
          null &&
      validateFileUploaded(
            creditNote.uploadCreditNote,
            DocumentTypeEnum.creditNote,
          ) ==
          null;
}
