// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lat_long.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatLong _$LatLongFromJson(Map<String, dynamic> json) => LatLong(
      json['latitude'] == null
          ? null
          : Decimal.fromJson(json['latitude'] as String),
      json['longitude'] == null
          ? null
          : Decimal.fromJson(json['longitude'] as String),
    );

Map<String, dynamic> _$LatLongToJson(LatLong instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
