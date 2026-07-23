class TechemetCat {
  /// Returns a new [TechemetCat] instance.
  TechemetCat({
    required this.sid,
    required this.converterValue,
    required this.variantMatch,
    required this.engineSizeMatch,
    required this.horsePowerMatch,
    required this.fuelTypeMatch,
    required this.matchingProbability,
    this.serialNumber,
    this.imageThumb,
  });

  int sid;
  double converterValue;
  String? serialNumber;
  int variantMatch;
  int engineSizeMatch;
  int horsePowerMatch;
  int fuelTypeMatch;
  String? imageThumb;
  int matchingProbability;

  static TechemetCat? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return TechemetCat(
        sid: json['sid'] as int,
        converterValue: json['converterValue'] as double,
        serialNumber: json['serialNumber'] as String?,
        variantMatch: json['variantMatch'] as int,
        engineSizeMatch: json['engineSizeMatch'] as int,
        horsePowerMatch: json['horsePowerMatch'] as int,
        fuelTypeMatch: json['fuelTypeMatch'] as int,
        imageThumb: json['imageThumb'] as String?,
        matchingProbability: json['matchingProbability'] as int,
      );
    }
    return null;
  }

  static List<TechemetCat>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TechemetCat>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TechemetCat.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
