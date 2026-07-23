// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_methods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethods _$PaymentMethodsFromJson(Map<String, dynamic> json) =>
    PaymentMethods(
      atm: AtmPaymentMethod.fromJson(json['atm'] as Map<String, dynamic>),
      manualCheque: ManualChequePaymentMethod.fromJson(
          json['manualCheque'] as Map<String, dynamic>),
      autoCheque: AutoChequePaymentMethod.fromJson(
          json['autoCheque'] as Map<String, dynamic>),
      fasterpay: FasterpayPaymentMethod.fromJson(
          json['fasterpay'] as Map<String, dynamic>),
      overnightFasterpay: OvernightFasterpayPaymentMethod.fromJson(
          json['overnightFasterpay'] as Map<String, dynamic>),
      cash: CashPaymentMethod.fromJson(json['cash'] as Map<String, dynamic>),
      autoChequeWithEncashmentAtm:
          AutoChequeWithEncashmentAtmPaymentMethod.fromJson(
              json['autoChequeWithEncashmentAtm'] as Map<String, dynamic>),
      autoChequeWithEncashmentCash:
          AutoChequeWithEncashmentCashPaymentMethod.fromJson(
              json['autoChequeWithEncashmentCash'] as Map<String, dynamic>),
      secorePrepaid: SecorePrepaidPaymentMethod.fromJson(
          json['secorePrepaid'] as Map<String, dynamic>),
      digitalWalletWithCash: DigitalWalletWithCashPaymentMethod.fromJson(
          json['digitalWalletWithCash'] as Map<String, dynamic>),
      digitalWalletWithAtm: DigitalWalletWithAtmPaymentMethod.fromJson(
          json['digitalWalletWithAtm'] as Map<String, dynamic>),
      splitPayment: SplitPaymentMethod.fromJson(
          json['splitPayment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodsToJson(PaymentMethods instance) =>
    <String, dynamic>{
      'atm': instance.atm,
      'manualCheque': instance.manualCheque,
      'autoCheque': instance.autoCheque,
      'fasterpay': instance.fasterpay,
      'overnightFasterpay': instance.overnightFasterpay,
      'cash': instance.cash,
      'autoChequeWithEncashmentAtm': instance.autoChequeWithEncashmentAtm,
      'autoChequeWithEncashmentCash': instance.autoChequeWithEncashmentCash,
      'secorePrepaid': instance.secorePrepaid,
      'digitalWalletWithCash': instance.digitalWalletWithCash,
      'digitalWalletWithAtm': instance.digitalWalletWithAtm,
      'splitPayment': instance.splitPayment,
    };
