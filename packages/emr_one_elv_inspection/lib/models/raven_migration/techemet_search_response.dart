import 'package:json_annotation/json_annotation.dart';

part 'techemet_search_response.g.dart';

@JsonSerializable()
class TechemetSearchResponse {
  TechemetSearchResponse({
    required this.id,
    required this.fill,
    required this.unitCost,
    required this.unitCostPaid,
    required this.make,
    required this.model,
    required this.serial,
    required this.sealNo,
  });

  factory TechemetSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$TechemetSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TechemetSearchResponseToJson(this);

  final String id;
  final double fill;
  final double unitCost;
  final double unitCostPaid;
  final String make;
  final String model;
  final String serial;
  final String sealNo;
}
