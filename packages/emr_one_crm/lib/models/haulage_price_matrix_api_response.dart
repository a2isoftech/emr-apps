import 'package:emr_one_crm/models/haulage_price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'haulage_price_matrix_api_response.g.dart';

@JsonSerializable()
class HaulagePriceMatrixApiResponse {
  HaulagePriceMatrixApiResponse(
    this.items,
    this.totalResults,
    this.pageNumber,
    this.filter,
    this.message,
    this.statusCode, {
    required this.success,
  });

  factory HaulagePriceMatrixApiResponse.fromJson(Map<String, dynamic> json) =>
      _$HaulagePriceMatrixApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HaulagePriceMatrixApiResponseToJson(this);

  final HaulagePrice? items;
  final int totalResults;
  final int pageNumber;
  final String? filter;
  final bool success;
  final String? message;
  final int statusCode;
}
