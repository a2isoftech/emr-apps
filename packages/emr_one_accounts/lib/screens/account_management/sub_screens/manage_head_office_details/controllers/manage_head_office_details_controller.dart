import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class ManageHeadOfficeDetailsController
    extends AccountManagementBaseController {
  ManageHeadOfficeDetailsController({required this.coreApiService});

  Account? account;
  final CoreApiService coreApiService;

  EditHeadOfficeDetailsFormData? _formData;

  EditHeadOfficeDetailsFormData get data =>
      _formData ?? EditHeadOfficeDetailsFormData();

  List<ListValue> financialCustomerGroupValues = [];
  List<ListValue> financialSupplierGroupValues = [];
  List<ListValue> paymentTermsGroupValues = [];
  List<ListValue> periodicityDaysValues = [];
  List<ListValue> financialPaymentMethodsValues = [];
  List<ListValue> namesToUseValues = [];
  List<ListValue> depots = [];

  @override
  void reset() {
    processing = false;
    _formData = null;
    notifyListeners();
  }

  @override
  void setAccount(Account? a) {
    account = a;

    _formData = EditHeadOfficeDetailsFormData(
      companyRegistrationNumber:
          account?.businessDetail?.companyRegistrationNumber,
      vatNumber: account?.businessDetail?.vatNumber,
      isTradingCompany: account?.businessDetail?.isTradingCompany,
      eoriNumber: account?.businessDetail?.eoriNumber,
      website: account?.businessDetail?.website,
      bulkPod: account!.businessDetail?.invoicingOptions!.bulkPod,
      multiLoad: account!.businessDetail?.invoicingOptions!.multiLoad,
      multiDepot: account!.businessDetail?.invoicingOptions!.multiDepot,
      multiGrade: account!.businessDetail?.invoicingOptions!.multiGrade,
      multiTicketDate:
          account!.businessDetail?.invoicingOptions!.multiTicketDate,
      multiLocation: account!.businessDetail?.invoicingOptions!.multiLocation,
      useDeliveryAddress:
          account!.businessDetail?.invoicingOptions!.useDeliveryAddress,
      suppressInvoice:
          account!.businessDetail?.invoicingOptions!.suppressInvoice,
      suppressStatement:
          account!.businessDetail?.invoicingOptions!.suppressStatement,
      selfBillingDate: account!.businessDetail!.selfBilling!.selfBillingDate,
      autoApprove: account!.businessDetail?.selfBilling!.autoApprove,
      doNotPayTicketsOlderThan:
          account!.businessDetail!.selfBilling!.doNotPayTicketsOlderThan,
      payTicketsOlderThan:
          account!.businessDetail!.selfBilling!.payTicketsOlderThan,
      payCentre: account!.businessDetail!.selfBilling!.payCentre,
      creditLimit: account!.businessDetail!.creditControl!.creditLimit,
      overrideLimit: account!.businessDetail!.creditControl!.overrideLimit,
      decisionLimit: account!.businessDetail!.creditControl!.decisionLimit,
      creditReportDate:
          account!.businessDetail!.creditControl!.creditReportDate,
      creditLimitReviewDate:
          account!.businessDetail!.creditControl!.creditLimitReviewDate,
      currencyId: account!.businessDetail!.creditControl!.currencyId,
      contraAgreed: account!.businessDetail!.creditControl!.contraAgreed,
      creditReportValue:
          account!.businessDetail!.creditControl!.creditReportValue,
      discountTerms: account!.businessDetail!.paymentTerm!.discountTerms,
      discountPercentage:
          account!.businessDetail!.paymentTerm!.discountPercentage,
      adjustTax: account!.businessDetail!.paymentTerm!.adjustTax,
      reportingDate: account!.taxSettings!.reportingDate,
      cashPaymentLimitExemptionDate:
          account!.taxSettings!.cashPaymentLimitExemptionDate,
      doingBusinessAs: account!.taxSettings!.doingBusinessAs,
      checkForW9: account!.taxSettings!.checkForW9,
      w9Received: account!.taxSettings!.w9Received,
      secondTin: account!.taxSettings!.secondTin,
      foreignEntityIndicator: account!.taxSettings!.foreignEntityIndicator,
      onStop: account?.businessDetail?.creditTerm?.onStop,
    );

    _formData?.financialCustomerGroup.value = account!.financialCustomerGroupId;
    _formData?.financialSupplierGroup.value = account!.financialSupplierGroupId;
    _formData?.nameFor1099.value = account!.taxSettings!.nameFor1099;
    _formData?.taxIdType = EnumExtensions.getEnumValueNotifier<Enum$TaxIdType>(
      account?.taxSettings?.taxId ?? '',
      Enum$TaxIdType.values,
    );
    _formData?.insurerPolicyName =
        EnumExtensions.getEnumValueNotifier<Enum$InsurerPolicyType>(
          account?.businessDetail?.creditControl?.insurerPolicyName ?? '',
          Enum$InsurerPolicyType.values,
        );
    _formData?.frequency =
        EnumExtensions.getEnumValueNotifier<Enum$SelfBillingFrequency>(
          account?.businessDetail?.selfBilling?.frequency ?? '',
          Enum$SelfBillingFrequency.values,
        );
    _formData!.discount =
        EnumExtensions.getEnumValueNotifier<Enum$DiscountType>(
          account?.businessDetail?.paymentTerm?.discountType ?? '',
          Enum$DiscountType.values,
        );

    _formData!.paymentMethod =
        EnumExtensions.getEnumValueNotifier<Enum$PaymentMethod>(
          account?.preferredPaymentMethod?.toJson() ?? '',
          Enum$PaymentMethod.values,
        );

    _formData!.documentHoldStatusType =
        EnumExtensions.getEnumValueNotifier<Enum$DocumentHoldStatusType>(
          account?.businessDetail?.paymentTerm?.documentHoldStatusType ?? '',
          Enum$DocumentHoldStatusType.values,
        );

    _formData?.paymentTermTypeName.value =
        account?.businessDetail?.paymentTerm?.paymentTermTypeName;
    _formData?.creditPaymentTermTypeName.value =
        account?.businessDetail!.creditTerm?.paymentTermTypeName;

    _formData!.dueDateFrom =
        EnumExtensions.getEnumValueNotifier<Enum$DueDateFrom>(
          account?.businessDetail?.creditTerm?.dueDateFrom ?? '',
          Enum$DueDateFrom.values,
        );
    _formData!.invoicePeriodicity =
        EnumExtensions.getEnumValueNotifier<Enum$InvoicePeriodicity>(
          account?.businessDetail?.creditTerm?.invoicePeriodicity ?? '',
          Enum$InvoicePeriodicity.values,
        );
    _formData!.vatClass = EnumExtensions.getEnumValueNotifier<Enum$VatClass>(
      account?.businessDetail?.creditTerm?.vatClass ?? '',
      Enum$VatClass.values,
    );
    _formData!.limitDecisionType =
        EnumExtensions.getEnumValueNotifier<Enum$LimitDecisionType>(
          account?.businessDetail?.creditTerm?.limitDecisionType ?? '',
          Enum$LimitDecisionType.values,
        );
    _formData!.invoicePeriodicityDays.value =
        account?.businessDetail?.creditTerm?.invoicePeriodicityDays;
    _formData?.financialPaymentMethod.value =
        account?.businessDetail?.paymentTerm?.paymentMethod;
    _formData!.taxMethod = EnumExtensions.getEnumValueNotifier<Enum$TaxMethod>(
      account?.businessDetail?.paymentTerm?.taxMethod ?? '',
      Enum$TaxMethod.values,
    );
    setAccountReferenceData();

    isFormValid.value = true;
  }

  void resetFields() {
    final a = account;
    final fd = _formData;
    if (a == null || fd == null) return;

    final businessDetail = a.businessDetail;
    final invoicingOptions = businessDetail?.invoicingOptions;
    final selfBilling = businessDetail?.selfBilling;
    final creditControl = businessDetail?.creditControl;
    final paymentTerm = businessDetail?.paymentTerm;
    final creditTerm = businessDetail?.creditTerm;
    final taxSettings = a.taxSettings;

    fd.companyRegistrationNumber.value =
        businessDetail?.companyRegistrationNumber;
    fd.vatNumber.value = businessDetail?.vatNumber;
    fd.isTradingCompany.value = businessDetail?.isTradingCompany;
    fd.eoriNumber.value = businessDetail?.eoriNumber;
    fd.website.value = businessDetail?.website;

    fd.bulkPod.value = invoicingOptions?.bulkPod;
    fd.multiLoad.value = invoicingOptions?.multiLoad;
    fd.multiDepot.value = invoicingOptions?.multiDepot;
    fd.multiGrade.value = invoicingOptions?.multiGrade;
    fd.multiTicketDate.value = invoicingOptions?.multiTicketDate;
    fd.multiLocation.value = invoicingOptions?.multiLocation;
    fd.useDeliveryAddress.value = invoicingOptions?.useDeliveryAddress;
    fd.suppressInvoice.value = invoicingOptions?.suppressInvoice;
    fd.suppressStatement.value = invoicingOptions?.suppressStatement;

    fd.selfBillingDate.value = selfBilling?.selfBillingDate;
    fd.autoApprove.value = selfBilling?.autoApprove;
    fd.doNotPayTicketsOlderThan.value = selfBilling?.doNotPayTicketsOlderThan;
    fd.payTicketsOlderThan.value = selfBilling?.payTicketsOlderThan;
    fd.payCentre.value = selfBilling?.payCentre;
    fd.frequency.value = EnumExtensions.getEnumValueNotifier<
      Enum$SelfBillingFrequency
    >(selfBilling?.frequency ?? '', Enum$SelfBillingFrequency.values).value;

    fd.creditLimit.value = creditControl?.creditLimit;
    fd.overrideLimit.value = creditControl?.overrideLimit;
    fd.decisionLimit.value = creditControl?.decisionLimit;
    fd.creditReportDate.value = creditControl?.creditReportDate;
    fd.creditReportValue.value = creditControl?.creditReportValue;
    fd.creditLimitReviewDate.value = creditControl?.creditLimitReviewDate;
    fd.currencyId.value = creditControl?.currencyId;
    fd.contraAgreed.value = creditControl?.contraAgreed;
    fd.insurerPolicyName.value =
        EnumExtensions.getEnumValueNotifier<Enum$InsurerPolicyType>(
          creditControl?.insurerPolicyName ?? '',
          Enum$InsurerPolicyType.values,
        ).value;

    fd.paymentTermTypeName.value = paymentTerm?.paymentTermTypeName;
    fd.financialPaymentMethod.value = paymentTerm?.paymentMethod;
    fd.discountTerms.value = paymentTerm?.discountTerms;
    fd.discountPercentage.value = paymentTerm?.discountPercentage;
    fd.adjustTax.value = paymentTerm?.adjustTax;
    fd.discount.value = EnumExtensions.getEnumValueNotifier<Enum$DiscountType>(
      paymentTerm?.discountType ?? '',
      Enum$DiscountType.values,
    ).value;
    fd.taxMethod.value = EnumExtensions.getEnumValueNotifier<Enum$TaxMethod>(
      paymentTerm?.taxMethod ?? '',
      Enum$TaxMethod.values,
    ).value;
    fd.documentHoldStatusType.value =
        EnumExtensions.getEnumValueNotifier<Enum$DocumentHoldStatusType>(
          paymentTerm?.documentHoldStatusType ?? '',
          Enum$DocumentHoldStatusType.values,
        ).value;
    fd.paymentMethod.value =
        EnumExtensions.getEnumValueNotifier<Enum$PaymentMethod>(
          a.preferredPaymentMethod?.toJson() ?? '',
          Enum$PaymentMethod.values,
        ).value;

    fd.creditPaymentTermTypeName.value = creditTerm?.paymentTermTypeName;
    fd.invoicePeriodicityDays.value = creditTerm?.invoicePeriodicityDays;
    fd.onStop.value = creditTerm?.onStop;
    fd.dueDateFrom.value =
        EnumExtensions.getEnumValueNotifier<Enum$DueDateFrom>(
          creditTerm?.dueDateFrom ?? '',
          Enum$DueDateFrom.values,
        ).value;
    fd.invoicePeriodicity.value =
        EnumExtensions.getEnumValueNotifier<Enum$InvoicePeriodicity>(
          creditTerm?.invoicePeriodicity ?? '',
          Enum$InvoicePeriodicity.values,
        ).value;
    fd.vatClass.value = EnumExtensions.getEnumValueNotifier<Enum$VatClass>(
      creditTerm?.vatClass ?? '',
      Enum$VatClass.values,
    ).value;
    fd.limitDecisionType.value =
        EnumExtensions.getEnumValueNotifier<Enum$LimitDecisionType>(
          creditTerm?.limitDecisionType ?? '',
          Enum$LimitDecisionType.values,
        ).value;

    fd.taxIdType.value = EnumExtensions.getEnumValueNotifier<Enum$TaxIdType>(
      taxSettings?.taxId ?? '',
      Enum$TaxIdType.values,
    ).value;
    fd.nameFor1099.value = taxSettings?.nameFor1099;
    fd.reportingDate.value = taxSettings?.reportingDate;
    fd.cashPaymentLimitExemptionDate.value =
        taxSettings?.cashPaymentLimitExemptionDate;
    fd.doingBusinessAs.value = taxSettings?.doingBusinessAs;
    fd.checkForW9.value = taxSettings?.checkForW9;
    fd.w9Received.value = taxSettings?.w9Received;
    fd.foreignEntityIndicator.value = taxSettings?.foreignEntityIndicator;
    fd.secondTin.value = taxSettings?.secondTin;

    fd.financialCustomerGroup.value = a.financialCustomerGroupId;
    fd.financialSupplierGroup.value = a.financialSupplierGroupId;
  }

  Future<List<KeyValuePair<Enum$PaymentMethod, String>>> paymentMethods(
    String _,
  ) async {
    return Enum$PaymentMethod.values
        .map((v) => (key: v, value: v.toString().split('.').last))
        .toList();
  }

  Future<List<String>> financialPaymentMethods(String _) async {
    return coreApiService.referenceData.getFinancialPaymentMethods();
  }

  Future<List<KeyValuePair<Enum$TaxMethod, String>>> taxMethods(
    String _,
  ) async =>
      EnumExtensions.pickerItems(Enum$TaxMethod.values);

  Future<List<KeyValuePair<Enum$DiscountType, String>>> discountTypes(
    String _,
  ) async =>
      EnumExtensions.pickerItems(Enum$DiscountType.values);

  @override
  Future<(bool success, String error)> update() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    final (
      success,
      error,
    ) = await coreApiService.accountService.updateAccountHeadOfficeDetails(
      Input$UpdateAccountHeadOfficeDetailsInput(
        accountId: account!.id!,
        headOfficeDetails: Input$HeadOfficeDetailsInput(
          companyRegistrationNumber: data.companyRegistrationNumber.value,
          isTradingCompany: data.isTradingCompany.value,
          vatNumber: data.vatNumber.value,
          website: data.website.value,
          eoriNumber: data.eoriNumber.value,
          invoicingOptions: Input$InvoicingOptionsInput(
            bulkPod: data.bulkPod.value ?? false,
            multiLoad: data.multiLoad.value ?? false,
            multiDepot: data.multiDepot.value ?? false,
            multiGrade: data.multiGrade.value ?? false,
            multiTicketDate: data.multiTicketDate.value ?? false,
            multiLocation: data.multiLocation.value ?? false,
            useDeliveryAddress: data.useDeliveryAddress.value ?? false,
            suppressInvoice: data.suppressInvoice.value ?? false,
            suppressStatement: data.suppressStatement.value ?? false,
          ),
          selfBilling: Input$SelfBillingInput(
            selfBillingDate: data.selfBillingDate.value ?? DateTime.now(),
            frequency: data.frequency.value.key,
            autoApprove: data.autoApprove.value ?? false,
            doNotPayTicketsOlderThan: data.doNotPayTicketsOlderThan.value,
            payTicketsOlderThan: data.payTicketsOlderThan.value,
            payCentre: data.payCentre.value,
          ),
          creditControl: Input$CreditControlInput(
            contraAgreed: data.contraAgreed.value ?? false,
            insurerPolicyName: data.insurerPolicyName.value.key,
            creditLimit: data.creditLimit.value,
            overrideLimit: data.overrideLimit.value,
            decisionLimit: data.decisionLimit.value,
            creditReportDate: data.creditReportDate.value,
            creditReportValue: data.creditReportValue.value,
            creditLimitReviewDate: data.creditLimitReviewDate.value,
            currencyId: data.currencyId.value,
          ),
          paymentTerm: Input$PaymentTermInput(
            paymentTermTypeId:
                data.paymentTermTypeName.value != null &&
                    data.paymentTermTypeName.value!.isNotEmpty
                ? paymentTermsGroupValues
                      .firstWhere(
                        (x) => x.value == data.paymentTermTypeName.value!,
                      )
                      .id!
                : '',
            paymentTermTypeName:
                data.paymentTermTypeName.value != null &&
                    data.paymentTermTypeName.value!.isNotEmpty
                ? data.paymentTermTypeName.value!
                : '',
            adjustTax: data.adjustTax.value ?? false,
            documentHoldStatusType: data.documentHoldStatusType.value.key,
            financialPaymentMethod: data.financialPaymentMethod.value!,
            discountType: data.discount.value.key,
            taxMethod: data.taxMethod.value.key,
            discountTerms: data.discountTerms.value,
            discountPercentage: data.discountPercentage.value,
            defaultMedia: Enum$DefaultMedia.NONE,
          ),
          creditTerm: Input$CreditTermInput(
            paymentTermTypeId: data.creditPaymentTermTypeName.value!.isNotEmpty
                ? paymentTermsGroupValues
                      .firstWhere(
                        (x) => x.value == data.creditPaymentTermTypeName.value!,
                      )
                      .id!
                : '',
            paymentTermTypeName: data.creditPaymentTermTypeName.value!,
            dueDateFrom: data.dueDateFrom.value.key,
            invoicePeriodicity: data.invoicePeriodicity.value.key,
            invoicePeriodicityDays: data.invoicePeriodicityDays.value,
            vatClass: data.vatClass.value.key,
            limitDecisionType: data.limitDecisionType.value.key,
            onStop: data.onStop.value ?? false,
          ),
        ),
        taxSettings: Input$TaxSettingsInput(
          taxId: data.taxIdType.value.key,
          w9Received: data.w9Received.value ?? false,
          checkForW9: data.checkForW9.value ?? false,
          nameFor1099:
              data.nameFor1099.value != null &&
                  data.nameFor1099.value!.isNotEmpty
              ? data.nameFor1099.value!
              : '',
          doingBusinessAs: data.doingBusinessAs.value ?? '',
          foreignEntityIndicator: data.foreignEntityIndicator.value ?? false,
          secondTin: data.secondTin.value ?? false,
          reportingDate: data.reportingDate.value,
          cashPaymentLimitExemptionDate:
              data.cashPaymentLimitExemptionDate.value,
        ),
        financialCustomerGroupId: data.financialCustomerGroup.value,
        financialSupplierGroupId: data.financialSupplierGroup.value,
      ),
    );

    toggleProcessing();

    return (success, error ?? '');
  }

  @override
  Future<(bool, String)> add() {
    throw UnimplementedError();
  }

  Future<List<KeyValuePair<Enum$SelfBillingFrequency, String>>>
  selfBillingfrequency(String _) async =>
      EnumExtensions.pickerItems(Enum$SelfBillingFrequency.values);

  Future<List<KeyValuePair<Enum$InsurerPolicyType, String>>> insurerPolicy(
    String _,
  ) async =>
      EnumExtensions.pickerItems(Enum$InsurerPolicyType.values);

  Future<List<KeyValuePair<Enum$TaxIdType, String>>> taxIdTypes(
    String _,
  ) async =>
      EnumExtensions.pickerItems(Enum$TaxIdType.values);

  Future<List<KeyValuePair<Enum$InvoicePeriodicity, String>>>
  invoicePeriodicity(String _) async =>
      EnumExtensions.pickerItems(Enum$InvoicePeriodicity.values);

  Future<List<String>> invoicePeriodicityDays(String _) async {
    return periodicityDaysValues
        .map((e) => e.value ?? e.text)
        .whereType<String>()
        .toList();
  }

  Future<List<String>> namesToUseOn1099(String _) async {
    return namesToUseValues
        .map((e) => e.value ?? e.text)
        .whereType<String>()
        .toList();
  }

  Future<List<KeyValuePair<Enum$LimitDecisionType, String>>> limitDecisionType(
    String _,
  ) async =>
      EnumExtensions.pickerItems(Enum$LimitDecisionType.values);

  Future<List<KeyValuePair<Enum$DueDateFrom, String>>> dueDateFrom(
    String _,
  ) async =>
      EnumExtensions.pickerItems(Enum$DueDateFrom.values);

  Future<List<KeyValuePair<Enum$VatClass, String>>> vatClass(String _) async =>
      EnumExtensions.pickerItems(Enum$VatClass.values);

  Future<List<String>> financialCustomerGroups(String _) async {
    return financialCustomerGroupValues
        .map((e) => e.value ?? e.text)
        .whereType<String>()
        .toList();
  }

  Future<List<String>> getDepots(String _) async {
    return depots.map((e) => e.value ?? e.text).whereType<String>().toList();
  }

  Future<List<String>> financialSupplierGroups(String _) async {
    return financialSupplierGroupValues
        .map((e) => e.value ?? e.text)
        .whereType<String>()
        .toList();
  }

  Future<List<String>> paymentTerms(String _) async {
    return paymentTermsGroupValues
        .map((e) => e.value ?? e.text)
        .whereType<String>()
        .toList();
  }

  Future<List<String>> financialPaymentMethodsGroups(String _) async {
    return financialPaymentMethodsValues
        .map((e) => e.value ?? e.text)
        .whereType<String>()
        .toList();
  }

  Future<List<KeyValuePair<Enum$DocumentHoldStatusType, String>>>
  documentHoldStatusType(String _) async =>
      EnumExtensions.pickerItems(Enum$DocumentHoldStatusType.values);

  Future<void> setAccountReferenceData() async {
    final ref = await coreApiService.accountService
        .getAccountListValuesForFinancialGroups();
    if (ref == null) return;
    final fCust = ref.financialCustomerGroups ?? <String, dynamic>{};
    final dataNode = fCust['Data'];
    if (dataNode is List) {
      for (final item in dataNode) {
        if (item is Map) {
          final code = (item['Code'] ?? item['code'])?.toString() ?? '';
          final desc =
              (item['Description'] ?? item['description'])?.toString() ?? '';
          if (code.isNotEmpty &&
              financialCustomerGroupValues.length != dataNode.length) {
            financialCustomerGroupValues.add(
              ListValue(
                id: code,
                text: '$code - $desc',
                value: '$code - $desc',
              ),
            );
          }
        }
      }
    }

    final fSupp = ref.financialSupplierGroups ?? <String, dynamic>{};
    final suppDataNode = fSupp['Data'];
    if (suppDataNode is List) {
      for (final item in suppDataNode) {
        if (item is Map) {
          final code = (item['Code'] ?? item['code'])?.toString() ?? '';
          final desc =
              (item['Description'] ?? item['description'])?.toString() ?? '';
          if (code.isNotEmpty &&
              financialSupplierGroupValues.length != suppDataNode.length) {
            financialSupplierGroupValues.add(
              ListValue(
                id: code,
                text: '$code - $desc',
                value: '$code - $desc',
              ),
            );
          }
        }
      }
    }

    final payTerms = ref.paymentTerms ?? <String, dynamic>{};
    final payTermsDataNode = payTerms['Data'];
    if (payTermsDataNode is List) {
      for (final item in payTermsDataNode) {
        if (item is Map) {
          final code = (item['Name'] ?? item['name'])?.toString() ?? '';
          final desc =
              (item['Description'] ?? item['description'])?.toString() ?? '';
          if (code.isNotEmpty &&
              paymentTermsGroupValues.length != payTermsDataNode.length) {
            paymentTermsGroupValues.add(
              ListValue(id: code, text: '$code - $desc', value: desc),
            );
          }
        }
      }
    }

    final periodicityDays = ref.invoicePeriodicityDays ?? <String, dynamic>{};
    final periodicityDaysNode = periodicityDays['Data'];
    if (periodicityDaysNode is List) {
      for (final item in periodicityDaysNode) {
        if (item != null &&
            periodicityDaysValues.length != periodicityDaysNode.length) {
          periodicityDaysValues.add(
            ListValue(
              id: item.toString(),
              text: item.toString(),
              value: item.toString(),
            ),
          );
        }
      }
    }

    final financialPaymentMethod =
        ref.financialPaymentMethod ?? <String, dynamic>{};
    final financialPaymentMethodNode = financialPaymentMethod['Data'];
    if (financialPaymentMethodNode is List) {
      for (final item in financialPaymentMethodNode) {
        if (item is Map) {
          final code = (item['Code'] ?? item['code'])?.toString() ?? '';
          final desc =
              (item['Description'] ?? item['description'])?.toString() ?? '';
          if (code.isNotEmpty &&
              financialPaymentMethodsValues.length !=
                  financialPaymentMethodNode.length) {
            financialPaymentMethodsValues.add(
              ListValue(id: code, text: '$code - $desc', value: desc),
            );
          }
        }
      }
    }

    final namesToUse = ref.namesToUseOn1099 ?? <String, dynamic>{};
    final namesToUseOn1099 = namesToUse['Data'];
    if (namesToUseOn1099 is List) {
      for (final item in namesToUseOn1099) {
        if (item is Map) {
          final code = (item['Name'] ?? item['name'])?.toString() ?? '';
          final desc =
              (item['Description'] ?? item['description'])?.toString() ?? '';
          if (code.isNotEmpty &&
              namesToUseValues.length != namesToUseOn1099.length) {
            namesToUseValues.add(
              ListValue(id: code, text: '$code - $desc', value: desc),
            );
          }
        }
      }
    }

    final depotsVal = ref.depots ?? <String, dynamic>{};
    final depotsList = depotsVal['Data'];
    if (depotsList is List) {
      for (final item in depotsList) {
        if (item is Map && item['TerritoryCode'] == account?.territoryCode) {
          final depotNos = item['DepotNo'];
          if (depotNos is List && depots.length != depotsList.length) {
            for (final depo in depotNos) {
              depots.add(
                ListValue(
                  id: depo.toString(),
                  text: depo.toString(),
                  value: depo.toString(),
                ),
              );
            }
          }
        }
      }
    }
  }
}
