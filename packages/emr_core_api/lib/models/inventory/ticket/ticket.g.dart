// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) =>
    Ticket(
        json['id'] as String,
        $enumDecode(_$TicketStatusEnumMap, json['ticketStatus']),
      )
      ..account = json['account'] == null
          ? null
          : TicketAccount.fromJson(json['account'] as Map<String, dynamic>)
      ..yardCode = json['yardCode'] as String
      ..ticketNumber = (json['ticketNumber'] as num).toInt()
      ..ticketCategory = $enumDecode(
        _$TicketCategoryEnumMap,
        json['ticketCategory'],
      )
      ..ticketType = $enumDecode(_$TicketTypeEnumMap, json['ticketType'])
      ..price = (json['price'] as num).toDouble()
      ..lines = (json['lines'] as List<dynamic>)
          .map((e) => TicketLine.fromJson(e as Map<String, dynamic>))
          .toList()
      ..mediaAssets = (json['mediaAssets'] as List<dynamic>)
          .map((e) => InventoryMediaAsset.fromJson(e as Map<String, dynamic>))
          .toList()
      ..inspectionMedia = (json['inspectionMedia'] as List<dynamic>)
          .map((e) => InventoryMediaAsset.fromJson(e as Map<String, dynamic>))
          .toList()
      ..currency = json['currency'] as String
      ..created = Created.fromJson(json['created'] as Map<String, dynamic>);

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
  'id': instance.id,
  'account': instance.account,
  'yardCode': instance.yardCode,
  'ticketNumber': instance.ticketNumber,
  'ticketCategory': _$TicketCategoryEnumMap[instance.ticketCategory]!,
  'ticketStatus': _$TicketStatusEnumMap[instance.ticketStatus]!,
  'ticketType': _$TicketTypeEnumMap[instance.ticketType]!,
  'price': instance.price,
  'lines': instance.lines,
  'mediaAssets': instance.mediaAssets,
  'inspectionMedia': instance.inspectionMedia,
  'currency': instance.currency,
  'created': instance.created,
};

const _$TicketStatusEnumMap = {
  TicketStatus.draft: 'DRAFT',
  TicketStatus.active: 'ACTIVE',
  TicketStatus.finished: 'FINISHED',
  TicketStatus.closed: 'CLOSED',
  TicketStatus.deleted: 'DELETED',
  TicketStatus.paymentInitiated: 'PAYMENT_INITIATED',
  TicketStatus.instantQuickPaid: 'INSTANT_QUICK_PAID',
  TicketStatus.paid: 'PAID',
};

const _$TicketCategoryEnumMap = {
  TicketCategory.normal: 'NORMAL',
  TicketCategory.interDepot: 'INTER_DEPOT',
  TicketCategory.merchantTruckTrade: 'MERCHANT_TRUCK_TRADE',
  TicketCategory.trueTruckTrade: 'TRUE_TRUCK_TRADE',
  TicketCategory.interYardTransfer: 'INTER_YARD_TRANSFER',
};

const _$TicketTypeEnumMap = {
  TicketType.inwards: 'INWARDS',
  TicketType.outwards: 'OUTWARDS',
};
