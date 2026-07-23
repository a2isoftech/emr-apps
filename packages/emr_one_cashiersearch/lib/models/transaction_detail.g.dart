// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDetail _$TransactionDetailFromJson(Map<String, dynamic> json) =>
    TransactionDetail(
      paymentRecordId: json['paymentRecordId'] as String,
      transactionType: $enumDecode(
        _$TransactionTypeEnumMap,
        json['transactionType'],
      ),
      amount: (json['amount'] as num).toDouble(),
      at: DateTime.parse(json['at'] as String),
    );

Map<String, dynamic> _$TransactionDetailToJson(TransactionDetail instance) =>
    <String, dynamic>{
      'paymentRecordId': instance.paymentRecordId,
      'transactionType': _$TransactionTypeEnumMap[instance.transactionType]!,
      'amount': instance.amount,
      'at': instance.at.toIso8601String(),
    };

const _$TransactionTypeEnumMap = {
  TransactionType.issue: 'ISSUE',
  TransactionType.offset: 'OFFSET',
  TransactionType.reversed: 'REVERSED',
};
