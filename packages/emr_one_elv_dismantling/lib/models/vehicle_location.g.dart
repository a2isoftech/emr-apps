// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleLocation _$VehicleLocationFromJson(Map<String, dynamic> json) =>
    VehicleLocation(
      yard: VehicleYard.fromJson(json['yard'] as Map<String, dynamic>),
      yardId: json['yardId'] as String,
    );

Map<String, dynamic> _$VehicleLocationToJson(VehicleLocation instance) =>
    <String, dynamic>{
      'yard': instance.yard,
      'yardId': instance.yardId,
    };
