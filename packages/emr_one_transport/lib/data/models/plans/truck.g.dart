// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Truck _$TruckFromJson(Map<String, dynamic> json) => Truck(
      json['assetNumber'] as String,
      json['vrm'] as String,
      json['friendlyName'] as String?,
      json['serialNumber'] as String?,
      json['make'] as String?,
      json['model'] as String?,
    );

Map<String, dynamic> _$TruckToJson(Truck instance) => <String, dynamic>{
      'assetNumber': instance.assetNumber,
      'vrm': instance.vrm,
      'friendlyName': instance.friendlyName,
      'serialNumber': instance.serialNumber,
      'make': instance.make,
      'model': instance.model,
    };
