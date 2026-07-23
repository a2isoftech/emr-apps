// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_quote_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionQuoteResponseModel _$InspectionQuoteResponseModelFromJson(
        Map<String, dynamic> json) =>
    InspectionQuoteResponseModel(
      quoteId: (json['quoteId'] as num).toInt(),
      createdDate: DateTime.parse(json['createdDate'] as String),
      quoteType: json['quoteType'] as String,
      hasBattery: json['hasBattery'] as bool,
      hasOriginalCat: json['hasOriginalCat'] as bool,
      alloyWheels: (json['alloyWheels'] as num).toInt(),
      steelWheels: (json['steelWheels'] as num).toInt(),
    );

Map<String, dynamic> _$InspectionQuoteResponseModelToJson(
        InspectionQuoteResponseModel instance) =>
    <String, dynamic>{
      'quoteId': instance.quoteId,
      'createdDate': instance.createdDate.toIso8601String(),
      'quoteType': instance.quoteType,
      'hasBattery': instance.hasBattery,
      'hasOriginalCat': instance.hasOriginalCat,
      'alloyWheels': instance.alloyWheels,
      'steelWheels': instance.steelWheels,
    };
