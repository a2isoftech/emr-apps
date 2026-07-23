import 'package:json_annotation/json_annotation.dart';

part 'inspection_vehicle_detail_response_model.g.dart';

@JsonSerializable()
class InspectionVehicleDetailResponseModel {
  InspectionVehicleDetailResponseModel({
    required this.make,
    required this.model,
    this.vin,
    this.vehicleReg,
    this.year,
  });

  factory InspectionVehicleDetailResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InspectionVehicleDetailResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$InspectionVehicleDetailResponseModelToJson(this);

  final String make;
  final String model;
  final String? vin;
  final String? vehicleReg;
  final int? year;
}
