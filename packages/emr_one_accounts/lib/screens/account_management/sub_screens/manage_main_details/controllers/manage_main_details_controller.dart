import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart' hide AccountSettings;
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageMainDetailsController extends AccountManagementBaseController {
  ManageMainDetailsController({
    required this.coreApiService,
    required this.mediaService,
  });

  List<String> industryGroupValues = [];
  List<String> sicCodeValues = [];
  final Map<String, String> sicCodeDescriptions = {};

  Future<void> loadReferenceData() async {
    industryGroupValues.clear();
    sicCodeValues = [];
    sicCodeDescriptions.clear();

    final preferredYardCode = account?.preferredYard?.trim();
    final preferredYardFuture =
        preferredYardCode != null && preferredYardCode.isNotEmpty
        ? _resolvePreferredYard(preferredYardCode)
        : Future<void>.value();

    final industryGroupsFuture =
        coreApiService.accountService.getIndustryGroups();
    final sicCodesFuture = coreApiService.accountService.getSicCodes();

    try {
      final ref = await industryGroupsFuture;
      if (ref != null) {
        final referenceData = ref.referenceData ?? <String, dynamic>{};
        final dataNode = referenceData['Data'];
        if (dataNode is Map) {
          for (final entry in dataNode.entries) {
            final category = entry.key.toString();
            final groups = entry.value;
            if (groups is List) {
              for (final groupItem in groups) {
                industryGroupValues.add('$category - ${groupItem ?? ''}');
              }
            }
          }
        }
      }
    } catch (_) {}

    try {
      final nodes = await sicCodesFuture;
      cacheSicCodeNodes(nodes);

      final boundSicCode = account?.sicCodeId?.trim();
      if (boundSicCode != null &&
          boundSicCode.isNotEmpty &&
          !sicCodeDescriptions.containsKey(boundSicCode)) {
        final boundNodes = await coreApiService.accountService.searchSicCodes(
          boundSicCode,
        );
        cacheSicCodeNodes(boundNodes);
      }
    } catch (_) {}

    try {
      await preferredYardFuture;
    } catch (_) {}

    notifyListeners();
  }

  Future<void> _resolvePreferredYard(String yardCode) async {
    final yards = await coreApiService.referenceData.yards(yardCode);
    final match = yards
        .where((yard) => yard.yardCode == yardCode)
        .firstOrNull;
    if (match == null) {
      return;
    }

    _resolvedPreferredYard = match;
    final formPreferredYard = _formData?.preferredYard.value;
    if (formPreferredYard?.yardCode == yardCode) {
      _formData!.preferredYard.value = match;
    }
  }

  Yard? _preferredYardForCode(String? yardCode) {
    if (yardCode == null || yardCode.isEmpty) {
      return null;
    }
    if (_resolvedPreferredYard?.yardCode == yardCode) {
      return _resolvedPreferredYard;
    }
    return Yard(yardCode: yardCode, name: yardCode, shortName: yardCode);
  }

  Account? account;
  final CoreApiService coreApiService;
  final MediaService mediaService;
  GlobalKey<FormState>? detailsFormKey;

  EditMainDetailsFormData? _formData;
  Yard? _resolvedPreferredYard;

  EditMainDetailsFormData get data => _formData ?? EditMainDetailsFormData();

  @override
  void reset() {
    processing = false;
    _formData = null;
    _resolvedPreferredYard = null;
    notifyListeners();
  }

  @override
  void setAccount(Account? a) {
    account = a;
    final preferredYardCode = account?.preferredYard?.trim();
    if (_resolvedPreferredYard?.yardCode != preferredYardCode) {
      _resolvedPreferredYard = null;
    }
    final parentAccount = account?.parentAccount != null
        ? Account.simple(null, account!.parentAccount, '')
        : null;
    _formData = EditMainDetailsFormData(
      code: account?.code,
      name: account?.name,
      sicCodeId: account?.sicCodeId,
      preferredYard: _preferredYardForCode(preferredYardCode),
      traderIndustryGroup:
          account?.industryGroups?.trader ?? account?.industryGroup,
      supplierIndustryGroup: account?.industryGroups?.supplier,
      celAgreementExpiryDate: account?.celAgreement?.expiryDate,
      celAgreementStartDate: account?.celAgreement?.agreementDate,
      cfcAgreementExpiryDate: account?.cfcAgreement?.expiryDate,
      cfcAgreementStartDate: account?.cfcAgreement?.agreementDate,
      vihbNumber: account?.vIHBNumber,
      negativeInwardsEnabled: account?.settings?.negativeInwardsEnabled,
      stateReportingEnabled: account?.settings?.stateReportingEnabled,
      transformationEnabled: account?.settings?.transformationEnabled,
      amiceCompanyNumber: account?.amiceCompanyNumber,
      annualWtnSsaRequired: account?.settings?.annualWtnSsaRequired,
      currencyId: account?.currencyId.currencyCode,
      parentAccount: parentAccount,
      reportingFrequency: account?.reportingFrequency,
      validFrom: account?.settings?.validFrom,
      validTo: account?.settings?.validTo,
      wtnSsaExpiryDate: account?.settings?.wtnSsaExpiryDate,
      hasHazardousWasteConsignmentNote:
          account?.settings?.hasHazardousWasteConsignmentNote,
      marketIndicatorEnabled: account?.settings?.marketIndicatorEnabled,
      isDigitalWalletActivated:
          account?.settings?.isDigitalWalletActivated ?? false,
    );

    _formData!.visitingFrequency =
        EnumExtensions.getEnumValueNotifier<Enum$VisitFrequency>(
          (() {
            final visitFrequency = _normalizeVisitFrequencyForGraphql(
              account?.visitFrequency,
            );
            final parsedVisitFrequency = Enum$VisitFrequency.fromJson(
              visitFrequency,
            );
            return parsedVisitFrequency == Enum$VisitFrequency.$unknown
                ? visitFrequency
                : parsedVisitFrequency.toJson();
          })(),
          Enum$VisitFrequency.values,
        );

    _formData!.accountStatus =
        EnumExtensions.getEnumValueNotifier<Enum$AccountStatus>(
          account?.accountStatus ?? '',
          Enum$AccountStatus.values,
        );

    _formData!.originatingCountry =
        EnumExtensions.getEnumValueNotifier<Enum$CountryId>(
          account?.originatingCountry ?? '',
          Enum$CountryId.values,
        );
    _formData!.preferredPaymentMethod =
        EnumExtensions.getEnumValueNotifier<Enum$PaymentMethod>(
          account?.preferredPaymentMethod?.toJson() ?? '',
          Enum$PaymentMethod.values,
        );
    _formData!.customerVatGroupType =
        EnumExtensions.getEnumValueNotifier<Enum$VatGroupType>(
          account?.customerVatGroupType?.toJson() ?? '',
          Enum$VatGroupType.values,
        );

    _formData!.supplierVatGroupType =
        EnumExtensions.getEnumValueNotifier<Enum$VatGroupType>(
          account?.supplierVatGroupType?.toJson() ?? '',
          Enum$VatGroupType.values,
        );

    _formData!.taxIdType = EnumExtensions.getEnumValueNotifier<Enum$TaxIdType>(
      account?.taxSettings?.taxId ?? '',
      Enum$TaxIdType.values,
    );
  }

  void resetFields() {
    final a = account;
    final fd = _formData;
    if (a == null || fd == null) return;

    fd.code.value = a.code;
    fd.name.value = a.name;
    fd.sicCodeId.value = a.sicCodeId;
    fd.preferredYard.value = _preferredYardForCode(a.preferredYard?.trim());
    fd.traderIndustryGroup.value = a.industryGroups?.trader ?? a.industryGroup;
    fd.supplierIndustryGroup.value = a.industryGroups?.supplier;
    fd.celAgreementStartDate.value = a.celAgreement?.agreementDate;
    fd.celAgreementExpiryDate.value = a.celAgreement?.expiryDate;
    fd.cfcAgreementStartDate.value = a.cfcAgreement?.agreementDate;
    fd.cfcAgreementExpiryDate.value = a.cfcAgreement?.expiryDate;
    fd.vihbNumber.value = a.vIHBNumber;
    fd.currencyId.value = a.currencyId.currencyCode;
    fd.amiceCompanyNumber.value = a.amiceCompanyNumber;
    fd.reportingFrequency.value = a.reportingFrequency;
    fd.parentAccount.value = a.parentAccount != null
        ? Account.simple(null, a.parentAccount, '')
        : null;

    fd.stateReportingEnabled.value = a.settings?.stateReportingEnabled ?? false;
    fd.negativeInwardsEnabled.value =
        a.settings?.negativeInwardsEnabled ?? false;
    fd.transformationEnabled.value = a.settings?.transformationEnabled ?? false;
    fd.annualWtnSsaRequired.value = a.settings?.annualWtnSsaRequired ?? false;
    fd.wtnSsaExpiryDate.value = a.settings?.wtnSsaExpiryDate;
    fd.hasHazardousWasteConsignmentNote.value =
        a.settings?.hasHazardousWasteConsignmentNote ?? false;
    fd.marketIndicatorEnabled.value =
        a.settings?.marketIndicatorEnabled ?? false;
    fd.isDigitalWalletActivated.value =
        a.settings?.isDigitalWalletActivated ?? false;
    fd.validFrom.value = a.settings?.validFrom;
    fd.validTo.value = a.settings?.validTo;

    fd.visitingFrequency.value =
        EnumExtensions.getEnumValueNotifier<Enum$VisitFrequency>(
          (() {
            final visitFrequency = _normalizeVisitFrequencyForGraphql(
              a.visitFrequency,
            );
            final parsedVisitFrequency = Enum$VisitFrequency.fromJson(
              visitFrequency,
            );
            return parsedVisitFrequency == Enum$VisitFrequency.$unknown
                ? visitFrequency
                : parsedVisitFrequency.toJson();
          })(),
          Enum$VisitFrequency.values,
        ).value;

    fd.accountStatus.value =
        EnumExtensions.getEnumValueNotifier<Enum$AccountStatus>(
          a.accountStatus ?? '',
          Enum$AccountStatus.values,
        ).value;

    fd.originatingCountry.value =
        EnumExtensions.getEnumValueNotifier<Enum$CountryId>(
          a.originatingCountry ?? '',
          Enum$CountryId.values,
        ).value;

    fd.preferredPaymentMethod.value =
        EnumExtensions.getEnumValueNotifier<Enum$PaymentMethod>(
          a.preferredPaymentMethod?.toJson() ?? '',
          Enum$PaymentMethod.values,
        ).value;

    fd.customerVatGroupType.value =
        EnumExtensions.getEnumValueNotifier<Enum$VatGroupType>(
          a.customerVatGroupType?.toJson() ?? '',
          Enum$VatGroupType.values,
        ).value;

    fd.supplierVatGroupType.value =
        EnumExtensions.getEnumValueNotifier<Enum$VatGroupType>(
          a.supplierVatGroupType?.toJson() ?? '',
          Enum$VatGroupType.values,
        ).value;

    fd.taxIdType.value = EnumExtensions.getEnumValueNotifier<Enum$TaxIdType>(
      a.taxSettings?.taxId ?? '',
      Enum$TaxIdType.values,
    ).value;
  }

  Future<List<String>> industryGroups(String _) async => industryGroupValues;

  void cacheSicCodeNodes(List<Query$GetSicCodes$sicCodes$nodes> nodes) {
    for (final node in nodes) {
      sicCodeDescriptions[node.code] = node.description;
      if (!sicCodeValues.contains(node.code)) {
        sicCodeValues.add(node.code);
      }
    }
    sicCodeValues.sort();
  }

  String sicCodeDescription(String code) => sicCodeDescriptions[code] ?? '';

  String sicCodeDisplay(String code) {
    final description = sicCodeDescription(code);
    return description.isEmpty ? code : '$code ($description)';
  }

  Future<List<KeyValuePair<Enum$CountryId, String>>> countries(String _) async {
    return Enum$CountryId.values
        .map((v) => (key: v, value: v.toString().split('.').last))
        .toList();
  }

  Future<List<KeyValuePair<Enum$PaymentMethod, String>>> paymentMethods(
    String _,
  ) async =>
      EnumExtensions.pickerItems(Enum$PaymentMethod.values);

  Future<List<String>> reportingFrequencies(String _) async {
    return ['Daily', 'Weekly', 'Monthly'];
  }

  Future<List<KeyValuePair<Enum$VatGroupType, String>>> vatGroups(
    String _,
  ) async =>
      EnumExtensions.pickerItems(Enum$VatGroupType.values);

  Future<List<KeyValuePair<Enum$TaxIdType, String>>> taxIdTypes(
    String _,
  ) async =>
      EnumExtensions.pickerItems(Enum$TaxIdType.values);

  Future<List<KeyValuePair<Enum$AccountStatus, String>>> accountStatuses(
    String _,
  ) async {
    return Enum$AccountStatus.values
        .map((v) => (key: v, value: v.toString().split('.').last))
        .toList();
  }

  Future<List<Product>> getProducts(String searchText) async {
    return coreApiService.pricingService.getProducts([], query: searchText);
  }

  Future<List<KeyValuePair<Enum$VisitFrequency, String>>> visitingFrequencies(
    String _,
  ) async {
    return Enum$VisitFrequency.values
        .where((v) => v != Enum$VisitFrequency.$unknown)
        .map((v) => (key: v, value: v.toJson()))
        .toList();
  }

  String visitFrequencyDisplayFromApi(BuildContext context, String? raw) =>
      _visitFrequencyDisplayFromApi(context, raw ?? '');

  String _visitFrequencyDisplayFromApi(BuildContext context, String raw) {
    final normalized = _normalizeVisitFrequencyForGraphql(raw);
    if (normalized.isEmpty) {
      return '';
    }
    final parsed = Enum$VisitFrequency.fromJson(normalized);
    final localized = parsed.visitFrequencyDisplayString(context);
    if (localized.isNotEmpty) {
      return localized;
    }
    return raw;
  }

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
    ) = await coreApiService.accountService.updateAccountMainDetails(
      Input$AccountMainDetailsInput(
        accountId: account?.id ?? '',
        celAgreement: data.celAgreementStartDate.value != null
            ? Input$UpdateLegalAgreementInput(
                agreementDate: data.celAgreementStartDate.value!,
                expiryDate: data.celAgreementExpiryDate.value,
              )
            : null,
        cfcAgreement: data.cfcAgreementStartDate.value != null
            ? Input$UpdateLegalAgreementInput(
                agreementDate: data.cfcAgreementStartDate.value!,
                expiryDate: data.cfcAgreementExpiryDate.value,
              )
            : null,
        industryGroups: Input$UpdateIndustryGroupsInput(
          trader: data.traderIndustryGroup.value,
          supplier: data.supplierIndustryGroup.value,
        ),
        name: data.name.value,
        originatingCountry: data.originatingCountry.value.value,
        preferredPaymentMethod: data.preferredPaymentMethod.value.key,
        preferredYardCode: data.preferredYard.value?.yardCode,
        sicCodeId: data.sicCodeId.value,
        customerVatGroupType: data.customerVatGroupType.value.key,
        supplierVatGroupType: data.supplierVatGroupType.value.key,
        settings: Input$AccountSettingsInput(
          stateReportingEnabled: data.stateReportingEnabled.value,
          negativeInwardsEnabled: data.negativeInwardsEnabled.value,
          transformationEnabled: data.transformationEnabled.value,
          validFrom: data.validFrom.value,
          validTo: data.validTo.value,
          annualWtnSsaRequired: data.annualWtnSsaRequired.value,
          wtnSsaExpiryDate: data.wtnSsaExpiryDate.value,
          marketIndicatorEnabled: data.marketIndicatorEnabled.value,
          isDigitalWalletActivated: data.isDigitalWalletActivated.value,
          hasHazardousWasteConsignmentNote:
              data.hasHazardousWasteConsignmentNote.value,
          // Keep existing license exemption values unchanged
          // (managed by dedicated license exemption controller)
          isWasteProducer: account?.settings?.isWasteProducer ?? false,
          isWasteImporter: account?.settings?.isWasteImporter ?? false,
          isWasteTransporter: account?.settings?.isWasteTransporter ?? false,
          isWasteRegisteredCarrier:
              account?.settings?.isWasteRegisteredCarrier ?? false,
        ),
        vihbNumber: data.vihbNumber.value,
        currencyId: data.currencyId.value,
        accountStatus: data.accountStatus.value.key,
        parentAccount: (() {
          final pa = data.parentAccount.value;
          if (pa == null) return null;
          return pa.code;
        })(),
        reportingFrequency: data.reportingFrequency.value,
        amiceCompanyNumber: data.amiceCompanyNumber.value,
        visitFrequency: data.visitingFrequency.value?.key,
      ),
    );

    toggleProcessing();

    return (success, error ?? '');
  }

  @override
  Future<(bool, String)> add() {
    throw UnimplementedError();
  }
}

String _normalizeVisitFrequencyForGraphql(String? frequency) {
  final normalizedFrequency = (frequency ?? '').trim().toUpperCase().replaceAll(
    '-',
    '_',
  );

  final frequencyMappings = Map.fromIterables(
    ['BIWEEKLY', 'BIMONTHLY', 'ADHOC', 'ONEOFF'],
    ['BI_WEEKLY', 'BI_MONTHLY', 'AD_HOC', 'ONE_OFF'],
  );

  return frequencyMappings[normalizedFrequency] ?? normalizedFrequency;
}
