import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';

class InspectionConfig {
  InspectionConfig({
    required this.ukAllowChromeWheels,
    required this.usaAllowChromeWheels,
    required this.ukMandateVehicleFrontAndBackImages,
    required this.usaMandateVehicleFrontAndBackImages,
    required this.batteryImageRequired,
    required this.catImageRequired,
    required this.proofOfAddressImageRequired,
    required this.identificationImageRequired,
    required this.allowAutoCatLookup,
    required this.saveButtonVisible,
  });

  factory InspectionConfig.init(
    ElvTerritory activeTerritory,
    List<String> elvConfigs,
  ) => InspectionConfig(
    ukAllowChromeWheels: elvConfigs.any(
      (f) => f == InspectionElvConfigConstants.ukAllowChromeWheels,
    ),
    usaAllowChromeWheels: elvConfigs.any(
      (f) => f == InspectionElvConfigConstants.usaAllowChromeWheels,
    ),
    ukMandateVehicleFrontAndBackImages: elvConfigs.any(
      (f) =>
          f == InspectionElvConfigConstants.ukMandateVehicleFrontAndBackImages,
    ),
    usaMandateVehicleFrontAndBackImages: elvConfigs.any(
      (f) =>
          f == InspectionElvConfigConstants.usaMandateVehicleFrontAndBackImages,
    ),
    batteryImageRequired: elvConfigs.any(
      (f) =>
          f ==
          (activeTerritory == ElvTerritory.usa
              ? InspectionElvConfigConstants.usaBatteryImageRequired
              : InspectionElvConfigConstants.ukBatteryImageRequired),
    ),
    catImageRequired: elvConfigs.any(
      (f) =>
          f ==
          (activeTerritory == ElvTerritory.usa
              ? InspectionElvConfigConstants.usaCatImageRequired
              : InspectionElvConfigConstants.ukCatImageRequired),
    ),
    proofOfAddressImageRequired: elvConfigs.any(
      (f) =>
          f ==
          (activeTerritory == ElvTerritory.usa
              ? InspectionElvConfigConstants.usaProofOfAddressImageRequired
              : InspectionElvConfigConstants.ukProofOfAddressImageRequired),
    ),
    identificationImageRequired: elvConfigs.any(
      (f) =>
          f ==
          (activeTerritory == ElvTerritory.usa
              ? InspectionElvConfigConstants.usaIdentificationImageRequired
              : InspectionElvConfigConstants.ukIdentificationImageRequired),
    ),
    allowAutoCatLookup: elvConfigs.any(
      (f) => f == InspectionElvConfigConstants.allowAutoCatLookup,
    ),
    saveButtonVisible: elvConfigs.any(
      (f) =>
          f ==
          (activeTerritory == ElvTerritory.usa
              ? InspectionElvConfigConstants.usaInspectionSaveButtonVisible
              : InspectionElvConfigConstants.ukInspectionSaveButtonVisible),
    ),
  );

  final bool ukAllowChromeWheels;
  final bool usaAllowChromeWheels;
  final bool ukMandateVehicleFrontAndBackImages;
  final bool usaMandateVehicleFrontAndBackImages;
  final bool batteryImageRequired;
  final bool catImageRequired;
  final bool proofOfAddressImageRequired;
  final bool identificationImageRequired;
  final bool allowAutoCatLookup;
  final bool saveButtonVisible;
}
