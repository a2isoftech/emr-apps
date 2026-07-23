// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehiclePart _$VehiclePartFromJson(Map<String, dynamic> json) => VehiclePart(
      type: Enum$PartType.fromJson(json['type'] as String),
      partStatus: Enum$PartStatus.fromJson(json['partStatus'] as String),
      weight: Weight.fromJson(json['weight'] as Map<String, dynamic>),
      active: json['active'] as bool,
      extendedProperties:
          Map<String, String>.from(json['extendedProperties'] as Map),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$VehiclePartToJson(VehiclePart instance) =>
    <String, dynamic>{
      'type': instance.type,
      'partStatus': instance.partStatus,
      'weight': instance.weight,
      'active': instance.active,
      'extendedProperties': instance.extendedProperties,
      'description': instance.description,
    };
