// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_bank_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyBankAccount _$CompanyBankAccountFromJson(Map<String, dynamic> json) =>
    CompanyBankAccount(
      id: json['id'] as String,
      code: json['code'] as String,
      territoryCode: json['territoryCode'] as String,
      territoryId: json['territoryId'] as String,
      companyCode: json['companyCode'] as String,
      companyId: json['companyId'] as String,
      bankName: json['bankName'] as String,
      defaultAccount: json['defaultAccount'] as String,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      territory: json['territory'] == null
          ? null
          : Territory.fromJson(json['territory'] as Map<String, dynamic>),
      sortCode: json['sortCode'] as String,
      accountNumber: json['accountNumber'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanyBankAccountToJson(CompanyBankAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'territoryCode': instance.territoryCode,
      'territoryId': instance.territoryId,
      'companyCode': instance.companyCode,
      'companyId': instance.companyId,
      'bankName': instance.bankName,
      'defaultAccount': instance.defaultAccount,
      'company': instance.company,
      'territory': instance.territory,
      'sortCode': instance.sortCode,
      'accountNumber': instance.accountNumber,
      'address': instance.address,
    };
