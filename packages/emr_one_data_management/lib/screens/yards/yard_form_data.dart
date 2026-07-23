import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:emr_sharedtypes/models/models.dart';
import 'package:emr_sharedtypes/models/payment_methods/split_payment_method.dart';
import 'package:flutter/foundation.dart';

// @EmrFormModel
class YardFormData {
  YardFormData({
    required String yardCode,
    required String yardName,
    required String shortName,
    bool? active,
    String? id,
    Company? company,
    Territory? territory,
    String? territoryId,
    String? territoryCode,
    String? companyId,
    String? companyCode,
    Region? region,
    Timezone? timezone,
    String? addressLine1,
    String? addressLine2,
    String? addressLine3,
    String? addressLine4,
    String? addressLine5,
    String? addressLine6,
    String? telephone,
    String? postCode,
    Map<String, dynamic>? extendedProperties,
    String? defaultRetailAccountPool,
    String? wmlExemptionNo,
    String? wasteCarrierRegNo,
    String? regionId,
    String? timezoneId,
    List<String>? managerIds,
    String? atfCode,
    String? dvlaCode,
    String? dvlaPassword,
    String? dvlaUsername,
    bool? postToDVLA,
    bool? enforceIdentificationForCheque,
    bool? enforceIssueDateForUtilityBill,
    bool? promptForPhotoDefault,
    bool? restrictOffsetsToAdvancingYard,
    int? documentBrandingLevelId,
    String? cashTinNumber,
    String? tradingIndicator,
    int? prepayCardIssuerId,
    bool? suppressManualTareOnRemittance,
    bool? gradeDescOverride,
    bool? autoCreateInwardInterdepot,
    bool? autoCreateOutwardInterdepot,
    bool? blockExpiredUtilityBill,
    PaymentMethod? defaultPaymentMethod,
    double? atmRoundingValue,
    RoundingType? atmRoundingType,
    bool? atmEnabled,
    bool? manualChequeEnabled,
    bool? autoChequeEnabled,
    bool? autoChequeEnforceIdentification,
    String? autoChequeLogoPath,
    bool? fasterpayEnabled,
    double? fasterpayFlatFeeValue,
    bool? overnightFasterpayEnabled,
    bool? cashEnabled,
    int? cashNumberOfRemittancesToPrint,
    bool? autoChequeEncashmentAtmEnabled,
    String? autoChequeEncashmentAtmAgent,
    double? autoChequeEncashmentAtmMinCommission,
    double? autoChequeEncashmentAtmCommissionPercent,
    double? autoChequeEncashmentAtmMinDenomination,
    double? autoChequeEncashmentAtmFlatFeeThreshold,
    double? autoChequeEncashmentAtmFlatFeeValue,
    bool? autoChequeEncashmentAtmEnforceIdentification,
    String? autoChequeEncashmentAtmLogoPath,
    String? autoChequeEncashmentAtmBankCode,
    bool? autoChequeEncashmentCashEnabled,
    String? autoChequeEncashmentCashAgent,
    double? autoChequeEncashmentCashMinCommission,
    double? autoChequeEncashmentCashCommissionPercent,
    double? autoChequeEncashmentCashMinDenomination,
    double? autoChequeEncashmentCashFlatFeeThreshold,
    double? autoChequeEncashmentCashFlatFeeValue,
    bool? autoChequeEncashmentCashEnforceIdentification,
    String? autoChequeEncashmentCashLogoPath,
    String? autoChequeEncashmentCashBankCode,
    bool? secorePrepaidEnabled,
    double? digitalWalletCashRoundingValue,
    RoundingType? digitalWalletCashRoundingType,
    double? digitalWalletAtmRoundingValue,
    RoundingType? digitalWalletAtmRoundingType,
    bool? digitalWalletAtmEnabled,
    bool? digitalWalletCashEnabled,
    double? digitalWalletCashCommissionPercent,
    double? digitalWalletAtmCommissionPercent,
    Devices? devices,
    String? chequeBankCode,
    String? overnightfasterpayBankCode,
    String? fasterpayBankCode,
    bool? splitPaymentEnabled,
    double? secorePrepaidCommissionPercent,
    double? atmMaxUpperLimit,
    double? autoChequeMaxUpperLimit,
    double? fasterpayMaxUpperLimit,
    double? autoChequeEncashmentAtmMaxUpperLimit,
    double? autoChequeEncashmentCashMaxUpperLimit,
    double? digitalWalletAtmMaxUpperLimit,
    double? digitalWalletCashMaxUpperLimit,
    double? overnightFasterpayMaxUpperLimit,
    double? cashMaxUpperLimit,
    double? secoreMaxUpperLimit,
    double? splitPaymentMaxUpperLimit,
    double? manualChequeMaxUpperLimit,
    PaymentSystemEnum primaryCashierPaymentSystem = PaymentSystemEnum.trade2,
  }) {
    // Basic Yard.
    this.id = ValueNotifier(id);
    this.active = ValueNotifier(active ?? false);
    this.yardCode = ValueNotifier(yardCode);
    this.yardName = ValueNotifier(yardName);
    this.shortName = ValueNotifier(shortName);
    this.company = ValueNotifier(company);
    this.region = ValueNotifier(region);
    this.timezone = ValueNotifier(timezone);
    this.addressLine1 = ValueNotifier(addressLine1);
    this.addressLine2 = ValueNotifier(addressLine2);
    this.addressLine3 = ValueNotifier(addressLine3);
    this.addressLine4 = ValueNotifier(addressLine4);
    this.addressLine5 = ValueNotifier(addressLine5);
    this.addressLine6 = ValueNotifier(addressLine6);
    this.telephone = ValueNotifier(telephone);
    this.postCode = ValueNotifier(postCode);
    this.extendedProperties = {};
    extendedProperties?.forEach((key, value) {
      this.extendedProperties![key] = ValueNotifier(value);
    });
    this.territory = ValueNotifier(territory);
    this.territoryId = ValueNotifier(territoryId);
    this.territoryCode = ValueNotifier(territoryCode);
    this.companyId = ValueNotifier(companyId);
    this.companyCode = ValueNotifier(companyCode);
    this.defaultRetailAccountPool = ValueNotifier(defaultRetailAccountPool);
    this.wmlExemptionNo = ValueNotifier(wmlExemptionNo);
    this.wasteCarrierRegNo = ValueNotifier(wasteCarrierRegNo);
    this.timezoneId = ValueNotifier(timezoneId);
    this.regionId = ValueNotifier(regionId);
    this.managerIds = ValueNotifier(managerIds);
    this.atfCode = ValueNotifier(atfCode);
    this.dvlaCode = ValueNotifier(dvlaCode);
    this.dvlaPassword = ValueNotifier(dvlaPassword);
    this.dvlaUsername = ValueNotifier(dvlaUsername);
    this.postToDVLA = ValueNotifier(postToDVLA ?? false);
    this.enforceIdentificationForCheque = ValueNotifier(
      enforceIdentificationForCheque ?? false,
    );
    this.enforceIssueDateForUtilityBill = ValueNotifier(
      enforceIssueDateForUtilityBill ?? false,
    );
    this.promptForPhotoDefault = ValueNotifier(promptForPhotoDefault ?? false);
    this.restrictOffsetsToAdvancingYard = ValueNotifier(
      restrictOffsetsToAdvancingYard ?? false,
    );
    this.documentBrandingLevelId = ValueNotifier(documentBrandingLevelId);
    this.cashTinNumber = ValueNotifier(cashTinNumber);
    this.tradingIndicator = ValueNotifier(tradingIndicator);
    this.prepayCardIssuerId = ValueNotifier(prepayCardIssuerId);
    this.suppressManualTareOnRemittance = ValueNotifier(
      suppressManualTareOnRemittance ?? false,
    );
    this.gradeDescOverride = ValueNotifier(gradeDescOverride ?? false);
    this.autoCreateInwardInterdepot = ValueNotifier(
      autoCreateInwardInterdepot ?? false,
    );
    this.autoCreateOutwardInterdepot = ValueNotifier(
      autoCreateOutwardInterdepot ?? false,
    );
    this.blockExpiredUtilityBill = ValueNotifier(
      blockExpiredUtilityBill ?? false,
    );
    this.defaultPaymentMethod = ValueNotifier(
      defaultPaymentMethod ?? PaymentMethod.none,
    );
    this.atmRoundingValue = ValueNotifier(atmRoundingValue ?? 0);
    this.atmRoundingType = ValueNotifier(
      atmRoundingType ?? RoundingType.noRounding,
    );
    this.atmEnabled = ValueNotifier(atmEnabled ?? false);
    this.manualChequeEnabled = ValueNotifier(manualChequeEnabled ?? false);
    chequeEnabled = ValueNotifier(autoChequeEnabled ?? false);
    chequeEnforceId = ValueNotifier(autoChequeEnforceIdentification ?? false);
    chequeLogoPath = ValueNotifier(autoChequeLogoPath ?? '');
    this.fasterpayEnabled = ValueNotifier(fasterpayEnabled ?? false);
    this.fasterpayFlatFeeValue = ValueNotifier(fasterpayFlatFeeValue ?? 0);
    this.overnightFasterpayEnabled = ValueNotifier(
      overnightFasterpayEnabled ?? false,
    );
    this.cashEnabled = ValueNotifier(cashEnabled ?? false);
    this.cashNumberOfRemittancesToPrint = ValueNotifier(
      cashNumberOfRemittancesToPrint ?? 0,
    );
    this.autoChequeEncashmentAtmEnabled = ValueNotifier(
      autoChequeEncashmentAtmEnabled ?? false,
    );
    this.autoChequeEncashmentAtmAgent = ValueNotifier(
      autoChequeEncashmentAtmAgent ?? '',
    );
    this.autoChequeEncashmentAtmMinCommission = ValueNotifier(
      autoChequeEncashmentAtmMinCommission ?? 0,
    );
    this.autoChequeEncashmentAtmCommissionPercent = ValueNotifier(
      autoChequeEncashmentAtmCommissionPercent ?? 0,
    );
    this.autoChequeEncashmentAtmMinDenomination = ValueNotifier(
      autoChequeEncashmentAtmMinDenomination ?? 0,
    );
    this.autoChequeEncashmentAtmFlatFeeThreshold = ValueNotifier(
      autoChequeEncashmentAtmFlatFeeThreshold ?? 0,
    );
    this.autoChequeEncashmentAtmFlatFeeValue = ValueNotifier(
      autoChequeEncashmentAtmFlatFeeValue ?? 0,
    );
    this.autoChequeEncashmentAtmEnforceIdentification = ValueNotifier(
      autoChequeEncashmentAtmEnforceIdentification ?? false,
    );
    this.autoChequeEncashmentAtmLogoPath = ValueNotifier(
      autoChequeEncashmentAtmLogoPath ?? '',
    );
    this.autoChequeEncashmentCashAgent = ValueNotifier(
      autoChequeEncashmentCashAgent ?? '',
    );
    this.autoChequeEncashmentCashMinCommission = ValueNotifier(
      autoChequeEncashmentCashMinCommission ?? 0,
    );
    this.autoChequeEncashmentCashCommissionPercent = ValueNotifier(
      autoChequeEncashmentCashCommissionPercent ?? 0,
    );
    this.autoChequeEncashmentCashMinDenomination = ValueNotifier(
      autoChequeEncashmentCashMinDenomination ?? 0,
    );
    this.autoChequeEncashmentCashFlatFeeThreshold = ValueNotifier(
      autoChequeEncashmentCashFlatFeeThreshold ?? 0,
    );
    this.autoChequeEncashmentCashFlatFeeValue = ValueNotifier(
      autoChequeEncashmentCashFlatFeeValue ?? 0,
    );
    this.autoChequeEncashmentCashEnforceIdentification = ValueNotifier(
      autoChequeEncashmentCashEnforceIdentification ?? false,
    );
    this.autoChequeEncashmentCashLogoPath = ValueNotifier(
      autoChequeEncashmentCashLogoPath ?? '',
    );
    this.secorePrepaidEnabled = ValueNotifier(secorePrepaidEnabled ?? false);
    this.secorePrepaidCommissionPercent = ValueNotifier(
      secorePrepaidCommissionPercent ?? 0,
    );
    this.digitalWalletCashRoundingValue = ValueNotifier(
      digitalWalletCashRoundingValue ?? 0,
    );
    this.digitalWalletCashRoundingType = ValueNotifier(
      digitalWalletCashRoundingType ?? RoundingType.noRounding,
    );
    this.digitalWalletAtmRoundingType = ValueNotifier(
      digitalWalletAtmRoundingType ?? RoundingType.noRounding,
    );
    this.digitalWalletAtmRoundingValue = ValueNotifier(
      digitalWalletAtmRoundingValue ?? 0,
    );
    this.digitalWalletAtmEnabled = ValueNotifier(
      digitalWalletAtmEnabled ?? false,
    );
    this.digitalWalletCashEnabled = ValueNotifier(
      digitalWalletCashEnabled ?? false,
    );
    this.digitalWalletCashCommissionPercent = ValueNotifier(
      digitalWalletCashCommissionPercent ?? 0,
    );
    this.digitalWalletAtmCommissionPercent = ValueNotifier(
      digitalWalletAtmCommissionPercent ?? 0,
    );
    this.autoChequeEncashmentCashEnabled = ValueNotifier(
      autoChequeEncashmentCashEnabled ?? false,
    );
    this.devices = ValueNotifier(devices ?? Devices.withOneEach());
    this.chequeBankCode = ValueNotifier(chequeBankCode ?? '');
    this.autoChequeEncashmentAtmBankCode = ValueNotifier(
      autoChequeEncashmentAtmBankCode ?? '',
    );
    this.autoChequeEncashmentCashBankCode = ValueNotifier(
      autoChequeEncashmentCashBankCode ?? '',
    );
    this.splitPaymentEnabled = ValueNotifier(splitPaymentEnabled ?? false);
    this.overnightfasterpayBankCode = ValueNotifier(
      overnightfasterpayBankCode ?? '',
    );
    this.fasterpayBankCode = ValueNotifier(fasterpayBankCode ?? '');
    this.atmMaxUpperLimit = ValueNotifier(atmMaxUpperLimit ?? 0);
    this.autoChequeMaxUpperLimit = ValueNotifier(autoChequeMaxUpperLimit ?? 0);
    this.fasterpayMaxUpperLimit = ValueNotifier(fasterpayMaxUpperLimit ?? 0);
    this.autoChequeEncashmentAtmMaxUpperLimit = ValueNotifier(
      autoChequeEncashmentAtmMaxUpperLimit ?? 0,
    );
    this.autoChequeEncashmentCashMaxUpperLimit = ValueNotifier(
      autoChequeEncashmentCashMaxUpperLimit ?? 0,
    );
    this.digitalWalletAtmMaxUpperLimit = ValueNotifier(
      digitalWalletAtmMaxUpperLimit ?? 0,
    );
    this.digitalWalletCashMaxUpperLimit = ValueNotifier(
      digitalWalletCashMaxUpperLimit ?? 0,
    );
    this.secoreMaxUpperLimit = ValueNotifier(secoreMaxUpperLimit ?? 0);
    this.overnightFasterpayMaxUpperLimit = ValueNotifier(
      overnightFasterpayMaxUpperLimit ?? 0,
    );
    this.cashMaxUpperLimit = ValueNotifier(cashMaxUpperLimit ?? 0);
    this.splitPaymentMaxUpperLimit = ValueNotifier(
      splitPaymentMaxUpperLimit ?? 0,
    );
    this.manualChequeMaxUpperLimit = ValueNotifier(
      manualChequeMaxUpperLimit ?? 0,
    );
    this.primaryCashierPaymentSystem = ValueNotifier(
      primaryCashierPaymentSystem,
    );
  }

