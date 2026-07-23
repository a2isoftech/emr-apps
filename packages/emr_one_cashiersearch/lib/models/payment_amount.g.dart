// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentAmount _$PaymentAmountFromJson(Map<String, dynamic> json) =>
    PaymentAmount(
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
      exchangeRate: (json['exchangeRate'] as num).toDouble(),
    );

Map<String, dynamic> _$PaymentAmountToJson(PaymentAmount instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
      'exchangeRate': instance.exchangeRate,
    };
