// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_with_lots.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketWithLots _$TicketWithLotsFromJson(Map<String, dynamic> json) =>
    TicketWithLots(
      ticketInfo:
          TicketInfo.fromJson(json['ticketInfo'] as Map<String, dynamic>),
      lotList: (json['lotList'] as List<dynamic>)
          .map((e) => Lot.fromJson(e as Map<String, dynamic>))
          .toList(),
      ticketSplitWeightTolerancePercent:
          (json['ticketSplitWeightTolerancePercent'] as num).toDouble(),
      ticketNetWeightMT:
          UomValue.fromJson(json['ticketNetWeightMT'] as Map<String, dynamic>),
      totalLotWeightMT:
          UomValue.fromJson(json['totalLotWeightMT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TicketWithLotsToJson(TicketWithLots instance) =>
    <String, dynamic>{
      'ticketInfo': instance.ticketInfo,
      'ticketNetWeightMT': instance.ticketNetWeightMT,
      'totalLotWeightMT': instance.totalLotWeightMT,
      'ticketSplitWeightTolerancePercent':
          instance.ticketSplitWeightTolerancePercent,
      'lotList': instance.lotList,
    };
