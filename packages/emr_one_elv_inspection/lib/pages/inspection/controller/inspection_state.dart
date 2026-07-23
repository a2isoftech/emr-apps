import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/models/inspection_quote_model.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:flutter/material.dart';

class InspectionState {
  InspectionState({
    required this.ukAllowChromeWheels,
    required this.usaAllowChromeWheels,
    required this.ukMandateVehicleFrontAndBackImages,
    required this.usaMandateVehicleFrontAndBackImages,
    required this.batteryImageRequired,
    required this.catImageRequired,
    required this.proofOfAddressImageRequired,
    required this.identificationImageRequired,
    required this.currentScreen,
    required this.noResult,
    required this.activeTab,
    required this.catalyticFillList,
    required this.catLocationList,
    required this.catClassificationList,
    required this.cats,
    required this.nonConformingParts,
    required this.allowAutoCatLookup,
    this.quoteToInspect,
  });

  factory InspectionState.init(
    ElvTerritory activeTerritory,
    List<String> elvConfigFlags,
  ) => InspectionState(
    ukAllowChromeWheels: elvConfigFlags.any(
      (f) => f == InspectionElvConfigConstants.ukAllowChromeWheels,
    ),
    usaAllowChromeWheels: elvConfigFlags.any(
      (f) => f == InspectionElvConfigConstants.usaAllowChromeWheels,
    ),
    ukMandateVehicleFrontAndBackImages: elvConfigFlags.any(
      (f) =>
          f == InspectionElvConfigConstants.ukMandateVehicleFrontAndBackImages,
    ),
    usaMandateVehicleFrontAndBackImages: elvConfigFlags.any(
      (f) =>
          f == InspectionElvConfigConstants.usaMandateVehicleFrontAndBackImages,
    ),
    batteryImageRequired: elvConfigFlags.any(
      (f) =>
          f ==
          (activeTerritory == ElvTerritory.usa
              ? InspectionElvConfigConstants.usaBatteryImageRequired
              : InspectionElvConfigConstants.ukBatteryImageRequired),
    ),
    catImageRequired: elvConfigFlags.any(
      (f) =>
          f ==
          (activeTerritory == ElvTerritory.usa
              ? InspectionElvConfigConstants.usaCatImageRequired
              : InspectionElvConfigConstants.ukCatImageRequired),
    ),
    proofOfAddressImageRequired: elvConfigFlags.any(
      (f) =>
          f ==
          (activeTerritory == ElvTerritory.usa
              ? InspectionElvConfigConstants.usaProofOfAddressImageRequired
              : InspectionElvConfigConstants.ukProofOfAddressImageRequired),
    ),
    identificationImageRequired: elvConfigFlags.any(
      (f) =>
          f ==
          (activeTerritory == ElvTerritory.usa
              ? InspectionElvConfigConstants.usaIdentificationImageRequired
              : InspectionElvConfigConstants.ukIdentificationImageRequired),
    ),
    allowAutoCatLookup: elvConfigFlags.any(
      (f) => f == InspectionElvConfigConstants.allowAutoCatLookup,
    ),
    currentScreen: InspectionScreen.inspection,
    noResult: false,
    activeTab: InspectionTabs.vehiclePictures,
    cats: ValueNotifier([]),
    catalyticFillList: CatalyticFills.getCatalyticFills(),
    catLocationList: CatLocationEnum.territoryCatLocations(activeTerritory),
    catClassificationList: CatClassifications.getClassifications(),
    nonConformingParts: NonConformingParts.getParts(),
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
  InspectionScreen currentScreen;
  bool noResult;
  InspectionTabs activeTab;
  Map<double, String> catalyticFillList = {};
  Map<int, String> catLocationList = {};
  Map<int, String> catClassificationList = {};
  InspectionQuoteModel? quoteToInspect;
  ValueNotifier<List<TechCatSearchModel>> cats;
  ValueNotifier<bool> loadingNotifier = ValueNotifier(false);
  Map<String, VehicleNonConformingPartModel> selectedNonConformingParts = {};
  Map<String, VehicleNonConformingPartModel> nonConformingParts;
  double originalQuotePrice = 0;
  ValueNotifier<bool> hideVehicleIdentifier = ValueNotifier(false);
  ValueNotifier<bool> isVinValid = ValueNotifier(false);
  ValueNotifier<VerificationSubTypeEnum> identificationType = ValueNotifier(
    VerificationSubTypeEnum.none,
  );
  ValueNotifier<VerificationSubTypeEnum> proofOfAddressType = ValueNotifier(
    VerificationSubTypeEnum.none,
  );
  ValueNotifier<bool> isVinUnreadable = ValueNotifier(false);
}

enum InspectionScreen { inspection, loading, complete, failed, contactHelpDesk }

enum InspectionTabs { vehiclePictures, documents, vehicleParts }

enum InspectionParts { vehicle, vin, alloys, steels, battery, cat, chromes }
