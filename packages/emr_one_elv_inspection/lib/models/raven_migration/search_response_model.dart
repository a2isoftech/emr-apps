import 'package:json_annotation/json_annotation.dart';

part 'search_response_model.g.dart';

@JsonSerializable()
class SearchResponseModel {
  SearchResponseModel({
    required this.id,
    required this.status,
    required this.vehicleKey,
    required this.vin,
    required this.vrn,
    required this.make,
    required this.model,
    required this.year,
    required this.quoteNumber
  });

  factory SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResponseModelToJson(this);

  final String id;
  final String status;
  final String vehicleKey;
  final String vin;
  final String vrn;
  final String make;
  final String model;
  final int year;
  final String quoteNumber;
  String get vehicleIdentifier => vrn.isEmpty ? vin : vrn;
}
