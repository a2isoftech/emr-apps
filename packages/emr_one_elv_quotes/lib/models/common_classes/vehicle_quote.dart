class VehicleQuote {
  VehicleQuote({
    required this.total,
    required this.id,
    this.proofOfOwnership,
    this.catValue,
    this.hasTechemetCat,
  });

  double total;
  int id;
  String? proofOfOwnership;
  double? catValue;
  bool? hasTechemetCat;

  static VehicleQuote? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return VehicleQuote(
        total: json['total'] as double,
        id: json['id'] as int,
        proofOfOwnership: json['proofOfOwnership'] as String?,
        catValue: json['catValue'] as double?,
        hasTechemetCat: json['hasTechemetCat'] as bool?,
      );
    }
    return null;
  }

  static List<VehicleQuote>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VehicleQuote>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VehicleQuote.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
