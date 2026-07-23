// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atm_payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AtmPaymentMethod _$AtmPaymentMethodFromJson(Map<String, dynamic> json) =>
    AtmPaymentMethod(
      paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
      enabled: json['enabled'] as bool,
      rounding: Rounding.fromJson(json['rounding'] as Map<String, dynamic>),
      maxUpperLimit: (json['maxUpperLimit'] as num).toDouble(),
    );

Map<String, dynamic> _$AtmPaymentMethodToJson(AtmPaymentMethod instance) =>
    <String, dynamic>{
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'enabled': instance.enabled,
      'maxUpperLimit': instance.maxUpperLimit,
      'rounding': instance.rounding,
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
