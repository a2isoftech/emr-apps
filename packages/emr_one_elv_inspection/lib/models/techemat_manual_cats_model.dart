import 'package:json_annotation/json_annotation.dart';

part 'techemat_manual_cats_model.g.dart';

@JsonSerializable()
class TechematManualCatsModel {
  TechematManualCatsModel({
    required this.id,
    required this.fill,
    required this.active,
    required this.unitCost,
    required this.unitCostPaid,
    required this.make,
    required this.model,
    required this.serial,
    required this.sealNo,
    required this.extendedProperties,
  });

  factory TechematManualCatsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TechematManualCatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TechematManualCatsModelToJson(this);

  final String id;
  final double fill;
  final bool active;
  final double unitCost;
  final double unitCostPaid;
  final String make;
  final String model;
  final String serial;
  final String sealNo;
  final Map<String, dynamic> extendedProperties;
}
