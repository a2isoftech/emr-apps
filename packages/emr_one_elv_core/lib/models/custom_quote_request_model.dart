import 'package:emr_one_elv_core/models/quote_models/price_adjustment_component.dart';

class CustomQuoteRequestModel {
  CustomQuoteRequestModel({
    required this.vehiclePricingRequests,
    this.preCalculatedCatPrice,
    this.hasTechemetCat,
    this.quoteSource,
    this.emailAddress,
    this.changedPartyAccountNo,
    this.changedPostcode,
    this.changedYardCode,
    this.collectedPriceRequired,
    this.numberOfDeliveredPricesRequired,
    this.returnHigherDeliveredPrice,
    this.deliveryYard,
    this.postCode,
    this.territoryCode,
    this.existingBatchQuoteBundleId,
  });
  int? preCalculatedCatPrice;
  bool? hasTechemetCat;
  String? quoteSource;
  String? emailAddress;
  String? changedPartyAccountNo;
  String? changedPostcode;
  String? changedYardCode;
  List<VehiclePricingRequests> vehiclePricingRequests;
  bool? collectedPriceRequired;
  int? numberOfDeliveredPricesRequired;
  bool? returnHigherDeliveredPrice;
  String? deliveryYard;
  String? postCode;
  String? territoryCode;
  String? existingBatchQuoteBundleId;

  Map<String, dynamic> toJson() {
    return {
      'vehiclePricingRequests':
          vehiclePricingRequests.map((e) => e.toJson()).toList(),
      if (collectedPriceRequired != null)
        'collectedPriceRequired': collectedPriceRequired,
      if (numberOfDeliveredPricesRequired != null)
        'numberOfDeliveredPricesRequired': numberOfDeliveredPricesRequired,
      if (returnHigherDeliveredPrice != null)
        'returnHigherDeliveredPrice': returnHigherDeliveredPrice,
      if (deliveryYard != null) 'deliveryYard': deliveryYard,
      if (postCode != null) 'postCode': postCode,
      if (territoryCode != null) 'territoryCode': territoryCode,
      if (existingBatchQuoteBundleId != null)
        'existingBatchQuoteBundleId': existingBatchQuoteBundleId,
      if (preCalculatedCatPrice != null)
        'preCalculatedCatPrice': preCalculatedCatPrice,
      if (hasTechemetCat != null) 'hasTechemetCat': hasTechemetCat,
      if (quoteSource != null) 'quoteSource': quoteSource,
      if (emailAddress != null) 'emailAddress': emailAddress,
      if (changedPartyAccountNo != null)
        'changedPartyAccountNo': changedPartyAccountNo,
      if (changedPostcode != null) 'changedPostcode': changedPostcode,
      if (changedYardCode != null) 'changedYardCode': changedYardCode,
    };
  }
}

class VehiclePricingRequests {
  VehiclePricingRequests({
    required this.numOfAlloys,
    required this.numOfSteels,
    required this.yard,
    required this.hasOriginalCatalyticConverter,
    required this.hasTechemetCatalyticConverter,
    required this.fuelType,
    this.operationMode,
    this.vehicleReg,
    this.vin,
    this.kerbWeight,
    this.kerbWeightUom,
    this.overrideKerbWeight,
    this.overrideKerbWeightUom,
    this.pricingType = 'B2B',
    this.hasLockingWheelNut = true,
    this.vehicleRolls = true,
    this.engineRuns = true,
    this.yardDetails,
    this.isCollected,
    this.showQuoteLines,
    this.hasBattery = true,
    this.costDeductionAmount,
    this.priceAdjustmentComponent,
    this.partyAccountNo,
    this.precalculatedHaulagePrice,
    this.territoryCode,
    this.postCode = '',
  });
  String? vehicleReg;
  String? vin;
  int numOfAlloys;
  int numOfSteels;
  int? kerbWeight;
  String? kerbWeightUom;
  int? overrideKerbWeight;
  String? overrideKerbWeightUom;
  String pricingType;
  bool hasLockingWheelNut;
  bool? vehicleRolls;
  bool? engineRuns;
  String yard;
  YardDetails? yardDetails;
  bool? isCollected;
  bool? showQuoteLines;
  bool hasBattery;
  String fuelType;
  bool hasOriginalCatalyticConverter;
  bool hasTechemetCatalyticConverter;
  int? costDeductionAmount;
  List<PriceAdjustmentComponent>? priceAdjustmentComponent;
  String? partyAccountNo;
  int? precalculatedHaulagePrice;
  String? territoryCode;
  String? operationMode;
  String postCode;

