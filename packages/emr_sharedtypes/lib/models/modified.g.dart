// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modified.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Modified _$ModifiedFromJson(Map<String, dynamic> json) => Modified(
      userInfoId: json['userInfoId'] as String,
      userName: json['userName'] as String? ?? '',
      at: json['at'] == null ? null : DateTime.parse(json['at'] as String),
    );

Map<String, dynamic> _$ModifiedToJson(Modified instance) => <String, dynamic>{
      'userInfoId': instance.userInfoId,
      'userName': instance.userName,
      'at': instance.at.toIso8601String(),
    };
