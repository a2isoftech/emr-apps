import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';

extension VehicleDocumentEnumsExtensions on VehicleDocumentEnums {
  String vehicleDocumentEnumToString() {
    switch (this) {
      case VehicleDocumentEnums.v5:
        return 'V5';
      case VehicleDocumentEnums.frontVehiclePart:
        return 'Front';
      case VehicleDocumentEnums.backVehiclePart:
        return 'Back';
      case VehicleDocumentEnums.identification:
        return 'Identification';
      case VehicleDocumentEnums.proofOfAddress:
        return 'Address Proof';
      case VehicleDocumentEnums.vrn:
        return 'VRN';
      case VehicleDocumentEnums.vin:
        return 'VIN';
      case VehicleDocumentEnums.battery:
        return 'Battery';
      case VehicleDocumentEnums.cat:
        return 'CATs';
      case VehicleDocumentEnums.lpgTank:
        return 'LPG Tanks';
      case VehicleDocumentEnums.rubbish:
        return 'Rubbish';
    }
  }
}
