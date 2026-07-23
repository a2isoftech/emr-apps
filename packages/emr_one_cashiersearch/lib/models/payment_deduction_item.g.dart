// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_deduction_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentDeductionItem _$PaymentDeductionItemFromJson(
  Map<String, dynamic> json,
) => PaymentDeductionItem(
  paymentMethod:
      $enumDecodeNullable(_$PaymentMethodEnumMap, json['paymentMethod']) ??
      PaymentMethod.none,
  grossAmount: (json['grossAmount'] as num?)?.toDouble() ?? 0,
  totalFee: (json['totalFee'] as num?)?.toDouble() ?? 0,
  payableAfterCostAndDeduction:
      (json['payableAfterCostAndDeduction'] as num?)?.toDouble() ?? 0,
  payableAmount: (json['payableAmount'] as num?)?.toDouble() ?? 0,
  roundingAdjustment: (json['roundingAdjustment'] as num?)?.toDouble() ?? 0,
  encashmentValues: json['encashmentValues'] == null
      ? null
      : EncashmentValues.fromJson(
          json['encashmentValues'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PaymentDeductionItemToJson(
  PaymentDeductionItem instance,
) => <String, dynamic>{
  'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
  'grossAmount': instance.grossAmount,
  'totalFee': instance.totalFee,
  'payableAfterCostAndDeduction': instance.payableAfterCostAndDeduction,
  'payableAmount': instance.payableAmount,
  'roundingAdjustment': instance.roundingAdjustment,
  'encashmentValues': instance.encashmentValues?.toJson(),
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
