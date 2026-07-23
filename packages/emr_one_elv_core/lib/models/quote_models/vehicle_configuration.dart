import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';

class VehicleConfiguration {
  /// Returns a new [VehicleConfiguration] instance.
  VehicleConfiguration({
    required this.alloyWheels,
    required this.steelWheels,
    required this.chromeWheels,
    required this.hasOriginalCat,
    required this.hasBattery,
    required this.hasEngine,
    required this.numOfPreCats,
    required this.numOfPipeCats,
    this.hasLockingWheelNut,
    this.vehicleRolls,
    this.engineRuns,
    this.partyAccountNo,
    this.priceAdjustment = const [],
  });

  factory VehicleConfiguration.defaultValues() => VehicleConfiguration(
        alloyWheels: 4,
        steelWheels: 0,
        chromeWheels: 0,
        hasOriginalCat: true,
        hasBattery: true,
        hasEngine: true,
        numOfPreCats: 0,
        numOfPipeCats: 0,
      );

  int alloyWheels;
  int steelWheels;
  int chromeWheels;
  int numOfPreCats;
  int numOfPipeCats;
  bool? hasOriginalCat;
  bool? hasBattery;
  bool? hasEngine;
  bool? hasLockingWheelNut;
  bool? vehicleRolls;
  bool? engineRuns;
  String? partyAccountNo;
  List<PriceAdjustmentComponent>? priceAdjustment;

  void resetValues() {
    alloyWheels = 0;
    steelWheels = 0;
    chromeWheels = 0;
    hasBattery = false;
    hasOriginalCat = false;
    numOfPreCats = 0;
    numOfPipeCats = 0;
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['alloyWheels'] = alloyWheels;
    json['steelWheels'] = steelWheels;
    json['chromeWheels'] = chromeWheels;
    json['numOfPreCats'] = numOfPreCats;
    json['numOfPipeCats'] = numOfPipeCats;
    json['hasOriginalCat'] = hasOriginalCat;
    json['hasBattery'] = hasBattery;
    json['hasEngine'] = hasEngine;
    if (hasLockingWheelNut != null) {
      json['hasLockingWheelNut'] = hasLockingWheelNut;
    }
    if (vehicleRolls != null) {
      json['vehicleRolls'] = vehicleRolls;
    }
    if (engineRuns != null) {
      json['engineRuns'] = engineRuns;
    }
    if (partyAccountNo != null) {
      json['partyAccountNo'] = partyAccountNo;
    }
    if (priceAdjustment != null) {
      json['priceAdjustment'] =
          priceAdjustment!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  static VehicleConfiguration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return VehicleConfiguration(
        alloyWheels: json['alloyWheels'] as int,
        steelWheels: json['steelWheels'] as int,
        chromeWheels: json['chromeWheels'] as int,
        numOfPreCats: json['numOfPreCats'] as int,
        numOfPipeCats: json['numOfPipeCats'] as int,
        hasOriginalCat: json['hasOriginalCat'] as bool,
        hasBattery: json['hasBattery'] as bool,
        hasEngine: json['hasEngine'] as bool,
        hasLockingWheelNut: json['hasLockingWheelNut'] as bool?,
        vehicleRolls: json['vehicleRolls'] as bool?,
        engineRuns: json['engineRuns'] as bool?,
        partyAccountNo: json['partyAccountNo'] as String?,
        priceAdjustment:
            PriceAdjustmentComponent.listFromJson(json['priceAdjustment']),
      );
    }
    return null;
  }
}
