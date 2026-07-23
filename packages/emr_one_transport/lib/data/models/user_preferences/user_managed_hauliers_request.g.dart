// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_managed_hauliers_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserManagedHauliersRequest _$UserManagedHauliersRequestFromJson(
        Map<String, dynamic> json) =>
    UserManagedHauliersRequest(
      json['accountId'] as String,
      haulierCode: json['haulierCode'] as String?,
      haulierName: json['haulierName'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$UserManagedHauliersRequestToJson(
        UserManagedHauliersRequest instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'haulierCode': instance.haulierCode,
      'haulierName': instance.haulierName,
      'isSelected': instance.isSelected,
    };
