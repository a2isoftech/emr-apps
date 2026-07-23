import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class BusinessDetail {
  BusinessDetail(
    this.companyRegistrationNumber,
    this.vatNumber,
    this.paymentTerm,
    this.creditTerm,
    this.invoicingOptions,
    this.selfBilling,
    this.creditControl, {
    this.isTradingCompany,
    this.licenseExemption,
  });

  factory BusinessDetail.empty() => BusinessDetail(
    '',
    '',
    PaymentTerm('', '', ''),
    CreditTerm(''),
    InvoicingOptions(),
    SelfBilling(null, '', 0, 0, null),
    CreditControl('', null, null, null, null, 0, null, '', contraAgreed: false),
  );

  PaymentTerm? paymentTerm;
  CreditTerm? creditTerm;
  InvoicingOptions? invoicingOptions;
  SelfBilling? selfBilling;
  CreditControl? creditControl;
  String? vatGroupType;
  String? vatNumber;
  String? eoriNumber;
  String? website;
  String? companyRegistrationNumber;
  bool? isTradingCompany;
  LicenseExemption? licenseExemption;
}
