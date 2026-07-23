// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountDetailsModel _$AccountDetailsModelFromJson(Map<String, dynamic> json) =>
    AccountDetailsModel(
      partyAccountNumber: json['partyAccountNumber'] as String,
      accountName: json['accountName'] as String,
      accountDetails:
          Account.fromJson(json['accountDetails'] as Map<String, dynamic>),
      bankDetails:
          BankDetails.fromJson(json['bankDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountDetailsModelToJson(
        AccountDetailsModel instance) =>
    <String, dynamic>{
      'accountName': instance.accountName,
      'partyAccountNumber': instance.partyAccountNumber,
      'accountDetails': instance.accountDetails,
      'bankDetails': instance.bankDetails,
    };
