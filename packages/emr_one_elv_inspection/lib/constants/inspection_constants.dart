import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:emr_one_elv_quote_api/graphql/schema.graphql.dart';

enum PartType { alloys, steels, battery }

class TerritoryCodes {
  static const uk = 'A11';
  static const us = 'A42';
}

enum BodyState { inspecting, documents }

class MediaServiceConstants {
  static const partition = 'com.elv.vehicleimages/';

  static String addPartitionPrefix(String path) {
    return 'i/$path';
  }
}

class LayoutBuilderTechemetCATWidthConstants {
  static double size(double screenSize) {
    if (screenSize > 900) {
      return 380;
    } else {
      return 320;
    }
  }
}

class QuoteSourceToString {
  static String quoteSource(Enum$QuoteSourceEnum quoteSource) {
    switch (quoteSource) {
      case Enum$QuoteSourceEnum.GO_GREEN_MOTOR:
        return 'Go Green';
      case Enum$QuoteSourceEnum.QUICK_QUOTE:
        return 'Quick Quote';
      case Enum$QuoteSourceEnum.VIN_SCRAP:
        return 'Vin Scrap';
      case Enum$QuoteSourceEnum.QUOTE_MY_MOTOR:
        return 'Quote My Motor';
      case Enum$QuoteSourceEnum.MOTOR_QUOTER:
        return 'Motor Quoter';
      case Enum$QuoteSourceEnum.EMR_VEHICLE_RECYCLING:
        return 'EMR Vehicle Recycling';
      case Enum$QuoteSourceEnum.$unknown:
      case Enum$QuoteSourceEnum.UNKNOWN:
        return 'Unknown';
    }
  }
}

class NonConformingParts {
  static Map<String, VehicleNonConformingPartModel> getParts() => {
    VehicleDocumentEnums.lpgTank.label: VehicleNonConformingPartModel(
      partName: VehicleDocumentEnums.lpgTank.label,
    ),
    VehicleDocumentEnums.rubbish.label: VehicleNonConformingPartModel(
      partName: VehicleDocumentEnums.rubbish.label,
    ),
  };
}

class CatClassifications {
  static Map<int, String> getClassifications() => {
    CatClassificationEnum.original.index: CatClassificationEnum.original.label,
    CatClassificationEnum.afterMarket.index:
        CatClassificationEnum.afterMarket.label,
  };
}

class CatalyticFills {
  static Map<double, String> getCatalyticFills() => {
    0: 'Empty',
    .25: '1/4',
    .5: '1/2',
    .75: '3/4',
    1: 'Full',
  };
}

class HiveTypeAdapters {
  static const int kVehicleDocumentsAdapter = 6;
  static const int kVehiclePartsAdapter = 7;
  static const int kVehiclePartsCatalyticAdapter = 8;
}

class HiveDatabase {
  static const String vehicleDocument = 'vehicleDocuments';
  static const String vehiclePartsCatalytic = 'vehiclePartsCatalytic';
  static const String vehicleParts = 'vehicleParts';
}

class VehiclePartAssetTemplateImagePath {
  static const String frontSide =
      'packages/emr_one_elv_inspection/assets/images/vehicle_front.png';
  static const String rearSide =
      'packages/emr_one_elv_inspection/assets/images/vehicle_back.png';
  static const String frontSideExample =
      'packages/emr_one_elv_inspection/assets/images/FrontCarPic.png';
  static const String rearSideExample =
      'packages/emr_one_elv_inspection/assets/images/CarRearPic.png';
}

class InspectionElvConfigConstants {
  static const usaAllowChromeWheels = 'usaAllowChromeWheels';
  static const ukAllowChromeWheels = 'ukAllowChromeWheels';
  static const usaMandateVehicleFrontAndBackImages =
      'usaMandateVehicleFrontAndBackImages';
  static const ukMandateVehicleFrontAndBackImages =
      'ukMandateVehicleFrontAndBackImages';
  static const String usaBatteryImageRequired =
      'usaInspectionBatteryImageRequired';
  static const String ukBatteryImageRequired =
      'ukInspectionBatteryImageRequired';
  static const String usaCatImageRequired = 'usaInspectionCatImageRequired';
  static const String ukCatImageRequired = 'ukInspectionCatImageRequired';
  static const String usaProofOfAddressImageRequired =
      'usaInspectionProofOfAddressImageRequired';
  static const String ukProofOfAddressImageRequired =
      'ukInspectionProofOfAddressImageRequired';
  static const String usaIdentificationImageRequired =
      'usaInspectionIdentificationImageRequired';
  static const String ukIdentificationImageRequired =
      'ukInspectionIdentificationImageRequired';
  static const String ukInspectionSaveButtonVisible =
      'ukInspectionSaveButtonVisible';
  static const String usaInspectionSaveButtonVisible =
      'usaInspectionSaveButtonVisible';
  static const String allowAutoCatLookup = 'allowAutoCatLookup';
}

class InspectionDeviceTypeConstants {
  static const mobile = 700;
  static const tablet = 1200;
}
