// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'haulier_schedule_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HaulierScheduleDetail _$HaulierScheduleDetailFromJson(
        Map<String, dynamic> json) =>
    HaulierScheduleDetail(
      active: json['active'] as bool,
      haulierCode: json['haulierCode'] as String,
      haulierType: json['haulierType'] as String,
      haulierId: json['haulierId'] as String?,
      haulierName: json['haulierName'] as String?,
      loads: (json['loads'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HaulierScheduleDetailToJson(
        HaulierScheduleDetail instance) =>
    <String, dynamic>{
      'haulierId': instance.haulierId,
      'haulierCode': instance.haulierCode,
      'haulierName': instance.haulierName,
      'haulierType': instance.haulierType,
      'loads': instance.loads,
      'active': instance.active,
    };
