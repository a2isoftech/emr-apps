// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_managed_hauliers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserManagedHauliers _$UserManagedHauliersFromJson(Map<String, dynamic> json) =>
    UserManagedHauliers(
      json['accountId'] as String,
      haulierCode: json['haulierCode'] as String?,
      haulierName: json['haulierName'] as String?,
      isMyManagedHaulier: json['isMyManagedHaulier'] as bool?,
    );

Map<String, dynamic> _$UserManagedHauliersToJson(
        UserManagedHauliers instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'haulierCode': instance.haulierCode,
      'haulierName': instance.haulierName,
      'isMyManagedHaulier': instance.isMyManagedHaulier,
    };
