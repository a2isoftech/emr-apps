// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Created _$CreatedFromJson(Map<String, dynamic> json) => Created(
      userInfoId: json['userInfoId'] as String,
      userName: json['userName'] as String? ?? '',
      at: json['at'] == null ? null : DateTime.parse(json['at'] as String),
    );

Map<String, dynamic> _$CreatedToJson(Created instance) => <String, dynamic>{
      'userInfoId': instance.userInfoId,
      'userName': instance.userName,
      'at': instance.at.toIso8601String(),
    };
