import 'package:json_annotation/json_annotation.dart';

part 'vehicle_non_conforming_part_model.g.dart';

@JsonSerializable()
class VehicleNonConformingPartModel {
  VehicleNonConformingPartModel({
    required this.partName,
    this.path,
  });

  factory VehicleNonConformingPartModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleNonConformingPartModelFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleNonConformingPartModelToJson(this);

  final String partName;
  String? path;
}
