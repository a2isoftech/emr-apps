// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_cheque_with_encashment_atm_payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutoChequeWithEncashmentAtmPaymentMethod
    _$AutoChequeWithEncashmentAtmPaymentMethodFromJson(
            Map<String, dynamic> json) =>
        AutoChequeWithEncashmentAtmPaymentMethod(
          paymentMethod:
              $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
          enabled: json['enabled'] as bool,
          enforceIdentification: json['enforceIdentification'] as bool,
          logoPath: json['logoPath'] as String,
          agent: json['agent'] as String,
          maxUpperLimit: (json['maxUpperLimit'] as num).toDouble(),
          minCommission: (json['minCommission'] as num?)?.toDouble(),
          commissionPercent: (json['commissionPercent'] as num?)?.toDouble(),
          minDenomination: (json['minDenomination'] as num?)?.toDouble(),
          flatFeeThreshold: (json['flatFeeThreshold'] as num?)?.toDouble(),
          flatFeeValue: (json['flatFeeValue'] as num?)?.toDouble(),
          bankCode: json['bankCode'] as String?,
        );

Map<String, dynamic> _$AutoChequeWithEncashmentAtmPaymentMethodToJson(
        AutoChequeWithEncashmentAtmPaymentMethod instance) =>
    <String, dynamic>{
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'enabled': instance.enabled,
      'maxUpperLimit': instance.maxUpperLimit,
      'enforceIdentification': instance.enforceIdentification,
      'logoPath': instance.logoPath,
      'agent': instance.agent,
      'minCommission': instance.minCommission,
      'commissionPercent': instance.commissionPercent,
      'minDenomination': instance.minDenomination,
      'flatFeeThreshold': instance.flatFeeThreshold,
      'flatFeeValue': instance.flatFeeValue,
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
