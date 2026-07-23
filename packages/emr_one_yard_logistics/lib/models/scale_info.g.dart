// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scale_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScaleInfo _$ScaleInfoFromJson(Map<String, dynamic> json) => ScaleInfo(
      yardId: json['yardId'] as String,
      alias: json['alias'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      createdByName: json['createdByName'] as String,
      createdBy: json['createdBy'] as String,
      id: json['id'] as String,
      assetCode: json['assetCode'] as String?,
    );

Map<String, dynamic> _$ScaleInfoToJson(ScaleInfo instance) => <String, dynamic>{
      'yardId': instance.yardId,
      'alias': instance.alias,
      'name': instance.name,
      'url': instance.url,
      'createdByName': instance.createdByName,
      'createdBy': instance.createdBy,
      'id': instance.id,
      'assetCode': instance.assetCode,
    };
