// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'known_tare_configurations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnownTareConfigurations _$KnownTareConfigurationsFromJson(
        Map<String, dynamic> json) =>
    KnownTareConfigurations(
      saveKnownTares: json['saveKnownTares'] as bool? ?? false,
      knownTareExpiryDays: (json['knownTareExpiryDays'] as num?)?.toInt(),
    );

Map<String, dynamic> _$KnownTareConfigurationsToJson(
        KnownTareConfigurations instance) =>
    <String, dynamic>{
      'saveKnownTares': instance.saveKnownTares,
      'knownTareExpiryDays': instance.knownTareExpiryDays,
    };
