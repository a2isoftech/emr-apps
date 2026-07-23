// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade2_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trade2Ticket _$Trade2TicketFromJson(Map<String, dynamic> json) =>
    Trade2Ticket(
        json['id'] as String,
        json['key'] as String,
        json['publishedToTrade'] == null
            ? null
            : DateTime.parse(json['publishedToTrade'] as String),
        DateTime.parse(json['createdDate'] as String),
        (json['createdDateEpoch'] as num).toInt(),
        json['createdBy'] as String,
        $enumDecode(_$Trade2TicketStatusEnumMap, json['ticketStatus']),
        (json['trade2Key'] as num?)?.toInt(),
      )
      ..partyAccountNo = json['partyAccountNo'] as String?
      ..partyName = json['partyName'] as String?
      ..depotNo = json['depotNo'] as String
      ..yardId = json['yardId'] as String
      ..yardCode = json['yardCode'] as String
      ..ticketNumber = (json['ticketNumber'] as num).toInt()
      ..ticketCategory = $enumDecode(
        _$Trade2TicketCategoryEnumMap,
        json['ticketCategory'],
      )
      ..ticketType = $enumDecode(_$Trade2TicketTypeEnumMap, json['ticketType'])
      ..price = (json['price'] as num).toDouble()
      ..lines = (json['lines'] as List<dynamic>)
          .map((e) => Trade2TicketLine.fromJson(e as Map<String, dynamic>))
          .toList()
      ..mediaAssets = (json['mediaAssets'] as List<dynamic>)
          .map((e) => Trade2MediaAsset.fromJson(e as Map<String, dynamic>))
          .toList()
      ..currency = json['currency'] as String
      ..ticketDate = DateTime.parse(json['ticketDate'] as String)
      ..vehicleNo = json['vehicleNo'] as String?
      ..locationCode = json['locationCode'] as String?
      ..locationName = json['locationName'] as String?;

Map<String, dynamic> _$Trade2TicketToJson(Trade2Ticket instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'trade2Key': instance.trade2Key,
      'partyAccountNo': instance.partyAccountNo,
      'partyName': instance.partyName,
      'depotNo': instance.depotNo,
      'yardId': instance.yardId,
      'yardCode': instance.yardCode,
      'ticketNumber': instance.ticketNumber,
      'ticketCategory': _$Trade2TicketCategoryEnumMap[instance.ticketCategory]!,
      'ticketStatus': _$Trade2TicketStatusEnumMap[instance.ticketStatus]!,
      'ticketType': _$Trade2TicketTypeEnumMap[instance.ticketType]!,
      'publishedToTrade': instance.publishedToTrade?.toIso8601String(),
      'createdDate': instance.createdDate.toIso8601String(),
      'createdDateEpoch': instance.createdDateEpoch,
      'createdBy': instance.createdBy,
      'price': instance.price,
      'lines': instance.lines,
      'mediaAssets': instance.mediaAssets,
      'currency': instance.currency,
      'ticketDate': instance.ticketDate.toIso8601String(),
      'vehicleNo': instance.vehicleNo,
      'locationCode': instance.locationCode,
      'locationName': instance.locationName,
    };

const _$Trade2TicketStatusEnumMap = {
  Trade2TicketStatus.open: 'OPEN',
  Trade2TicketStatus.finished: 'FINISHED',
  Trade2TicketStatus.closed: 'CLOSED',
};

const _$Trade2TicketCategoryEnumMap = {
  Trade2TicketCategory.normal: 'NORMAL',
  Trade2TicketCategory.interDepot: 'INTER_DEPOT',
  Trade2TicketCategory.merchantTruckTrade: 'MERCHANT_TRUCK_TRADE',
  Trade2TicketCategory.trueTruckTrade: 'TRUE_TRUCK_TRADE',
  Trade2TicketCategory.interYardTransfer: 'INTER_YARD_TRANSFER',
};

const _$Trade2TicketTypeEnumMap = {
  Trade2TicketType.inwards: 'INWARDS',
  Trade2TicketType.outwards: 'OUTWARDS',
};
