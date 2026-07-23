class LoyaltyCard {
  LoyaltyCard(
    this.code,
    this.locationCode,
    this.issueDate,
    this.provider,
  );
  String? code;
  String? locationCode;
  DateTime? issueDate;
  String? provider;
}
