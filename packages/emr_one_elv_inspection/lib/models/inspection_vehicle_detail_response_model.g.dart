// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_vehicle_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionVehicleDetailResponseModel
    _$InspectionVehicleDetailResponseModelFromJson(Map<String, dynamic> json) =>
        InspectionVehicleDetailResponseModel(
          make: json['make'] as String,
          model: json['model'] as String,
          vin: json['vin'] as String?,
          vehicleReg: json['vehicleReg'] as String?,
          year: (json['year'] as num?)?.toInt(),
        );

Map<String, dynamic> _$InspectionVehicleDetailResponseModelToJson(
        InspectionVehicleDetailResponseModel instance) =>
    <String, dynamic>{
      'make': instance.make,
      'model': instance.model,
      'vin': instance.vin,
      'vehicleReg': instance.vehicleReg,
      'year': instance.year,
    };
