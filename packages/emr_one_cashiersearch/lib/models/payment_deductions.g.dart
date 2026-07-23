// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_deductions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentDeductions _$PaymentDeductionsFromJson(
  Map<String, dynamic> json,
) => PaymentDeductions(
  grossAmount: (json['grossAmount'] as num).toDouble(),
  totalFee: (json['totalFee'] as num).toDouble(),
  netPayable: (json['netPayable'] as num).toDouble(),
  netPaid: (json['netPaid'] as num).toDouble(),
  roundingAdjustmentOnFee: (json['roundingAdjustmentOnFee'] as num).toDouble(),
  cashDeductions: (json['cashDeductions'] as num).toDouble(),
  advanceDetails: json['advanceDetails'] == null
      ? null
      : AdvanceAdjustmentResult.fromJson(
          json['advanceDetails'] as Map<String, dynamic>,
        ),
  encashmentValues: json['encashmentValues'] == null
      ? null
      : EncashmentValues.fromJson(
          json['encashmentValues'] as Map<String, dynamic>,
        ),
  paymentDeductionItems:
      (json['paymentDeductionItems'] as List<dynamic>?)
          ?.map((e) => PaymentDeductionItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$PaymentDeductionsToJson(PaymentDeductions instance) =>
    <String, dynamic>{
      'grossAmount': instance.grossAmount,
      'totalFee': instance.totalFee,
      'cashDeductions': instance.cashDeductions,
      'netPayable': instance.netPayable,
      'netPaid': instance.netPaid,
      'roundingAdjustmentOnFee': instance.roundingAdjustmentOnFee,
      'advanceDetails': instance.advanceDetails?.toJson(),
      'encashmentValues': instance.encashmentValues?.toJson(),
      'paymentDeductionItems': instance.paymentDeductionItems
          .map((e) => e.toJson())
          .toList(),
    };
