// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scale _$ScaleFromJson(Map<String, dynamic> json) => Scale(
      name: json['name'] as String,
      url: json['url'] as String,
      scaleNumber: (json['scaleNumber'] as num).toInt(),
      cameras: (json['cameras'] as List<dynamic>)
          .map((e) => Camera.fromJson(e as Map<String, dynamic>))
          .toList(),
      assetCode: json['assetCode'] as String,
    );

Map<String, dynamic> _$ScaleToJson(Scale instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'scaleNumber': instance.scaleNumber,
      'assetCode': instance.assetCode,
      'cameras': instance.cameras,
    };
