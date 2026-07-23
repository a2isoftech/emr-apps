import 'package:emr_one_portal/extenstions/statement_status_extension.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/emr_one_portal_tickets.dart';

class StatementMapper {
  static StatementModel statementMapper(
    Query$GetStatements$supplierStatements$nodes source,
  ) {
    return StatementModel(
      date: source.supplierInvoiceDate,
      dueDate: source.supplierInvoiceDueDate,
      currency: source.currency.getCurrencySymbol(),
      amount: source.amount ?? 0.0,
      invoiceNumber: source.invoiceNo ?? '',
      purchaseOrderNumber: source.purchaseOrderNumber ?? '',
      status: source.status.getStatementStatus(),
      invoicePdf: source.invoiceFile,
      paidDate: source.paidDate,
      companyName: source.companyName,
    );
  }
}
