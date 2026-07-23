import 'package:json_annotation/json_annotation.dart';

part 'vehicle_cat_detail_model.g.dart';

@JsonSerializable()
class VehicleCatDetailModel {
  VehicleCatDetailModel({
    this.location,
    this.catClassification,
    this.serialNumber,
    this.sealNumber,
    this.catValue,
    this.matchProbability,
    this.catalyticFill,
    this.imagePath,
    this.isManual = false,
    this.vehicleCatId,
    this.catId,
    this.techemetPriceCountSheetDetailId,
  });

  factory VehicleCatDetailModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleCatDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleCatDetailModelToJson(this);

  String? location;
  String? catClassification;
  String? serialNumber;
  String? sealNumber;
  double? catValue;
  int? matchProbability;
  double? catalyticFill;
  String? imagePath;
  bool isManual;
  int? vehicleCatId;
  String? catId;
  int? techemetPriceCountSheetDetailId;
}
