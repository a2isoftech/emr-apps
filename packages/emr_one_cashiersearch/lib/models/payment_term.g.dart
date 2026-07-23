// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentTerm _$PaymentTermFromJson(Map<String, dynamic> json) => PaymentTerm(
  $enumDecodeNullable(_$PaymentMethodEnumMap, json['financialPaymentMethod']),
);

Map<String, dynamic> _$PaymentTermToJson(PaymentTerm instance) =>
    <String, dynamic>{
      'financialPaymentMethod':
          _$PaymentMethodEnumMap[instance.financialPaymentMethod],
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