  factory YardFormData.fromYard(Yard yard, Devices? devices) {
    return YardFormData(
      id: yard.id,
      active: yard.active,
      yardCode: yard.yardCode,
      yardName: yard.name,
      shortName: yard.shortName,
      company: yard.company,
      regionId: yard.regionId,
      timezoneId: yard.timeZoneId,
      region: yard.region,
      addressLine1: yard.addressLine1,
      addressLine2: yard.addressLine2,
      addressLine3: yard.addressLine3,
      addressLine4: yard.addressLine4,
      addressLine5: yard.addressLine5,
      addressLine6: yard.addressLine6,
      telephone: yard.telephone,
      postCode: yard.postCode,
      extendedProperties: yard.extendedProperties,
      territoryCode: yard.territoryCode,
      territoryId: yard.territoryId,
      companyCode: yard.companyCode,
      companyId: yard.companyId,
      territory: yard.territory,
      timezone: yard.timezone,
      atfCode:
          yard.extendedProperties?[EmrOneDataManagementConstants
                  .extPropertyYardForATFCode]
              as String?,
      dvlaCode:
          yard.extendedProperties?[EmrOneDataManagementConstants
                  .extPropertyYardForDVLACode]
              as String?,
      dvlaPassword:
          yard.extendedProperties?[EmrOneDataManagementConstants
                  .extPropertyYardForDVLAPassword]
              as String?,
      dvlaUsername:
          yard.extendedProperties?[EmrOneDataManagementConstants
                  .extPropertyYardForDVLAUsername]
              as String?,
      postToDVLA:
          (yard.extendedProperties?[EmrOneDataManagementConstants
                      .extPropertyYardForPostToDVLA] ??
                  false)
              as bool,
      restrictOffsetsToAdvancingYard:
          (yard.extendedProperties?[EmrOneDataManagementConstants
                      .extPropertyYardForRestrictOffsetsToAdvancingYard] ??
                  false)
              as bool,
      cashTinNumber:
          yard.extendedProperties?[EmrOneDataManagementConstants
                  .extPropertyYardForCashTinNumber]
              as String?,
      tradingIndicator:
          yard.extendedProperties?[EmrOneDataManagementConstants
                  .extPropertyYardForTradingIndicator]
              as String?,
      prepayCardIssuerId:
          yard.extendedProperties?[EmrOneDataManagementConstants
                  .extPropertyYardForPrepayCardIssuerId]
              as int?,
      suppressManualTareOnRemittance:
          (yard.extendedProperties?[EmrOneDataManagementConstants
                      .extPropertyYardForSuppressManualTareOnRemittance] ??
                  false)
              as bool,
      gradeDescOverride:
          (yard.extendedProperties?[EmrOneDataManagementConstants
                      .extPropertyYardForGradeDescOverride] ??
                  false)
              as bool,
      autoCreateInwardInterdepot:
          (yard.extendedProperties?[EmrOneDataManagementConstants
                      .extPropertyYardForAutoCreateInwardInterdepot] ??
                  false)
              as bool,
      autoCreateOutwardInterdepot:
          (yard.extendedProperties?[EmrOneDataManagementConstants
                      .extPropertyYardForAutoCreateOutwardInterdepot] ??
                  false)
              as bool,
      documentBrandingLevelId:
          yard.extendedProperties?[EmrOneDataManagementConstants
                  .extPropertyYardForDocumentBrandingLevelId]
              as int?,
      defaultRetailAccountPool: yard.defaultRetailAccountPool,
      wasteCarrierRegNo: yard.wasteCarrierRegNo,
      wmlExemptionNo: yard.wmlExemptionNo,
      managerIds: yard.managerIds,
      blockExpiredUtilityBill: yard.blockExpiredUtilityBill,
      defaultPaymentMethod: yard.defaultPaymentMethod,
      enforceIssueDateForUtilityBill: yard.enforceIssueDateForUtilityBill,
      promptForPhotoDefault: yard.promptForPhotoDefault,
      atmRoundingValue: yard.paymentMethods.atm.rounding.value,
      atmRoundingType: yard.paymentMethods.atm.rounding.roundingType,
      atmEnabled: yard.paymentMethods.atm.enabled,
      manualChequeEnabled: yard.paymentMethods.manualCheque.enabled,
      autoChequeEnabled: yard.paymentMethods.autoCheque.enabled,
      autoChequeEnforceIdentification:
          yard.paymentMethods.autoCheque.enforceIdentification,
      autoChequeLogoPath: yard.paymentMethods.autoCheque.logoPath,
      fasterpayEnabled: yard.paymentMethods.fasterpay.enabled,
      fasterpayFlatFeeValue: yard.paymentMethods.fasterpay.flatFeeValue,
      overnightFasterpayEnabled: yard.paymentMethods.overnightFasterpay.enabled,
      cashEnabled: yard.paymentMethods.cash.enabled,
      cashNumberOfRemittancesToPrint:
          yard.paymentMethods.cash.numberOfRemittancesToPrint,
      autoChequeEncashmentCashAgent:
          yard.paymentMethods.autoChequeWithEncashmentCash.agent,
      autoChequeEncashmentCashMinCommission:
          yard.paymentMethods.autoChequeWithEncashmentCash.minCommission,
      autoChequeEncashmentCashCommissionPercent:
          yard.paymentMethods.autoChequeWithEncashmentCash.commissionPercent,
      autoChequeEncashmentCashMinDenomination:
          yard.paymentMethods.autoChequeWithEncashmentCash.minDenomination,
      autoChequeEncashmentCashFlatFeeThreshold:
          yard.paymentMethods.autoChequeWithEncashmentCash.flatFeeThreshold,
      autoChequeEncashmentCashFlatFeeValue:
          yard.paymentMethods.autoChequeWithEncashmentCash.flatFeeValue,
      autoChequeEncashmentCashEnforceIdentification: yard
          .paymentMethods
          .autoChequeWithEncashmentCash
          .enforceIdentification,
      autoChequeEncashmentCashLogoPath:
          yard.paymentMethods.autoChequeWithEncashmentCash.logoPath,
      autoChequeEncashmentCashBankCode:
          yard.paymentMethods.autoChequeWithEncashmentCash.bankCode,
      autoChequeEncashmentAtmEnabled:
          yard.paymentMethods.autoChequeWithEncashmentAtm.enabled,
      autoChequeEncashmentCashEnabled:
          yard.paymentMethods.autoChequeWithEncashmentCash.enabled,
      autoChequeEncashmentAtmAgent:
          yard.paymentMethods.autoChequeWithEncashmentAtm.agent,
      autoChequeEncashmentAtmMinCommission:
          yard.paymentMethods.autoChequeWithEncashmentAtm.minCommission,
      autoChequeEncashmentAtmCommissionPercent:
          yard.paymentMethods.autoChequeWithEncashmentAtm.commissionPercent,
      autoChequeEncashmentAtmMinDenomination:
          yard.paymentMethods.autoChequeWithEncashmentAtm.minDenomination,
      autoChequeEncashmentAtmFlatFeeThreshold:
          yard.paymentMethods.autoChequeWithEncashmentAtm.flatFeeThreshold,
      autoChequeEncashmentAtmFlatFeeValue:
          yard.paymentMethods.autoChequeWithEncashmentAtm.flatFeeValue,
      autoChequeEncashmentAtmEnforceIdentification:
          yard.paymentMethods.autoChequeWithEncashmentAtm.enforceIdentification,
      autoChequeEncashmentAtmLogoPath:
          yard.paymentMethods.autoChequeWithEncashmentAtm.logoPath,
      autoChequeEncashmentAtmBankCode:
          yard.paymentMethods.autoChequeWithEncashmentAtm.bankCode,
      secorePrepaidEnabled: yard.paymentMethods.secorePrepaid.enabled,
      secorePrepaidCommissionPercent:
          yard.paymentMethods.secorePrepaid.commissionPercent,
      digitalWalletCashRoundingValue:
          yard.paymentMethods.digitalWalletWithCash.rounding.value ?? 0,
      digitalWalletCashRoundingType:
          yard.paymentMethods.digitalWalletWithCash.rounding.roundingType,
      digitalWalletAtmRoundingType:
          yard.paymentMethods.digitalWalletWithAtm.rounding.roundingType,
      digitalWalletAtmRoundingValue:
          yard.paymentMethods.digitalWalletWithAtm.rounding.value ?? 0,
      digitalWalletAtmEnabled: yard.paymentMethods.digitalWalletWithAtm.enabled,
      digitalWalletCashEnabled:
          yard.paymentMethods.digitalWalletWithCash.enabled,
      digitalWalletCashCommissionPercent:
          yard.paymentMethods.digitalWalletWithCash.commissionPercent,
      digitalWalletAtmCommissionPercent:
          yard.paymentMethods.digitalWalletWithAtm.commissionPercent,
      devices: Devices(
        id: devices?.id ?? '',
        yardId: yard.id!,
        yardCode: yard.yardCode,
        cashierCameras: [
          if (devices != null) ...devices.cashierCameras,
          CashierCameraDevice(),
        ],
        remittancePrinters: [
          if (devices != null) ...devices.remittancePrinters,
          RemittancePrinterDevice(),
        ],
        chequePrinters: [
          if (devices != null) ...devices.chequePrinters,
          ChequePrinterDevice(),
        ],
        idWebcams: [
          if (devices != null) ...devices.idWebcams,
          IdWebcamDevice(),
        ],
        fingerprintScanners: [
          if (devices != null) ...devices.fingerprintScanners,
          FingerprinterScannerDevice(),
        ],
        atmServers: [
          if (devices != null) ...devices.atmServers,
          AtmServerDevice(),
        ],
      ),
      chequeBankCode: yard.paymentMethods.autoCheque.bankCode,
      fasterpayBankCode: yard.paymentMethods.fasterpay.bankCode,
      overnightfasterpayBankCode:
          yard.paymentMethods.overnightFasterpay.bankCode,
      splitPaymentEnabled: yard.paymentMethods.splitPayment.enabled,
      atmMaxUpperLimit: yard.paymentMethods.atm.maxUpperLimit,
      autoChequeMaxUpperLimit: yard.paymentMethods.autoCheque.maxUpperLimit,
      autoChequeEncashmentCashMaxUpperLimit:
          yard.paymentMethods.autoChequeWithEncashmentCash.maxUpperLimit,
      autoChequeEncashmentAtmMaxUpperLimit:
          yard.paymentMethods.autoChequeWithEncashmentAtm.maxUpperLimit,
      fasterpayMaxUpperLimit: yard.paymentMethods.fasterpay.maxUpperLimit,
      overnightFasterpayMaxUpperLimit:
          yard.paymentMethods.overnightFasterpay.maxUpperLimit,
      cashMaxUpperLimit: yard.paymentMethods.cash.maxUpperLimit,
      secoreMaxUpperLimit: yard.paymentMethods.secorePrepaid.maxUpperLimit,
      splitPaymentMaxUpperLimit: yard.paymentMethods.splitPayment.maxUpperLimit,
      manualChequeMaxUpperLimit: yard.paymentMethods.manualCheque.maxUpperLimit,
      digitalWalletAtmMaxUpperLimit:
          yard.paymentMethods.digitalWalletWithAtm.maxUpperLimit,
      digitalWalletCashMaxUpperLimit:
          yard.paymentMethods.digitalWalletWithCash.maxUpperLimit,
      primaryCashierPaymentSystem: yard.primaryCashierPaymentSystem,
    );
  }

