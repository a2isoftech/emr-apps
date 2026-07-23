import 'package:json_annotation/json_annotation.dart';

part 'vehicle_cat_detail_response_model.g.dart';

@JsonSerializable()
class VehicleCatDetailResponseModel {
  VehicleCatDetailResponseModel({
    required this.location,
    required this.catClassification,
    required this.catValue,
    required this.isManual,
    required this.updatedAt,
    this.vehicleCatId,
    this.serialNumber,
    this.sealNumber,
    this.matchProbability,
    this.catalyticFill,
    this.imagePath,
    this.catId,
  });

  factory VehicleCatDetailResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleCatDetailResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleCatDetailResponseModelToJson(this);

  final String location;
  final String catClassification;
  final double catValue;
  final bool isManual;
  final DateTime updatedAt;
  final int? vehicleCatId;
  final String? serialNumber;
  final String? sealNumber;
  final int? matchProbability;
  final double? catalyticFill;
  final String? imagePath;
  final String? catId;
}
