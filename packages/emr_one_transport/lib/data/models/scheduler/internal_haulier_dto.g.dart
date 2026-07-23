// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_haulier_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InternalHaulierDto _$InternalHaulierDtoFromJson(Map<String, dynamic> json) =>
    InternalHaulierDto(
      yards: (json['yards'] as List<dynamic>)
          .map((e) => SchedulerYard.fromJson(e as Map<String, dynamic>))
          .toList(),
      hauliers: (json['hauliers'] as List<dynamic>)
          .map((e) => SchedulerHaulier.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InternalHaulierDtoToJson(InternalHaulierDto instance) =>
    <String, dynamic>{
      'yards': instance.yards,
      'hauliers': instance.hauliers,
    };
