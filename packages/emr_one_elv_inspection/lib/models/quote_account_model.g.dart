// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuoteAccountModel _$QuoteAccountModelFromJson(Map<String, dynamic> json) =>
    QuoteAccountModel(
      accountNumber: json['accountNumber'] as String,
      accountType: accountTypeFromJson(json['accountType'] as String),
    );

Map<String, dynamic> _$QuoteAccountModelToJson(QuoteAccountModel instance) =>
    <String, dynamic>{
      'accountNumber': instance.accountNumber,
      'accountType': accountTypeToJson(instance.accountType),
    };
