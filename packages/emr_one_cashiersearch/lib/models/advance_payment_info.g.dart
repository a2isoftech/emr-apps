// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advance_payment_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvancePaymentInfo _$AdvancePaymentInfoFromJson(Map<String, dynamic> json) =>
    AdvancePaymentInfo(
      transactionDetails: (json['transactionDetails'] as List<dynamic>)
          .map((e) => TransactionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      outstandingBalance: (json['outstandingBalance'] as num).toDouble(),
    );

Map<String, dynamic> _$AdvancePaymentInfoToJson(AdvancePaymentInfo instance) =>
    <String, dynamic>{
      'transactionDetails': instance.transactionDetails
          .map((e) => e.toJson())
          .toList(),
      'outstandingBalance': instance.outstandingBalance,
    };
