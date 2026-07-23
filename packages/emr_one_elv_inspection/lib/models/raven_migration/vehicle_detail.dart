import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_detail.g.dart';

@JsonSerializable()
class VehicleDetail {
  VehicleDetail({
    required this.curbWeight,
    required this.engineSize,
    required this.fuelType,
    required this.make,
    required this.model,
    required this.vin,
    required this.vrn,
    required this.year,
  });

  factory VehicleDetail.fromJson(Map<String, dynamic> json) =>
      _$VehicleDetailFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleDetailToJson(this);

  final String vin;
  final String vrn;
  final double engineSize;
  final String make;
  final String model;
  final String fuelType;
  final int year;
  final UomValue curbWeight;
  String get vehicleIdentifier => vrn.isEmpty ? vin : vrn;
}
