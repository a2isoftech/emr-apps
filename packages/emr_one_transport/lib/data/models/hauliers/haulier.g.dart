// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'haulier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Haulier _$HaulierFromJson(Map<String, dynamic> json) => Haulier(
      accountNo: json['accountNo'] as String?,
      isManagedHaulier: json['isManagedHaulier'] as bool?,
      isThirdPartyHaulier: json['isThirdPartyHaulier'] as bool?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$HaulierToJson(Haulier instance) => <String, dynamic>{
      'accountNo': instance.accountNo,
      'name': instance.name,
      'isManagedHaulier': instance.isManagedHaulier,
      'isThirdPartyHaulier': instance.isThirdPartyHaulier,
    };
