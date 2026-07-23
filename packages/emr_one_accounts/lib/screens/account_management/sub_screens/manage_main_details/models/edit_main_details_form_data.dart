import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EditMainDetailsFormData {
  EditMainDetailsFormData({
    String? code,
    String? name,
    String? traderIndustryGroup,
    String? supplierIndustryGroup,
    String? sicCodeId,
    Yard? preferredYard,
    DateTime? celAgreementStartDate,
    DateTime? celAgreementExpiryDate,
    DateTime? cfcAgreementStartDate,
    DateTime? cfcAgreementExpiryDate,
    bool? stateReportingEnabled,
    bool? negativeInwardsEnabled,
    bool? transformationEnabled,
    String? vihbNumber,
    String? currencyId,
    Account? parentAccount,
    DateTime? validFrom,
    DateTime? validTo,
    String? reportingFrequency,
    int? amiceCompanyNumber,
    bool? annualWtnSsaRequired,
    DateTime? wtnSsaExpiryDate,
    bool? hasHazardousWasteConsignmentNote,
    bool? isDigitalWalletActivated,
    bool? marketIndicatorEnabled,
  }) {
    this.code = ValueNotifier(code);
    this.name = ValueNotifier(name);
    this.traderIndustryGroup = ValueNotifier(traderIndustryGroup);
    this.supplierIndustryGroup = ValueNotifier(supplierIndustryGroup);
    this.sicCodeId = ValueNotifier(sicCodeId);
    this.preferredYard = ValueNotifier(preferredYard);
    this.celAgreementStartDate = ValueNotifier(celAgreementStartDate);
    this.celAgreementExpiryDate = ValueNotifier(celAgreementExpiryDate);
    this.cfcAgreementStartDate = ValueNotifier(cfcAgreementStartDate);
    this.cfcAgreementExpiryDate = ValueNotifier(cfcAgreementExpiryDate);
    this.stateReportingEnabled = ValueNotifier(stateReportingEnabled ?? false);
    this.negativeInwardsEnabled = ValueNotifier(
      negativeInwardsEnabled ?? false,
    );
    this.transformationEnabled = ValueNotifier(transformationEnabled ?? false);
    this.vihbNumber = ValueNotifier(vihbNumber);
    this.currencyId = ValueNotifier(currencyId);
    this.parentAccount = ValueNotifier(parentAccount);
    this.validFrom = ValueNotifier(validFrom);
    this.validTo = ValueNotifier(validTo);

    this.reportingFrequency = ValueNotifier(reportingFrequency);
    this.amiceCompanyNumber = ValueNotifier(amiceCompanyNumber);
    this.annualWtnSsaRequired = ValueNotifier(annualWtnSsaRequired ?? false);
    this.wtnSsaExpiryDate = ValueNotifier(wtnSsaExpiryDate);
    this.hasHazardousWasteConsignmentNote = ValueNotifier(
      hasHazardousWasteConsignmentNote ?? false,
    );
    this.marketIndicatorEnabled = ValueNotifier(
      marketIndicatorEnabled ?? false,
    );
    this.isDigitalWalletActivated = ValueNotifier(
      isDigitalWalletActivated ?? false,
    );
  }

  late final ValueNotifier<String?> code;
  late final ValueNotifier<String?> name;
  late final ValueNotifier<String?> traderIndustryGroup;
  late final ValueNotifier<String?> supplierIndustryGroup;
  late final ValueNotifier<String?> sicCodeId;
  late final ValueNotifier<Yard?> preferredYard;
  late final ValueNotifier<DateTime?> celAgreementStartDate;
  late final ValueNotifier<DateTime?> celAgreementExpiryDate;
  late final ValueNotifier<DateTime?> cfcAgreementStartDate;
  late final ValueNotifier<DateTime?> cfcAgreementExpiryDate;
  late final ValueNotifier<bool> stateReportingEnabled;
  late final ValueNotifier<bool> negativeInwardsEnabled;
  late final ValueNotifier<bool> transformationEnabled;
  late final ValueNotifier<String?> vihbNumber;
  late final ValueNotifier<String?> currencyId;
  late ValueNotifier<Account?> parentAccount;
  late final ValueNotifier<DateTime?> validFrom;
  late final ValueNotifier<DateTime?> validTo;

  //Reporting settings
  late final ValueNotifier<String?> reportingFrequency;

  static KeyValuePair<Enum$VisitFrequency, String> defaultVisitingFrequency = (
    key: Enum$VisitFrequency.DAILY,
    value: 'DAILY',
  );

  late ValueNotifier<KeyValuePair<Enum$VisitFrequency, String>?>
  visitingFrequency = ValueNotifier(defaultVisitingFrequency);

  late final ValueNotifier<int?> amiceCompanyNumber;

  //Account settings
  late final ValueNotifier<bool> annualWtnSsaRequired;
  late final ValueNotifier<DateTime?> wtnSsaExpiryDate;
  late final ValueNotifier<bool> hasHazardousWasteConsignmentNote;
  late final ValueNotifier<bool> isDigitalWalletActivated;
  late final ValueNotifier<bool> marketIndicatorEnabled;

  static KeyValuePair<Enum$CountryId, String> defaultCountry = (
    key: Enum$CountryId.UK,
    value: 'UK',
  );

  late ValueNotifier<KeyValuePair<Enum$CountryId, String>> originatingCountry =
      ValueNotifier(defaultCountry);

  static KeyValuePair<Enum$PaymentMethod, String> defaultPaymentMethod = (
    key: Enum$PaymentMethod.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$PaymentMethod, String>>
  preferredPaymentMethod = ValueNotifier(defaultPaymentMethod);

  static KeyValuePair<Enum$AccountStatus, String> defaultAccountStatus = (
    key: Enum$AccountStatus.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$AccountStatus, String>> accountStatus =
      ValueNotifier(defaultAccountStatus);

  static KeyValuePair<Enum$VatGroupType, String> defaultVatGroup = (
    key: Enum$VatGroupType.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$VatGroupType, String>>
  customerVatGroupType = ValueNotifier(defaultVatGroup);

  late ValueNotifier<KeyValuePair<Enum$VatGroupType, String>>
  supplierVatGroupType = ValueNotifier(defaultVatGroup);

  static KeyValuePair<Enum$TaxIdType, String> defaultTaxIdType = (
    key: Enum$TaxIdType.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$TaxIdType, String>> taxIdType =
      ValueNotifier(defaultTaxIdType);

  void addListeners(void Function() listener) {
    code.addListener(listener);
    name.addListener(listener);
    preferredPaymentMethod.addListener(listener);
    preferredYard.addListener(listener);
    originatingCountry.addListener(listener);
  }

  void removeListeners(void Function() listener) {
    code.removeListener(listener);
    name.removeListener(listener);
    preferredPaymentMethod.removeListener(listener);
    preferredYard.removeListener(listener);
    originatingCountry.removeListener(listener);
  }

  List<Listenable> get _listeners => [
    code,
    name,
    sicCodeId,
    traderIndustryGroup,
    supplierIndustryGroup,
    preferredYard,
    celAgreementStartDate,
    celAgreementExpiryDate,
    cfcAgreementStartDate,
    cfcAgreementExpiryDate,
    stateReportingEnabled,
    negativeInwardsEnabled,
    transformationEnabled,
    vihbNumber,
    currencyId,
    parentAccount,
    validFrom,
    validTo,
    reportingFrequency,
    amiceCompanyNumber,
    annualWtnSsaRequired,
    wtnSsaExpiryDate,
    hasHazardousWasteConsignmentNote,
    isDigitalWalletActivated,
    marketIndicatorEnabled,
    visitingFrequency,
    originatingCountry,
    preferredPaymentMethod,
    customerVatGroupType,
    supplierVatGroupType,
    taxIdType,
    accountStatus,
  ];

  void addAllListeners(VoidCallback listener) {
    for (final field in _listeners) {
      field.addListener(listener);
    }
  }

  void removeAllListeners(VoidCallback listener) {
    for (final field in _listeners) {
      field.removeListener(listener);
    }
  }
}
