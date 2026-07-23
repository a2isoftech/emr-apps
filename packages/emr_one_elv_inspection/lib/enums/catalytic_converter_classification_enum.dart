enum CatalyticConverterClassificationEnum { unknown, original, aftermarket }

CatalyticConverterClassificationEnum
catalyticConverterClassificationEnumFromJson(String value) {
  switch (value) {
    case 'ORIGINAL':
      return CatalyticConverterClassificationEnum.original;
    case 'AFTERMARKET':
      return CatalyticConverterClassificationEnum.aftermarket;
    case 'UNKNOWN':
    default:
      return CatalyticConverterClassificationEnum.unknown;
  }
}

String catalyticConverterClassificationEnumToJson(
  CatalyticConverterClassificationEnum type,
) {
  switch (type) {
    case CatalyticConverterClassificationEnum.original:
      return 'ORIGINAL';
    case CatalyticConverterClassificationEnum.aftermarket:
      return 'AFTERMARKET';
    case CatalyticConverterClassificationEnum.unknown:
      return 'UNKNOWN';
  }
}

extension CatalyticConverterClassificationEnumLabel
    on CatalyticConverterClassificationEnum {
  String get label {
    switch (this) {
      case CatalyticConverterClassificationEnum.original:
        return 'Original';
      case CatalyticConverterClassificationEnum.aftermarket:
        return 'After Market';
      case CatalyticConverterClassificationEnum.unknown:
        return 'Unknown';
    }
  }
}
