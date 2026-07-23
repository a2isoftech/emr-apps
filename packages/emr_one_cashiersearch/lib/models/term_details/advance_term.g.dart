// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advance_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvanceTerm _$AdvanceTermFromJson(Map<String, dynamic> json) => AdvanceTerm(
  termType: $enumDecode(_$AdvanceTermTypeEnumMap, json['termType']),
);

Map<String, dynamic> _$AdvanceTermToJson(AdvanceTerm instance) =>
    <String, dynamic>{'termType': _$AdvanceTermTypeEnumMap[instance.termType]!};

const _$AdvanceTermTypeEnumMap = {
  AdvanceTermType.percentage: 'PERCENTAGE',
  AdvanceTermType.fixed: 'FIXED',
  AdvanceTermType.partialPay: 'PARTIAL_PAY',
};
