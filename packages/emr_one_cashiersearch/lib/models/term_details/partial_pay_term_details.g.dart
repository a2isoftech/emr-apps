// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_pay_term_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialPayTermDetails _$PartialPayTermDetailsFromJson(
  Map<String, dynamic> json,
) => PartialPayTermDetails(
  termType: $enumDecode(_$AdvanceTermTypeEnumMap, json['termType']),
  ticketIds: (json['ticketIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  tickets:
      (json['tickets'] as List<dynamic>?)
          ?.map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$PartialPayTermDetailsToJson(
  PartialPayTermDetails instance,
) => <String, dynamic>{
  'termType': _$AdvanceTermTypeEnumMap[instance.termType]!,
  'ticketIds': instance.ticketIds,
  'tickets': instance.tickets,
};

const _$AdvanceTermTypeEnumMap = {
  AdvanceTermType.percentage: 'PERCENTAGE',
  AdvanceTermType.fixed: 'FIXED',
  AdvanceTermType.partialPay: 'PARTIAL_PAY',
};
