enum VehiclePartsEnum {
  alloyWheels('ALLOY_WHEELS'),
  steelWheel('STEEL_WHEELS'),
  battery('BATTERY'),
  cat('CAT'),
  nonConforming('NON_CONFORMING');

  const VehiclePartsEnum(this.label);
  final String label;
}
