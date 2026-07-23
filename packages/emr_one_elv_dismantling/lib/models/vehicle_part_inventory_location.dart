import 'package:json_annotation/json_annotation.dart';

part 'vehicle_part_inventory_location.g.dart';

@JsonSerializable()
class VehiclePartInventoryLocation {
  VehiclePartInventoryLocation({required this.code, required this.description});
  factory VehiclePartInventoryLocation.fromJson(Map<String, dynamic> json) =>
      _$VehiclePartInventoryLocationFromJson(json);
  final String code;
  final String description;
}
