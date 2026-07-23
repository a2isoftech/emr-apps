// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_description_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleDescriptionModel _$VehicleDescriptionModelFromJson(
        Map<String, dynamic> json) =>
    VehicleDescriptionModel(
      id: (json['id'] as num).toInt(),
      year: (json['year'] as num).toInt(),
      make: json['make'] as String,
      model: json['model'] as String,
      engineSize: (json['engineSize'] as num?)?.toDouble(),
      curbWeight: (json['curbWeight'] as num?)?.toDouble(),
      curbWeightUom: $enumDecodeNullable(_$UomEnumMap, json['curbWeightUom']),
      fuelType: json['fuelType'] as String?,
      vehicleReg: json['vehicleReg'] as String?,
      vin: json['vin'] as String?,
    );

Map<String, dynamic> _$VehicleDescriptionModelToJson(
        VehicleDescriptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'year': instance.year,
      'engineSize': instance.engineSize,
      'curbWeight': instance.curbWeight,
      'curbWeightUom': _$UomEnumMap[instance.curbWeightUom],
      'make': instance.make,
      'model': instance.model,
      'fuelType': instance.fuelType,
      'vehicleReg': instance.vehicleReg,
      'vin': instance.vin,
    };

const _$UomEnumMap = {
  Uom.unknown: 'unknown',
  Uom.mt: 'MT',
  Uom.lb: 'LB',
  Uom.gt: 'GT',
  Uom.nt: 'NT',
  Uom.kg: 'KG',
  Uom.ld: 'LD',
  Uom.ea: 'EA',
  Uom.lt: 'LT',
  Uom.hr: 'HR',
  Uom.cwt: 'CWT',
};
