import 'package:decimal/decimal.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weighbridge_profile.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class WeighbridgeProfile {
  WeighbridgeProfile({
    required this.id,
    required this.name,
    required this.yardId,
    required this.yardCode,
    this.currency = '',
    this.active = false,
    this.scales = const [],
    this.knownTares = const [],
    this.knownTareConfigurations = const KnownTareConfigurations(),
    this.dirtDeductionUom = Uom.mt,
    this.weighbridgeUom = Uom.mt,
    this.territoryCode = 'A11',
    this.enableManualWeight = true,
    this.enableManualTareWeight = true,
    this.enablePublicWeigh = true,
    this.ticketPrints = const [],
    this.enableCheckWeight = false,
    this.publishTicketToTrade = false,
    this.allowRollingWeights = false,
    this.enableCreateNewLine = false,
    this.enableTransferLine = false,
    this.enableContainerTicket = false,
    this.allowedProductIds,
    this.allowedProducts,
    this.yardInformation,
    Decimal? rounding,
    this.pricingServicesConfig = const PricingServicesConfig(),
    this.allowAccountCreation = false,
    this.ticketHeaderSearchScope = const TicketHeaderSearchScope(),
    this.techemetCatSettings = const TechemetCatSettings.blank(),
    this.elvSettings = const ElvSettings(),
    this.cameraPreviewParameters,
    this.weighbridgeGroup = const [],
    this.canMode = const CanMode(),
    this.ewcControl = const EwcControl(),
    this.weighbridgeId = '',
    this.environment = '',
    this.instrumentationKey = '',
    this.piPrintApiKey = '',
    this.enableTicketSplit = false,
    this.showStockAsProduct = false,
    this.printTicketComments = false,
    this.printCheckWeight = false,
    this.vehicleDetailsRequired = false,
    this.enableWeighbridgePay = false,
    this.hwcnLevel = HwcnLevel.off,
    this.autoHulkAffidavit = const AutoHulkAffidavit(),
  }) : rounding = rounding ?? Decimal.zero;

  factory WeighbridgeProfile.blank() => WeighbridgeProfile(
        id: '',
        name: '',
        yardId: '',
        yardCode: '',
        scales: [],
        knownTares: [],
        ticketPrints: [],
      );

  factory WeighbridgeProfile.fromJson(Map<String, dynamic> json) =>
      _$WeighbridgeProfileFromJson(json);

  Map<String, dynamic> toJson() => _$WeighbridgeProfileToJson(this);

  String id;
  String yardId;
  String name;
  String yardCode;
  List<String>? allowedProductIds;
  List<Product>? allowedProducts;
  List<Scale> scales;
  List<WeightDeduction> knownTares;
  KnownTareConfigurations knownTareConfigurations;
  List<TicketPrint> ticketPrints;
  bool active;
  YardInformation? yardInformation;
  String currency;
  Uom dirtDeductionUom;
  String territoryCode;
  bool enableManualWeight;
  bool enableManualTareWeight;
  bool enablePublicWeigh;
  bool enableCheckWeight;
  bool publishTicketToTrade;
  bool allowRollingWeights;
  bool enableCreateNewLine;
  bool enableTransferLine;
  Uom weighbridgeUom;
  @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)
  Decimal rounding;
  PricingServicesConfig pricingServicesConfig;
  bool enableContainerTicket;
  bool allowAccountCreation;
  TicketHeaderSearchScope ticketHeaderSearchScope;
  TechemetCatSettings techemetCatSettings;
  ElvSettings elvSettings;
  String? cameraPreviewParameters;
  List<String> weighbridgeGroup;
  CanMode canMode;
  AutoHulkAffidavit autoHulkAffidavit;
  EwcControl ewcControl;
  String weighbridgeId;
  String environment;
  String instrumentationKey;
  String piPrintApiKey;
  bool enableTicketSplit;
  bool showStockAsProduct;
  bool printTicketComments;
  bool printCheckWeight;
  bool vehicleDetailsRequired;
  bool enableWeighbridgePay;
  HwcnLevel hwcnLevel;
}

Decimal decimalFromJson(dynamic value) {
  if (value == null) return Decimal.zero;
  if (value is String) return Decimal.parse(value);
  if (value is num) return Decimal.parse(value.toString());
  throw ArgumentError('Invalid type for Decimal: ${value.runtimeType}');
}

double decimalToJson(Decimal value) => value.toDouble();
