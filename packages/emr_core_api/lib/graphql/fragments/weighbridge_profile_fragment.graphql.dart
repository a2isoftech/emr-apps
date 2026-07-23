import '../schema.graphql.dart';
import 'commodity_source_types/commodity_source_types.graphql.dart';
import 'ewc_control_fragment.graphql.dart';
import 'inventory/location_fragment.graphql.dart';
import 'inventory/product_response_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$WeighbridgeProfileFragment {
  Fragment$WeighbridgeProfileFragment({
    this.id,
    required this.yardId,
    required this.name,
    required this.yardCode,
    required this.allowedProductIds,
    this.allowedProducts,
    required this.scales,
    required this.knownTares,
    required this.knownTareConfigurations,
    required this.ticketPrints,
    required this.active,
    required this.yardInformation,
    required this.currency,
    required this.dirtDeductionUom,
    required this.territoryCode,
    required this.enableManualWeight,
    required this.enableManualTareWeight,
    required this.enableCheckWeight,
    required this.publishTicketToTrade,
    required this.allowRollingWeights,
    required this.enableCreateNewLine,
    required this.enableTransferLine,
    required this.enablePublicWeigh,
    required this.weighbridgeUom,
    required this.rounding,
    required this.pricingServicesConfig,
    required this.enableContainerTicket,
    required this.allowAccountCreation,
    required this.ticketHeaderSearchScope,
    required this.techemetCatSettings,
    required this.elvSettings,
    this.cameraPreviewParameters,
    required this.weighbridgeGroup,
    required this.canMode,
    required this.ewcControl,
    required this.weighbridgeId,
    required this.environment,
    required this.instrumentationKey,
    required this.piPrintApiKey,
    required this.enableTicketSplit,
    required this.showStockAsProduct,
    required this.printTicketComments,
    required this.printCheckWeight,
    required this.vehicleDetailsRequired,
    required this.enableWeighbridgePay,
    required this.hwcnLevel,
    required this.autoHulkAffidavit,
    this.$__typename = 'WeighbridgeProfile',
  });

  factory Fragment$WeighbridgeProfileFragment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$yardId = json['yardId'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$allowedProductIds = json['allowedProductIds'];
    final l$allowedProducts = json['allowedProducts'];
    final l$scales = json['scales'];
    final l$knownTares = json['knownTares'];
    final l$knownTareConfigurations = json['knownTareConfigurations'];
    final l$ticketPrints = json['ticketPrints'];
    final l$active = json['active'];
    final l$yardInformation = json['yardInformation'];
    final l$currency = json['currency'];
    final l$dirtDeductionUom = json['dirtDeductionUom'];
    final l$territoryCode = json['territoryCode'];
    final l$enableManualWeight = json['enableManualWeight'];
    final l$enableManualTareWeight = json['enableManualTareWeight'];
    final l$enableCheckWeight = json['enableCheckWeight'];
    final l$publishTicketToTrade = json['publishTicketToTrade'];
    final l$allowRollingWeights = json['allowRollingWeights'];
    final l$enableCreateNewLine = json['enableCreateNewLine'];
    final l$enableTransferLine = json['enableTransferLine'];
    final l$enablePublicWeigh = json['enablePublicWeigh'];
    final l$weighbridgeUom = json['weighbridgeUom'];
    final l$rounding = json['rounding'];
    final l$pricingServicesConfig = json['pricingServicesConfig'];
    final l$enableContainerTicket = json['enableContainerTicket'];
    final l$allowAccountCreation = json['allowAccountCreation'];
    final l$ticketHeaderSearchScope = json['ticketHeaderSearchScope'];
    final l$techemetCatSettings = json['techemetCatSettings'];
    final l$elvSettings = json['elvSettings'];
    final l$cameraPreviewParameters = json['cameraPreviewParameters'];
    final l$weighbridgeGroup = json['weighbridgeGroup'];
    final l$canMode = json['canMode'];
    final l$ewcControl = json['ewcControl'];
    final l$weighbridgeId = json['weighbridgeId'];
    final l$environment = json['environment'];
    final l$instrumentationKey = json['instrumentationKey'];
    final l$piPrintApiKey = json['piPrintApiKey'];
    final l$enableTicketSplit = json['enableTicketSplit'];
    final l$showStockAsProduct = json['showStockAsProduct'];
    final l$printTicketComments = json['printTicketComments'];
    final l$printCheckWeight = json['printCheckWeight'];
    final l$vehicleDetailsRequired = json['vehicleDetailsRequired'];
    final l$enableWeighbridgePay = json['enableWeighbridgePay'];
    final l$hwcnLevel = json['hwcnLevel'];
    final l$autoHulkAffidavit = json['autoHulkAffidavit'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment(
      id: (l$id as String?),
      yardId: (l$yardId as String),
      name: (l$name as String),
      yardCode: (l$yardCode as String),
      allowedProductIds: (l$allowedProductIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      allowedProducts: (l$allowedProducts as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Fragment$ProductFragment.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      scales: (l$scales as List<dynamic>)
          .map(
            (e) => Fragment$WeighbridgeProfileFragment$scales.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      knownTares: (l$knownTares as List<dynamic>)
          .map(
            (e) => Fragment$WeighbridgeProfileFragment$knownTares.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      knownTareConfigurations:
          Fragment$WeighbridgeProfileFragment$knownTareConfigurations.fromJson(
            (l$knownTareConfigurations as Map<String, dynamic>),
          ),
      ticketPrints: (l$ticketPrints as List<dynamic>)
          .map(
            (e) => Fragment$WeighbridgeProfileFragment$ticketPrints.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      active: (l$active as bool),
      yardInformation:
          Fragment$WeighbridgeProfileFragment$yardInformation.fromJson(
            (l$yardInformation as Map<String, dynamic>),
          ),
      currency: (l$currency as String),
      dirtDeductionUom: fromJson$Enum$Uom((l$dirtDeductionUom as String)),
      territoryCode: (l$territoryCode as String),
      enableManualWeight: (l$enableManualWeight as bool),
      enableManualTareWeight: (l$enableManualTareWeight as bool),
      enableCheckWeight: (l$enableCheckWeight as bool),
      publishTicketToTrade: (l$publishTicketToTrade as bool),
      allowRollingWeights: (l$allowRollingWeights as bool),
      enableCreateNewLine: (l$enableCreateNewLine as bool),
      enableTransferLine: (l$enableTransferLine as bool),
      enablePublicWeigh: (l$enablePublicWeigh as bool),
      weighbridgeUom: fromJson$Enum$Uom((l$weighbridgeUom as String)),
      rounding: (l$rounding as num).toDouble(),
      pricingServicesConfig:
          Fragment$WeighbridgeProfileFragment$pricingServicesConfig.fromJson(
            (l$pricingServicesConfig as Map<String, dynamic>),
          ),
      enableContainerTicket: (l$enableContainerTicket as bool),
      allowAccountCreation: (l$allowAccountCreation as bool),
      ticketHeaderSearchScope:
          Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope.fromJson(
            (l$ticketHeaderSearchScope as Map<String, dynamic>),
          ),
      techemetCatSettings:
          Fragment$WeighbridgeProfileFragment$techemetCatSettings.fromJson(
            (l$techemetCatSettings as Map<String, dynamic>),
          ),
      elvSettings: Fragment$WeighbridgeProfileFragment$elvSettings.fromJson(
        (l$elvSettings as Map<String, dynamic>),
      ),
      cameraPreviewParameters: (l$cameraPreviewParameters as String?),
      weighbridgeGroup: (l$weighbridgeGroup as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      canMode: Fragment$WeighbridgeProfileFragment$canMode.fromJson(
        (l$canMode as Map<String, dynamic>),
      ),
      ewcControl: Fragment$EwcControlFragment.fromJson(
        (l$ewcControl as Map<String, dynamic>),
      ),
      weighbridgeId: (l$weighbridgeId as String),
      environment: (l$environment as String),
      instrumentationKey: (l$instrumentationKey as String),
      piPrintApiKey: (l$piPrintApiKey as String),
      enableTicketSplit: (l$enableTicketSplit as bool),
      showStockAsProduct: (l$showStockAsProduct as bool),
      printTicketComments: (l$printTicketComments as bool),
      printCheckWeight: (l$printCheckWeight as bool),
      vehicleDetailsRequired: (l$vehicleDetailsRequired as bool),
      enableWeighbridgePay: (l$enableWeighbridgePay as bool),
      hwcnLevel: fromJson$Enum$HwcnLevel((l$hwcnLevel as String)),
      autoHulkAffidavit:
          Fragment$WeighbridgeProfileFragment$autoHulkAffidavit.fromJson(
            (l$autoHulkAffidavit as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String yardId;

  final String name;

  final String yardCode;

  final List<String> allowedProductIds;

  final List<Fragment$ProductFragment?>? allowedProducts;

  final List<Fragment$WeighbridgeProfileFragment$scales> scales;

  final List<Fragment$WeighbridgeProfileFragment$knownTares> knownTares;

  final Fragment$WeighbridgeProfileFragment$knownTareConfigurations
  knownTareConfigurations;

  final List<Fragment$WeighbridgeProfileFragment$ticketPrints> ticketPrints;

  final bool active;

  final Fragment$WeighbridgeProfileFragment$yardInformation yardInformation;

  final String currency;

  final Enum$Uom dirtDeductionUom;

  final String territoryCode;

  final bool enableManualWeight;

  final bool enableManualTareWeight;

  final bool enableCheckWeight;

  final bool publishTicketToTrade;

  final bool allowRollingWeights;

  final bool enableCreateNewLine;

  final bool enableTransferLine;

  final bool enablePublicWeigh;

  final Enum$Uom weighbridgeUom;

  final double rounding;

  final Fragment$WeighbridgeProfileFragment$pricingServicesConfig
  pricingServicesConfig;

  final bool enableContainerTicket;

  final bool allowAccountCreation;

  final Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope
  ticketHeaderSearchScope;

  final Fragment$WeighbridgeProfileFragment$techemetCatSettings
  techemetCatSettings;

  final Fragment$WeighbridgeProfileFragment$elvSettings elvSettings;

  final String? cameraPreviewParameters;

  final List<String> weighbridgeGroup;

  final Fragment$WeighbridgeProfileFragment$canMode canMode;

  final Fragment$EwcControlFragment ewcControl;

  final String weighbridgeId;

  final String environment;

  final String instrumentationKey;

  final String piPrintApiKey;

  final bool enableTicketSplit;

  final bool showStockAsProduct;

  final bool printTicketComments;

  final bool printCheckWeight;

  final bool vehicleDetailsRequired;

  final bool enableWeighbridgePay;

  final Enum$HwcnLevel hwcnLevel;

  final Fragment$WeighbridgeProfileFragment$autoHulkAffidavit autoHulkAffidavit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$allowedProductIds = allowedProductIds;
    _resultData['allowedProductIds'] = l$allowedProductIds
        .map((e) => e)
        .toList();
    final l$allowedProducts = allowedProducts;
    _resultData['allowedProducts'] = l$allowedProducts
        ?.map((e) => e?.toJson())
        .toList();
    final l$scales = scales;
    _resultData['scales'] = l$scales.map((e) => e.toJson()).toList();
    final l$knownTares = knownTares;
    _resultData['knownTares'] = l$knownTares.map((e) => e.toJson()).toList();
    final l$knownTareConfigurations = knownTareConfigurations;
    _resultData['knownTareConfigurations'] = l$knownTareConfigurations.toJson();
    final l$ticketPrints = ticketPrints;
    _resultData['ticketPrints'] = l$ticketPrints
        .map((e) => e.toJson())
        .toList();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$yardInformation = yardInformation;
    _resultData['yardInformation'] = l$yardInformation.toJson();
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$dirtDeductionUom = dirtDeductionUom;
    _resultData['dirtDeductionUom'] = toJson$Enum$Uom(l$dirtDeductionUom);
    final l$territoryCode = territoryCode;
    _resultData['territoryCode'] = l$territoryCode;
    final l$enableManualWeight = enableManualWeight;
    _resultData['enableManualWeight'] = l$enableManualWeight;
    final l$enableManualTareWeight = enableManualTareWeight;
    _resultData['enableManualTareWeight'] = l$enableManualTareWeight;
    final l$enableCheckWeight = enableCheckWeight;
    _resultData['enableCheckWeight'] = l$enableCheckWeight;
    final l$publishTicketToTrade = publishTicketToTrade;
    _resultData['publishTicketToTrade'] = l$publishTicketToTrade;
    final l$allowRollingWeights = allowRollingWeights;
    _resultData['allowRollingWeights'] = l$allowRollingWeights;
    final l$enableCreateNewLine = enableCreateNewLine;
    _resultData['enableCreateNewLine'] = l$enableCreateNewLine;
    final l$enableTransferLine = enableTransferLine;
    _resultData['enableTransferLine'] = l$enableTransferLine;
    final l$enablePublicWeigh = enablePublicWeigh;
    _resultData['enablePublicWeigh'] = l$enablePublicWeigh;
    final l$weighbridgeUom = weighbridgeUom;
    _resultData['weighbridgeUom'] = toJson$Enum$Uom(l$weighbridgeUom);
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding;
    final l$pricingServicesConfig = pricingServicesConfig;
    _resultData['pricingServicesConfig'] = l$pricingServicesConfig.toJson();
    final l$enableContainerTicket = enableContainerTicket;
    _resultData['enableContainerTicket'] = l$enableContainerTicket;
    final l$allowAccountCreation = allowAccountCreation;
    _resultData['allowAccountCreation'] = l$allowAccountCreation;
    final l$ticketHeaderSearchScope = ticketHeaderSearchScope;
    _resultData['ticketHeaderSearchScope'] = l$ticketHeaderSearchScope.toJson();
    final l$techemetCatSettings = techemetCatSettings;
    _resultData['techemetCatSettings'] = l$techemetCatSettings.toJson();
    final l$elvSettings = elvSettings;
    _resultData['elvSettings'] = l$elvSettings.toJson();
    final l$cameraPreviewParameters = cameraPreviewParameters;
    _resultData['cameraPreviewParameters'] = l$cameraPreviewParameters;
    final l$weighbridgeGroup = weighbridgeGroup;
    _resultData['weighbridgeGroup'] = l$weighbridgeGroup.map((e) => e).toList();
    final l$canMode = canMode;
    _resultData['canMode'] = l$canMode.toJson();
    final l$ewcControl = ewcControl;
    _resultData['ewcControl'] = l$ewcControl.toJson();
    final l$weighbridgeId = weighbridgeId;
    _resultData['weighbridgeId'] = l$weighbridgeId;
    final l$environment = environment;
    _resultData['environment'] = l$environment;
    final l$instrumentationKey = instrumentationKey;
    _resultData['instrumentationKey'] = l$instrumentationKey;
    final l$piPrintApiKey = piPrintApiKey;
    _resultData['piPrintApiKey'] = l$piPrintApiKey;
    final l$enableTicketSplit = enableTicketSplit;
    _resultData['enableTicketSplit'] = l$enableTicketSplit;
    final l$showStockAsProduct = showStockAsProduct;
    _resultData['showStockAsProduct'] = l$showStockAsProduct;
    final l$printTicketComments = printTicketComments;
    _resultData['printTicketComments'] = l$printTicketComments;
    final l$printCheckWeight = printCheckWeight;
    _resultData['printCheckWeight'] = l$printCheckWeight;
    final l$vehicleDetailsRequired = vehicleDetailsRequired;
    _resultData['vehicleDetailsRequired'] = l$vehicleDetailsRequired;
    final l$enableWeighbridgePay = enableWeighbridgePay;
    _resultData['enableWeighbridgePay'] = l$enableWeighbridgePay;
    final l$hwcnLevel = hwcnLevel;
    _resultData['hwcnLevel'] = toJson$Enum$HwcnLevel(l$hwcnLevel);
    final l$autoHulkAffidavit = autoHulkAffidavit;
    _resultData['autoHulkAffidavit'] = l$autoHulkAffidavit.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$yardId = yardId;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$allowedProductIds = allowedProductIds;
    final l$allowedProducts = allowedProducts;
    final l$scales = scales;
    final l$knownTares = knownTares;
    final l$knownTareConfigurations = knownTareConfigurations;
    final l$ticketPrints = ticketPrints;
    final l$active = active;
    final l$yardInformation = yardInformation;
    final l$currency = currency;
    final l$dirtDeductionUom = dirtDeductionUom;
    final l$territoryCode = territoryCode;
    final l$enableManualWeight = enableManualWeight;
    final l$enableManualTareWeight = enableManualTareWeight;
    final l$enableCheckWeight = enableCheckWeight;
    final l$publishTicketToTrade = publishTicketToTrade;
    final l$allowRollingWeights = allowRollingWeights;
    final l$enableCreateNewLine = enableCreateNewLine;
    final l$enableTransferLine = enableTransferLine;
    final l$enablePublicWeigh = enablePublicWeigh;
    final l$weighbridgeUom = weighbridgeUom;
    final l$rounding = rounding;
    final l$pricingServicesConfig = pricingServicesConfig;
    final l$enableContainerTicket = enableContainerTicket;
    final l$allowAccountCreation = allowAccountCreation;
    final l$ticketHeaderSearchScope = ticketHeaderSearchScope;
    final l$techemetCatSettings = techemetCatSettings;
    final l$elvSettings = elvSettings;
    final l$cameraPreviewParameters = cameraPreviewParameters;
    final l$weighbridgeGroup = weighbridgeGroup;
    final l$canMode = canMode;
    final l$ewcControl = ewcControl;
    final l$weighbridgeId = weighbridgeId;
    final l$environment = environment;
    final l$instrumentationKey = instrumentationKey;
    final l$piPrintApiKey = piPrintApiKey;
    final l$enableTicketSplit = enableTicketSplit;
    final l$showStockAsProduct = showStockAsProduct;
    final l$printTicketComments = printTicketComments;
    final l$printCheckWeight = printCheckWeight;
    final l$vehicleDetailsRequired = vehicleDetailsRequired;
    final l$enableWeighbridgePay = enableWeighbridgePay;
    final l$hwcnLevel = hwcnLevel;
    final l$autoHulkAffidavit = autoHulkAffidavit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$yardId,
      l$name,
      l$yardCode,
      Object.hashAll(l$allowedProductIds.map((v) => v)),
      l$allowedProducts == null
          ? null
          : Object.hashAll(l$allowedProducts.map((v) => v)),
      Object.hashAll(l$scales.map((v) => v)),
      Object.hashAll(l$knownTares.map((v) => v)),
      l$knownTareConfigurations,
      Object.hashAll(l$ticketPrints.map((v) => v)),
      l$active,
      l$yardInformation,
      l$currency,
      l$dirtDeductionUom,
      l$territoryCode,
      l$enableManualWeight,
      l$enableManualTareWeight,
      l$enableCheckWeight,
      l$publishTicketToTrade,
      l$allowRollingWeights,
      l$enableCreateNewLine,
      l$enableTransferLine,
      l$enablePublicWeigh,
      l$weighbridgeUom,
      l$rounding,
      l$pricingServicesConfig,
      l$enableContainerTicket,
      l$allowAccountCreation,
      l$ticketHeaderSearchScope,
      l$techemetCatSettings,
      l$elvSettings,
      l$cameraPreviewParameters,
      Object.hashAll(l$weighbridgeGroup.map((v) => v)),
      l$canMode,
      l$ewcControl,
      l$weighbridgeId,
      l$environment,
      l$instrumentationKey,
      l$piPrintApiKey,
      l$enableTicketSplit,
      l$showStockAsProduct,
      l$printTicketComments,
      l$printCheckWeight,
      l$vehicleDetailsRequired,
      l$enableWeighbridgePay,
      l$hwcnLevel,
      l$autoHulkAffidavit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$allowedProductIds = allowedProductIds;
    final lOther$allowedProductIds = other.allowedProductIds;
    if (l$allowedProductIds.length != lOther$allowedProductIds.length) {
      return false;
    }
    for (int i = 0; i < l$allowedProductIds.length; i++) {
      final l$allowedProductIds$entry = l$allowedProductIds[i];
      final lOther$allowedProductIds$entry = lOther$allowedProductIds[i];
      if (l$allowedProductIds$entry != lOther$allowedProductIds$entry) {
        return false;
      }
    }
    final l$allowedProducts = allowedProducts;
    final lOther$allowedProducts = other.allowedProducts;
    if (l$allowedProducts != null && lOther$allowedProducts != null) {
      if (l$allowedProducts.length != lOther$allowedProducts.length) {
        return false;
      }
      for (int i = 0; i < l$allowedProducts.length; i++) {
        final l$allowedProducts$entry = l$allowedProducts[i];
        final lOther$allowedProducts$entry = lOther$allowedProducts[i];
        if (l$allowedProducts$entry != lOther$allowedProducts$entry) {
          return false;
        }
      }
    } else if (l$allowedProducts != lOther$allowedProducts) {
      return false;
    }
    final l$scales = scales;
    final lOther$scales = other.scales;
    if (l$scales.length != lOther$scales.length) {
      return false;
    }
    for (int i = 0; i < l$scales.length; i++) {
      final l$scales$entry = l$scales[i];
      final lOther$scales$entry = lOther$scales[i];
      if (l$scales$entry != lOther$scales$entry) {
        return false;
      }
    }
    final l$knownTares = knownTares;
    final lOther$knownTares = other.knownTares;
    if (l$knownTares.length != lOther$knownTares.length) {
      return false;
    }
    for (int i = 0; i < l$knownTares.length; i++) {
      final l$knownTares$entry = l$knownTares[i];
      final lOther$knownTares$entry = lOther$knownTares[i];
      if (l$knownTares$entry != lOther$knownTares$entry) {
        return false;
      }
    }
    final l$knownTareConfigurations = knownTareConfigurations;
    final lOther$knownTareConfigurations = other.knownTareConfigurations;
    if (l$knownTareConfigurations != lOther$knownTareConfigurations) {
      return false;
    }
    final l$ticketPrints = ticketPrints;
    final lOther$ticketPrints = other.ticketPrints;
    if (l$ticketPrints.length != lOther$ticketPrints.length) {
      return false;
    }
    for (int i = 0; i < l$ticketPrints.length; i++) {
      final l$ticketPrints$entry = l$ticketPrints[i];
      final lOther$ticketPrints$entry = lOther$ticketPrints[i];
      if (l$ticketPrints$entry != lOther$ticketPrints$entry) {
        return false;
      }
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$yardInformation = yardInformation;
    final lOther$yardInformation = other.yardInformation;
    if (l$yardInformation != lOther$yardInformation) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$dirtDeductionUom = dirtDeductionUom;
    final lOther$dirtDeductionUom = other.dirtDeductionUom;
    if (l$dirtDeductionUom != lOther$dirtDeductionUom) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$enableManualWeight = enableManualWeight;
    final lOther$enableManualWeight = other.enableManualWeight;
    if (l$enableManualWeight != lOther$enableManualWeight) {
      return false;
    }
    final l$enableManualTareWeight = enableManualTareWeight;
    final lOther$enableManualTareWeight = other.enableManualTareWeight;
    if (l$enableManualTareWeight != lOther$enableManualTareWeight) {
      return false;
    }
    final l$enableCheckWeight = enableCheckWeight;
    final lOther$enableCheckWeight = other.enableCheckWeight;
    if (l$enableCheckWeight != lOther$enableCheckWeight) {
      return false;
    }
    final l$publishTicketToTrade = publishTicketToTrade;
    final lOther$publishTicketToTrade = other.publishTicketToTrade;
    if (l$publishTicketToTrade != lOther$publishTicketToTrade) {
      return false;
    }
    final l$allowRollingWeights = allowRollingWeights;
    final lOther$allowRollingWeights = other.allowRollingWeights;
    if (l$allowRollingWeights != lOther$allowRollingWeights) {
      return false;
    }
    final l$enableCreateNewLine = enableCreateNewLine;
    final lOther$enableCreateNewLine = other.enableCreateNewLine;
    if (l$enableCreateNewLine != lOther$enableCreateNewLine) {
      return false;
    }
    final l$enableTransferLine = enableTransferLine;
    final lOther$enableTransferLine = other.enableTransferLine;
    if (l$enableTransferLine != lOther$enableTransferLine) {
      return false;
    }
    final l$enablePublicWeigh = enablePublicWeigh;
    final lOther$enablePublicWeigh = other.enablePublicWeigh;
    if (l$enablePublicWeigh != lOther$enablePublicWeigh) {
      return false;
    }
    final l$weighbridgeUom = weighbridgeUom;
    final lOther$weighbridgeUom = other.weighbridgeUom;
    if (l$weighbridgeUom != lOther$weighbridgeUom) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$pricingServicesConfig = pricingServicesConfig;
    final lOther$pricingServicesConfig = other.pricingServicesConfig;
    if (l$pricingServicesConfig != lOther$pricingServicesConfig) {
      return false;
    }
    final l$enableContainerTicket = enableContainerTicket;
    final lOther$enableContainerTicket = other.enableContainerTicket;
    if (l$enableContainerTicket != lOther$enableContainerTicket) {
      return false;
    }
    final l$allowAccountCreation = allowAccountCreation;
    final lOther$allowAccountCreation = other.allowAccountCreation;
    if (l$allowAccountCreation != lOther$allowAccountCreation) {
      return false;
    }
    final l$ticketHeaderSearchScope = ticketHeaderSearchScope;
    final lOther$ticketHeaderSearchScope = other.ticketHeaderSearchScope;
    if (l$ticketHeaderSearchScope != lOther$ticketHeaderSearchScope) {
      return false;
    }
    final l$techemetCatSettings = techemetCatSettings;
    final lOther$techemetCatSettings = other.techemetCatSettings;
    if (l$techemetCatSettings != lOther$techemetCatSettings) {
      return false;
    }
    final l$elvSettings = elvSettings;
    final lOther$elvSettings = other.elvSettings;
    if (l$elvSettings != lOther$elvSettings) {
      return false;
    }
    final l$cameraPreviewParameters = cameraPreviewParameters;
    final lOther$cameraPreviewParameters = other.cameraPreviewParameters;
    if (l$cameraPreviewParameters != lOther$cameraPreviewParameters) {
      return false;
    }
    final l$weighbridgeGroup = weighbridgeGroup;
    final lOther$weighbridgeGroup = other.weighbridgeGroup;
    if (l$weighbridgeGroup.length != lOther$weighbridgeGroup.length) {
      return false;
    }
    for (int i = 0; i < l$weighbridgeGroup.length; i++) {
      final l$weighbridgeGroup$entry = l$weighbridgeGroup[i];
      final lOther$weighbridgeGroup$entry = lOther$weighbridgeGroup[i];
      if (l$weighbridgeGroup$entry != lOther$weighbridgeGroup$entry) {
        return false;
      }
    }
    final l$canMode = canMode;
    final lOther$canMode = other.canMode;
    if (l$canMode != lOther$canMode) {
      return false;
    }
    final l$ewcControl = ewcControl;
    final lOther$ewcControl = other.ewcControl;
    if (l$ewcControl != lOther$ewcControl) {
      return false;
    }
    final l$weighbridgeId = weighbridgeId;
    final lOther$weighbridgeId = other.weighbridgeId;
    if (l$weighbridgeId != lOther$weighbridgeId) {
      return false;
    }
    final l$environment = environment;
    final lOther$environment = other.environment;
    if (l$environment != lOther$environment) {
      return false;
    }
    final l$instrumentationKey = instrumentationKey;
    final lOther$instrumentationKey = other.instrumentationKey;
    if (l$instrumentationKey != lOther$instrumentationKey) {
      return false;
    }
    final l$piPrintApiKey = piPrintApiKey;
    final lOther$piPrintApiKey = other.piPrintApiKey;
    if (l$piPrintApiKey != lOther$piPrintApiKey) {
      return false;
    }
    final l$enableTicketSplit = enableTicketSplit;
    final lOther$enableTicketSplit = other.enableTicketSplit;
    if (l$enableTicketSplit != lOther$enableTicketSplit) {
      return false;
    }
    final l$showStockAsProduct = showStockAsProduct;
    final lOther$showStockAsProduct = other.showStockAsProduct;
    if (l$showStockAsProduct != lOther$showStockAsProduct) {
      return false;
    }
    final l$printTicketComments = printTicketComments;
    final lOther$printTicketComments = other.printTicketComments;
    if (l$printTicketComments != lOther$printTicketComments) {
      return false;
    }
    final l$printCheckWeight = printCheckWeight;
    final lOther$printCheckWeight = other.printCheckWeight;
    if (l$printCheckWeight != lOther$printCheckWeight) {
      return false;
    }
    final l$vehicleDetailsRequired = vehicleDetailsRequired;
    final lOther$vehicleDetailsRequired = other.vehicleDetailsRequired;
    if (l$vehicleDetailsRequired != lOther$vehicleDetailsRequired) {
      return false;
    }
    final l$enableWeighbridgePay = enableWeighbridgePay;
    final lOther$enableWeighbridgePay = other.enableWeighbridgePay;
    if (l$enableWeighbridgePay != lOther$enableWeighbridgePay) {
      return false;
    }
    final l$hwcnLevel = hwcnLevel;
    final lOther$hwcnLevel = other.hwcnLevel;
    if (l$hwcnLevel != lOther$hwcnLevel) {
      return false;
    }
    final l$autoHulkAffidavit = autoHulkAffidavit;
    final lOther$autoHulkAffidavit = other.autoHulkAffidavit;
    if (l$autoHulkAffidavit != lOther$autoHulkAffidavit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment
    on Fragment$WeighbridgeProfileFragment {
  CopyWith$Fragment$WeighbridgeProfileFragment<
    Fragment$WeighbridgeProfileFragment
  >
  get copyWith => CopyWith$Fragment$WeighbridgeProfileFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment<TRes> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment(
    Fragment$WeighbridgeProfileFragment instance,
    TRes Function(Fragment$WeighbridgeProfileFragment) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment;

  factory CopyWith$Fragment$WeighbridgeProfileFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment;

  TRes call({
    String? id,
    String? yardId,
    String? name,
    String? yardCode,
    List<String>? allowedProductIds,
    List<Fragment$ProductFragment?>? allowedProducts,
    List<Fragment$WeighbridgeProfileFragment$scales>? scales,
    List<Fragment$WeighbridgeProfileFragment$knownTares>? knownTares,
    Fragment$WeighbridgeProfileFragment$knownTareConfigurations?
    knownTareConfigurations,
    List<Fragment$WeighbridgeProfileFragment$ticketPrints>? ticketPrints,
    bool? active,
    Fragment$WeighbridgeProfileFragment$yardInformation? yardInformation,
    String? currency,
    Enum$Uom? dirtDeductionUom,
    String? territoryCode,
    bool? enableManualWeight,
    bool? enableManualTareWeight,
    bool? enableCheckWeight,
    bool? publishTicketToTrade,
    bool? allowRollingWeights,
    bool? enableCreateNewLine,
    bool? enableTransferLine,
    bool? enablePublicWeigh,
    Enum$Uom? weighbridgeUom,
    double? rounding,
    Fragment$WeighbridgeProfileFragment$pricingServicesConfig?
    pricingServicesConfig,
    bool? enableContainerTicket,
    bool? allowAccountCreation,
    Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope?
    ticketHeaderSearchScope,
    Fragment$WeighbridgeProfileFragment$techemetCatSettings?
    techemetCatSettings,
    Fragment$WeighbridgeProfileFragment$elvSettings? elvSettings,
    String? cameraPreviewParameters,
    List<String>? weighbridgeGroup,
    Fragment$WeighbridgeProfileFragment$canMode? canMode,
    Fragment$EwcControlFragment? ewcControl,
    String? weighbridgeId,
    String? environment,
    String? instrumentationKey,
    String? piPrintApiKey,
    bool? enableTicketSplit,
    bool? showStockAsProduct,
    bool? printTicketComments,
    bool? printCheckWeight,
    bool? vehicleDetailsRequired,
    bool? enableWeighbridgePay,
    Enum$HwcnLevel? hwcnLevel,
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit? autoHulkAffidavit,
    String? $__typename,
  });
  TRes allowedProducts(
    Iterable<Fragment$ProductFragment?>? Function(
      Iterable<CopyWith$Fragment$ProductFragment<Fragment$ProductFragment>?>?,
    )
    _fn,
  );
  TRes scales(
    Iterable<Fragment$WeighbridgeProfileFragment$scales> Function(
      Iterable<
        CopyWith$Fragment$WeighbridgeProfileFragment$scales<
          Fragment$WeighbridgeProfileFragment$scales
        >
      >,
    )
    _fn,
  );
  TRes knownTares(
    Iterable<Fragment$WeighbridgeProfileFragment$knownTares> Function(
      Iterable<
        CopyWith$Fragment$WeighbridgeProfileFragment$knownTares<
          Fragment$WeighbridgeProfileFragment$knownTares
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$WeighbridgeProfileFragment$knownTareConfigurations<TRes>
  get knownTareConfigurations;
  TRes ticketPrints(
    Iterable<Fragment$WeighbridgeProfileFragment$ticketPrints> Function(
      Iterable<
        CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints<
          Fragment$WeighbridgeProfileFragment$ticketPrints
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$WeighbridgeProfileFragment$yardInformation<TRes>
  get yardInformation;
  CopyWith$Fragment$WeighbridgeProfileFragment$pricingServicesConfig<TRes>
  get pricingServicesConfig;
  CopyWith$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope<TRes>
  get ticketHeaderSearchScope;
  CopyWith$Fragment$WeighbridgeProfileFragment$techemetCatSettings<TRes>
  get techemetCatSettings;
  CopyWith$Fragment$WeighbridgeProfileFragment$elvSettings<TRes>
  get elvSettings;
  CopyWith$Fragment$WeighbridgeProfileFragment$canMode<TRes> get canMode;
  CopyWith$Fragment$EwcControlFragment<TRes> get ewcControl;
  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit<TRes>
  get autoHulkAffidavit;
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment<TRes>
    implements CopyWith$Fragment$WeighbridgeProfileFragment<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment(this._instance, this._then);

  final Fragment$WeighbridgeProfileFragment _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? yardId = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? allowedProductIds = _undefined,
    Object? allowedProducts = _undefined,
    Object? scales = _undefined,
    Object? knownTares = _undefined,
    Object? knownTareConfigurations = _undefined,
    Object? ticketPrints = _undefined,
    Object? active = _undefined,
    Object? yardInformation = _undefined,
    Object? currency = _undefined,
    Object? dirtDeductionUom = _undefined,
    Object? territoryCode = _undefined,
    Object? enableManualWeight = _undefined,
    Object? enableManualTareWeight = _undefined,
    Object? enableCheckWeight = _undefined,
    Object? publishTicketToTrade = _undefined,
    Object? allowRollingWeights = _undefined,
    Object? enableCreateNewLine = _undefined,
    Object? enableTransferLine = _undefined,
    Object? enablePublicWeigh = _undefined,
    Object? weighbridgeUom = _undefined,
    Object? rounding = _undefined,
    Object? pricingServicesConfig = _undefined,
    Object? enableContainerTicket = _undefined,
    Object? allowAccountCreation = _undefined,
    Object? ticketHeaderSearchScope = _undefined,
    Object? techemetCatSettings = _undefined,
    Object? elvSettings = _undefined,
    Object? cameraPreviewParameters = _undefined,
    Object? weighbridgeGroup = _undefined,
    Object? canMode = _undefined,
    Object? ewcControl = _undefined,
    Object? weighbridgeId = _undefined,
    Object? environment = _undefined,
    Object? instrumentationKey = _undefined,
    Object? piPrintApiKey = _undefined,
    Object? enableTicketSplit = _undefined,
    Object? showStockAsProduct = _undefined,
    Object? printTicketComments = _undefined,
    Object? printCheckWeight = _undefined,
    Object? vehicleDetailsRequired = _undefined,
    Object? enableWeighbridgePay = _undefined,
    Object? hwcnLevel = _undefined,
    Object? autoHulkAffidavit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment(
      id: id == _undefined ? _instance.id : (id as String?),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      allowedProductIds:
          allowedProductIds == _undefined || allowedProductIds == null
          ? _instance.allowedProductIds
          : (allowedProductIds as List<String>),
      allowedProducts: allowedProducts == _undefined
          ? _instance.allowedProducts
          : (allowedProducts as List<Fragment$ProductFragment?>?),
      scales: scales == _undefined || scales == null
          ? _instance.scales
          : (scales as List<Fragment$WeighbridgeProfileFragment$scales>),
      knownTares: knownTares == _undefined || knownTares == null
          ? _instance.knownTares
          : (knownTares
                as List<Fragment$WeighbridgeProfileFragment$knownTares>),
      knownTareConfigurations:
          knownTareConfigurations == _undefined ||
              knownTareConfigurations == null
          ? _instance.knownTareConfigurations
          : (knownTareConfigurations
                as Fragment$WeighbridgeProfileFragment$knownTareConfigurations),
      ticketPrints: ticketPrints == _undefined || ticketPrints == null
          ? _instance.ticketPrints
          : (ticketPrints
                as List<Fragment$WeighbridgeProfileFragment$ticketPrints>),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      yardInformation: yardInformation == _undefined || yardInformation == null
          ? _instance.yardInformation
          : (yardInformation
                as Fragment$WeighbridgeProfileFragment$yardInformation),
      currency: currency == _undefined || currency == null
          ? _instance.currency
          : (currency as String),
      dirtDeductionUom:
          dirtDeductionUom == _undefined || dirtDeductionUom == null
          ? _instance.dirtDeductionUom
          : (dirtDeductionUom as Enum$Uom),
      territoryCode: territoryCode == _undefined || territoryCode == null
          ? _instance.territoryCode
          : (territoryCode as String),
      enableManualWeight:
          enableManualWeight == _undefined || enableManualWeight == null
          ? _instance.enableManualWeight
          : (enableManualWeight as bool),
      enableManualTareWeight:
          enableManualTareWeight == _undefined || enableManualTareWeight == null
          ? _instance.enableManualTareWeight
          : (enableManualTareWeight as bool),
      enableCheckWeight:
          enableCheckWeight == _undefined || enableCheckWeight == null
          ? _instance.enableCheckWeight
          : (enableCheckWeight as bool),
      publishTicketToTrade:
          publishTicketToTrade == _undefined || publishTicketToTrade == null
          ? _instance.publishTicketToTrade
          : (publishTicketToTrade as bool),
      allowRollingWeights:
          allowRollingWeights == _undefined || allowRollingWeights == null
          ? _instance.allowRollingWeights
          : (allowRollingWeights as bool),
      enableCreateNewLine:
          enableCreateNewLine == _undefined || enableCreateNewLine == null
          ? _instance.enableCreateNewLine
          : (enableCreateNewLine as bool),
      enableTransferLine:
          enableTransferLine == _undefined || enableTransferLine == null
          ? _instance.enableTransferLine
          : (enableTransferLine as bool),
      enablePublicWeigh:
          enablePublicWeigh == _undefined || enablePublicWeigh == null
          ? _instance.enablePublicWeigh
          : (enablePublicWeigh as bool),
      weighbridgeUom: weighbridgeUom == _undefined || weighbridgeUom == null
          ? _instance.weighbridgeUom
          : (weighbridgeUom as Enum$Uom),
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding as double),
      pricingServicesConfig:
          pricingServicesConfig == _undefined || pricingServicesConfig == null
          ? _instance.pricingServicesConfig
          : (pricingServicesConfig
                as Fragment$WeighbridgeProfileFragment$pricingServicesConfig),
      enableContainerTicket:
          enableContainerTicket == _undefined || enableContainerTicket == null
          ? _instance.enableContainerTicket
          : (enableContainerTicket as bool),
      allowAccountCreation:
          allowAccountCreation == _undefined || allowAccountCreation == null
          ? _instance.allowAccountCreation
          : (allowAccountCreation as bool),
      ticketHeaderSearchScope:
          ticketHeaderSearchScope == _undefined ||
              ticketHeaderSearchScope == null
          ? _instance.ticketHeaderSearchScope
          : (ticketHeaderSearchScope
                as Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope),
      techemetCatSettings:
          techemetCatSettings == _undefined || techemetCatSettings == null
          ? _instance.techemetCatSettings
          : (techemetCatSettings
                as Fragment$WeighbridgeProfileFragment$techemetCatSettings),
      elvSettings: elvSettings == _undefined || elvSettings == null
          ? _instance.elvSettings
          : (elvSettings as Fragment$WeighbridgeProfileFragment$elvSettings),
      cameraPreviewParameters: cameraPreviewParameters == _undefined
          ? _instance.cameraPreviewParameters
          : (cameraPreviewParameters as String?),
      weighbridgeGroup:
          weighbridgeGroup == _undefined || weighbridgeGroup == null
          ? _instance.weighbridgeGroup
          : (weighbridgeGroup as List<String>),
      canMode: canMode == _undefined || canMode == null
          ? _instance.canMode
          : (canMode as Fragment$WeighbridgeProfileFragment$canMode),
      ewcControl: ewcControl == _undefined || ewcControl == null
          ? _instance.ewcControl
          : (ewcControl as Fragment$EwcControlFragment),
      weighbridgeId: weighbridgeId == _undefined || weighbridgeId == null
          ? _instance.weighbridgeId
          : (weighbridgeId as String),
      environment: environment == _undefined || environment == null
          ? _instance.environment
          : (environment as String),
      instrumentationKey:
          instrumentationKey == _undefined || instrumentationKey == null
          ? _instance.instrumentationKey
          : (instrumentationKey as String),
      piPrintApiKey: piPrintApiKey == _undefined || piPrintApiKey == null
          ? _instance.piPrintApiKey
          : (piPrintApiKey as String),
      enableTicketSplit:
          enableTicketSplit == _undefined || enableTicketSplit == null
          ? _instance.enableTicketSplit
          : (enableTicketSplit as bool),
      showStockAsProduct:
          showStockAsProduct == _undefined || showStockAsProduct == null
          ? _instance.showStockAsProduct
          : (showStockAsProduct as bool),
      printTicketComments:
          printTicketComments == _undefined || printTicketComments == null
          ? _instance.printTicketComments
          : (printTicketComments as bool),
      printCheckWeight:
          printCheckWeight == _undefined || printCheckWeight == null
          ? _instance.printCheckWeight
          : (printCheckWeight as bool),
      vehicleDetailsRequired:
          vehicleDetailsRequired == _undefined || vehicleDetailsRequired == null
          ? _instance.vehicleDetailsRequired
          : (vehicleDetailsRequired as bool),
      enableWeighbridgePay:
          enableWeighbridgePay == _undefined || enableWeighbridgePay == null
          ? _instance.enableWeighbridgePay
          : (enableWeighbridgePay as bool),
      hwcnLevel: hwcnLevel == _undefined || hwcnLevel == null
          ? _instance.hwcnLevel
          : (hwcnLevel as Enum$HwcnLevel),
      autoHulkAffidavit:
          autoHulkAffidavit == _undefined || autoHulkAffidavit == null
          ? _instance.autoHulkAffidavit
          : (autoHulkAffidavit
                as Fragment$WeighbridgeProfileFragment$autoHulkAffidavit),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes allowedProducts(
    Iterable<Fragment$ProductFragment?>? Function(
      Iterable<CopyWith$Fragment$ProductFragment<Fragment$ProductFragment>?>?,
    )
    _fn,
  ) => call(
    allowedProducts: _fn(
      _instance.allowedProducts?.map(
        (e) =>
            e == null ? null : CopyWith$Fragment$ProductFragment(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes scales(
    Iterable<Fragment$WeighbridgeProfileFragment$scales> Function(
      Iterable<
        CopyWith$Fragment$WeighbridgeProfileFragment$scales<
          Fragment$WeighbridgeProfileFragment$scales
        >
      >,
    )
    _fn,
  ) => call(
    scales: _fn(
      _instance.scales.map(
        (e) => CopyWith$Fragment$WeighbridgeProfileFragment$scales(e, (i) => i),
      ),
    ).toList(),
  );

  TRes knownTares(
    Iterable<Fragment$WeighbridgeProfileFragment$knownTares> Function(
      Iterable<
        CopyWith$Fragment$WeighbridgeProfileFragment$knownTares<
          Fragment$WeighbridgeProfileFragment$knownTares
        >
      >,
    )
    _fn,
  ) => call(
    knownTares: _fn(
      _instance.knownTares.map(
        (e) => CopyWith$Fragment$WeighbridgeProfileFragment$knownTares(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith$Fragment$WeighbridgeProfileFragment$knownTareConfigurations<TRes>
  get knownTareConfigurations {
    final local$knownTareConfigurations = _instance.knownTareConfigurations;
    return CopyWith$Fragment$WeighbridgeProfileFragment$knownTareConfigurations(
      local$knownTareConfigurations,
      (e) => call(knownTareConfigurations: e),
    );
  }

  TRes ticketPrints(
    Iterable<Fragment$WeighbridgeProfileFragment$ticketPrints> Function(
      Iterable<
        CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints<
          Fragment$WeighbridgeProfileFragment$ticketPrints
        >
      >,
    )
    _fn,
  ) => call(
    ticketPrints: _fn(
      _instance.ticketPrints.map(
        (e) => CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith$Fragment$WeighbridgeProfileFragment$yardInformation<TRes>
  get yardInformation {
    final local$yardInformation = _instance.yardInformation;
    return CopyWith$Fragment$WeighbridgeProfileFragment$yardInformation(
      local$yardInformation,
      (e) => call(yardInformation: e),
    );
  }

  CopyWith$Fragment$WeighbridgeProfileFragment$pricingServicesConfig<TRes>
  get pricingServicesConfig {
    final local$pricingServicesConfig = _instance.pricingServicesConfig;
    return CopyWith$Fragment$WeighbridgeProfileFragment$pricingServicesConfig(
      local$pricingServicesConfig,
      (e) => call(pricingServicesConfig: e),
    );
  }

  CopyWith$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope<TRes>
  get ticketHeaderSearchScope {
    final local$ticketHeaderSearchScope = _instance.ticketHeaderSearchScope;
    return CopyWith$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope(
      local$ticketHeaderSearchScope,
      (e) => call(ticketHeaderSearchScope: e),
    );
  }

  CopyWith$Fragment$WeighbridgeProfileFragment$techemetCatSettings<TRes>
  get techemetCatSettings {
    final local$techemetCatSettings = _instance.techemetCatSettings;
    return CopyWith$Fragment$WeighbridgeProfileFragment$techemetCatSettings(
      local$techemetCatSettings,
      (e) => call(techemetCatSettings: e),
    );
  }

  CopyWith$Fragment$WeighbridgeProfileFragment$elvSettings<TRes>
  get elvSettings {
    final local$elvSettings = _instance.elvSettings;
    return CopyWith$Fragment$WeighbridgeProfileFragment$elvSettings(
      local$elvSettings,
      (e) => call(elvSettings: e),
    );
  }

  CopyWith$Fragment$WeighbridgeProfileFragment$canMode<TRes> get canMode {
    final local$canMode = _instance.canMode;
    return CopyWith$Fragment$WeighbridgeProfileFragment$canMode(
      local$canMode,
      (e) => call(canMode: e),
    );
  }

  CopyWith$Fragment$EwcControlFragment<TRes> get ewcControl {
    final local$ewcControl = _instance.ewcControl;
    return CopyWith$Fragment$EwcControlFragment(
      local$ewcControl,
      (e) => call(ewcControl: e),
    );
  }

  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit<TRes>
  get autoHulkAffidavit {
    final local$autoHulkAffidavit = _instance.autoHulkAffidavit;
    return CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit(
      local$autoHulkAffidavit,
      (e) => call(autoHulkAffidavit: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment<TRes>
    implements CopyWith$Fragment$WeighbridgeProfileFragment<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? yardId,
    String? name,
    String? yardCode,
    List<String>? allowedProductIds,
    List<Fragment$ProductFragment?>? allowedProducts,
    List<Fragment$WeighbridgeProfileFragment$scales>? scales,
    List<Fragment$WeighbridgeProfileFragment$knownTares>? knownTares,
    Fragment$WeighbridgeProfileFragment$knownTareConfigurations?
    knownTareConfigurations,
    List<Fragment$WeighbridgeProfileFragment$ticketPrints>? ticketPrints,
    bool? active,
    Fragment$WeighbridgeProfileFragment$yardInformation? yardInformation,
    String? currency,
    Enum$Uom? dirtDeductionUom,
    String? territoryCode,
    bool? enableManualWeight,
    bool? enableManualTareWeight,
    bool? enableCheckWeight,
    bool? publishTicketToTrade,
    bool? allowRollingWeights,
    bool? enableCreateNewLine,
    bool? enableTransferLine,
    bool? enablePublicWeigh,
    Enum$Uom? weighbridgeUom,
    double? rounding,
    Fragment$WeighbridgeProfileFragment$pricingServicesConfig?
    pricingServicesConfig,
    bool? enableContainerTicket,
    bool? allowAccountCreation,
    Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope?
    ticketHeaderSearchScope,
    Fragment$WeighbridgeProfileFragment$techemetCatSettings?
    techemetCatSettings,
    Fragment$WeighbridgeProfileFragment$elvSettings? elvSettings,
    String? cameraPreviewParameters,
    List<String>? weighbridgeGroup,
    Fragment$WeighbridgeProfileFragment$canMode? canMode,
    Fragment$EwcControlFragment? ewcControl,
    String? weighbridgeId,
    String? environment,
    String? instrumentationKey,
    String? piPrintApiKey,
    bool? enableTicketSplit,
    bool? showStockAsProduct,
    bool? printTicketComments,
    bool? printCheckWeight,
    bool? vehicleDetailsRequired,
    bool? enableWeighbridgePay,
    Enum$HwcnLevel? hwcnLevel,
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit? autoHulkAffidavit,
    String? $__typename,
  }) => _res;

  allowedProducts(_fn) => _res;

  scales(_fn) => _res;

  knownTares(_fn) => _res;

  CopyWith$Fragment$WeighbridgeProfileFragment$knownTareConfigurations<TRes>
  get knownTareConfigurations =>
      CopyWith$Fragment$WeighbridgeProfileFragment$knownTareConfigurations.stub(
        _res,
      );

  ticketPrints(_fn) => _res;

  CopyWith$Fragment$WeighbridgeProfileFragment$yardInformation<TRes>
  get yardInformation =>
      CopyWith$Fragment$WeighbridgeProfileFragment$yardInformation.stub(_res);

  CopyWith$Fragment$WeighbridgeProfileFragment$pricingServicesConfig<TRes>
  get pricingServicesConfig =>
      CopyWith$Fragment$WeighbridgeProfileFragment$pricingServicesConfig.stub(
        _res,
      );

  CopyWith$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope<TRes>
  get ticketHeaderSearchScope =>
      CopyWith$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope.stub(
        _res,
      );

  CopyWith$Fragment$WeighbridgeProfileFragment$techemetCatSettings<TRes>
  get techemetCatSettings =>
      CopyWith$Fragment$WeighbridgeProfileFragment$techemetCatSettings.stub(
        _res,
      );

  CopyWith$Fragment$WeighbridgeProfileFragment$elvSettings<TRes>
  get elvSettings =>
      CopyWith$Fragment$WeighbridgeProfileFragment$elvSettings.stub(_res);

  CopyWith$Fragment$WeighbridgeProfileFragment$canMode<TRes> get canMode =>
      CopyWith$Fragment$WeighbridgeProfileFragment$canMode.stub(_res);

  CopyWith$Fragment$EwcControlFragment<TRes> get ewcControl =>
      CopyWith$Fragment$EwcControlFragment.stub(_res);

  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit<TRes>
  get autoHulkAffidavit =>
      CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit.stub(_res);
}

const fragmentDefinitionWeighbridgeProfileFragment = FragmentDefinitionNode(
  name: NameNode(value: 'WeighbridgeProfileFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'WeighbridgeProfile'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'yardId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'yardCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'allowedProductIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'allowedProducts'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'ProductFragment'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'scales'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'url'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'assetCode'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'scaleNumber'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'cameras'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'imageUrl'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'videoUrl'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'overlayUrl'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'userName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'password'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'knownTares'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'value'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'value'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isRate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'mtValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'serialNo'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'comments'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'expiryDate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'knownTareConfigurations'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'saveKnownTares'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'knownTareExpiryDays'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'ticketPrints'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'headerText'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'numberOfCopies'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'printer'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'printForTicketDirections'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'ticketPrintType'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'templateName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'showWeightMode'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'active'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'yardInformation'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'wmlExemptionNo'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'wasteCarrierRegNo'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'currency'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'dirtDeductionUom'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'territoryCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enableManualWeight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enableManualTareWeight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enableCheckWeight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'publishTicketToTrade'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'allowRollingWeights'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enableCreateNewLine'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enableTransferLine'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enablePublicWeigh'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'weighbridgeUom'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'rounding'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'pricingServicesConfig'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'businessAccount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'interDepot'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'retailAccount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'enableContainerTicket'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'allowAccountCreation'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ticketHeaderSearchScope'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'accounts'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'tickets'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'transportJobs'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'contracts'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'elvQuotes'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'techemetCatSettings'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'enabled'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'defaultWeight'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'defaultWeightUom'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'defaultProductId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'defaultLocationId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'defaultProduct'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ProductFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'defaultLocation'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'LocationFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'elvSettings'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'productId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'product'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ProductFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'locationId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'location'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'LocationFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'enforceELVInspectionForLeadSources'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'cameraPreviewParameters'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'weighbridgeGroup'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'canMode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'enabled'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'productId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'locationId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'product'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ProductFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'location'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'LocationFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'ewcControl'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'EwcControlFragment'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'weighbridgeId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'environment'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'instrumentationKey'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'piPrintApiKey'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enableTicketSplit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'showStockAsProduct'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'printTicketComments'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'printCheckWeight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'vehicleDetailsRequired'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enableWeighbridgePay'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'hwcnLevel'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'autoHulkAffidavit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'enabled'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'allowedProductIds'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'allowedProducts'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'code'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'active'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'created'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'userName'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ],
                    ),
                  ),
                  FieldNode(
                    name: NameNode(value: 'modified'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'userName'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ],
                    ),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentWeighbridgeProfileFragment = DocumentNode(
  definitions: [
    fragmentDefinitionWeighbridgeProfileFragment,
    fragmentDefinitionProductFragment,
    fragmentDefinitionLocationFragment,
    fragmentDefinitionEwcControlFragment,
    fragmentDefinitionCommoditySourceTypesFragment,
  ],
);

class Fragment$WeighbridgeProfileFragment$scales {
  Fragment$WeighbridgeProfileFragment$scales({
    required this.name,
    required this.url,
    required this.assetCode,
    required this.scaleNumber,
    required this.cameras,
    this.$__typename = 'Scale',
  });

  factory Fragment$WeighbridgeProfileFragment$scales.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$url = json['url'];
    final l$assetCode = json['assetCode'];
    final l$scaleNumber = json['scaleNumber'];
    final l$cameras = json['cameras'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$scales(
      name: (l$name as String),
      url: (l$url as String),
      assetCode: (l$assetCode as String),
      scaleNumber: (l$scaleNumber as int),
      cameras: (l$cameras as List<dynamic>)
          .map(
            (e) => Fragment$WeighbridgeProfileFragment$scales$cameras.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String url;

  final String assetCode;

  final int scaleNumber;

  final List<Fragment$WeighbridgeProfileFragment$scales$cameras> cameras;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$scaleNumber = scaleNumber;
    _resultData['scaleNumber'] = l$scaleNumber;
    final l$cameras = cameras;
    _resultData['cameras'] = l$cameras.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$url = url;
    final l$assetCode = assetCode;
    final l$scaleNumber = scaleNumber;
    final l$cameras = cameras;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$url,
      l$assetCode,
      l$scaleNumber,
      Object.hashAll(l$cameras.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$scales ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$scaleNumber = scaleNumber;
    final lOther$scaleNumber = other.scaleNumber;
    if (l$scaleNumber != lOther$scaleNumber) {
      return false;
    }
    final l$cameras = cameras;
    final lOther$cameras = other.cameras;
    if (l$cameras.length != lOther$cameras.length) {
      return false;
    }
    for (int i = 0; i < l$cameras.length; i++) {
      final l$cameras$entry = l$cameras[i];
      final lOther$cameras$entry = lOther$cameras[i];
      if (l$cameras$entry != lOther$cameras$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$scales
    on Fragment$WeighbridgeProfileFragment$scales {
  CopyWith$Fragment$WeighbridgeProfileFragment$scales<
    Fragment$WeighbridgeProfileFragment$scales
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$scales(this, (i) => i);
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$scales<TRes> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$scales(
    Fragment$WeighbridgeProfileFragment$scales instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$scales) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$scales;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$scales.stub(TRes res) =
      _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$scales;

  TRes call({
    String? name,
    String? url,
    String? assetCode,
    int? scaleNumber,
    List<Fragment$WeighbridgeProfileFragment$scales$cameras>? cameras,
    String? $__typename,
  });
  TRes cameras(
    Iterable<Fragment$WeighbridgeProfileFragment$scales$cameras> Function(
      Iterable<
        CopyWith$Fragment$WeighbridgeProfileFragment$scales$cameras<
          Fragment$WeighbridgeProfileFragment$scales$cameras
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$scales<TRes>
    implements CopyWith$Fragment$WeighbridgeProfileFragment$scales<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$scales(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$scales _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment$scales) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? url = _undefined,
    Object? assetCode = _undefined,
    Object? scaleNumber = _undefined,
    Object? cameras = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$scales(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      url: url == _undefined || url == null ? _instance.url : (url as String),
      assetCode: assetCode == _undefined || assetCode == null
          ? _instance.assetCode
          : (assetCode as String),
      scaleNumber: scaleNumber == _undefined || scaleNumber == null
          ? _instance.scaleNumber
          : (scaleNumber as int),
      cameras: cameras == _undefined || cameras == null
          ? _instance.cameras
          : (cameras
                as List<Fragment$WeighbridgeProfileFragment$scales$cameras>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes cameras(
    Iterable<Fragment$WeighbridgeProfileFragment$scales$cameras> Function(
      Iterable<
        CopyWith$Fragment$WeighbridgeProfileFragment$scales$cameras<
          Fragment$WeighbridgeProfileFragment$scales$cameras
        >
      >,
    )
    _fn,
  ) => call(
    cameras: _fn(
      _instance.cameras.map(
        (e) => CopyWith$Fragment$WeighbridgeProfileFragment$scales$cameras(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$scales<TRes>
    implements CopyWith$Fragment$WeighbridgeProfileFragment$scales<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$scales(this._res);

  TRes _res;

  call({
    String? name,
    String? url,
    String? assetCode,
    int? scaleNumber,
    List<Fragment$WeighbridgeProfileFragment$scales$cameras>? cameras,
    String? $__typename,
  }) => _res;

  cameras(_fn) => _res;
}

class Fragment$WeighbridgeProfileFragment$scales$cameras {
  Fragment$WeighbridgeProfileFragment$scales$cameras({
    required this.name,
    this.imageUrl,
    this.videoUrl,
    this.overlayUrl,
    required this.userName,
    required this.password,
    this.$__typename = 'Camera',
  });

  factory Fragment$WeighbridgeProfileFragment$scales$cameras.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$imageUrl = json['imageUrl'];
    final l$videoUrl = json['videoUrl'];
    final l$overlayUrl = json['overlayUrl'];
    final l$userName = json['userName'];
    final l$password = json['password'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$scales$cameras(
      name: (l$name as String),
      imageUrl: (l$imageUrl as String?),
      videoUrl: (l$videoUrl as String?),
      overlayUrl: (l$overlayUrl as String?),
      userName: (l$userName as String),
      password: (l$password as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? imageUrl;

  final String? videoUrl;

  final String? overlayUrl;

  final String userName;

  final String password;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$imageUrl = imageUrl;
    _resultData['imageUrl'] = l$imageUrl;
    final l$videoUrl = videoUrl;
    _resultData['videoUrl'] = l$videoUrl;
    final l$overlayUrl = overlayUrl;
    _resultData['overlayUrl'] = l$overlayUrl;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$password = password;
    _resultData['password'] = l$password;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$imageUrl = imageUrl;
    final l$videoUrl = videoUrl;
    final l$overlayUrl = overlayUrl;
    final l$userName = userName;
    final l$password = password;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$imageUrl,
      l$videoUrl,
      l$overlayUrl,
      l$userName,
      l$password,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$scales$cameras ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$imageUrl = imageUrl;
    final lOther$imageUrl = other.imageUrl;
    if (l$imageUrl != lOther$imageUrl) {
      return false;
    }
    final l$videoUrl = videoUrl;
    final lOther$videoUrl = other.videoUrl;
    if (l$videoUrl != lOther$videoUrl) {
      return false;
    }
    final l$overlayUrl = overlayUrl;
    final lOther$overlayUrl = other.overlayUrl;
    if (l$overlayUrl != lOther$overlayUrl) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$scales$cameras
    on Fragment$WeighbridgeProfileFragment$scales$cameras {
  CopyWith$Fragment$WeighbridgeProfileFragment$scales$cameras<
    Fragment$WeighbridgeProfileFragment$scales$cameras
  >
  get copyWith => CopyWith$Fragment$WeighbridgeProfileFragment$scales$cameras(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$scales$cameras<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$scales$cameras(
    Fragment$WeighbridgeProfileFragment$scales$cameras instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$scales$cameras) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$scales$cameras;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$scales$cameras.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$scales$cameras;

  TRes call({
    String? name,
    String? imageUrl,
    String? videoUrl,
    String? overlayUrl,
    String? userName,
    String? password,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$scales$cameras<TRes>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$scales$cameras<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$scales$cameras(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$scales$cameras _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment$scales$cameras) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? imageUrl = _undefined,
    Object? videoUrl = _undefined,
    Object? overlayUrl = _undefined,
    Object? userName = _undefined,
    Object? password = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$scales$cameras(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      imageUrl: imageUrl == _undefined
          ? _instance.imageUrl
          : (imageUrl as String?),
      videoUrl: videoUrl == _undefined
          ? _instance.videoUrl
          : (videoUrl as String?),
      overlayUrl: overlayUrl == _undefined
          ? _instance.overlayUrl
          : (overlayUrl as String?),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      password: password == _undefined || password == null
          ? _instance.password
          : (password as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$scales$cameras<TRes>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$scales$cameras<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$scales$cameras(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? imageUrl,
    String? videoUrl,
    String? overlayUrl,
    String? userName,
    String? password,
    String? $__typename,
  }) => _res;
}

class Fragment$WeighbridgeProfileFragment$knownTares {
  Fragment$WeighbridgeProfileFragment$knownTares({
    required this.value,
    this.serialNo,
    this.comments,
    this.expiryDate,
    this.$__typename = 'WeightDeduction',
  });

  factory Fragment$WeighbridgeProfileFragment$knownTares.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$serialNo = json['serialNo'];
    final l$comments = json['comments'];
    final l$expiryDate = json['expiryDate'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$knownTares(
      value: Fragment$WeighbridgeProfileFragment$knownTares$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      serialNo: (l$serialNo as String?),
      comments: (l$comments as String?),
      expiryDate: l$expiryDate == null
          ? null
          : DateTime.parse((l$expiryDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$WeighbridgeProfileFragment$knownTares$value value;

  final String? serialNo;

  final String? comments;

  final DateTime? expiryDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$serialNo = serialNo;
    _resultData['serialNo'] = l$serialNo;
    final l$comments = comments;
    _resultData['comments'] = l$comments;
    final l$expiryDate = expiryDate;
    _resultData['expiryDate'] = l$expiryDate?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$serialNo = serialNo;
    final l$comments = comments;
    final l$expiryDate = expiryDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$serialNo,
      l$comments,
      l$expiryDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$knownTares ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$serialNo = serialNo;
    final lOther$serialNo = other.serialNo;
    if (l$serialNo != lOther$serialNo) {
      return false;
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments != lOther$comments) {
      return false;
    }
    final l$expiryDate = expiryDate;
    final lOther$expiryDate = other.expiryDate;
    if (l$expiryDate != lOther$expiryDate) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$knownTares
    on Fragment$WeighbridgeProfileFragment$knownTares {
  CopyWith$Fragment$WeighbridgeProfileFragment$knownTares<
    Fragment$WeighbridgeProfileFragment$knownTares
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$knownTares(this, (i) => i);
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$knownTares<TRes> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$knownTares(
    Fragment$WeighbridgeProfileFragment$knownTares instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$knownTares) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$knownTares;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$knownTares.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$knownTares;

  TRes call({
    Fragment$WeighbridgeProfileFragment$knownTares$value? value,
    String? serialNo,
    String? comments,
    DateTime? expiryDate,
    String? $__typename,
  });
  CopyWith$Fragment$WeighbridgeProfileFragment$knownTares$value<TRes> get value;
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$knownTares<TRes>
    implements CopyWith$Fragment$WeighbridgeProfileFragment$knownTares<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$knownTares(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$knownTares _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment$knownTares) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? serialNo = _undefined,
    Object? comments = _undefined,
    Object? expiryDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$knownTares(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Fragment$WeighbridgeProfileFragment$knownTares$value),
      serialNo: serialNo == _undefined
          ? _instance.serialNo
          : (serialNo as String?),
      comments: comments == _undefined
          ? _instance.comments
          : (comments as String?),
      expiryDate: expiryDate == _undefined
          ? _instance.expiryDate
          : (expiryDate as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$WeighbridgeProfileFragment$knownTares$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Fragment$WeighbridgeProfileFragment$knownTares$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$knownTares<TRes>
    implements CopyWith$Fragment$WeighbridgeProfileFragment$knownTares<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$knownTares(this._res);

  TRes _res;

  call({
    Fragment$WeighbridgeProfileFragment$knownTares$value? value,
    String? serialNo,
    String? comments,
    DateTime? expiryDate,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$WeighbridgeProfileFragment$knownTares$value<TRes>
  get value =>
      CopyWith$Fragment$WeighbridgeProfileFragment$knownTares$value.stub(_res);
}

class Fragment$WeighbridgeProfileFragment$knownTares$value {
  Fragment$WeighbridgeProfileFragment$knownTares$value({
    required this.uom,
    required this.value,
    required this.isRate,
    required this.id,
    required this.mtValue,
    this.$__typename = 'UomValue',
  });

  factory Fragment$WeighbridgeProfileFragment$knownTares$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$isRate = json['isRate'];
    final l$id = json['id'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$knownTares$value(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      isRate: (l$isRate as bool),
      id: (l$id as int),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final bool isRate;

  final int id;

  final double mtValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$isRate = isRate;
    final l$id = id;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$isRate,
      l$id,
      l$mtValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$knownTares$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$isRate = isRate;
    final lOther$isRate = other.isRate;
    if (l$isRate != lOther$isRate) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mtValue = mtValue;
    final lOther$mtValue = other.mtValue;
    if (l$mtValue != lOther$mtValue) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$knownTares$value
    on Fragment$WeighbridgeProfileFragment$knownTares$value {
  CopyWith$Fragment$WeighbridgeProfileFragment$knownTares$value<
    Fragment$WeighbridgeProfileFragment$knownTares$value
  >
  get copyWith => CopyWith$Fragment$WeighbridgeProfileFragment$knownTares$value(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$knownTares$value<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$knownTares$value(
    Fragment$WeighbridgeProfileFragment$knownTares$value instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$knownTares$value) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$knownTares$value;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$knownTares$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$knownTares$value;

  TRes call({
    Enum$Uom? uom,
    double? value,
    bool? isRate,
    int? id,
    double? mtValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$knownTares$value<TRes>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$knownTares$value<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$knownTares$value(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$knownTares$value _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment$knownTares$value)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? isRate = _undefined,
    Object? id = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$knownTares$value(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$knownTares$value<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$knownTares$value<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$knownTares$value(
    this._res,
  );

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    bool? isRate,
    int? id,
    double? mtValue,
    String? $__typename,
  }) => _res;
}

class Fragment$WeighbridgeProfileFragment$knownTareConfigurations {
  Fragment$WeighbridgeProfileFragment$knownTareConfigurations({
    required this.saveKnownTares,
    this.knownTareExpiryDays,
    this.$__typename = 'KnownTareConfigurations',
  });

  factory Fragment$WeighbridgeProfileFragment$knownTareConfigurations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$saveKnownTares = json['saveKnownTares'];
    final l$knownTareExpiryDays = json['knownTareExpiryDays'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$knownTareConfigurations(
      saveKnownTares: (l$saveKnownTares as bool),
      knownTareExpiryDays: (l$knownTareExpiryDays as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool saveKnownTares;

  final int? knownTareExpiryDays;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveKnownTares = saveKnownTares;
    _resultData['saveKnownTares'] = l$saveKnownTares;
    final l$knownTareExpiryDays = knownTareExpiryDays;
    _resultData['knownTareExpiryDays'] = l$knownTareExpiryDays;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveKnownTares = saveKnownTares;
    final l$knownTareExpiryDays = knownTareExpiryDays;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$saveKnownTares,
      l$knownTareExpiryDays,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$knownTareConfigurations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveKnownTares = saveKnownTares;
    final lOther$saveKnownTares = other.saveKnownTares;
    if (l$saveKnownTares != lOther$saveKnownTares) {
      return false;
    }
    final l$knownTareExpiryDays = knownTareExpiryDays;
    final lOther$knownTareExpiryDays = other.knownTareExpiryDays;
    if (l$knownTareExpiryDays != lOther$knownTareExpiryDays) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$knownTareConfigurations
    on Fragment$WeighbridgeProfileFragment$knownTareConfigurations {
  CopyWith$Fragment$WeighbridgeProfileFragment$knownTareConfigurations<
    Fragment$WeighbridgeProfileFragment$knownTareConfigurations
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$knownTareConfigurations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$knownTareConfigurations<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$knownTareConfigurations(
    Fragment$WeighbridgeProfileFragment$knownTareConfigurations instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$knownTareConfigurations)
    then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$knownTareConfigurations;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$knownTareConfigurations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$knownTareConfigurations;

  TRes call({
    bool? saveKnownTares,
    int? knownTareExpiryDays,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$knownTareConfigurations<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$knownTareConfigurations<
          TRes
        > {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$knownTareConfigurations(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$knownTareConfigurations _instance;

  final TRes Function(
    Fragment$WeighbridgeProfileFragment$knownTareConfigurations,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveKnownTares = _undefined,
    Object? knownTareExpiryDays = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$knownTareConfigurations(
      saveKnownTares: saveKnownTares == _undefined || saveKnownTares == null
          ? _instance.saveKnownTares
          : (saveKnownTares as bool),
      knownTareExpiryDays: knownTareExpiryDays == _undefined
          ? _instance.knownTareExpiryDays
          : (knownTareExpiryDays as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$knownTareConfigurations<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$knownTareConfigurations<
          TRes
        > {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$knownTareConfigurations(
    this._res,
  );

  TRes _res;

  call({bool? saveKnownTares, int? knownTareExpiryDays, String? $__typename}) =>
      _res;
}

class Fragment$WeighbridgeProfileFragment$ticketPrints {
  Fragment$WeighbridgeProfileFragment$ticketPrints({
    required this.name,
    required this.headerText,
    required this.numberOfCopies,
    required this.printer,
    required this.printForTicketDirections,
    required this.ticketPrintType,
    required this.templateName,
    required this.showWeightMode,
    this.$__typename = 'TicketPrint',
  });

  factory Fragment$WeighbridgeProfileFragment$ticketPrints.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$headerText = json['headerText'];
    final l$numberOfCopies = json['numberOfCopies'];
    final l$printer = json['printer'];
    final l$printForTicketDirections = json['printForTicketDirections'];
    final l$ticketPrintType = json['ticketPrintType'];
    final l$templateName = json['templateName'];
    final l$showWeightMode = json['showWeightMode'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$ticketPrints(
      name: (l$name as String),
      headerText: (l$headerText as String),
      numberOfCopies: (l$numberOfCopies as int),
      printer:
          Fragment$WeighbridgeProfileFragment$ticketPrints$printer.fromJson(
            (l$printer as Map<String, dynamic>),
          ),
      printForTicketDirections: fromJson$Enum$PrintForTicketDirections(
        (l$printForTicketDirections as String),
      ),
      ticketPrintType: fromJson$Enum$TicketPrintType(
        (l$ticketPrintType as String),
      ),
      templateName: (l$templateName as String),
      showWeightMode: fromJson$Enum$ShowWeightMode(
        (l$showWeightMode as String),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String headerText;

  final int numberOfCopies;

  final Fragment$WeighbridgeProfileFragment$ticketPrints$printer printer;

  final Enum$PrintForTicketDirections printForTicketDirections;

  final Enum$TicketPrintType ticketPrintType;

  final String templateName;

  final Enum$ShowWeightMode showWeightMode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$headerText = headerText;
    _resultData['headerText'] = l$headerText;
    final l$numberOfCopies = numberOfCopies;
    _resultData['numberOfCopies'] = l$numberOfCopies;
    final l$printer = printer;
    _resultData['printer'] = l$printer.toJson();
    final l$printForTicketDirections = printForTicketDirections;
    _resultData['printForTicketDirections'] =
        toJson$Enum$PrintForTicketDirections(l$printForTicketDirections);
    final l$ticketPrintType = ticketPrintType;
    _resultData['ticketPrintType'] = toJson$Enum$TicketPrintType(
      l$ticketPrintType,
    );
    final l$templateName = templateName;
    _resultData['templateName'] = l$templateName;
    final l$showWeightMode = showWeightMode;
    _resultData['showWeightMode'] = toJson$Enum$ShowWeightMode(
      l$showWeightMode,
    );
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$headerText = headerText;
    final l$numberOfCopies = numberOfCopies;
    final l$printer = printer;
    final l$printForTicketDirections = printForTicketDirections;
    final l$ticketPrintType = ticketPrintType;
    final l$templateName = templateName;
    final l$showWeightMode = showWeightMode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$headerText,
      l$numberOfCopies,
      l$printer,
      l$printForTicketDirections,
      l$ticketPrintType,
      l$templateName,
      l$showWeightMode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$ticketPrints ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$headerText = headerText;
    final lOther$headerText = other.headerText;
    if (l$headerText != lOther$headerText) {
      return false;
    }
    final l$numberOfCopies = numberOfCopies;
    final lOther$numberOfCopies = other.numberOfCopies;
    if (l$numberOfCopies != lOther$numberOfCopies) {
      return false;
    }
    final l$printer = printer;
    final lOther$printer = other.printer;
    if (l$printer != lOther$printer) {
      return false;
    }
    final l$printForTicketDirections = printForTicketDirections;
    final lOther$printForTicketDirections = other.printForTicketDirections;
    if (l$printForTicketDirections != lOther$printForTicketDirections) {
      return false;
    }
    final l$ticketPrintType = ticketPrintType;
    final lOther$ticketPrintType = other.ticketPrintType;
    if (l$ticketPrintType != lOther$ticketPrintType) {
      return false;
    }
    final l$templateName = templateName;
    final lOther$templateName = other.templateName;
    if (l$templateName != lOther$templateName) {
      return false;
    }
    final l$showWeightMode = showWeightMode;
    final lOther$showWeightMode = other.showWeightMode;
    if (l$showWeightMode != lOther$showWeightMode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$ticketPrints
    on Fragment$WeighbridgeProfileFragment$ticketPrints {
  CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints<
    Fragment$WeighbridgeProfileFragment$ticketPrints
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints(this, (i) => i);
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints<TRes> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints(
    Fragment$WeighbridgeProfileFragment$ticketPrints instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$ticketPrints) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$ticketPrints;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$ticketPrints;

  TRes call({
    String? name,
    String? headerText,
    int? numberOfCopies,
    Fragment$WeighbridgeProfileFragment$ticketPrints$printer? printer,
    Enum$PrintForTicketDirections? printForTicketDirections,
    Enum$TicketPrintType? ticketPrintType,
    String? templateName,
    Enum$ShowWeightMode? showWeightMode,
    String? $__typename,
  });
  CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints$printer<TRes>
  get printer;
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$ticketPrints<TRes>
    implements CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$ticketPrints(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$ticketPrints _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment$ticketPrints) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? headerText = _undefined,
    Object? numberOfCopies = _undefined,
    Object? printer = _undefined,
    Object? printForTicketDirections = _undefined,
    Object? ticketPrintType = _undefined,
    Object? templateName = _undefined,
    Object? showWeightMode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$ticketPrints(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      headerText: headerText == _undefined || headerText == null
          ? _instance.headerText
          : (headerText as String),
      numberOfCopies: numberOfCopies == _undefined || numberOfCopies == null
          ? _instance.numberOfCopies
          : (numberOfCopies as int),
      printer: printer == _undefined || printer == null
          ? _instance.printer
          : (printer
                as Fragment$WeighbridgeProfileFragment$ticketPrints$printer),
      printForTicketDirections:
          printForTicketDirections == _undefined ||
              printForTicketDirections == null
          ? _instance.printForTicketDirections
          : (printForTicketDirections as Enum$PrintForTicketDirections),
      ticketPrintType: ticketPrintType == _undefined || ticketPrintType == null
          ? _instance.ticketPrintType
          : (ticketPrintType as Enum$TicketPrintType),
      templateName: templateName == _undefined || templateName == null
          ? _instance.templateName
          : (templateName as String),
      showWeightMode: showWeightMode == _undefined || showWeightMode == null
          ? _instance.showWeightMode
          : (showWeightMode as Enum$ShowWeightMode),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints$printer<TRes>
  get printer {
    final local$printer = _instance.printer;
    return CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints$printer(
      local$printer,
      (e) => call(printer: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$ticketPrints<TRes>
    implements CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$ticketPrints(this._res);

  TRes _res;

  call({
    String? name,
    String? headerText,
    int? numberOfCopies,
    Fragment$WeighbridgeProfileFragment$ticketPrints$printer? printer,
    Enum$PrintForTicketDirections? printForTicketDirections,
    Enum$TicketPrintType? ticketPrintType,
    String? templateName,
    Enum$ShowWeightMode? showWeightMode,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints$printer<TRes>
  get printer =>
      CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints$printer.stub(
        _res,
      );
}

class Fragment$WeighbridgeProfileFragment$ticketPrints$printer {
  Fragment$WeighbridgeProfileFragment$ticketPrints$printer({
    required this.name,
    required this.url,
    this.$__typename = 'Printer',
  });

  factory Fragment$WeighbridgeProfileFragment$ticketPrints$printer.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$ticketPrints$printer(
      name: (l$name as String),
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$ticketPrints$printer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$ticketPrints$printer
    on Fragment$WeighbridgeProfileFragment$ticketPrints$printer {
  CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints$printer<
    Fragment$WeighbridgeProfileFragment$ticketPrints$printer
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints$printer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints$printer<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints$printer(
    Fragment$WeighbridgeProfileFragment$ticketPrints$printer instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$ticketPrints$printer)
    then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$ticketPrints$printer;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints$printer.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$ticketPrints$printer;

  TRes call({String? name, String? url, String? $__typename});
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$ticketPrints$printer<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints$printer<
          TRes
        > {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$ticketPrints$printer(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$ticketPrints$printer _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment$ticketPrints$printer)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$ticketPrints$printer(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$ticketPrints$printer<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$ticketPrints$printer<
          TRes
        > {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$ticketPrints$printer(
    this._res,
  );

  TRes _res;

  call({String? name, String? url, String? $__typename}) => _res;
}

class Fragment$WeighbridgeProfileFragment$yardInformation {
  Fragment$WeighbridgeProfileFragment$yardInformation({
    this.wmlExemptionNo,
    this.wasteCarrierRegNo,
    this.$__typename = 'YardInformation',
  });

  factory Fragment$WeighbridgeProfileFragment$yardInformation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$wmlExemptionNo = json['wmlExemptionNo'];
    final l$wasteCarrierRegNo = json['wasteCarrierRegNo'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$yardInformation(
      wmlExemptionNo: (l$wmlExemptionNo as String?),
      wasteCarrierRegNo: (l$wasteCarrierRegNo as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? wmlExemptionNo;

  final String? wasteCarrierRegNo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$wmlExemptionNo = wmlExemptionNo;
    _resultData['wmlExemptionNo'] = l$wmlExemptionNo;
    final l$wasteCarrierRegNo = wasteCarrierRegNo;
    _resultData['wasteCarrierRegNo'] = l$wasteCarrierRegNo;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$wmlExemptionNo = wmlExemptionNo;
    final l$wasteCarrierRegNo = wasteCarrierRegNo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$wmlExemptionNo,
      l$wasteCarrierRegNo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$yardInformation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$wmlExemptionNo = wmlExemptionNo;
    final lOther$wmlExemptionNo = other.wmlExemptionNo;
    if (l$wmlExemptionNo != lOther$wmlExemptionNo) {
      return false;
    }
    final l$wasteCarrierRegNo = wasteCarrierRegNo;
    final lOther$wasteCarrierRegNo = other.wasteCarrierRegNo;
    if (l$wasteCarrierRegNo != lOther$wasteCarrierRegNo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$yardInformation
    on Fragment$WeighbridgeProfileFragment$yardInformation {
  CopyWith$Fragment$WeighbridgeProfileFragment$yardInformation<
    Fragment$WeighbridgeProfileFragment$yardInformation
  >
  get copyWith => CopyWith$Fragment$WeighbridgeProfileFragment$yardInformation(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$yardInformation<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$yardInformation(
    Fragment$WeighbridgeProfileFragment$yardInformation instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$yardInformation) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$yardInformation;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$yardInformation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$yardInformation;

  TRes call({
    String? wmlExemptionNo,
    String? wasteCarrierRegNo,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$yardInformation<TRes>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$yardInformation<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$yardInformation(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$yardInformation _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment$yardInformation)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? wmlExemptionNo = _undefined,
    Object? wasteCarrierRegNo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$yardInformation(
      wmlExemptionNo: wmlExemptionNo == _undefined
          ? _instance.wmlExemptionNo
          : (wmlExemptionNo as String?),
      wasteCarrierRegNo: wasteCarrierRegNo == _undefined
          ? _instance.wasteCarrierRegNo
          : (wasteCarrierRegNo as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$yardInformation<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$yardInformation<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$yardInformation(
    this._res,
  );

  TRes _res;

  call({
    String? wmlExemptionNo,
    String? wasteCarrierRegNo,
    String? $__typename,
  }) => _res;
}

class Fragment$WeighbridgeProfileFragment$pricingServicesConfig {
  Fragment$WeighbridgeProfileFragment$pricingServicesConfig({
    required this.businessAccount,
    required this.interDepot,
    required this.retailAccount,
    this.$__typename = 'PricingServicesConfig',
  });

  factory Fragment$WeighbridgeProfileFragment$pricingServicesConfig.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$businessAccount = json['businessAccount'];
    final l$interDepot = json['interDepot'];
    final l$retailAccount = json['retailAccount'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$pricingServicesConfig(
      businessAccount: (l$businessAccount as bool),
      interDepot: (l$interDepot as bool),
      retailAccount: (l$retailAccount as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool businessAccount;

  final bool interDepot;

  final bool retailAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$businessAccount = businessAccount;
    _resultData['businessAccount'] = l$businessAccount;
    final l$interDepot = interDepot;
    _resultData['interDepot'] = l$interDepot;
    final l$retailAccount = retailAccount;
    _resultData['retailAccount'] = l$retailAccount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$businessAccount = businessAccount;
    final l$interDepot = interDepot;
    final l$retailAccount = retailAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$businessAccount,
      l$interDepot,
      l$retailAccount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$pricingServicesConfig ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$businessAccount = businessAccount;
    final lOther$businessAccount = other.businessAccount;
    if (l$businessAccount != lOther$businessAccount) {
      return false;
    }
    final l$interDepot = interDepot;
    final lOther$interDepot = other.interDepot;
    if (l$interDepot != lOther$interDepot) {
      return false;
    }
    final l$retailAccount = retailAccount;
    final lOther$retailAccount = other.retailAccount;
    if (l$retailAccount != lOther$retailAccount) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$pricingServicesConfig
    on Fragment$WeighbridgeProfileFragment$pricingServicesConfig {
  CopyWith$Fragment$WeighbridgeProfileFragment$pricingServicesConfig<
    Fragment$WeighbridgeProfileFragment$pricingServicesConfig
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$pricingServicesConfig(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$pricingServicesConfig<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$pricingServicesConfig(
    Fragment$WeighbridgeProfileFragment$pricingServicesConfig instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$pricingServicesConfig)
    then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$pricingServicesConfig;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$pricingServicesConfig.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$pricingServicesConfig;

  TRes call({
    bool? businessAccount,
    bool? interDepot,
    bool? retailAccount,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$pricingServicesConfig<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$pricingServicesConfig<
          TRes
        > {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$pricingServicesConfig(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$pricingServicesConfig _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment$pricingServicesConfig)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? businessAccount = _undefined,
    Object? interDepot = _undefined,
    Object? retailAccount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$pricingServicesConfig(
      businessAccount: businessAccount == _undefined || businessAccount == null
          ? _instance.businessAccount
          : (businessAccount as bool),
      interDepot: interDepot == _undefined || interDepot == null
          ? _instance.interDepot
          : (interDepot as bool),
      retailAccount: retailAccount == _undefined || retailAccount == null
          ? _instance.retailAccount
          : (retailAccount as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$pricingServicesConfig<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$pricingServicesConfig<
          TRes
        > {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$pricingServicesConfig(
    this._res,
  );

  TRes _res;

  call({
    bool? businessAccount,
    bool? interDepot,
    bool? retailAccount,
    String? $__typename,
  }) => _res;
}

class Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope {
  Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope({
    required this.accounts,
    required this.tickets,
    required this.transportJobs,
    required this.contracts,
    required this.elvQuotes,
    this.$__typename = 'TicketHeaderSearchScope',
  });

  factory Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accounts = json['accounts'];
    final l$tickets = json['tickets'];
    final l$transportJobs = json['transportJobs'];
    final l$contracts = json['contracts'];
    final l$elvQuotes = json['elvQuotes'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope(
      accounts: (l$accounts as bool),
      tickets: (l$tickets as bool),
      transportJobs: (l$transportJobs as bool),
      contracts: (l$contracts as bool),
      elvQuotes: (l$elvQuotes as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool accounts;

  final bool tickets;

  final bool transportJobs;

  final bool contracts;

  final bool elvQuotes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accounts = accounts;
    _resultData['accounts'] = l$accounts;
    final l$tickets = tickets;
    _resultData['tickets'] = l$tickets;
    final l$transportJobs = transportJobs;
    _resultData['transportJobs'] = l$transportJobs;
    final l$contracts = contracts;
    _resultData['contracts'] = l$contracts;
    final l$elvQuotes = elvQuotes;
    _resultData['elvQuotes'] = l$elvQuotes;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accounts = accounts;
    final l$tickets = tickets;
    final l$transportJobs = transportJobs;
    final l$contracts = contracts;
    final l$elvQuotes = elvQuotes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accounts,
      l$tickets,
      l$transportJobs,
      l$contracts,
      l$elvQuotes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accounts = accounts;
    final lOther$accounts = other.accounts;
    if (l$accounts != lOther$accounts) {
      return false;
    }
    final l$tickets = tickets;
    final lOther$tickets = other.tickets;
    if (l$tickets != lOther$tickets) {
      return false;
    }
    final l$transportJobs = transportJobs;
    final lOther$transportJobs = other.transportJobs;
    if (l$transportJobs != lOther$transportJobs) {
      return false;
    }
    final l$contracts = contracts;
    final lOther$contracts = other.contracts;
    if (l$contracts != lOther$contracts) {
      return false;
    }
    final l$elvQuotes = elvQuotes;
    final lOther$elvQuotes = other.elvQuotes;
    if (l$elvQuotes != lOther$elvQuotes) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope
    on Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope {
  CopyWith$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope<
    Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope(
    Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope)
    then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope;

  TRes call({
    bool? accounts,
    bool? tickets,
    bool? transportJobs,
    bool? contracts,
    bool? elvQuotes,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope<
          TRes
        > {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope _instance;

  final TRes Function(
    Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accounts = _undefined,
    Object? tickets = _undefined,
    Object? transportJobs = _undefined,
    Object? contracts = _undefined,
    Object? elvQuotes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope(
      accounts: accounts == _undefined || accounts == null
          ? _instance.accounts
          : (accounts as bool),
      tickets: tickets == _undefined || tickets == null
          ? _instance.tickets
          : (tickets as bool),
      transportJobs: transportJobs == _undefined || transportJobs == null
          ? _instance.transportJobs
          : (transportJobs as bool),
      contracts: contracts == _undefined || contracts == null
          ? _instance.contracts
          : (contracts as bool),
      elvQuotes: elvQuotes == _undefined || elvQuotes == null
          ? _instance.elvQuotes
          : (elvQuotes as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope<
          TRes
        > {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$ticketHeaderSearchScope(
    this._res,
  );

  TRes _res;

  call({
    bool? accounts,
    bool? tickets,
    bool? transportJobs,
    bool? contracts,
    bool? elvQuotes,
    String? $__typename,
  }) => _res;
}

class Fragment$WeighbridgeProfileFragment$techemetCatSettings {
  Fragment$WeighbridgeProfileFragment$techemetCatSettings({
    required this.enabled,
    this.defaultWeight,
    this.defaultWeightUom,
    this.defaultProductId,
    this.defaultLocationId,
    this.defaultProduct,
    this.defaultLocation,
    this.$__typename = 'TechemetCatSettings',
  });

  factory Fragment$WeighbridgeProfileFragment$techemetCatSettings.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$defaultWeight = json['defaultWeight'];
    final l$defaultWeightUom = json['defaultWeightUom'];
    final l$defaultProductId = json['defaultProductId'];
    final l$defaultLocationId = json['defaultLocationId'];
    final l$defaultProduct = json['defaultProduct'];
    final l$defaultLocation = json['defaultLocation'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$techemetCatSettings(
      enabled: (l$enabled as bool),
      defaultWeight: (l$defaultWeight as num?)?.toDouble(),
      defaultWeightUom: l$defaultWeightUom == null
          ? null
          : fromJson$Enum$Uom((l$defaultWeightUom as String)),
      defaultProductId: (l$defaultProductId as String?),
      defaultLocationId: (l$defaultLocationId as String?),
      defaultProduct: l$defaultProduct == null
          ? null
          : Fragment$ProductFragment.fromJson(
              (l$defaultProduct as Map<String, dynamic>),
            ),
      defaultLocation: l$defaultLocation == null
          ? null
          : Fragment$LocationFragment.fromJson(
              (l$defaultLocation as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final double? defaultWeight;

  final Enum$Uom? defaultWeightUom;

  final String? defaultProductId;

  final String? defaultLocationId;

  final Fragment$ProductFragment? defaultProduct;

  final Fragment$LocationFragment? defaultLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$defaultWeight = defaultWeight;
    _resultData['defaultWeight'] = l$defaultWeight;
    final l$defaultWeightUom = defaultWeightUom;
    _resultData['defaultWeightUom'] = l$defaultWeightUom == null
        ? null
        : toJson$Enum$Uom(l$defaultWeightUom);
    final l$defaultProductId = defaultProductId;
    _resultData['defaultProductId'] = l$defaultProductId;
    final l$defaultLocationId = defaultLocationId;
    _resultData['defaultLocationId'] = l$defaultLocationId;
    final l$defaultProduct = defaultProduct;
    _resultData['defaultProduct'] = l$defaultProduct?.toJson();
    final l$defaultLocation = defaultLocation;
    _resultData['defaultLocation'] = l$defaultLocation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$defaultWeight = defaultWeight;
    final l$defaultWeightUom = defaultWeightUom;
    final l$defaultProductId = defaultProductId;
    final l$defaultLocationId = defaultLocationId;
    final l$defaultProduct = defaultProduct;
    final l$defaultLocation = defaultLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$defaultWeight,
      l$defaultWeightUom,
      l$defaultProductId,
      l$defaultLocationId,
      l$defaultProduct,
      l$defaultLocation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$techemetCatSettings ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$defaultWeight = defaultWeight;
    final lOther$defaultWeight = other.defaultWeight;
    if (l$defaultWeight != lOther$defaultWeight) {
      return false;
    }
    final l$defaultWeightUom = defaultWeightUom;
    final lOther$defaultWeightUom = other.defaultWeightUom;
    if (l$defaultWeightUom != lOther$defaultWeightUom) {
      return false;
    }
    final l$defaultProductId = defaultProductId;
    final lOther$defaultProductId = other.defaultProductId;
    if (l$defaultProductId != lOther$defaultProductId) {
      return false;
    }
    final l$defaultLocationId = defaultLocationId;
    final lOther$defaultLocationId = other.defaultLocationId;
    if (l$defaultLocationId != lOther$defaultLocationId) {
      return false;
    }
    final l$defaultProduct = defaultProduct;
    final lOther$defaultProduct = other.defaultProduct;
    if (l$defaultProduct != lOther$defaultProduct) {
      return false;
    }
    final l$defaultLocation = defaultLocation;
    final lOther$defaultLocation = other.defaultLocation;
    if (l$defaultLocation != lOther$defaultLocation) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$techemetCatSettings
    on Fragment$WeighbridgeProfileFragment$techemetCatSettings {
  CopyWith$Fragment$WeighbridgeProfileFragment$techemetCatSettings<
    Fragment$WeighbridgeProfileFragment$techemetCatSettings
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$techemetCatSettings(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$techemetCatSettings<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$techemetCatSettings(
    Fragment$WeighbridgeProfileFragment$techemetCatSettings instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$techemetCatSettings) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$techemetCatSettings;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$techemetCatSettings.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$techemetCatSettings;

  TRes call({
    bool? enabled,
    double? defaultWeight,
    Enum$Uom? defaultWeightUom,
    String? defaultProductId,
    String? defaultLocationId,
    Fragment$ProductFragment? defaultProduct,
    Fragment$LocationFragment? defaultLocation,
    String? $__typename,
  });
  CopyWith$Fragment$ProductFragment<TRes> get defaultProduct;
  CopyWith$Fragment$LocationFragment<TRes> get defaultLocation;
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$techemetCatSettings<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$techemetCatSettings<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$techemetCatSettings(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$techemetCatSettings _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment$techemetCatSettings)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? defaultWeight = _undefined,
    Object? defaultWeightUom = _undefined,
    Object? defaultProductId = _undefined,
    Object? defaultLocationId = _undefined,
    Object? defaultProduct = _undefined,
    Object? defaultLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$techemetCatSettings(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      defaultWeight: defaultWeight == _undefined
          ? _instance.defaultWeight
          : (defaultWeight as double?),
      defaultWeightUom: defaultWeightUom == _undefined
          ? _instance.defaultWeightUom
          : (defaultWeightUom as Enum$Uom?),
      defaultProductId: defaultProductId == _undefined
          ? _instance.defaultProductId
          : (defaultProductId as String?),
      defaultLocationId: defaultLocationId == _undefined
          ? _instance.defaultLocationId
          : (defaultLocationId as String?),
      defaultProduct: defaultProduct == _undefined
          ? _instance.defaultProduct
          : (defaultProduct as Fragment$ProductFragment?),
      defaultLocation: defaultLocation == _undefined
          ? _instance.defaultLocation
          : (defaultLocation as Fragment$LocationFragment?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$ProductFragment<TRes> get defaultProduct {
    final local$defaultProduct = _instance.defaultProduct;
    return local$defaultProduct == null
        ? CopyWith$Fragment$ProductFragment.stub(_then(_instance))
        : CopyWith$Fragment$ProductFragment(
            local$defaultProduct,
            (e) => call(defaultProduct: e),
          );
  }

  CopyWith$Fragment$LocationFragment<TRes> get defaultLocation {
    final local$defaultLocation = _instance.defaultLocation;
    return local$defaultLocation == null
        ? CopyWith$Fragment$LocationFragment.stub(_then(_instance))
        : CopyWith$Fragment$LocationFragment(
            local$defaultLocation,
            (e) => call(defaultLocation: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$techemetCatSettings<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$techemetCatSettings<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$techemetCatSettings(
    this._res,
  );

  TRes _res;

  call({
    bool? enabled,
    double? defaultWeight,
    Enum$Uom? defaultWeightUom,
    String? defaultProductId,
    String? defaultLocationId,
    Fragment$ProductFragment? defaultProduct,
    Fragment$LocationFragment? defaultLocation,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$ProductFragment<TRes> get defaultProduct =>
      CopyWith$Fragment$ProductFragment.stub(_res);

  CopyWith$Fragment$LocationFragment<TRes> get defaultLocation =>
      CopyWith$Fragment$LocationFragment.stub(_res);
}

class Fragment$WeighbridgeProfileFragment$elvSettings {
  Fragment$WeighbridgeProfileFragment$elvSettings({
    this.productId,
    this.product,
    this.locationId,
    this.location,
    this.enforceELVInspectionForLeadSources,
    this.$__typename = 'ELVSettings',
  });

  factory Fragment$WeighbridgeProfileFragment$elvSettings.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$productId = json['productId'];
    final l$product = json['product'];
    final l$locationId = json['locationId'];
    final l$location = json['location'];
    final l$enforceELVInspectionForLeadSources =
        json['enforceELVInspectionForLeadSources'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$elvSettings(
      productId: (l$productId as String?),
      product: l$product == null
          ? null
          : Fragment$ProductFragment.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      locationId: (l$locationId as String?),
      location: l$location == null
          ? null
          : Fragment$LocationFragment.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      enforceELVInspectionForLeadSources:
          (l$enforceELVInspectionForLeadSources as List<dynamic>?)
              ?.map((e) => fromJson$Enum$LeadSource((e as String)))
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? productId;

  final Fragment$ProductFragment? product;

  final String? locationId;

  final Fragment$LocationFragment? location;

  final List<Enum$LeadSource>? enforceELVInspectionForLeadSources;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$enforceELVInspectionForLeadSources =
        enforceELVInspectionForLeadSources;
    _resultData['enforceELVInspectionForLeadSources'] =
        l$enforceELVInspectionForLeadSources
            ?.map((e) => toJson$Enum$LeadSource(e))
            .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productId = productId;
    final l$product = product;
    final l$locationId = locationId;
    final l$location = location;
    final l$enforceELVInspectionForLeadSources =
        enforceELVInspectionForLeadSources;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$productId,
      l$product,
      l$locationId,
      l$location,
      l$enforceELVInspectionForLeadSources == null
          ? null
          : Object.hashAll(l$enforceELVInspectionForLeadSources.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$elvSettings ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$enforceELVInspectionForLeadSources =
        enforceELVInspectionForLeadSources;
    final lOther$enforceELVInspectionForLeadSources =
        other.enforceELVInspectionForLeadSources;
    if (l$enforceELVInspectionForLeadSources != null &&
        lOther$enforceELVInspectionForLeadSources != null) {
      if (l$enforceELVInspectionForLeadSources.length !=
          lOther$enforceELVInspectionForLeadSources.length) {
        return false;
      }
      for (int i = 0; i < l$enforceELVInspectionForLeadSources.length; i++) {
        final l$enforceELVInspectionForLeadSources$entry =
            l$enforceELVInspectionForLeadSources[i];
        final lOther$enforceELVInspectionForLeadSources$entry =
            lOther$enforceELVInspectionForLeadSources[i];
        if (l$enforceELVInspectionForLeadSources$entry !=
            lOther$enforceELVInspectionForLeadSources$entry) {
          return false;
        }
      }
    } else if (l$enforceELVInspectionForLeadSources !=
        lOther$enforceELVInspectionForLeadSources) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$elvSettings
    on Fragment$WeighbridgeProfileFragment$elvSettings {
  CopyWith$Fragment$WeighbridgeProfileFragment$elvSettings<
    Fragment$WeighbridgeProfileFragment$elvSettings
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$elvSettings(this, (i) => i);
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$elvSettings<TRes> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$elvSettings(
    Fragment$WeighbridgeProfileFragment$elvSettings instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$elvSettings) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$elvSettings;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$elvSettings.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$elvSettings;

  TRes call({
    String? productId,
    Fragment$ProductFragment? product,
    String? locationId,
    Fragment$LocationFragment? location,
    List<Enum$LeadSource>? enforceELVInspectionForLeadSources,
    String? $__typename,
  });
  CopyWith$Fragment$ProductFragment<TRes> get product;
  CopyWith$Fragment$LocationFragment<TRes> get location;
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$elvSettings<TRes>
    implements CopyWith$Fragment$WeighbridgeProfileFragment$elvSettings<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$elvSettings(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$elvSettings _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment$elvSettings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productId = _undefined,
    Object? product = _undefined,
    Object? locationId = _undefined,
    Object? location = _undefined,
    Object? enforceELVInspectionForLeadSources = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$elvSettings(
      productId: productId == _undefined
          ? _instance.productId
          : (productId as String?),
      product: product == _undefined
          ? _instance.product
          : (product as Fragment$ProductFragment?),
      locationId: locationId == _undefined
          ? _instance.locationId
          : (locationId as String?),
      location: location == _undefined
          ? _instance.location
          : (location as Fragment$LocationFragment?),
      enforceELVInspectionForLeadSources:
          enforceELVInspectionForLeadSources == _undefined
          ? _instance.enforceELVInspectionForLeadSources
          : (enforceELVInspectionForLeadSources as List<Enum$LeadSource>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$ProductFragment<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Fragment$ProductFragment.stub(_then(_instance))
        : CopyWith$Fragment$ProductFragment(
            local$product,
            (e) => call(product: e),
          );
  }

  CopyWith$Fragment$LocationFragment<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Fragment$LocationFragment.stub(_then(_instance))
        : CopyWith$Fragment$LocationFragment(
            local$location,
            (e) => call(location: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$elvSettings<TRes>
    implements CopyWith$Fragment$WeighbridgeProfileFragment$elvSettings<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$elvSettings(this._res);

  TRes _res;

  call({
    String? productId,
    Fragment$ProductFragment? product,
    String? locationId,
    Fragment$LocationFragment? location,
    List<Enum$LeadSource>? enforceELVInspectionForLeadSources,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$ProductFragment<TRes> get product =>
      CopyWith$Fragment$ProductFragment.stub(_res);

  CopyWith$Fragment$LocationFragment<TRes> get location =>
      CopyWith$Fragment$LocationFragment.stub(_res);
}

class Fragment$WeighbridgeProfileFragment$canMode {
  Fragment$WeighbridgeProfileFragment$canMode({
    required this.enabled,
    this.productId,
    this.locationId,
    this.product,
    this.location,
    this.$__typename = 'CanMode',
  });

  factory Fragment$WeighbridgeProfileFragment$canMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$productId = json['productId'];
    final l$locationId = json['locationId'];
    final l$product = json['product'];
    final l$location = json['location'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$canMode(
      enabled: (l$enabled as bool),
      productId: (l$productId as String?),
      locationId: (l$locationId as String?),
      product: l$product == null
          ? null
          : Fragment$ProductFragment.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      location: l$location == null
          ? null
          : Fragment$LocationFragment.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final String? productId;

  final String? locationId;

  final Fragment$ProductFragment? product;

  final Fragment$LocationFragment? location;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$productId = productId;
    final l$locationId = locationId;
    final l$product = product;
    final l$location = location;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$productId,
      l$locationId,
      l$product,
      l$location,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$canMode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$canMode
    on Fragment$WeighbridgeProfileFragment$canMode {
  CopyWith$Fragment$WeighbridgeProfileFragment$canMode<
    Fragment$WeighbridgeProfileFragment$canMode
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$canMode(this, (i) => i);
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$canMode<TRes> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$canMode(
    Fragment$WeighbridgeProfileFragment$canMode instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$canMode) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$canMode;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$canMode.stub(TRes res) =
      _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$canMode;

  TRes call({
    bool? enabled,
    String? productId,
    String? locationId,
    Fragment$ProductFragment? product,
    Fragment$LocationFragment? location,
    String? $__typename,
  });
  CopyWith$Fragment$ProductFragment<TRes> get product;
  CopyWith$Fragment$LocationFragment<TRes> get location;
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$canMode<TRes>
    implements CopyWith$Fragment$WeighbridgeProfileFragment$canMode<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$canMode(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$canMode _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment$canMode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? productId = _undefined,
    Object? locationId = _undefined,
    Object? product = _undefined,
    Object? location = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$canMode(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      productId: productId == _undefined
          ? _instance.productId
          : (productId as String?),
      locationId: locationId == _undefined
          ? _instance.locationId
          : (locationId as String?),
      product: product == _undefined
          ? _instance.product
          : (product as Fragment$ProductFragment?),
      location: location == _undefined
          ? _instance.location
          : (location as Fragment$LocationFragment?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$ProductFragment<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Fragment$ProductFragment.stub(_then(_instance))
        : CopyWith$Fragment$ProductFragment(
            local$product,
            (e) => call(product: e),
          );
  }

  CopyWith$Fragment$LocationFragment<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Fragment$LocationFragment.stub(_then(_instance))
        : CopyWith$Fragment$LocationFragment(
            local$location,
            (e) => call(location: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$canMode<TRes>
    implements CopyWith$Fragment$WeighbridgeProfileFragment$canMode<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$canMode(this._res);

  TRes _res;

  call({
    bool? enabled,
    String? productId,
    String? locationId,
    Fragment$ProductFragment? product,
    Fragment$LocationFragment? location,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$ProductFragment<TRes> get product =>
      CopyWith$Fragment$ProductFragment.stub(_res);

  CopyWith$Fragment$LocationFragment<TRes> get location =>
      CopyWith$Fragment$LocationFragment.stub(_res);
}

class Fragment$WeighbridgeProfileFragment$autoHulkAffidavit {
  Fragment$WeighbridgeProfileFragment$autoHulkAffidavit({
    required this.enabled,
    required this.allowedProductIds,
    required this.allowedProducts,
    this.$__typename = 'AutoHulkAffidavit',
  });

  factory Fragment$WeighbridgeProfileFragment$autoHulkAffidavit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$allowedProductIds = json['allowedProductIds'];
    final l$allowedProducts = json['allowedProducts'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$autoHulkAffidavit(
      enabled: (l$enabled as bool),
      allowedProductIds: (l$allowedProductIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      allowedProducts: (l$allowedProducts as List<dynamic>)
          .map(
            (e) =>
                Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final List<String> allowedProductIds;

  final List<
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts
  >
  allowedProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$allowedProductIds = allowedProductIds;
    _resultData['allowedProductIds'] = l$allowedProductIds
        .map((e) => e)
        .toList();
    final l$allowedProducts = allowedProducts;
    _resultData['allowedProducts'] = l$allowedProducts
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$allowedProductIds = allowedProductIds;
    final l$allowedProducts = allowedProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      Object.hashAll(l$allowedProductIds.map((v) => v)),
      Object.hashAll(l$allowedProducts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeProfileFragment$autoHulkAffidavit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$allowedProductIds = allowedProductIds;
    final lOther$allowedProductIds = other.allowedProductIds;
    if (l$allowedProductIds.length != lOther$allowedProductIds.length) {
      return false;
    }
    for (int i = 0; i < l$allowedProductIds.length; i++) {
      final l$allowedProductIds$entry = l$allowedProductIds[i];
      final lOther$allowedProductIds$entry = lOther$allowedProductIds[i];
      if (l$allowedProductIds$entry != lOther$allowedProductIds$entry) {
        return false;
      }
    }
    final l$allowedProducts = allowedProducts;
    final lOther$allowedProducts = other.allowedProducts;
    if (l$allowedProducts.length != lOther$allowedProducts.length) {
      return false;
    }
    for (int i = 0; i < l$allowedProducts.length; i++) {
      final l$allowedProducts$entry = l$allowedProducts[i];
      final lOther$allowedProducts$entry = lOther$allowedProducts[i];
      if (l$allowedProducts$entry != lOther$allowedProducts$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit
    on Fragment$WeighbridgeProfileFragment$autoHulkAffidavit {
  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit<
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit(
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit instance,
    TRes Function(Fragment$WeighbridgeProfileFragment$autoHulkAffidavit) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit;

  TRes call({
    bool? enabled,
    List<String>? allowedProductIds,
    List<Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts>?
    allowedProducts,
    String? $__typename,
  });
  TRes allowedProducts(
    Iterable<
      Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts
    >
    Function(
      Iterable<
        CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts<
          Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit<TRes>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$autoHulkAffidavit _instance;

  final TRes Function(Fragment$WeighbridgeProfileFragment$autoHulkAffidavit)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? allowedProductIds = _undefined,
    Object? allowedProducts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      allowedProductIds:
          allowedProductIds == _undefined || allowedProductIds == null
          ? _instance.allowedProductIds
          : (allowedProductIds as List<String>),
      allowedProducts: allowedProducts == _undefined || allowedProducts == null
          ? _instance.allowedProducts
          : (allowedProducts
                as List<
                  Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes allowedProducts(
    Iterable<
      Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts
    >
    Function(
      Iterable<
        CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts<
          Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts
        >
      >,
    )
    _fn,
  ) => call(
    allowedProducts: _fn(
      _instance.allowedProducts.map(
        (e) =>
            CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit(
    this._res,
  );

  TRes _res;

  call({
    bool? enabled,
    List<String>? allowedProductIds,
    List<Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts>?
    allowedProducts,
    String? $__typename,
  }) => _res;

  allowedProducts(_fn) => _res;
}

class Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts {
  Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts({
    required this.id,
    required this.code,
    required this.description,
    required this.active,
    required this.created,
    required this.modified,
    this.$__typename = 'Product',
  });

  factory Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$description = json['description'];
    final l$active = json['active'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts(
      id: (l$id as String),
      code: (l$code as String),
      description: (l$description as String),
      active: (l$active as bool),
      created:
          Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      modified:
          Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified.fromJson(
            (l$modified as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String description;

  final bool active;

  final Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created
  created;

  final Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified
  modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$description = description;
    final l$active = active;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$description,
      l$active,
      l$created,
      l$modified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts
    on Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts {
  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts<
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts(
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts
    instance,
    TRes Function(
      Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts,
    )
    then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts;

  TRes call({
    String? id,
    String? code,
    String? description,
    bool? active,
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created?
    created,
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified?
    modified,
    String? $__typename,
  });
  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created<
    TRes
  >
  get created;
  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified<
    TRes
  >
  get modified;
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts<
          TRes
        > {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts
  _instance;

  final TRes Function(
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? description = _undefined,
    Object? active = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified<
    TRes
  >
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts<
          TRes
        > {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? code,
    String? description,
    bool? active,
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created?
    created,
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified?
    modified,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created<
    TRes
  >
  get created =>
      CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created.stub(
        _res,
      );

  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified<
    TRes
  >
  get modified =>
      CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified.stub(
        _res,
      );
}

class Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created {
  Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created({
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created(
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created
    on Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created {
  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created<
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created(
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created
    instance,
    TRes Function(
      Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created,
    )
    then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created;

  TRes call({String? userName, String? $__typename});
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created<
          TRes
        > {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created
  _instance;

  final TRes Function(
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created(
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created<
          TRes
        > {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$created(
    this._res,
  );

  TRes _res;

  call({String? userName, String? $__typename}) => _res;
}

class Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified {
  Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified({
    required this.userName,
    this.$__typename = 'Modified',
  });

  factory Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified(
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified
    on Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified {
  CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified<
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified(
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified
    instance,
    TRes Function(
      Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified,
    )
    then,
  ) = _CopyWithImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified;

  factory CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified;

  TRes call({String? userName, String? $__typename});
}

class _CopyWithImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified<
          TRes
        > {
  _CopyWithImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified
  _instance;

  final TRes Function(
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified(
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified<
  TRes
>
    implements
        CopyWith$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified<
          TRes
        > {
  _CopyWithStubImpl$Fragment$WeighbridgeProfileFragment$autoHulkAffidavit$allowedProducts$modified(
    this._res,
  );

  TRes _res;

  call({String? userName, String? $__typename}) => _res;
}
