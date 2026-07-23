enum PartTypeEnum {
  unknown,
  alloyWheel,
  steelWheel,
  chromeWheel,
  battery,
  catalyticConverter,
  carBody,
}

PartTypeEnum partTypeFromJson(String value) {
  switch (value) {
    case 'ALLOY_WHEEL':
      return PartTypeEnum.alloyWheel;
    case 'STEEL_WHEEL':
      return PartTypeEnum.steelWheel;
    case 'CHROME_WHEEL':
      return PartTypeEnum.chromeWheel;
    case 'BATTERY':
      return PartTypeEnum.battery;
    case 'CATALYTIC_CONVERTER':
      return PartTypeEnum.catalyticConverter;
    case 'CAR_BODY':
      return PartTypeEnum.carBody;
    case 'UNKNOWN':
    default:
      return PartTypeEnum.unknown;
  }
}

String partTypeToJson(PartTypeEnum type) {
  switch (type) {
    case PartTypeEnum.alloyWheel:
      return 'ALLOY_WHEEL';
    case PartTypeEnum.steelWheel:
      return 'STEEL_WHEEL';
    case PartTypeEnum.chromeWheel:
      return 'CHROME_WHEEL';
    case PartTypeEnum.battery:
      return 'BATTERY';
    case PartTypeEnum.catalyticConverter:
      return 'CATALYTIC_CONVERTER';
    case PartTypeEnum.carBody:
      return 'CAR_BODY';
    case PartTypeEnum.unknown:
      return 'UNKNOWN';
  }
}
