// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'managed_haulier_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManagedHaulierDto _$ManagedHaulierDtoFromJson(Map<String, dynamic> json) =>
    ManagedHaulierDto(
      trucks: (json['trucks'] as List<dynamic>)
          .map((e) => SchedulerTruck.fromJson(e as Map<String, dynamic>))
          .toList(),
      haulierType: json['haulierType'] as String,
      haulierCode: json['haulierCode'] as String,
    )..haulierName = json['haulierName'] as String?;

Map<String, dynamic> _$ManagedHaulierDtoToJson(ManagedHaulierDto instance) =>
    <String, dynamic>{
      'haulierType': instance.haulierType,
      'haulierCode': instance.haulierCode,
      'haulierName': instance.haulierName,
      'trucks': instance.trucks,
    };
