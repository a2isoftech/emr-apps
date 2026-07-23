import 'package:emr_one_elv_inspection/models/raven_migration/non_conforming_part.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/vehicle_part_configuration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_configuration.g.dart';

@JsonSerializable()
class VehicleConfiguration {
  VehicleConfiguration({
    required this.vinUnreadable,
    required this.hasBattery,
    required this.parts,
    required this.nonConformingParts,
  });

  factory VehicleConfiguration.fromJson(Map<String, dynamic> json) =>
      _$VehicleConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleConfigurationToJson(this);

  bool vinUnreadable;
  bool hasBattery;
  List<VehiclePartConfiguration> parts;
  List<NonConformingPart> nonConformingParts;
}
