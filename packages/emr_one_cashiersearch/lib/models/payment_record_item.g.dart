// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_record_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentRecordItem _$PaymentRecordItemFromJson(Map<String, dynamic> json) =>
    PaymentRecordItem(
      paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
      totalAmount: (json['totalAmount'] as num?)?.toDouble() ?? 0,
      totalFee: (json['totalFee'] as num?)?.toDouble() ?? 0,
      payableAfterCost: (json['payableAfterCost'] as num?)?.toDouble() ?? 0,
      payableAmount: (json['payableAmount'] as num?)?.toDouble() ?? 0,
      paymentMethodDetails:
          json['paymentMethodDetails'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$PaymentRecordItemToJson(PaymentRecordItem instance) =>
    <String, dynamic>{
      'totalAmount': instance.totalAmount,
      'totalFee': instance.totalFee,
      'payableAfterCost': instance.payableAfterCost,
      'payableAmount': instance.payableAmount,
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'paymentMethodDetails': instance.paymentMethodDetails,
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.none: 'NONE',
  PaymentMethod.fasterPayment: 'FASTER_PAYMENT',
  PaymentMethod.cash: 'CASH',
  PaymentMethod.atm: 'ATM',
  PaymentMethod.autoCheque: 'AUTO_CHEQUE',
  PaymentMethod.manualCheque: 'MANUAL_CHEQUE',
  PaymentMethod.overnightFasterPayment: 'OVERNIGHT_FASTER_PAYMENT',
  PaymentMethod.secorePrepayCard: 'SECORE_PREPAY_CARD',
  PaymentMethod.autoChequeWithEncashmentAtm: 'AUTO_CHEQUE_WITH_ENCASHMENT_ATM',
  PaymentMethod.autoChequeWithEncashmentCash:
      'AUTO_CHEQUE_WITH_ENCASHMENT_CASH',
  PaymentMethod.digitalWalletWithAtm: 'DIGITAL_WALLET_WITH_ATM',
  PaymentMethod.digitalWalletWithCash: 'DIGITAL_WALLET_WITH_CASH',
  PaymentMethod.splitPayment: 'SPLIT_PAYMENT',
};
