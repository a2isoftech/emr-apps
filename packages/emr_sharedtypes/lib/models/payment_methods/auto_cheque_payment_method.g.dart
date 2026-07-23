// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_cheque_payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutoChequePaymentMethod _$AutoChequePaymentMethodFromJson(
        Map<String, dynamic> json) =>
    AutoChequePaymentMethod(
      paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
      enabled: json['enabled'] as bool,
      enforceIdentification: json['enforceIdentification'] as bool,
      logoPath: json['logoPath'] as String,
      maxUpperLimit: (json['maxUpperLimit'] as num).toDouble(),
      bankCode: json['bankCode'] as String?,
    );

Map<String, dynamic> _$AutoChequePaymentMethodToJson(
        AutoChequePaymentMethod instance) =>
    <String, dynamic>{
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'enabled': instance.enabled,
      'maxUpperLimit': instance.maxUpperLimit,
      'enforceIdentification': instance.enforceIdentification,
      'logoPath': instance.logoPath,
      'bankCode': instance.bankCode,
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
