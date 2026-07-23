import 'package:decimal/decimal.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/form_data/auto_hulk_affidavit_data.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/form_data/can_mode_data.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/form_data/ewc_control_data.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/form_data/known_tare_data.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class WeighbridgeFormData {
  WeighbridgeFormData({
    required String id,
    required String name,
    required String wmlExemptionNo,
    required String wasteCarrierRegNo,
    required String currency,
    required String territoryCode,
    required bool enableManualWeight,
    required bool active,
    required List<WeighbridgeScaleData> scales,
    required List<WeighbridgeProfileTicketPrintData> ticketPrints,
    required bool enableCheckWeight,
    required bool publishTicketToTrade,
    required bool allowRollingWeights,
    required RoundingOption roundingType,
    required bool enableCreateNewLine,
    required bool enablePublicWeigh,
    required bool enableTransferLine,
    required bool enableManualTareWeight,
    List<KnownTareData>? knownTares,
    KnownTareConfigurationsData? knownTareConfigurations,
    List<String>? allowedProductIds,
    List<ProductData>? allowedProducts,
    Uom? dirtDeductionUom,
    Uom? weighbridgeUom,
    Decimal? roundingPrecision,
    Yard? yard,
    PricingServicesConfigData? pricingServicesConfig,
    bool? enableContainerTicket,
    bool? allowAccountCreation,
    TicketHeaderSearchScopeData? ticketHeaderSearchScope,
    TechemetCatSettingsData? techemetCatSettings,
    ElvSettingsData? elvSettings,
    String? cameraPreviewParameters,
    List<String>? weighbridgeGroup,
    CanModeData? canMode,
    FieldsConfigurationData? fieldsConfigurations,
    EwcControlData? ewcControl,
    String weighbridgeId = '',
    String environment = '',
    String instrumentationKey = '',
    String piPrintApiKey = '',
    bool? enableTicketSplit,
    bool? showStockAsProduct,
    bool? printTicketComments,
    bool? vehicleDetailsRequired,
    bool? enableWeighbridgePay,
    HwcnLevel? hwcnLevel,
    AutoHulkAffidavitData? autoHulkAffidavitData,
  }) {
    this.id = ValueNotifier(id);
    this.yard = ValueNotifier(yard);
    this.name = ValueNotifier(name);
    this.wmlExemptionNo = ValueNotifier(wmlExemptionNo);
    this.wasteCarrierRegNo = ValueNotifier(wasteCarrierRegNo);
    this.currency = ValueNotifier(currency);
    this.dirtDeductionUom = ValueNotifier(dirtDeductionUom);
    this.territoryCode = ValueNotifier(territoryCode);
    this.enableManualWeight = ValueNotifier(enableManualWeight);
    this.enableManualTareWeight = ValueNotifier(enableManualTareWeight);
    this.weighbridgeUom = ValueNotifier(weighbridgeUom);
    this.active = ValueNotifier(active);
    this.scales = ValueNotifier(scales);
    this.ticketPrints = ValueNotifier(ticketPrints);
    this.enableCheckWeight = ValueNotifier(enableCheckWeight);
    this.publishTicketToTrade = ValueNotifier(publishTicketToTrade);
    this.allowRollingWeights = ValueNotifier(allowRollingWeights);
    this.roundingType = ValueNotifier(roundingType);
    this.knownTares = ValueNotifier(knownTares ?? []);
    this.knownTareConfigurations = ValueNotifier(
      knownTareConfigurations ?? KnownTareConfigurationsData(),
    );
    this.enableCreateNewLine = ValueNotifier(enableCreateNewLine);
    this.enablePublicWeigh = ValueNotifier(enablePublicWeigh);
    this.enableTransferLine = ValueNotifier(enableTransferLine);
    this.roundingPrecision = ValueNotifier(roundingPrecision);
    this.allowedProductIds = ValueNotifier(allowedProductIds);
    this.allowedProducts = ValueNotifier(allowedProducts ?? []);
    this.pricingServicesConfig = ValueNotifier(
      pricingServicesConfig ?? PricingServicesConfigData(),
    );
    this.enableContainerTicket = ValueNotifier(enableContainerTicket ?? false);
    this.allowAccountCreation = ValueNotifier(allowAccountCreation ?? false);
    this.ticketHeaderSearchScope = ValueNotifier(
      ticketHeaderSearchScope ?? TicketHeaderSearchScopeData(),
    );
    this.techemetCatSettings = ValueNotifier(
      techemetCatSettings ?? TechemetCatSettingsData(),
    );
    this.elvSettings = ValueNotifier(elvSettings ?? ElvSettingsData());
    this.cameraPreviewParameters = ValueNotifier(cameraPreviewParameters);
    weighbridgeGroups = ValueNotifier(weighbridgeGroup ?? []);
    this.canMode = ValueNotifier(canMode ?? CanModeData());
    this.ewcControl = ValueNotifier(ewcControl ?? EwcControlData());
    autoHulkAffidavitControl = ValueNotifier(
      autoHulkAffidavitData ?? AutoHulkAffidavitData(),
    );
    this.fieldsConfigurations = ValueNotifier(
      fieldsConfigurations ?? FieldsConfigurationData(),
    );
    this.weighbridgeId = ValueNotifier(weighbridgeId);
    this.environment = ValueNotifier(environment);
    this.instrumentationKey = ValueNotifier(instrumentationKey);
    this.piPrintApiKey = ValueNotifier(piPrintApiKey);
    this.enableTicketSplit = ValueNotifier(enableTicketSplit ?? false);
    this.showStockAsProduct = ValueNotifier(showStockAsProduct ?? false);
    this.printTicketComments = ValueNotifier(printTicketComments ?? false);
    this.vehicleDetailsRequired = ValueNotifier(
      vehicleDetailsRequired ?? false,
    );
    this.enableWeighbridgePay = ValueNotifier(enableWeighbridgePay ?? false);
    this.hwcnLevel = ValueNotifier(hwcnLevel ?? HwcnLevel.off);
  }

  factory WeighbridgeFormData.fromNew() => WeighbridgeFormData(
    id: '',
    name: '',
    yard: Yard(yardCode: '', name: '', shortName: ''),
    wmlExemptionNo: '',
    wasteCarrierRegNo: '',
    currency: '',
    territoryCode: '',
    enableManualWeight: false,
    enableManualTareWeight: false,
    enableCheckWeight: false,
    publishTicketToTrade: false,
    allowRollingWeights: false,
    roundingType: RoundingOption.noRounding,
    knownTares: [],
    enableTransferLine: true,
    enableCreateNewLine: false,
    enablePublicWeigh: false,
    allowedProductIds: [],
    scales: [],
    ticketPrints: [],
    active: true,
  );

  factory WeighbridgeFormData.fromWeighbridgeProfile(
    WeighbridgeProfile profile,
  ) {
    return WeighbridgeFormData(
      id: profile.id,
      name: profile.name,
      yard: Yard(
        id: profile.yardId,
        yardCode: profile.yardCode,
        shortName: '',
        name: '',
        company: Company(
          id: '',
          territoryCode: profile.territoryCode,
          territory: Territory(
            profile.territoryCode,
            '',
            const [],
            currencyCode: profile.currency,
          ),
        ),
      ),
      wmlExemptionNo: profile.yardInformation?.wmlExemptionNo ?? '',
      wasteCarrierRegNo: profile.yardInformation?.wasteCarrierRegNo ?? '',
      currency: profile.currency,
      dirtDeductionUom: profile.dirtDeductionUom,
      territoryCode: profile.territoryCode,
      enableManualWeight: profile.enableManualWeight,
      enableManualTareWeight: profile.enableManualTareWeight,
      enablePublicWeigh: profile.enablePublicWeigh,
      enableCheckWeight: profile.enableCheckWeight,
      publishTicketToTrade: profile.publishTicketToTrade,
      allowRollingWeights: profile.allowRollingWeights,
      weighbridgeUom: profile.weighbridgeUom,
      roundingType: _getRoundingTypeFromPrecision(
        Decimal.parse(profile.rounding.toString()),
      ),
      roundingPrecision: Decimal.parse(profile.rounding.toString()).abs(),
      active: profile.active,
      scales: profile.scales.map(WeighbridgeScaleData.fromScale).toList(),
      ticketPrints: profile.ticketPrints
          .map(WeighbridgeProfileTicketPrintData.fromTicketPrint)
          .toList(),
      knownTares: profile.knownTares.map(KnownTareData.fromKnownTare).toList(),
      knownTareConfigurations:
          KnownTareConfigurationsData.fromKnownTareConfigurations(
            profile.knownTareConfigurations,
          ),
      enableCreateNewLine: profile.enableCreateNewLine,
      enableTransferLine: profile.enableTransferLine,
      pricingServicesConfig:
          PricingServicesConfigData.fromPricingServicesConfig(
            profile.pricingServicesConfig,
          ),
      enableContainerTicket: profile.enableContainerTicket,
      allowAccountCreation: profile.allowAccountCreation,
      ticketHeaderSearchScope:
          TicketHeaderSearchScopeData.fromTicketHeaderSearchScope(
            profile.ticketHeaderSearchScope,
          ),
      techemetCatSettings: TechemetCatSettingsData.fromTechemetCatSettings(
        profile.techemetCatSettings,
      ),
      elvSettings: ElvSettingsData.fromElvSettings(profile.elvSettings),
      cameraPreviewParameters: profile.cameraPreviewParameters,
      weighbridgeGroup: profile.weighbridgeGroup,
      canMode: CanModeData.fromCanMode(profile.canMode),
      autoHulkAffidavitData: AutoHulkAffidavitData.fromAutoHulkAffidavit(
        profile.autoHulkAffidavit,
      ),
      fieldsConfigurations: FieldsConfigurationData(
        yardSelected: profile.yardId.isNotEmpty,
        enableTechmetCatSettingsLocation: profile.techemetCatSettings.enabled,
        enableCanModeLocation: profile.canMode.enabled,
      ),
      ewcControl: EwcControlData.fromEwcControl(profile.ewcControl),
      allowedProducts: profile.allowedProducts
          ?.map(ProductData.fromProduct)
          .toList(),
      weighbridgeId: profile.weighbridgeId,
      environment: profile.environment,
      instrumentationKey: profile.instrumentationKey,
      piPrintApiKey: profile.piPrintApiKey,
      enableTicketSplit: profile.enableTicketSplit,
      showStockAsProduct: profile.showStockAsProduct,
      printTicketComments: profile.printTicketComments,
      vehicleDetailsRequired: profile.vehicleDetailsRequired,
      enableWeighbridgePay: profile.enableWeighbridgePay,
      hwcnLevel: profile.hwcnLevel,
    );
  }

  static RoundingOption _getRoundingTypeFromPrecision(Decimal precision) {
    switch (precision.compareTo(Decimal.zero)) {
      case 1:
        return RoundingOption.roundUp;
      case -1:
        return RoundingOption.roundDown;
      default:
        return RoundingOption.noRounding;
    }
  }

  WeighbridgeProfile toWeighbridgeProfile() {
    return WeighbridgeProfile(
      id: id.value,
      name: name.value,
      yardId: yard.value?.id ?? '',
      yardCode: yard.value?.yardCode ?? '',
      yardInformation: YardInformation(
        wmlExemptionNo: wmlExemptionNo.value,
        wasteCarrierRegNo: wasteCarrierRegNo.value,
      ),
      currency: currency.value,
      dirtDeductionUom: dirtDeductionUom.value ?? Uom.mt,
      territoryCode: territoryCode.value,
      enableManualWeight: enableManualWeight.value,
      enableManualTareWeight: enableManualTareWeight.value,
      enableCheckWeight: enableCheckWeight.value,
      enablePublicWeigh: enablePublicWeigh.value,
      publishTicketToTrade: publishTicketToTrade.value,
      allowRollingWeights: allowRollingWeights.value,
      weighbridgeUom: weighbridgeUom.value ?? Uom.mt,
      rounding: _applyRoundingTypeToPrecision(
        roundingType.value ?? RoundingOption.noRounding,
        roundingPrecision.value,
      ),
      active: active.value,
      scales: scales.value.map((scale) => scale.toScale()).toList(),
      ticketPrints: ticketPrints.value
          .map((print) => print.toticketPrint())
          .toList(),
      knownTares: knownTares.value
          .map((kt) => kt.toKnownTare())
          .whereType<WeightDeduction>()
          .toList(),
      knownTareConfigurations: knownTareConfigurations.value
          .toKnownTareConfigurations(),
      enableCreateNewLine: enableCreateNewLine.value,
      enableTransferLine: enableTransferLine.value,
      allowedProductIds: allowedProducts.value
          .map((product) => product.id.value)
          .toList(),
      pricingServicesConfig: pricingServicesConfig.value
          .toPricingServicesConfig(),
      enableContainerTicket: enableContainerTicket.value,
      allowAccountCreation: allowAccountCreation.value,
      ticketHeaderSearchScope: ticketHeaderSearchScope.value
          .toTicketHeaderSearchScope(),
      techemetCatSettings: techemetCatSettings.value.toTechemetCatSettings(),
      elvSettings: elvSettings.value.toElvSettings(),
      cameraPreviewParameters: cameraPreviewParameters.value,
      weighbridgeGroup: weighbridgeGroups.value,
      canMode: canMode.value.toCanMode(),
      ewcControl: ewcControl.value.toEwcControl(),
      weighbridgeId: weighbridgeId.value,
      environment: environment.value,
      instrumentationKey: instrumentationKey.value,
      piPrintApiKey: piPrintApiKey.value,
      enableTicketSplit: enableTicketSplit.value,
      showStockAsProduct: showStockAsProduct.value,
      printTicketComments: printTicketComments.value,
      vehicleDetailsRequired: vehicleDetailsRequired.value,
      enableWeighbridgePay: enableWeighbridgePay.value,
      hwcnLevel: hwcnLevel.value,
      autoHulkAffidavit: autoHulkAffidavitControl.value.toAutoHulkAffidavit(),
    );
  }

  Decimal _applyRoundingTypeToPrecision(
    RoundingOption roundingType,
    Decimal? absPrecision,
  ) {
    if (absPrecision == null) return Decimal.zero;

    switch (roundingType) {
      case RoundingOption.roundUp:
        return absPrecision;
      case RoundingOption.roundDown:
        return -absPrecision;
      case RoundingOption.noRounding:
        return Decimal.zero;
    }
  }

  late final ValueNotifier<String> id;

  late final ValueNotifier<String> name;

  late final ValueNotifier<String> wmlExemptionNo;

  late final ValueNotifier<String> wasteCarrierRegNo;

  late final ValueNotifier<String> currency;

  late final ValueNotifier<Uom?> dirtDeductionUom;

  late final ValueNotifier<String> territoryCode;

  late final ValueNotifier<bool> enableManualWeight;

  late final ValueNotifier<bool> enableManualTareWeight;

  late final ValueNotifier<Uom?> weighbridgeUom;

  late final ValueNotifier<bool> active;

  late final ValueNotifier<List<WeighbridgeScaleData>> scales;

  late final ValueNotifier<List<WeighbridgeProfileTicketPrintData>>
  ticketPrints;

  late final ValueNotifier<bool> enableCheckWeight;

  late final ValueNotifier<bool> publishTicketToTrade;

  late final ValueNotifier<bool> allowRollingWeights;

  late final ValueNotifier<RoundingOption?> roundingType;

  late final ValueNotifier<Decimal?> roundingPrecision;

  late final ValueNotifier<List<KnownTareData>> knownTares;

  late final ValueNotifier<KnownTareConfigurationsData> knownTareConfigurations;

  late final ValueNotifier<bool> enableCreateNewLine;

  late final ValueNotifier<bool> enablePublicWeigh;

  late final ValueNotifier<bool> enableTransferLine;

  late final ValueNotifier<List<String>?> allowedProductIds;

  late final ValueNotifier<Yard?> yard;

  late final ValueNotifier<PricingServicesConfigData> pricingServicesConfig;

  late final ValueNotifier<bool> enableContainerTicket;

  late final ValueNotifier<bool> allowAccountCreation;

  late final ValueNotifier<TicketHeaderSearchScopeData> ticketHeaderSearchScope;

  late final ValueNotifier<TechemetCatSettingsData> techemetCatSettings;

  late final ValueNotifier<ElvSettingsData> elvSettings;

  late final ValueNotifier<String?> cameraPreviewParameters;

  late final ValueNotifier<List<String>> weighbridgeGroups;

  late final ValueNotifier<CanModeData> canMode;

  late final ValueNotifier<EwcControlData> ewcControl;

  late final ValueNotifier<AutoHulkAffidavitData> autoHulkAffidavitControl;

  late final ValueNotifier<FieldsConfigurationData> fieldsConfigurations;

  late final ValueNotifier<List<ProductData>> allowedProducts;

  late final ValueNotifier<String> weighbridgeId;

  late final ValueNotifier<String> environment;

  late final ValueNotifier<String> instrumentationKey;

  late final ValueNotifier<String> piPrintApiKey;

  late final ValueNotifier<bool> enableTicketSplit;

  late final ValueNotifier<bool> showStockAsProduct;

  late final ValueNotifier<bool> printTicketComments;

  late final ValueNotifier<bool> vehicleDetailsRequired;

  late final ValueNotifier<bool> enableWeighbridgePay;

  late final ValueNotifier<HwcnLevel> hwcnLevel;
}
