// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_part_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehiclePartConfiguration _$VehiclePartConfigurationFromJson(
        Map<String, dynamic> json) =>
    VehiclePartConfiguration(
      partKey: json['partKey'] as String,
      partInfo: PartInfo.fromJson(json['partInfo'] as Map<String, dynamic>),
      partPhotos: (json['partPhotos'] as List<dynamic>)
          .map((e) => MediaAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VehiclePartConfigurationToJson(
        VehiclePartConfiguration instance) =>
    <String, dynamic>{
      'partKey': instance.partKey,
      'partInfo': instance.partInfo,
      'partPhotos': instance.partPhotos,
    };
