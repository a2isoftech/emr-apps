// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankDetails _$BankDetailsFromJson(Map<String, dynamic> json) => BankDetails(
      accountNumber: json['accountNumber'] as String,
      sortCode: json['sortCode'] as String,
      ref: json['ref'] as String,
      bankName: json['bankName'] as String,
      accountName: json['accountName'] as String,
      iban: json['iban'] as String,
      swift: json['swift'] as String,
      paymentTerms: json['paymentTerms'] as String,
    );

Map<String, dynamic> _$BankDetailsToJson(BankDetails instance) =>
    <String, dynamic>{
      'accountNumber': instance.accountNumber,
      'sortCode': instance.sortCode,
      'ref': instance.ref,
      'bankName': instance.bankName,
      'accountName': instance.accountName,
      'iban': instance.iban,
      'swift': instance.swift,
      'paymentTerms': instance.paymentTerms,
    };
