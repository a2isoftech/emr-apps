import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:flutter/material.dart';

class EditHeadOfficeDetailsFormData {
  EditHeadOfficeDetailsFormData({
    String? companyRegistrationNumber,
    String? vatNumber,
    bool? isTradingCompany,
    String? eoriNumber,
    String? website,
    bool? bulkPod,
    bool? multiLoad,
    bool? multiDepot,
    bool? multiGrade,
    bool? multiTicketDate,
    bool? multiLocation,
    bool? useDeliveryAddress,
    bool? suppressInvoice,
    bool? suppressStatement,
    DateTime? selfBillingDate,
    bool? autoApprove,
    int? doNotPayTicketsOlderThan,
    int? payTicketsOlderThan,
    String? payCentre,
    bool? contraAgreed,
    double? creditLimit,
    double? overrideLimit,
    double? decisionLimit,
    DateTime? creditReportDate,
    double? creditReportValue,
    DateTime? creditLimitReviewDate,
    String? currencyId,
    bool? adjustTax,
    String? defaultMedia,
    String? discountTerms,
    double? discountPercentage,
    bool? onStop,
    String? invoicePeriodicityDays,
    bool? w9Received,
    bool? checkForW9,
    String? doingBusinessAs,
    bool? foreignEntityIndicator,
    bool? secondTin,
    DateTime? reportingDate,
    DateTime? cashPaymentLimitExemptionDate,
  }) {
    this.companyRegistrationNumber = ValueNotifier(companyRegistrationNumber);
    this.vatNumber = ValueNotifier(vatNumber);
    this.isTradingCompany = ValueNotifier(isTradingCompany);

    this.eoriNumber = ValueNotifier(eoriNumber);
    this.website = ValueNotifier(website);
    this.bulkPod = ValueNotifier(bulkPod);
    this.multiLoad = ValueNotifier(multiLoad);
    this.multiDepot = ValueNotifier(multiDepot);
    this.multiGrade = ValueNotifier(multiGrade);
    this.multiTicketDate = ValueNotifier(multiTicketDate);
    this.multiLocation = ValueNotifier(multiLocation);
    this.useDeliveryAddress = ValueNotifier(useDeliveryAddress);
    this.suppressInvoice = ValueNotifier(suppressInvoice);
    this.suppressStatement = ValueNotifier(suppressStatement);
    this.selfBillingDate = ValueNotifier(selfBillingDate);
    this.autoApprove = ValueNotifier(autoApprove);
    this.doNotPayTicketsOlderThan = ValueNotifier(doNotPayTicketsOlderThan);
    this.payTicketsOlderThan = ValueNotifier(payTicketsOlderThan);
    this.payCentre = ValueNotifier(payCentre);
    this.contraAgreed = ValueNotifier(contraAgreed);
    this.creditLimit = ValueNotifier(creditLimit);
    this.overrideLimit = ValueNotifier(overrideLimit);
    this.decisionLimit = ValueNotifier(decisionLimit);
    this.creditReportDate = ValueNotifier(creditReportDate);
    this.creditReportValue = ValueNotifier(creditReportValue);
    this.creditLimitReviewDate = ValueNotifier(creditLimitReviewDate);
    this.currencyId = ValueNotifier(currencyId);
    this.adjustTax = ValueNotifier(adjustTax);
    this.defaultMedia = ValueNotifier(defaultMedia);
    this.discountTerms = ValueNotifier(discountTerms);
    this.discountPercentage = ValueNotifier(discountPercentage);
    this.onStop = ValueNotifier(onStop);
    this.invoicePeriodicityDays = ValueNotifier(invoicePeriodicityDays);
    this.w9Received = ValueNotifier(w9Received);
    this.checkForW9 = ValueNotifier(checkForW9);
    this.doingBusinessAs = ValueNotifier(doingBusinessAs);
    this.foreignEntityIndicator = ValueNotifier(foreignEntityIndicator);
    this.secondTin = ValueNotifier(secondTin);
    this.reportingDate = ValueNotifier(reportingDate);
    this.cashPaymentLimitExemptionDate = ValueNotifier(
      cashPaymentLimitExemptionDate,
    );
  }

  late final ValueNotifier<String?> companyRegistrationNumber;
  late final ValueNotifier<String?> vatNumber;
  late final ValueNotifier<bool?> isTradingCompany;
  late final ValueNotifier<String?> supplierGroup;
  late final ValueNotifier<String?> eoriNumber;
  late final ValueNotifier<String?> website;
  late final ValueNotifier<bool?> bulkPod;
  late final ValueNotifier<bool?> multiLoad;
  late final ValueNotifier<bool?> multiDepot;
  late final ValueNotifier<bool?> multiGrade;
  late final ValueNotifier<bool?> multiTicketDate;
  late final ValueNotifier<bool?> multiLocation;
  late final ValueNotifier<bool?> useDeliveryAddress;
  late final ValueNotifier<bool?> suppressInvoice;
  late final ValueNotifier<bool?> suppressStatement;
  late final ValueNotifier<DateTime?> selfBillingDate;
  late final ValueNotifier<bool?> autoApprove;
  late final ValueNotifier<int?> doNotPayTicketsOlderThan;
  late final ValueNotifier<int?> payTicketsOlderThan;
  late final ValueNotifier<String?> payCentre;
  late final ValueNotifier<bool?> contraAgreed;
  late final ValueNotifier<double?> creditLimit;
  late final ValueNotifier<double?> overrideLimit;
  late final ValueNotifier<double?> decisionLimit;
  late final ValueNotifier<DateTime?> creditReportDate;
  late final ValueNotifier<double?> creditReportValue;
  late final ValueNotifier<DateTime?> creditLimitReviewDate;
  late final ValueNotifier<String?> currencyId;
  late final ValueNotifier<bool?> adjustTax;
  late final ValueNotifier<String?> defaultMedia;
  late final ValueNotifier<String?> discountTerms;
  late final ValueNotifier<double?> discountPercentage;
  late final ValueNotifier<bool?> onStop;
  late final ValueNotifier<String?> invoicePeriodicityDays;
  late final ValueNotifier<bool?> w9Received;
  late final ValueNotifier<bool?> checkForW9;
  late final ValueNotifier<String?> doingBusinessAs;
  late final ValueNotifier<bool?> foreignEntityIndicator;
  late final ValueNotifier<bool?> secondTin;
  late final ValueNotifier<DateTime?> reportingDate;
  late final ValueNotifier<DateTime?> cashPaymentLimitExemptionDate;

