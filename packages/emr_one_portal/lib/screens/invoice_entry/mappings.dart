import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/graphql/graphql.dart';

extension SubmitInvoiceMapping on NewInvoiceModel {
  Input$PaymentRequestInput toInvoiceSubmissionInput(
    String partyAccountNo,
    String filePath,
    String fileId,
    String partyName,
  ) {
    return Input$PaymentRequestInput(
      partyName: partyName,
      transactionType: Enum$TransactionType.INVOICE,
      transactionDate: invoiceDate!,
      transactionGrossAmount:
          double.parse(invoiceNetAmount!) + double.parse(invoiceVATAmount!),
      transactionNo: invoiceNo.toString(),
      partyAccountNo: partyAccountNo,
      purchaseOrderNo: purchaseOrderNumber ?? '',
      transactionDescription: invoiceDescription ?? '',
      transactionGrossAmountCurrency: currency ?? '',
      transactionPdf: '$filePath/$partyAccountNo/$fileId',
      transactionLines: [],
      companyToBeBilled: company!.companyCode.toString(),
    );
  }
}

extension SubmitPaymentRequestMapping on List<TicketViewModel> {
  Input$PaymentRequestInput toPaymentRequestInput(
    String partyAccountNo,
    String partyName,
  ) {
    const type = 'Ticket';
    final amount = fold<double>(
      0,
      (sum, ticket) =>
          sum +
          ticket.ticketLines.fold(
            0,
            (sumInner, ticketLine) => sumInner + ticketLine.provCommValue,
          ),
    );
    return Input$PaymentRequestInput(
      partyAccountNo: partyAccountNo,
      partyName: partyName,
      transactionNo: '1', // TODO: set this correctly
      transactionDate: DateTime.now(),
      transactionDescription: '$length payments requested by $partyAccountNo '
          'for the amount of $amount',
      transactionGrossAmount: amount,
      purchaseOrderNo: '',
      transactionGrossAmountCurrency: '',
      transactionPdf: '',
      transactionType: Enum$TransactionType.TICKET,
      companyToBeBilled: '',
      transactionLines: map(
        (e) => Input$TransactionLineInput(lineNo: e.ticketNo, lineType: type),
      ).toList(),
    );
  }

  List<Input$TicketPaymentRequestInput> toPaymentRequestsLegacyInput(
    int paymentMethodId,
  ) {
    return map(
      (t) => Input$TicketPaymentRequestInput(
        legacyTicketNumber: t.legacyTicketNumber,
        paymentMethodId: paymentMethodId,
      ),
    ).toList();
  }
}
