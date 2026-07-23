// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thirdparty_haulier_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThirdpartyHaulierDto _$ThirdpartyHaulierDtoFromJson(
        Map<String, dynamic> json) =>
    ThirdpartyHaulierDto(
      jobs: (json['jobs'] as List<dynamic>)
          .map((e) => SchedulerJob.fromJson(e as Map<String, dynamic>))
          .toList(),
      haulierType: json['haulierType'] as String,
      haulierCode: json['haulierCode'] as String,
      haulierName: json['haulierName'] as String?,
    );

Map<String, dynamic> _$ThirdpartyHaulierDtoToJson(
        ThirdpartyHaulierDto instance) =>
    <String, dynamic>{
      'haulierType': instance.haulierType,
      'haulierCode': instance.haulierCode,
      'haulierName': instance.haulierName,
      'jobs': instance.jobs,
    };
