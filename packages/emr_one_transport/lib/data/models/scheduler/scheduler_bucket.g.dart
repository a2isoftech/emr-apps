// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_bucket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchedulerBucket _$SchedulerBucketFromJson(Map<String, dynamic> json) =>
    SchedulerBucket(
      managedHauliers: (json['managedHauliers'] as List<dynamic>)
          .map((e) => ManagedHaulierDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      thirdPartyHauliers: (json['thirdPartyHauliers'] as List<dynamic>)
          .map((e) => ThirdpartyHaulierDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      internalHaulier: json['internalHaulier'] == null
          ? null
          : InternalHaulierDto.fromJson(
              json['internalHaulier'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SchedulerBucketToJson(SchedulerBucket instance) =>
    <String, dynamic>{
      'internalHaulier': instance.internalHaulier,
      'managedHauliers': instance.managedHauliers,
      'thirdPartyHauliers': instance.thirdPartyHauliers,
    };
