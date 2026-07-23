import 'package:emr_one_elv_inspection/models/raven_migration/vehicle_configuration.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/vehicle_detail.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/vehicle_document.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_info.g.dart';

@JsonSerializable()
class VehicleInfo {
  VehicleInfo({
    required this.detail,
    required this.documents,
    required this.configuration,
  });

  factory VehicleInfo.fromJson(Map<String, dynamic> json) =>
      _$VehicleInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleInfoToJson(this);

  VehicleDetail detail;
  VehicleDocument documents;
  VehicleConfiguration configuration;
}
