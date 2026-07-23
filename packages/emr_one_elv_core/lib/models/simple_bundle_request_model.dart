import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_one_elv_core/models/quote_models/price_adjustment_component.dart';

class SimpleBundleRequestModel {
  SimpleBundleRequestModel({
    required this.vehicleList,
    required this.quotingCustomerDetails,
    this.preCalculatedCatPrice,
    this.hasTechemetCat,
    this.quoteSource,
    this.emailAddress,
    this.changedQuotingCustomerAccountNo,
    this.vehicleLocationPostcode,
    this.collectedPriceRequired,
    this.numberOfDeliveredPricesRequired,
    this.returnHigherDeliveredPriceIfAvailable,
    this.preselectedYardCode,
    this.changedVehicleLocationPostcode,
    this.territoryCode,
    this.bundleReference,
    this.b2BorB2C,
    this.changedPreselectedYardCode,
    this.collectionAndBankDetails,
    this.leadSourceId,
    this.numberOfCollectedPricesRequired,
    this.notes,
  });
  int? preCalculatedCatPrice;
  bool? hasTechemetCat;
  String? quoteSource;
  String? emailAddress;
  String? changedQuotingCustomerAccountNo;
  String? vehicleLocationPostcode;
  List<VehicleListItem> vehicleList;
  bool? collectedPriceRequired;
  int? numberOfDeliveredPricesRequired;
  bool? returnHigherDeliveredPriceIfAvailable;
  String? preselectedYardCode;
  String? changedVehicleLocationPostcode;
  String? territoryCode;
  String? bundleReference;
  String? b2BorB2C;
  QuotingCustomerDetails quotingCustomerDetails;
  String? changedPreselectedYardCode;
  CollectionAndBankDetails? collectionAndBankDetails;
  int? leadSourceId;
  int? numberOfCollectedPricesRequired;
  String? notes;

  Map<String, dynamic> toJson() {
    return {
      'vehicleList': vehicleList.map((e) => e.toJson()).toList(),
      'quotingCustomerDetails': quotingCustomerDetails.toJson(),
      if (collectedPriceRequired != null)
        'collectedPriceRequired': collectedPriceRequired,
      if (numberOfDeliveredPricesRequired != null)
        'numberOfDeliveredPricesRequired': numberOfDeliveredPricesRequired,
      if (returnHigherDeliveredPriceIfAvailable != null)
        'returnHigherDeliveredPriceIfAvailable':
            returnHigherDeliveredPriceIfAvailable,
      if (preselectedYardCode != null)
        'preselectedYardCode': preselectedYardCode,
      if (vehicleLocationPostcode != null)
        'vehicleLocationPostcode': vehicleLocationPostcode,
      if (territoryCode != null) 'territoryCode': territoryCode,
      if (bundleReference != null) 'bundleReference': bundleReference,
      if (preCalculatedCatPrice != null)
        'preCalculatedCatPrice': preCalculatedCatPrice,
      if (hasTechemetCat != null) 'hasTechemetCat': hasTechemetCat,
      if (quoteSource != null) 'quoteSource': quoteSource,
      if (emailAddress != null) 'emailAddress': emailAddress,
      if (changedQuotingCustomerAccountNo != null)
        'changedQuotingCustomerAccountNo': changedQuotingCustomerAccountNo,
      if (changedVehicleLocationPostcode != null)
        'changedVehicleLocationPostcode': changedVehicleLocationPostcode,
      if (changedPreselectedYardCode != null)
        'changedPreselectedYardCode': changedPreselectedYardCode,
      if (b2BorB2C != null) 'b2BorB2C': b2BorB2C,
      if (collectionAndBankDetails != null)
        'collectionAndBankDetails': collectionAndBankDetails,
      if (leadSourceId != null && leadSourceId! > 0)
        'leadSourceId': leadSourceId,
      if (numberOfCollectedPricesRequired != null)
        'numberOfCollectedPricesRequired': numberOfCollectedPricesRequired,
      if (notes != null) 'notes': notes,
    };
  }
}

class CollectionAndBankDetails {
  CollectionAndBankDetails({
    required this.accountNumber,
    this.address,
    this.appintmentDateTimeUtc,
    this.bankAccountNumber,
    this.bankSortCode,
    this.batchQuoteId,
    this.haulageRate,
  });

