// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionResponseModel _$InspectionResponseModelFromJson(
        Map<String, dynamic> json) =>
    InspectionResponseModel(
      quoteStatus: json['quoteStatus'] as String,
      quote: InspectionQuoteResponseModel.fromJson(
          json['quote'] as Map<String, dynamic>),
      vehicleDetail: InspectionVehicleDetailResponseModel.fromJson(
          json['vehicleDetail'] as Map<String, dynamic>),
      batchQuoteId: (json['batchQuoteId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$InspectionResponseModelToJson(
        InspectionResponseModel instance) =>
    <String, dynamic>{
      'quoteStatus': instance.quoteStatus,
      'quote': instance.quote,
      'vehicleDetail': instance.vehicleDetail,
      'batchQuoteId': instance.batchQuoteId,
    };
