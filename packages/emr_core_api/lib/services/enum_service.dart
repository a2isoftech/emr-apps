class EnumService {
  static TEnum? stringToEnum<TEnum>(
    String? enumString,
    List<TEnum> enumValues,
  ) {
    if ((enumString ?? '').isEmpty) {
      return null;
    }
    return enumValues.firstWhere(
      (e) => e.toString().split('.').last == enumString,
      orElse: () => enumValues.first,
    );
  }

  static String enumToString<TEnum>(
    TEnum? val,
  ) {
    if (val == null) {
      return '';
    }

    return val.toString().split('.').last;
  }
}
