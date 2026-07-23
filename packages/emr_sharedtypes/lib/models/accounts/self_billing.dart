class SelfBilling {
  SelfBilling(
    this.selfBillingDate,
    this.frequency,
    this.doNotPayTicketsOlderThan,
    this.payTicketsOlderThan,
    this.payCentre, {
    this.autoApprove,
  });
  DateTime? selfBillingDate;
  String? frequency;
  bool? autoApprove;
  int? doNotPayTicketsOlderThan;
  int? payTicketsOlderThan;
  String? payCentre;
}
