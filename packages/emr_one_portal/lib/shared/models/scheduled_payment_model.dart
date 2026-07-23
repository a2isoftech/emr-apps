class ScheduledPayment {
  ScheduledPayment({
    required this.amount,
    required this.releaseDate,
    required this.currency,
  });

  final double amount;
  final DateTime? releaseDate;
  final String currency;
}