  Yard toYard() {
    final finalExtendedProps = <String, dynamic>{};

    void addIfNotNull(String key, dynamic value) {
      if (value != null) finalExtendedProps[key] = value;
    }

    final extended =
        extendedProperties?.map(
          (key, notifier) => MapEntry(key, notifier.value),
        ) ??
        {};
    finalExtendedProps.addAll(extended);

    Devices removeEmptyDevices(Devices devices) {
      return Devices(
        id: devices.id,
        yardId: devices.yardId,
        yardCode: devices.yardCode,
        cashierCameras: devices.cashierCameras
            .where(
              (d) => d.name.trim().isNotEmpty || d.ipAddress.trim().isNotEmpty,
            )
            .toList(),
        remittancePrinters: devices.remittancePrinters
            .where(
              (d) =>
                  d.name.trim().isNotEmpty || d.printerName.trim().isNotEmpty,
            )
            .toList(),
        chequePrinters: devices.chequePrinters
            .where(
              (d) =>
                  d.name.trim().isNotEmpty || d.printerName.trim().isNotEmpty,
            )
            .toList(),
        idWebcams: devices.idWebcams
            .where(
              (d) => d.name.trim().isNotEmpty || d.ipAddress.trim().isNotEmpty,
            )
            .toList(),
        fingerprintScanners: devices.fingerprintScanners
            .where(
              (d) => d.name.trim().isNotEmpty || d.ipAddress.trim().isNotEmpty,
            )
            .toList(),
        atmServers: devices.atmServers
            .where(
              (d) =>
                  d.name.trim().isNotEmpty ||
                  d.ipAddress.trim().isNotEmpty ||
                  d.deviceId.trim().isNotEmpty ||
                  d.apiKey.trim().isNotEmpty,
            )
            .toList(),
      );
    }

    addIfNotNull(
      EmrOneDataManagementConstants.extPropertyYardForATFCode,
      atfCode.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants.extPropertyYardForDVLACode,
      dvlaCode.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants.extPropertyYardForDVLAUsername,
      dvlaUsername.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants.extPropertyYardForDVLAPassword,
      dvlaPassword.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants.extPropertyYardForPostToDVLA,
      postToDVLA.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants
          .extPropertyYardForRestrictOffsetsToAdvancingYard,
      restrictOffsetsToAdvancingYard.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants.extPropertyYardForDocumentBrandingLevelId,
      documentBrandingLevelId.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants.extPropertyYardForCashTinNumber,
      cashTinNumber.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants.extPropertyYardForTradingIndicator,
      tradingIndicator.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants.extPropertyYardForPrepayCardIssuerId,
      prepayCardIssuerId.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants
          .extPropertyYardForSuppressManualTareOnRemittance,
      suppressManualTareOnRemittance.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants.extPropertyYardForGradeDescOverride,
      gradeDescOverride.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants
          .extPropertyYardForAutoCreateInwardInterdepot,
      autoCreateInwardInterdepot.value,
    );
    addIfNotNull(
      EmrOneDataManagementConstants
          .extPropertyYardForAutoCreateOutwardInterdepot,
      autoCreateOutwardInterdepot.value,
    );

    return Yard(
      id: id.value ?? EmrOneDataManagementConstants.kEmptyGuid,
      active: active.value,
      yardCode: yardCode.value,
      name: yardName.value,
      shortName: shortName.value,
      company: company.value,
      addressLine1: addressLine1.value ?? '',
      addressLine2: addressLine2.value ?? '',
      addressLine3: addressLine3.value ?? '',
      addressLine4: addressLine4.value ?? '',
      addressLine5: addressLine5.value ?? '',
      addressLine6: addressLine6.value ?? '',
      telephone: telephone.value ?? '',
      postCode: postCode.value ?? '',
      extendedProperties: finalExtendedProps,
      territoryCode: territory.value?.code,
      territoryId: territory.value?.id,
      companyCode: company.value?.code,
      companyId: company.value?.id,
      defaultRetailAccountPool: defaultRetailAccountPool.value ?? '',
      wasteCarrierRegNo: wasteCarrierRegNo.value ?? '',
      wmlExemptionNo: wmlExemptionNo.value ?? '',
      regionId: region.value!.id,
      timeZoneId: timezone.value!.timeZoneId,
      region: region.value,
      timezone: timezone.value,
      managerIds: managerIds.value ?? [],
      blockExpiredUtilityBill: blockExpiredUtilityBill.value,
      defaultPaymentMethod: defaultPaymentMethod.value,
      enforceIssueDateForUtilityBill: enforceIssueDateForUtilityBill.value,
      promptForPhotoDefault: promptForPhotoDefault.value,
      paymentMethods: PaymentMethods(
        atm: AtmPaymentMethod(
          paymentMethod: PaymentMethod.atm,
          enabled: atmEnabled.value,
          rounding: Rounding(
            atmRoundingValue.value,
            roundingType: atmRoundingType.value,
          ),
          maxUpperLimit: atmMaxUpperLimit.value,
        ),
        manualCheque: ManualChequePaymentMethod(
          paymentMethod: PaymentMethod.manualCheque,
          enabled: manualChequeEnabled.value,
          maxUpperLimit: manualChequeMaxUpperLimit.value,
        ),
        autoCheque: AutoChequePaymentMethod(
          paymentMethod: PaymentMethod.autoCheque,
          enabled: chequeEnabled.value,
          enforceIdentification: chequeEnforceId.value,
          logoPath: chequeLogoPath.value,
          bankCode: chequeBankCode.value,
          maxUpperLimit: autoChequeMaxUpperLimit.value,
        ),
        fasterpay: FasterpayPaymentMethod(
          paymentMethod: PaymentMethod.fasterPayment,
          enabled: fasterpayEnabled.value,
          flatFeeValue: fasterpayFlatFeeValue.value,
          bankCode: fasterpayBankCode.value,
          maxUpperLimit: fasterpayMaxUpperLimit.value,
        ),
        overnightFasterpay: OvernightFasterpayPaymentMethod(
          paymentMethod: PaymentMethod.overnightFasterPayment,
          enabled: overnightFasterpayEnabled.value,
          bankCode: overnightfasterpayBankCode.value,
          maxUpperLimit: overnightFasterpayMaxUpperLimit.value,
        ),
        cash: CashPaymentMethod(
          paymentMethod: PaymentMethod.cash,
          enabled: cashEnabled.value,
          numberOfRemittancesToPrint: cashNumberOfRemittancesToPrint.value,
          maxUpperLimit: cashMaxUpperLimit.value,
        ),
        autoChequeWithEncashmentAtm: AutoChequeWithEncashmentAtmPaymentMethod(
          paymentMethod: PaymentMethod.autoChequeWithEncashmentAtm,
          enabled: autoChequeEncashmentAtmEnabled.value,
          enforceIdentification:
              autoChequeEncashmentAtmEnforceIdentification.value,
          logoPath: autoChequeEncashmentAtmLogoPath.value,
          agent: autoChequeEncashmentAtmAgent.value,
          minCommission: autoChequeEncashmentAtmMinCommission.value,
          commissionPercent: autoChequeEncashmentAtmCommissionPercent.value,
          minDenomination: autoChequeEncashmentAtmMinDenomination.value,
          flatFeeThreshold: autoChequeEncashmentAtmFlatFeeThreshold.value,
          flatFeeValue: autoChequeEncashmentAtmFlatFeeValue.value,
          bankCode: autoChequeEncashmentAtmBankCode.value,
          maxUpperLimit: autoChequeEncashmentAtmMaxUpperLimit.value,
        ),
        autoChequeWithEncashmentCash: AutoChequeWithEncashmentCashPaymentMethod(
          paymentMethod: PaymentMethod.autoChequeWithEncashmentCash,
          enabled: autoChequeEncashmentCashEnabled.value,
          enforceIdentification:
              autoChequeEncashmentCashEnforceIdentification.value,
          logoPath: autoChequeEncashmentCashLogoPath.value,
          agent: autoChequeEncashmentCashAgent.value,
          minCommission: autoChequeEncashmentCashMinCommission.value,
          commissionPercent: autoChequeEncashmentCashCommissionPercent.value,
          minDenomination: autoChequeEncashmentCashMinDenomination.value,
          flatFeeThreshold: autoChequeEncashmentCashFlatFeeThreshold.value,
          flatFeeValue: autoChequeEncashmentCashFlatFeeValue.value,
          bankCode: autoChequeEncashmentCashBankCode.value,
          maxUpperLimit: autoChequeEncashmentCashMaxUpperLimit.value,
        ),
        digitalWalletWithAtm: DigitalWalletWithAtmPaymentMethod(
          paymentMethod: PaymentMethod.digitalWalletWithAtm,
          enabled: digitalWalletAtmEnabled.value,
          commissionPercent: digitalWalletAtmCommissionPercent.value,
          rounding: Rounding(
            digitalWalletAtmRoundingValue.value,
            roundingType: digitalWalletAtmRoundingType.value,
          ),
          maxUpperLimit: digitalWalletAtmMaxUpperLimit.value,
        ),
        digitalWalletWithCash: DigitalWalletWithCashPaymentMethod(
          paymentMethod: PaymentMethod.digitalWalletWithCash,
          enabled: digitalWalletCashEnabled.value,
          commissionPercent: digitalWalletCashCommissionPercent.value,
          rounding: Rounding(
            digitalWalletCashRoundingValue.value,
            roundingType: digitalWalletCashRoundingType.value,
          ),
          maxUpperLimit: digitalWalletCashMaxUpperLimit.value,
        ),
        secorePrepaid: SecorePrepaidPaymentMethod(
          paymentMethod: PaymentMethod.secorePrepayCard,
          enabled: secorePrepaidEnabled.value,
          commissionPercent: secorePrepaidCommissionPercent.value,
          maxUpperLimit: secoreMaxUpperLimit.value,
        ),
        splitPayment: SplitPaymentMethod(
          paymentMethod: PaymentMethod.splitPayment,
          enabled: splitPaymentEnabled.value,
          maxUpperLimit: splitPaymentMaxUpperLimit.value,
        ),
      ),
      devices: removeEmptyDevices(devices.value),
      primaryCashierPaymentSystem: primaryCashierPaymentSystem.value,
    );
  }

