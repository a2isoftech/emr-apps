class PaymentTerm {
  PaymentTerm(this.taxMethod, this.paymentMethod, this.discountType);
  String? taxMethod;
  String? paymentMethod;
  String? paymentTermTypeId;
  String? paymentTermTypeName;
  bool? adjustTax;
  String? documentHoldStatusType;
  String? defaultMedia;
  String? discountType;
  String? discountTerms;
  double? discountPercentage;
}
