import 'package:json_annotation/json_annotation.dart';

part 'inspection_quote_response_model.g.dart';

@JsonSerializable()
class InspectionQuoteResponseModel {
  InspectionQuoteResponseModel({
    required this.quoteId,
    required this.createdDate,
    required this.quoteType,
    required this.hasBattery,
    required this.hasOriginalCat,
    required this.alloyWheels,
    required this.steelWheels,
  });

  factory InspectionQuoteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InspectionQuoteResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$InspectionQuoteResponseModelToJson(this);

  final int quoteId;
  final DateTime createdDate;
  final String quoteType;
  final bool hasBattery;
  final bool hasOriginalCat;
  final int alloyWheels;
  final int steelWheels;
}
