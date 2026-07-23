// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleDetail _$VehicleDetailFromJson(Map<String, dynamic> json) =>
    VehicleDetail(
      curbWeight: UomValue.fromJson(json['curbWeight'] as Map<String, dynamic>),
      engineSize: (json['engineSize'] as num).toDouble(),
      fuelType: json['fuelType'] as String,
      make: json['make'] as String,
      model: json['model'] as String,
      vin: json['vin'] as String,
      vrn: json['vrn'] as String,
      year: (json['year'] as num).toInt(),
    );

Map<String, dynamic> _$VehicleDetailToJson(VehicleDetail instance) =>
    <String, dynamic>{
      'vin': instance.vin,
      'vrn': instance.vrn,
      'engineSize': instance.engineSize,
      'make': instance.make,
      'model': instance.model,
      'fuelType': instance.fuelType,
      'year': instance.year,
      'curbWeight': instance.curbWeight,
    };