  final String accountNumber;
  final Address? address;
  final String? appintmentDateTimeUtc;
  final String? bankAccountNumber;
  final String? bankSortCode;
  final int? batchQuoteId;
  final double? haulageRate;

  Map<String, dynamic> toJson() => {
        'accountNumber': accountNumber,
        if (address != null) 'address': address,
        if (appintmentDateTimeUtc != null)
          'appointmentDateTimeUtc': appintmentDateTimeUtc,
        if (bankAccountNumber != null) 'bankAccountNumber': bankAccountNumber,
        if (bankSortCode != null) 'bankSortCode': bankSortCode,
        if (batchQuoteId != null) 'batchQuoteId': batchQuoteId,
        if (haulageRate != null) 'haulageRate': haulageRate,
      };
}

class QuotingCustomerDetails {
  QuotingCustomerDetails({
    required this.accountNo,
    this.accountLocationCode,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
  });

  final String accountNo;
  final String? accountLocationCode;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phoneNumber;

  Map<String, dynamic> toJson() => {
        'accountNo': accountNo,
        if (accountLocationCode != null)
          'accountLocationCode': accountLocationCode,
        if (firstName != null) 'firstName': firstName,
        if (lastName != null) 'lastName': lastName,
        if (email != null) 'email': email,
        if (phoneNumber != null) 'phoneNumber': phoneNumber,
      };
}

class VehicleListItem {
  VehicleListItem({
    required this.numberOfAlloyWheels,
    required this.numberOfSteelWheels,
    required this.hasOriginalCatalyticConverter,
    required this.fuelType,
    this.numberOfChromeWheels,
    this.numberOfPipeCats,
    this.numberOfPreCats,
    this.vehicleRegistration,
    this.vin,
    this.hasLockingWheelNutKey = true,
    this.vehicleRolls = true,
    this.engineRuns = true,
    this.hasBattery = true,
    this.operationMode = VehicleDetailsOperationMode.unspecified,
    this.knownVehicleId,
    this.overrideKerbWeight,
    this.priceAdjustment,
  });
  String? vehicleRegistration;
  String? vin;
  int numberOfAlloyWheels;
  int numberOfSteelWheels;
  int? numberOfChromeWheels;
  bool hasLockingWheelNutKey;
  bool? vehicleRolls;
  bool? engineRuns;
  bool hasBattery;
  String fuelType;
  int? numberOfPipeCats;
  int? numberOfPreCats;
  bool hasOriginalCatalyticConverter;
  VehicleDetailsOperationMode operationMode;
  int? knownVehicleId;
  int? overrideKerbWeight;
  List<PriceAdjustmentComponent>? priceAdjustment;

  Map<String, dynamic> toJson() {
    return {
      if (vehicleRegistration != null)
        'vehicleRegistration': vehicleRegistration,
      if (vin != null) 'vin': vin,
      if (knownVehicleId != null) 'knownVehicleId': knownVehicleId,
      'numberOfAlloyWheels': numberOfAlloyWheels,
      'numberOfSteelWheels': numberOfSteelWheels,
      if (numberOfChromeWheels != null)
        'numberOfChromeWheels': numberOfChromeWheels,
      'hasLockingWheelNutKey': hasLockingWheelNutKey,
      'vehicleRolls': vehicleRolls,
      'engineRuns': engineRuns,
      'hasBattery': hasBattery,
      'fuelType': fuelType,
      'hasOriginalCatalyticConverter': hasOriginalCatalyticConverter,
      if (numberOfPipeCats != null) 'numberOfPipeCats': numberOfPipeCats,
      if (numberOfPreCats != null) 'numberOfPreCats': numberOfPreCats,
      'operationMode':
          operationMode.name[0].toUpperCase() + operationMode.name.substring(1),
      if (overrideKerbWeight != null) 'overrideKerbWeight': overrideKerbWeight,
      'quoteRequestPriceAdjustments':
          priceAdjustment?.map((e) => e.toJson()).toList() ?? [],
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

enum VehicleDetailsOperationMode { ignore, add, update, delete, unspecified }