  static KeyValuePair<Enum$PaymentMethod, String> defaultPaymentMethod = (
    key: Enum$PaymentMethod.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$PaymentMethod, String>> paymentMethod =
      ValueNotifier(defaultPaymentMethod);

  static KeyValuePair<Enum$DiscountType, String> defaultDiscountType = (
    key: Enum$DiscountType.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$DiscountType, String>> discount =
      ValueNotifier(defaultDiscountType);

  static KeyValuePair<Enum$TaxMethod, String> defaultTaxMethod = (
    key: Enum$TaxMethod.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$TaxMethod, String>> taxMethod =
      ValueNotifier(defaultTaxMethod);

  static KeyValuePair<Enum$SelfBillingFrequency, String> defaultfrequency = (
    key: Enum$SelfBillingFrequency.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$SelfBillingFrequency, String>>
  frequency = ValueNotifier(defaultfrequency);

  static KeyValuePair<Enum$InsurerPolicyType, String> defaultinsurer = (
    key: Enum$InsurerPolicyType.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$InsurerPolicyType, String>>
  insurerPolicyName = ValueNotifier(defaultinsurer);

  static KeyValuePair<Enum$TaxIdType, String> defaultTaxType = (
    key: Enum$TaxIdType.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$TaxIdType, String>> taxIdType =
      ValueNotifier(defaultTaxType);

  static KeyValuePair<Enum$InvoicePeriodicity, String>
  defaultInvoicePeriodicity = (
    key: Enum$InvoicePeriodicity.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$InvoicePeriodicity, String>>
  invoicePeriodicity = ValueNotifier(defaultInvoicePeriodicity);

  static KeyValuePair<Enum$VatClass, String> defaultVatClass = (
    key: Enum$VatClass.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$VatClass, String>> vatClass =
      ValueNotifier(defaultVatClass);

  static KeyValuePair<Enum$DueDateFrom, String> defaultDueDateFrom = (
    key: Enum$DueDateFrom.NONE,
    value: 'NONE',
  );

  late ValueNotifier<KeyValuePair<Enum$DueDateFrom, String>> dueDateFrom =
      ValueNotifier(defaultDueDateFrom);

  static KeyValuePair<Enum$DocumentHoldStatusType, String>
  defaultDocumentHoldStatusType = (
    key: Enum$DocumentHoldStatusType.ALL,
    value: 'ALL',
  );

  late ValueNotifier<KeyValuePair<Enum$DocumentHoldStatusType, String>>
  documentHoldStatusType = ValueNotifier(defaultDocumentHoldStatusType);

  static KeyValuePair<Enum$LimitDecisionType, String> defaultLimitDecisionType =
      (key: Enum$LimitDecisionType.NONE, value: 'NONE');

  late ValueNotifier<KeyValuePair<Enum$LimitDecisionType, String>>
  limitDecisionType = ValueNotifier(defaultLimitDecisionType);

  ValueNotifier<String?> financialSupplierGroup = ValueNotifier('');
  ValueNotifier<String?> financialCustomerGroup = ValueNotifier('');
  ValueNotifier<String?> paymentTermTypeName = ValueNotifier('');
  ValueNotifier<String?> creditPaymentTermTypeName = ValueNotifier('');
  ValueNotifier<String?> financialPaymentMethod = ValueNotifier('');
  ValueNotifier<String?> nameFor1099 = ValueNotifier('');

  List<Listenable> get _listeners => [
    companyRegistrationNumber,
    vatNumber,
    isTradingCompany,
    eoriNumber,
    website,
    bulkPod,
    multiLoad,
    multiDepot,
    multiGrade,
    multiTicketDate,
    multiLocation,
    useDeliveryAddress,
    suppressInvoice,
    suppressStatement,
    selfBillingDate,
    autoApprove,
    doNotPayTicketsOlderThan,
    payTicketsOlderThan,
    payCentre,
    contraAgreed,
    creditLimit,
    overrideLimit,
    decisionLimit,
    creditReportDate,
    creditReportValue,
    creditLimitReviewDate,
    currencyId,
    adjustTax,
    discountTerms,
    discountPercentage,
    onStop,
    invoicePeriodicityDays,
    w9Received,
    checkForW9,
    doingBusinessAs,
    foreignEntityIndicator,
    secondTin,
    reportingDate,
    cashPaymentLimitExemptionDate,
    financialSupplierGroup,
    financialCustomerGroup,
    paymentTermTypeName,
    creditPaymentTermTypeName,
    financialPaymentMethod,
    nameFor1099,
    frequency,
    insurerPolicyName,
    taxIdType,
    discount,
    taxMethod,
    paymentMethod,
    documentHoldStatusType,
    dueDateFrom,
    invoicePeriodicity,
    vatClass,
    limitDecisionType,
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
