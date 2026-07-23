// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'haulage_price_matrix_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HaulagePriceMatrixApiResponse _$HaulagePriceMatrixApiResponseFromJson(
  Map<String, dynamic> json,
) => HaulagePriceMatrixApiResponse(
  json['items'] == null
      ? null
      : HaulagePrice.fromJson(json['items'] as Map<String, dynamic>),
  (json['totalResults'] as num).toInt(),
  (json['pageNumber'] as num).toInt(),
  json['filter'] as String?,
  json['message'] as String?,
  (json['statusCode'] as num).toInt(),
  success: json['success'] as bool,
);

Map<String, dynamic> _$HaulagePriceMatrixApiResponseToJson(
  HaulagePriceMatrixApiResponse instance,
) => <String, dynamic>{
  'items': instance.items,
  'totalResults': instance.totalResults,
  'pageNumber': instance.pageNumber,
  'filter': instance.filter,
  'success': instance.success,
  'message': instance.message,
  'statusCode': instance.statusCode,
};
