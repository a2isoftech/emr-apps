import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_one_elv_core/models/yard/yard_models.dart';

class ApiYard {
  /// Returns a new [Yard] instance.
  ApiYard({
    required this.name,
    required this.code,
    required this.address,
    required this.drivingDistance,
    required this.geodeticDistance,
    required this.canCollect,
    required this.canDeliver,
    this.telephone1,
    this.telephone2,
    this.fax,
    this.website,
    this.notes,
    this.openingTimes = const [],
  });

  String name;
  String code;
  Address address;
  String? telephone1;
  String? telephone2;
  String? fax;
  String? website;
  String? notes;
  List<YardOpeningTimesModel>? openingTimes;
  Distance drivingDistance;
  Distance geodeticDistance;
  bool canCollect;
  bool canDeliver;

  static ApiYard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return ApiYard(
        name: json['name'] as String,
        code: json['code'] as String,
        address: Address.fromJson(json['address'])!,
        telephone1: json['telephone1'] as String?,
        telephone2: json['telephone2'] as String?,
        fax: json['fax'] as String?,
        website: json['website'] as String?,
        notes: json['notes'] as String?,
        openingTimes: YardOpeningTimesModel.listFromJson(json['openingTimes']),
        drivingDistance: Distance.fromJson(json['drivingDistance'])!,
        geodeticDistance: Distance.fromJson(json['geodeticDistance'])!,
        canCollect: json['canCollect'] as bool,
        canDeliver: json['canDeliver'] as bool,
      );
    }
    return null;
  }

  static List<ApiYard>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiYard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiYard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
