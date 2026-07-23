// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'percentage_term_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PercentageTermDetails _$PercentageTermDetailsFromJson(
  Map<String, dynamic> json,
) => PercentageTermDetails(
  termType: $enumDecode(_$AdvanceTermTypeEnumMap, json['termType']),
  amount: (json['amount'] as num).toDouble(),
  percentage: (json['percentage'] as num).toDouble(),
);

Map<String, dynamic> _$PercentageTermDetailsToJson(
  PercentageTermDetails instance,
) => <String, dynamic>{
  'termType': _$AdvanceTermTypeEnumMap[instance.termType]!,
  'amount': instance.amount,
  'percentage': instance.percentage,
};

const _$AdvanceTermTypeEnumMap = {
  AdvanceTermType.percentage: 'PERCENTAGE',
  AdvanceTermType.fixed: 'FIXED',
  AdvanceTermType.partialPay: 'PARTIAL_PAY',
};
