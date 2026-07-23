class StatementModel {
  StatementModel({
    required this.invoiceNumber,
    required this.currency,
    required this.amount,
    required this.purchaseOrderNumber,
    required this.status,
    this.date,
    this.invoicePdf,
    this.dueDate,
    this.paidDate,
    this.companyName,
  });

  final String currency;
  final DateTime? date;
  final DateTime? dueDate;
  final String invoiceNumber;
  final double amount;
  final String purchaseOrderNumber;
  final String status;
  final String? invoicePdf;
  final DateTime? paidDate;
  final String? companyName;
}
