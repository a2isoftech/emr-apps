import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_description_model.g.dart';

@JsonSerializable()
class VehicleDescriptionModel {
  VehicleDescriptionModel({
    required this.id,
    required this.year,
    required this.make,
    required this.model,
    this.engineSize,
    this.curbWeight,
    this.curbWeightUom,
    this.fuelType,
    this.vehicleReg,
    this.vin,
  });

  factory VehicleDescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleDescriptionModelFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleDescriptionModelToJson(this);

  final int id;
  final int year;
  final double? engineSize;
  final double? curbWeight;
  final Uom? curbWeightUom;
  final String make;
  final String model;
  final String? fuelType;
  final String? vehicleReg;
  final String? vin;
  String get vehicleIdentifier =>
      vehicleReg?.isNotEmpty ?? false ? vehicleReg! : vin!;
}
