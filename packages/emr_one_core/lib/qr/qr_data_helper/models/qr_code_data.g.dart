// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QRCodeData _$QRCodeDataFromJson(Map<String, dynamic> json) => QRCodeData(
      objectType: json['objectType'] as String,
      objectId: json['objectId'] as String,
      version: (json['version'] as num?)?.toInt() ?? 1,
      userDefinedProperties:
          json['userDefinedProperties'] as Map<String, dynamic>?,
      encryptedProperties: json['encryptedProperties'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$QRCodeDataToJson(QRCodeData instance) =>
    <String, dynamic>{
      'objectType': instance.objectType,
      'objectId': instance.objectId,
      'version': instance.version,
      'userDefinedProperties': instance.userDefinedProperties,
      'encryptedProperties': instance.encryptedProperties,
    };
