class CreditTerm {
  CreditTerm(
    this.paymentTermTypeName, {
    this.paymentTermTypeId,
  });

  String? paymentTermTypeId;
  String? paymentTermTypeName;
  String? dueDateFrom;
  String? invoicePeriodicity;
  String? vatClass;
  String? limitDecisionType;
  bool? onStop;
  String? invoicePeriodicityDays;
}
