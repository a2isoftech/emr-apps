// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weighbridge_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeighbridgeProfile _$WeighbridgeProfileFromJson(Map<String, dynamic> json) =>
    WeighbridgeProfile(
      id: json['id'] as String,
      name: json['name'] as String,
      yardId: json['yardId'] as String,
      yardCode: json['yardCode'] as String,
      currency: json['currency'] as String? ?? '',
      active: json['active'] as bool? ?? false,
      scales:
          (json['scales'] as List<dynamic>?)
              ?.map((e) => Scale.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      knownTares:
          (json['knownTares'] as List<dynamic>?)
              ?.map((e) => WeightDeduction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      knownTareConfigurations: json['knownTareConfigurations'] == null
          ? const KnownTareConfigurations()
          : KnownTareConfigurations.fromJson(
              json['knownTareConfigurations'] as Map<String, dynamic>,
            ),
      dirtDeductionUom:
          $enumDecodeNullable(_$UomEnumMap, json['dirtDeductionUom']) ?? Uom.mt,
      weighbridgeUom:
          $enumDecodeNullable(_$UomEnumMap, json['weighbridgeUom']) ?? Uom.mt,
      territoryCode: json['territoryCode'] as String? ?? 'A11',
      enableManualWeight: json['enableManualWeight'] as bool? ?? true,
      enableManualTareWeight: json['enableManualTareWeight'] as bool? ?? true,
      enablePublicWeigh: json['enablePublicWeigh'] as bool? ?? true,
      ticketPrints:
          (json['ticketPrints'] as List<dynamic>?)
              ?.map((e) => TicketPrint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      enableCheckWeight: json['enableCheckWeight'] as bool? ?? false,
      publishTicketToTrade: json['publishTicketToTrade'] as bool? ?? false,
      allowRollingWeights: json['allowRollingWeights'] as bool? ?? false,
      enableCreateNewLine: json['enableCreateNewLine'] as bool? ?? false,
      enableTransferLine: json['enableTransferLine'] as bool? ?? false,
      enableContainerTicket: json['enableContainerTicket'] as bool? ?? false,
      allowedProductIds: (json['allowedProductIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      allowedProducts: (json['allowedProducts'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      yardInformation: json['yardInformation'] == null
          ? null
          : YardInformation.fromJson(
              json['yardInformation'] as Map<String, dynamic>,
            ),
      rounding: decimalFromJson(json['rounding']),
      pricingServicesConfig: json['pricingServicesConfig'] == null
          ? const PricingServicesConfig()
          : PricingServicesConfig.fromJson(
              json['pricingServicesConfig'] as Map<String, dynamic>,
            ),
      allowAccountCreation: json['allowAccountCreation'] as bool? ?? false,
      ticketHeaderSearchScope: json['ticketHeaderSearchScope'] == null
          ? const TicketHeaderSearchScope()
          : TicketHeaderSearchScope.fromJson(
              json['ticketHeaderSearchScope'] as Map<String, dynamic>,
            ),
      techemetCatSettings: json['techemetCatSettings'] == null
          ? const TechemetCatSettings.blank()
          : TechemetCatSettings.fromJson(
              json['techemetCatSettings'] as Map<String, dynamic>,
            ),
      elvSettings: json['elvSettings'] == null
          ? const ElvSettings()
          : ElvSettings.fromJson(json['elvSettings'] as Map<String, dynamic>),
      cameraPreviewParameters: json['cameraPreviewParameters'] as String?,
      weighbridgeGroup:
          (json['weighbridgeGroup'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      canMode: json['canMode'] == null
          ? const CanMode()
          : CanMode.fromJson(json['canMode'] as Map<String, dynamic>),
      ewcControl: json['ewcControl'] == null
          ? const EwcControl()
          : EwcControl.fromJson(json['ewcControl'] as Map<String, dynamic>),
      weighbridgeId: json['weighbridgeId'] as String? ?? '',
      environment: json['environment'] as String? ?? '',
      instrumentationKey: json['instrumentationKey'] as String? ?? '',
      piPrintApiKey: json['piPrintApiKey'] as String? ?? '',
      enableTicketSplit: json['enableTicketSplit'] as bool? ?? false,
      showStockAsProduct: json['showStockAsProduct'] as bool? ?? false,
      printTicketComments: json['printTicketComments'] as bool? ?? false,
      printCheckWeight: json['printCheckWeight'] as bool? ?? false,
      vehicleDetailsRequired: json['vehicleDetailsRequired'] as bool? ?? false,
      enableWeighbridgePay: json['enableWeighbridgePay'] as bool? ?? false,
      hwcnLevel:
          $enumDecodeNullable(_$HwcnLevelEnumMap, json['hwcnLevel']) ??
          HwcnLevel.off,
      autoHulkAffidavit: json['autoHulkAffidavit'] == null
          ? const AutoHulkAffidavit()
          : AutoHulkAffidavit.fromJson(
              json['autoHulkAffidavit'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$WeighbridgeProfileToJson(WeighbridgeProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'yardId': instance.yardId,
      'name': instance.name,
      'yardCode': instance.yardCode,
      'allowedProductIds': instance.allowedProductIds,
      'allowedProducts': instance.allowedProducts,
      'scales': instance.scales,
      'knownTares': instance.knownTares,
      'knownTareConfigurations': instance.knownTareConfigurations,
      'ticketPrints': instance.ticketPrints,
      'active': instance.active,
      'yardInformation': instance.yardInformation,
      'currency': instance.currency,
      'dirtDeductionUom': _$UomEnumMap[instance.dirtDeductionUom]!,
      'territoryCode': instance.territoryCode,
      'enableManualWeight': instance.enableManualWeight,
      'enableManualTareWeight': instance.enableManualTareWeight,
      'enablePublicWeigh': instance.enablePublicWeigh,
      'enableCheckWeight': instance.enableCheckWeight,
      'publishTicketToTrade': instance.publishTicketToTrade,
      'allowRollingWeights': instance.allowRollingWeights,
      'enableCreateNewLine': instance.enableCreateNewLine,
      'enableTransferLine': instance.enableTransferLine,
      'weighbridgeUom': _$UomEnumMap[instance.weighbridgeUom]!,
      'rounding': decimalToJson(instance.rounding),
      'pricingServicesConfig': instance.pricingServicesConfig,
      'enableContainerTicket': instance.enableContainerTicket,
      'allowAccountCreation': instance.allowAccountCreation,
      'ticketHeaderSearchScope': instance.ticketHeaderSearchScope,
      'techemetCatSettings': instance.techemetCatSettings,
      'elvSettings': instance.elvSettings,
      'cameraPreviewParameters': instance.cameraPreviewParameters,
      'weighbridgeGroup': instance.weighbridgeGroup,
      'canMode': instance.canMode,
      'autoHulkAffidavit': instance.autoHulkAffidavit,
      'ewcControl': instance.ewcControl,
      'weighbridgeId': instance.weighbridgeId,
      'environment': instance.environment,
      'instrumentationKey': instance.instrumentationKey,
      'piPrintApiKey': instance.piPrintApiKey,
      'enableTicketSplit': instance.enableTicketSplit,
      'showStockAsProduct': instance.showStockAsProduct,
      'printTicketComments': instance.printTicketComments,
      'printCheckWeight': instance.printCheckWeight,
      'vehicleDetailsRequired': instance.vehicleDetailsRequired,
      'enableWeighbridgePay': instance.enableWeighbridgePay,
      'hwcnLevel': _$HwcnLevelEnumMap[instance.hwcnLevel]!,
    };

const _$UomEnumMap = {
  Uom.unknown: 'unknown',
  Uom.mt: 'MT',
  Uom.lb: 'LB',
  Uom.gt: 'GT',
  Uom.nt: 'NT',
  Uom.kg: 'KG',
  Uom.ld: 'LD',
  Uom.ea: 'EA',
  Uom.lt: 'LT',
  Uom.hr: 'HR',
  Uom.cwt: 'CWT',
};

const _$HwcnLevelEnumMap = {
  HwcnLevel.off: 'OFF',
  HwcnLevel.warn: 'WARN',
  HwcnLevel.enforce: 'ENFORCE',
};
