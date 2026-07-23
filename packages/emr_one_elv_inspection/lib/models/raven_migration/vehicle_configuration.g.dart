// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleConfiguration _$VehicleConfigurationFromJson(
        Map<String, dynamic> json) =>
    VehicleConfiguration(
      vinUnreadable: json['vinUnreadable'] as bool,
      hasBattery: json['hasBattery'] as bool,
      parts: (json['parts'] as List<dynamic>)
          .map((e) =>
              VehiclePartConfiguration.fromJson(e as Map<String, dynamic>))
          .toList(),
      nonConformingParts: (json['nonConformingParts'] as List<dynamic>)
          .map((e) => NonConformingPart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VehicleConfigurationToJson(
        VehicleConfiguration instance) =>
    <String, dynamic>{
      'vinUnreadable': instance.vinUnreadable,
      'hasBattery': instance.hasBattery,
      'parts': instance.parts,
      'nonConformingParts': instance.nonConformingParts,
    };
