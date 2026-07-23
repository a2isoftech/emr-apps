// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clone_haulier_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CloneJobHaulierInfo _$CloneJobHaulierInfoFromJson(Map<String, dynamic> json) =>
    CloneJobHaulierInfo(
      haulierCode: json['haulierCode'] as String,
      haulierTypeId: json['haulierTypeId'] as String,
      assetNumber: json['assetNumber'] as String?,
      vrm: json['vrm'] as String?,
    );

Map<String, dynamic> _$CloneJobHaulierInfoToJson(
        CloneJobHaulierInfo instance) =>
    <String, dynamic>{
      'assetNumber': instance.assetNumber,
      'vrm': instance.vrm,
      'haulierCode': instance.haulierCode,
      'haulierTypeId': instance.haulierTypeId,
    };
