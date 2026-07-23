// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'split_payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SplitPaymentMethod _$SplitPaymentMethodFromJson(Map<String, dynamic> json) =>
    SplitPaymentMethod(
      paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
      enabled: json['enabled'] as bool,
      maxUpperLimit: (json['maxUpperLimit'] as num).toDouble(),
    );

Map<String, dynamic> _$SplitPaymentMethodToJson(SplitPaymentMethod instance) =>
    <String, dynamic>{
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'enabled': instance.enabled,
      'maxUpperLimit': instance.maxUpperLimit,
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
