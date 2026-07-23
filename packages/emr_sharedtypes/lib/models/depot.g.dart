// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Depot _$DepotFromJson(Map<String, dynamic> json) => Depot(
      json['code'] as String,
      json['name'] as String,
      yardCode: json['yardCode'] as String?,
      gradeType: json['gradeType'] as String?,
      id: json['id'] as String?,
      cmpCode: json['cmpCode'] as String?,
    );

Map<String, dynamic> _$DepotToJson(Depot instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'yardCode': instance.yardCode,
      'gradeType': instance.gradeType,
      'cmpCode': instance.cmpCode,
    };
