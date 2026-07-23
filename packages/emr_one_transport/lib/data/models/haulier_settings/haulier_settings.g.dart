// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'haulier_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HaulierSettings _$HaulierSettingsFromJson(Map<String, dynamic> json) =>
    HaulierSettings(
      json['accountId'] as String,
      accountNo: json['accountNo'] as String?,
      name: json['name'] as String?,
      isManagedHaulier: json['isManagedHaulier'] as bool?,
      isThirdPartyHaulier: json['isThirdPartyHaulier'] as bool?,
    );

Map<String, dynamic> _$HaulierSettingsToJson(HaulierSettings instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'accountNo': instance.accountNo,
      'name': instance.name,
      'isManagedHaulier': instance.isManagedHaulier,
      'isThirdPartyHaulier': instance.isThirdPartyHaulier,
    };
