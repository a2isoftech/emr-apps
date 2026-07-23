// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentLocation _$CurrentLocationFromJson(Map<String, dynamic> json) =>
    CurrentLocation(
      coordinates: json['coordinates'] == null
          ? null
          : LatLong.fromJson(json['coordinates'] as Map<String, dynamic>),
      status: json['status'] as String?,
      locationCode: json['locationCode'] as String?,
    );

Map<String, dynamic> _$CurrentLocationToJson(CurrentLocation instance) =>
    <String, dynamic>{
      'coordinates': instance.coordinates,
      'status': instance.status,
      'locationCode': instance.locationCode,
    };

LatLong _$LatLongFromJson(Map<String, dynamic> json) => LatLong(
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$LatLongToJson(LatLong instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
