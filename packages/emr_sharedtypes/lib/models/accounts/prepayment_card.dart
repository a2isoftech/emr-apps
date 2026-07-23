class PrepaymentCard {
  PrepaymentCard(
    this.code,
    this.panDigits,
    this.issuerType,
    this.issueDate, {
    this.active,
  });
  String? code;
  int? panDigits;
  String? issuerType;
  DateTime? issueDate;
  bool? active;
}
