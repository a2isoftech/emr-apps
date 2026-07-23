// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixed_term_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FixedTermDetails _$FixedTermDetailsFromJson(Map<String, dynamic> json) =>
    FixedTermDetails(
      termType: $enumDecode(_$AdvanceTermTypeEnumMap, json['termType']),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$FixedTermDetailsToJson(FixedTermDetails instance) =>
    <String, dynamic>{
      'termType': _$AdvanceTermTypeEnumMap[instance.termType]!,
      'amount': instance.amount,
    };

const _$AdvanceTermTypeEnumMap = {
  AdvanceTermType.percentage: 'PERCENTAGE',
  AdvanceTermType.fixed: 'FIXED',
  AdvanceTermType.partialPay: 'PARTIAL_PAY',
};
