class CreditControl {
  CreditControl(
    this.insurerPolicyName,
    this.creditLimit,
    this.overrideLimit,
    this.decisionLimit,
    this.creditReportDate,
    this.creditReportValue,
    this.creditLimitReviewDate,
    this.currencyId, {
    this.contraAgreed,
  });
  bool? contraAgreed;
  String? insurerPolicyName;
  double? creditLimit;
  double? overrideLimit;
  double? decisionLimit;
  DateTime? creditReportDate;
  DateTime? creditLimitReviewDate;
  double? creditReportValue;
  String? currencyId;
}
