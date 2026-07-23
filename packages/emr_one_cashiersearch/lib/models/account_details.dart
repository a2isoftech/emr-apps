class AccountDetails {
  AccountDetails({
    this.bankAccount,
    this.cfcAgreement,
    this.payeeName,
    this.portalAccess,
    this.sortCode,
  });
  bool? cfcAgreement;
  bool? portalAccess;
  String? payeeName;
  int? sortCode;
  String? bankAccount;
}
