import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_configuration_model.g.dart';

@JsonSerializable()
class VehicleConfigurationModel {
  VehicleConfigurationModel({
    required this.hasOriginalCat,
    required this.catDetails,
    required this.nonConformingParts,
    required this.vehicleDocuments,
    required this.vinUnreadable,
    this.hasBattery,
    this.batteryImage,
    this.alloyWheels,
    this.steelWheels,
    this.chromeWheels,
    this.priceAdjustment,
  });

  factory VehicleConfigurationModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleConfigurationModelFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleConfigurationModelToJson(this);

  bool? hasOriginalCat;
  final List<VehicleCatDetailModel> catDetails;
  final List<VehicleNonConformingPartModel> nonConformingParts;
  final List<VehicleDocumentsModel> vehicleDocuments;
  bool? hasBattery;
  String? batteryImage;
  int? alloyWheels;
  int? steelWheels;
  int? chromeWheels;
  final List<PriceAdjustmentModel>? priceAdjustment;
  bool vinUnreadable;
}
