// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contract _$ContractFromJson(Map<String, dynamic> json) => Contract(
      id: json['id'] as String?,
      accountId: json['accountId'] as String?,
      accountCode: json['accountCode'] as String?,
      accountName: json['accountName'] as String?,
      customerReference: json['customerReference'] as String?,
      internalReference: json['internalReference'] as String?,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$ContractToJson(Contract instance) => <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'accountCode': instance.accountCode,
      'accountName': instance.accountName,
      'customerReference': instance.customerReference,
      'internalReference': instance.internalReference,
      'active': instance.active,
    };
