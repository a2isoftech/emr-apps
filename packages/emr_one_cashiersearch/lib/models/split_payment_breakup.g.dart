// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'split_payment_breakup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SplitPaymentBreakup _$SplitPaymentBreakupFromJson(Map<String, dynamic> json) =>
    SplitPaymentBreakup(
      amount: (json['amount'] as num?)?.toDouble() ?? 0,
      paymentMethod:
          $enumDecodeNullable(_$PaymentMethodEnumMap, json['paymentMethod']) ??
          PaymentMethod.none,
    );

Map<String, dynamic> _$SplitPaymentBreakupToJson(
  SplitPaymentBreakup instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
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
