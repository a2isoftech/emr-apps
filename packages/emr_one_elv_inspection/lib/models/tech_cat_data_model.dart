import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tech_cat_data_model.g.dart';

@JsonSerializable()
class TechCatDataModel {
  TechCatDataModel({
    required this.make,
    required this.model,
    required this.year,
    required this.variant,
    required this.engineSize,
    required this.horsePower,
    required this.fuelType,
    required this.currencyLong,
    required this.currencyShort,
    required this.searchReturn,
  });

  factory TechCatDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TechCatDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$TechCatDataModelToJson(this);

  final String make;
  final String model;
  final int year;
  final String variant;
  final double engineSize;
  final double horsePower;
  final String fuelType;
  final String currencyLong;
  final String currencyShort;
  List<TechCatSearchModel> searchReturn;
}
