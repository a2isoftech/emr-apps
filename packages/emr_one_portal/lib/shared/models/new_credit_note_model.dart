import 'package:emr_one_portal/shared/models/company_model.dart';

class NewCreditNoteModel {
  NewCreditNoteModel({
    this.creditNoteNo,
    this.creditNoteDate,
    this.creditNoteDescription,
    this.currency,
    this.creditNoteNetAmount,
    this.creditNoteVATAmount,
    this.uploadCreditNote,
    this.confirmationEmailAddress,
    this.company,
    this.creditNoteTotalAmount,
  });
  String? creditNoteNo;
  DateTime? creditNoteDate;
  String? creditNoteDescription;
  String? currency;
  String? creditNoteNetAmount;
  String? creditNoteVATAmount;
  String? uploadCreditNote;
  String? confirmationEmailAddress;
  Company? company;
  String? creditNoteTotalAmount;
}
