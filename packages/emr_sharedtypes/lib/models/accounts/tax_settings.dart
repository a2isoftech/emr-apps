class TaxSettings {
  TaxSettings(
    this.taxId,
    this.nameFor1099,
    this.doingBusinessAs,
    this.reportingDate,
    this.cashPaymentLimitExemptionDate, {
    this.w9Received,
    this.checkForW9,
    this.foreignEntityIndicator,
    this.secondTin,
  });

  String? taxId;
  bool? w9Received;
  bool? checkForW9;
  String? nameFor1099;
  String? doingBusinessAs;
  bool? foreignEntityIndicator;
  bool? secondTin;
  DateTime? reportingDate;
  DateTime? cashPaymentLimitExemptionDate;
}
