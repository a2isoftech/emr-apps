import 'package:emr_one_portal/shared/models/new_credit_note_model.dart';
import 'package:emr_one_portal_tickets/graphql/graphql.dart';

extension SubmitCreditNoteMapping on NewCreditNoteModel {
  Input$PaymentRequestInput toCreditNoteSubmissionInput(
    String partyAccountNo,
    String filePath,
    String fileId,
    String partyName,
  ) {
    return Input$PaymentRequestInput(
      partyName: partyName,
      transactionType: Enum$TransactionType.CREDIT_NOTE,
      transactionDate: creditNoteDate!,
      transactionGrossAmount: double.parse(creditNoteNetAmount!) +
          double.parse(creditNoteVATAmount!),
      transactionNo: creditNoteNo ?? '',
      partyAccountNo: partyAccountNo,
      transactionDescription: creditNoteDescription ?? '',
      transactionGrossAmountCurrency: currency ?? '',
      transactionPdf: '$filePath/$partyAccountNo/$fileId',
      transactionLines: [],
      companyToBeBilled: company!.companyCode.toString(),
    );
  }
}