  late final ValueNotifier<String?> id;
  late final ValueNotifier<bool> active;
  late final ValueNotifier<String> yardCode;
  late final ValueNotifier<String> yardName;
  late final ValueNotifier<String> shortName;
  late final ValueNotifier<Company?> company;
  late final ValueNotifier<Territory?> territory;
  late final ValueNotifier<Region?> region;
  late final ValueNotifier<Timezone?> timezone;
  late final ValueNotifier<String?> regionId;
  late final ValueNotifier<String?> timezoneId;
  late final ValueNotifier<String?> addressLine1;
  late final ValueNotifier<String?> addressLine2;
  late final ValueNotifier<String?> addressLine3;
  late final ValueNotifier<String?> addressLine4;
  late final ValueNotifier<String?> addressLine5;
  late final ValueNotifier<String?> addressLine6;
  late final ValueNotifier<String?> telephone;
  late final ValueNotifier<String?> postCode;
  late final ValueNotifier<String?> territoryId;
  late final ValueNotifier<String?> territoryCode;
  late final ValueNotifier<String?> companyId;
  late final ValueNotifier<String?> companyCode;
  late final Map<String, ValueNotifier<dynamic>>? extendedProperties;
  late final ValueNotifier<String?> defaultRetailAccountPool;
  late final ValueNotifier<String?> wmlExemptionNo;
  late final ValueNotifier<String?> wasteCarrierRegNo;
  late final ValueNotifier<List<String>?> managerIds;
  late final ValueNotifier<String?> atfCode;
  late final ValueNotifier<String?> dvlaCode;
  late final ValueNotifier<String?> dvlaPassword;
  late final ValueNotifier<String?> dvlaUsername;
  late final ValueNotifier<bool> postToDVLA;
  late final ValueNotifier<bool> enforceIdentificationForCheque;
  late final ValueNotifier<bool> enforceIssueDateForUtilityBill;
  late final ValueNotifier<bool> promptForPhotoDefault;
  late final ValueNotifier<bool> restrictOffsetsToAdvancingYard;
  late final ValueNotifier<int?> documentBrandingLevelId;
  late final ValueNotifier<String?> cashTinNumber;
  late final ValueNotifier<String?> tradingIndicator;
  late final ValueNotifier<int?> prepayCardIssuerId;
  late final ValueNotifier<bool> suppressManualTareOnRemittance;
  late final ValueNotifier<bool> gradeDescOverride;
  late final ValueNotifier<bool> autoCreateInwardInterdepot;
  late final ValueNotifier<bool> autoCreateOutwardInterdepot;
  late final ValueNotifier<bool> blockExpiredUtilityBill;
  late final ValueNotifier<PaymentMethod> defaultPaymentMethod;
  late final ValueNotifier<double> atmRoundingValue;
  late final ValueNotifier<RoundingType> atmRoundingType;
  late final ValueNotifier<bool> atmEnabled;
  late final ValueNotifier<bool> manualChequeEnabled;
  late final ValueNotifier<bool> chequeEnabled;
  late final ValueNotifier<bool> chequeEnforceId;
  late final ValueNotifier<String> chequeLogoPath;
  late final ValueNotifier<bool> fasterpayEnabled;
  late final ValueNotifier<double> fasterpayFlatFeeValue;
  late final ValueNotifier<bool> overnightFasterpayEnabled;
  late final ValueNotifier<bool> cashEnabled;
  late final ValueNotifier<int> cashNumberOfRemittancesToPrint;
  late final ValueNotifier<bool> autoChequeEncashmentAtmEnabled;
  late final ValueNotifier<String> autoChequeEncashmentAtmAgent;
  late final ValueNotifier<double> autoChequeEncashmentAtmMinCommission;
  late final ValueNotifier<double> autoChequeEncashmentAtmCommissionPercent;
  late final ValueNotifier<double> autoChequeEncashmentAtmMinDenomination;
  late final ValueNotifier<double> autoChequeEncashmentAtmFlatFeeThreshold;
  late final ValueNotifier<double> autoChequeEncashmentAtmFlatFeeValue;
  late final ValueNotifier<bool> autoChequeEncashmentAtmEnforceIdentification;
  late final ValueNotifier<String> autoChequeEncashmentAtmLogoPath;
  late final ValueNotifier<String> autoChequeEncashmentAtmBankCode;
  late final ValueNotifier<bool> autoChequeEncashmentCashEnabled;
  late final ValueNotifier<String> autoChequeEncashmentCashAgent;
  late final ValueNotifier<double> autoChequeEncashmentCashMinCommission;
  late final ValueNotifier<double> autoChequeEncashmentCashCommissionPercent;
  late final ValueNotifier<double> autoChequeEncashmentCashMinDenomination;
  late final ValueNotifier<double> autoChequeEncashmentCashFlatFeeThreshold;
  late final ValueNotifier<double> autoChequeEncashmentCashFlatFeeValue;
  late final ValueNotifier<bool> autoChequeEncashmentCashEnforceIdentification;
  late final ValueNotifier<String> autoChequeEncashmentCashLogoPath;
  late final ValueNotifier<String> autoChequeEncashmentCashBankCode;
  late final ValueNotifier<double> autoChequeMaxUpperLimit;
  late final ValueNotifier<bool> secorePrepaidEnabled;
  late final ValueNotifier<double> digitalWalletCashRoundingValue;
  late final ValueNotifier<RoundingType> digitalWalletCashRoundingType;
  late final ValueNotifier<double> digitalWalletAtmRoundingValue;
  late final ValueNotifier<RoundingType> digitalWalletAtmRoundingType;
  late final ValueNotifier<bool> digitalWalletAtmEnabled;
  late final ValueNotifier<bool> digitalWalletCashEnabled;
  late final ValueNotifier<double> digitalWalletCashCommissionPercent;
  late final ValueNotifier<double> digitalWalletAtmCommissionPercent;
  late final ValueNotifier<Devices> devices;
  late final ValueNotifier<String> chequeBankCode;
  late final ValueNotifier<String> overnightfasterpayBankCode;
  late final ValueNotifier<String> fasterpayBankCode;
  late final ValueNotifier<bool> splitPaymentEnabled;
  late final ValueNotifier<double> secorePrepaidCommissionPercent;
  late final ValueNotifier<double> atmMaxUpperLimit;
  late final ValueNotifier<double> fasterpayMaxUpperLimit;
  late final ValueNotifier<double> autoChequeEncashmentAtmMaxUpperLimit;
  late final ValueNotifier<double> autoChequeEncashmentCashMaxUpperLimit;
  late final ValueNotifier<double> digitalWalletAtmMaxUpperLimit;
  late final ValueNotifier<double> digitalWalletCashMaxUpperLimit;
  late final ValueNotifier<double> overnightFasterpayMaxUpperLimit;
  late final ValueNotifier<double> secoreMaxUpperLimit;
  late final ValueNotifier<double> cashMaxUpperLimit;
  late final ValueNotifier<double> splitPaymentMaxUpperLimit;
  late final ValueNotifier<double> manualChequeMaxUpperLimit;
  late final ValueNotifier<PaymentSystemEnum> primaryCashierPaymentSystem;
}
