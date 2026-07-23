// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_viewport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapViewport _$MapViewportFromJson(Map<String, dynamic> json) => MapViewport(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      zoom: (json['zoom'] as num).toInt(),
    );

Map<String, dynamic> _$MapViewportToJson(MapViewport instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'zoom': instance.zoom,
    };
