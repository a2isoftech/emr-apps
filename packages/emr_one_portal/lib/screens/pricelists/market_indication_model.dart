class MarketIndicationModel {
  MarketIndicationModel({
    required this.totalMWPValue,
    required this.updatedDate,
    required this.copperRates,
    required this.currency,
  });

  final DateTime updatedDate;
  final String currency;
  final double totalMWPValue;
  final Map<String, double> copperRates;
}