  Map<String, dynamic> toJson() {
    return {
      if (vehicleReg != null) 'vehicleReg': vehicleReg,
      if (vin != null) 'vin': vin,
      'numOfAlloys': numOfAlloys,
      'numOfSteels': numOfSteels,
      if (kerbWeight != null) 'kerbWeight': kerbWeight,
      if (kerbWeightUom != null) 'kerbWeightUom': kerbWeightUom,
      if (overrideKerbWeight != null) 'overrideKerbWeight': overrideKerbWeight,
      if (overrideKerbWeightUom != null)
        'overrideKerbWeightUom': overrideKerbWeightUom,
      'pricingType': pricingType,
      'hasLockingWheelNut': hasLockingWheelNut,
      'vehicleRolls': vehicleRolls,
      'engineRuns': engineRuns,
      'yard': yard,
      if (yardDetails != null) 'yardDetails': yardDetails,
      if (isCollected != null) 'isCollected': isCollected,
      if (showQuoteLines != null) 'showQuoteLines': showQuoteLines,
      'hasBattery': hasBattery,
      'fuelType': fuelType,
      'hasOriginalCatalyticConverter': hasOriginalCatalyticConverter,
      'hasTechemetCatalyticConverter': hasTechemetCatalyticConverter,
      if (costDeductionAmount != null)
        'costDeductionAmount': costDeductionAmount,
      'priceAdjustment':
          priceAdjustmentComponent?.map((e) => e.toJson()).toList() ?? [],
      if (partyAccountNo != null) 'partyAccountNo': partyAccountNo,
      if (precalculatedHaulagePrice != null)
        'precalculatedHaulagePrice': precalculatedHaulagePrice,
      if (territoryCode != null) 'territoryCode': territoryCode,
      if (operationMode != null) 'operationMode': operationMode,
      'postCode': '',
    };
  }
}

class YardDetails {
  YardDetails({
    required this.geometricDistanceInKM,
    required this.drivingDistanceInKM,
    required this.geometricDistanceInMiles,
    required this.drivingDistanceInMiles,
    required this.yardCode,
    required this.yardName,
    required this.friendlyName,
    required this.enabledForCollection,
    required this.enabledForDelivery,
    required this.geoCoordinates,
  });

  factory YardDetails.fromJson(Map<String, dynamic> json) {
    return YardDetails(
      geometricDistanceInKM: json['geometricDistanceInKM'] as double,
      drivingDistanceInKM: json['drivingDistanceInKM'] as double,
      geometricDistanceInMiles: json['geometricDistanceInMiles'] as double,
      drivingDistanceInMiles: json['drivingDistanceInMiles'] as double,
      yardCode: json['yardCode'] as String,
      yardName: json['yardName'] as String,
      friendlyName: json['friendlyName'] as String,
      enabledForCollection: json['enabledForCollection'] as bool,
      enabledForDelivery: json['enabledForDelivery'] as bool,
      geoCoordinates: GeoCoordinates.fromJson(
        json['geoCoordinates'] as Map<String, dynamic>,
      ),
    );
  }
  double geometricDistanceInKM;
  double drivingDistanceInKM;
  double geometricDistanceInMiles;
  double drivingDistanceInMiles;
  String yardCode;
  String yardName;
  String friendlyName;
  bool enabledForCollection;
  bool enabledForDelivery;
  GeoCoordinates geoCoordinates;

  Map<String, dynamic> toJson() {
    return {
      'geometricDistanceInKM': geometricDistanceInKM,
      'drivingDistanceInKM': drivingDistanceInKM,
      'geometricDistanceInMiles': geometricDistanceInMiles,
      'drivingDistanceInMiles': drivingDistanceInMiles,
      'yardCode': yardCode,
      'yardName': yardName,
      'friendlyName': friendlyName,
      'enabledForCollection': enabledForCollection,
      'enabledForDelivery': enabledForDelivery,
      'geoCoordinates': geoCoordinates,
    };
  }
}

class GeoCoordinates {
  GeoCoordinates({
    required this.latitude,
    required this.longitude,
    required this.isZero,
    required this.isValid,
  });

  // Create a GeoCoordinates object from a JSON map
  factory GeoCoordinates.fromJson(Map<String, dynamic> json) {
    return GeoCoordinates(
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      isZero: json['isZero'] as bool,
      isValid: json['isValid'] as bool,
    );
  }

  double latitude;
  double longitude;
  bool isZero;
  bool isValid;

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'isZero': isZero,
      'isValid': isValid,
    };
  }
}
