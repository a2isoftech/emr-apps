import 'package:emr_one_elv_core/models/models.dart';

class VehicleSearchResult {
  /// Returns a new [VehicleSearchResult] instance.
  VehicleSearchResult({
    required this.resultsCount,
    this.fuel = const [],
    this.transmission = const [],
    this.variant = const [],
    this.bodyType = const [],
    this.doors = const [],
    this.year = const [],
    this.engineSize = const [],
    this.results = const [],
  });

  int resultsCount;
  List<String>? fuel;
  List<String>? transmission;
  List<String>? variant;
  List<String>? bodyType;
  List<String>? doors;
  List<String>? year;
  List<String>? engineSize;
  List<VehicleDetail> results;

  static VehicleSearchResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return VehicleSearchResult(
        resultsCount: json['resultsCount'] as int,
        fuel: json['fuel'] is List
            ? (json['fuel'] as List).cast<String>()
            : const [],
        transmission: json['transmission'] is List
            ? (json['transmission'] as List).cast<String>()
            : const [],
        variant: json['variant'] is List
            ? (json['variant'] as List).cast<String>()
            : const [],
        bodyType: json['bodyType'] is List
            ? (json['bodyType'] as List).cast<String>()
            : const [],
        doors: json['doors'] is List
            ? (json['doors'] as List).cast<String>()
            : const [],
        year: json['year'] is List
            ? (json['year'] as List).cast<String>()
            : const [],
        engineSize: json['engineSize'] is List
            ? (json['engineSize'] as List).cast<String>()
            : const [],
        results: VehicleDetail.listFromJson(json['results'])!,
      );
    }
    return null;
  }

  static List<VehicleSearchResult>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VehicleSearchResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VehicleSearchResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
