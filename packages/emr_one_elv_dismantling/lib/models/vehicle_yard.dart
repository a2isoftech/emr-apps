import 'package:json_annotation/json_annotation.dart';

part 'vehicle_yard.g.dart';

@JsonSerializable()
class VehicleYard {
  VehicleYard({required this.yardCode});
  factory VehicleYard.fromJson(Map<String, dynamic> json) =>
      _$VehicleYardFromJson(json);
  final String yardCode;

  Map<String, dynamic> toJson() => _$VehicleYardToJson(this);
}
