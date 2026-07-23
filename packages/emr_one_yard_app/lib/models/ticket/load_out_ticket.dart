class LoadOutTicket {
  LoadOutTicket({
    required this.ticketId,
    required this.ticketNumber,
    required this.accountNumber,
    required this.accountName,
    this.containerNumber,
  });

  final String ticketId;
  final int ticketNumber;
  final String accountNumber;
  final String accountName;
  final String? containerNumber;
}
