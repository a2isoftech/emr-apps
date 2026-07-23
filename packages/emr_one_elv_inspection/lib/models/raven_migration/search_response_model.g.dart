// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponseModel _$SearchResponseModelFromJson(Map<String, dynamic> json) =>
    SearchResponseModel(
      id: json['id'] as String,
      status: json['status'] as String,
      vehicleKey: json['vehicleKey'] as String,
      vin: json['vin'] as String,
      vrn: json['vrn'] as String,
      make: json['make'] as String,
      model: json['model'] as String,
      year: (json['year'] as num).toInt(),
      quoteNumber: json['quoteNumber'] as String,
    );

Map<String, dynamic> _$SearchResponseModelToJson(
        SearchResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'vehicleKey': instance.vehicleKey,
      'vin': instance.vin,
      'vrn': instance.vrn,
      'make': instance.make,
      'model': instance.model,
      'year': instance.year,
      'quoteNumber': instance.quoteNumber,
    };
