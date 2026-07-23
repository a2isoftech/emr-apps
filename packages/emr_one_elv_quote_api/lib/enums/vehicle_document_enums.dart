enum VehicleDocumentEnums {
  v5('V5'),
  frontVehiclePart('FRONT_VEHICLE_PART'),
  backVehiclePart('BACK_VEHICLE_PART'),
  vin('VIN'),
  vrn('VRN'),
  proofOfAddress('PROOF_OF_ADDRESS'),
  identification('IDENTIFICATION'),
  battery('BATTERY'),
  cat('CAT'),
  lpgTank('LPG Tanks'),
  rubbish('Rubbish');

  const VehicleDocumentEnums(this.label);
  final String label;

  static VehicleDocumentEnums fromString(String value) {
    return VehicleDocumentEnums.values.firstWhere(
      (e) => e.label == value,
      orElse: () => VehicleDocumentEnums.v5,
    );
  }
}
