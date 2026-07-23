class AccountSettings {
  AccountSettings({
    this.stateReportingEnabled,
    this.negativeInwardsEnabled,
    this.transformationEnabled,
    this.marketIndicatorEnabled,
    this.isWasteProducer,
    this.isWasteImporter,
    this.isWasteTransporter,
    this.isWasteRegisteredCarrier,
    this.annualWtnSsaRequired,
    this.wtnSsaExpiryDate,
    this.validFrom,
    this.validTo,
    this.hasHazardousWasteConsignmentNote,
    this.isDigitalWalletActivated,
  });

  bool? stateReportingEnabled;
  bool? negativeInwardsEnabled;
  bool? transformationEnabled;
  bool? marketIndicatorEnabled;
  bool? isWasteProducer;
  bool? isWasteImporter;
  bool? isWasteTransporter;
  bool? isWasteRegisteredCarrier;
  bool? annualWtnSsaRequired;
  DateTime? wtnSsaExpiryDate;
  DateTime? validFrom;
  DateTime? validTo;
  bool? hasHazardousWasteConsignmentNote;
  bool? isDigitalWalletActivated;
}
