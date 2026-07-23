import 'package:emr_one_elv_dismantling/models/vehicle_yard.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_location.g.dart';

@JsonSerializable()
class VehicleLocation {
  VehicleLocation({required this.yard, required this.yardId,});
  factory VehicleLocation.fromJson(Map<String, dynamic> json) =>
      _$VehicleLocationFromJson(json);
  final VehicleYard yard;
  final String yardId;

  Map<String, dynamic> toJson() => _$VehicleLocationToJson(this);
}
