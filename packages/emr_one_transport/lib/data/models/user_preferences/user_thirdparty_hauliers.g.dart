// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_thirdparty_hauliers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserThirdPartyHauliers _$UserThirdPartyHauliersFromJson(
        Map<String, dynamic> json) =>
    UserThirdPartyHauliers(
      json['accountId'] as String,
      haulierCode: json['haulierCode'] as String?,
      haulierName: json['haulierName'] as String?,
      isMyThirdPartyHaulier: json['isMyThirdPartyHaulier'] as bool?,
    );

Map<String, dynamic> _$UserThirdPartyHauliersToJson(
        UserThirdPartyHauliers instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'haulierCode': instance.haulierCode,
      'haulierName': instance.haulierName,
      'isMyThirdPartyHaulier': instance.isMyThirdPartyHaulier,
    };
