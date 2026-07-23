class TicketModel {
  TicketModel({
    required this.date,
    required this.currency,
    required this.ticketNumber,
    required this.yardName,
    required this.paidAmount,
    this.fileName,
  });

  final DateTime date;

  final String currency;

  final String ticketNumber;

  final String? yardName;

  final double paidAmount;

  final String? fileName;
}
