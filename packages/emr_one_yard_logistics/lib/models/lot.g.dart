// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lot _$LotFromJson(Map<String, dynamic> json) => Lot(
      code: json['code'] as String,
      id: json['id'] as String,
      yardId: json['yardId'] as String,
      created: Created.fromJson(json['created'] as Map<String, dynamic>),
      modified: Modified.fromJson(json['modified'] as Map<String, dynamic>),
      t2LotNumber: json['t2LotNumber'] as String?,
    )
      ..extendedProperties = json['extendedProperties'] as Map<String, dynamic>
      ..changeVector = json['changeVector'] as String?
      ..type = $enumDecode(_$LotTypeEnumMap, json['type'])
      ..state = $enumDecode(_$LotStateEnumMap, json['state'])
      ..tags =
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..photos =
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..ticketInfo =
          TicketInfo.fromJson(json['ticketInfo'] as Map<String, dynamic>)
      ..sourceInventoryLocationInfo =
          json['sourceInventoryLocationInfo'] == null
              ? null
              : InventoryLocationInfo.fromJson(
                  json['sourceInventoryLocationInfo'] as Map<String, dynamic>)
      ..comments = (json['comments'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList()
      ..grossWeightUom = json['grossWeightUom'] == null
          ? null
          : UomValue.fromJson(json['grossWeightUom'] as Map<String, dynamic>)
      ..tareWeightUom =
          UomValue.fromJson(json['tareWeightUom'] as Map<String, dynamic>)
      ..netWeightUom =
          UomValue.fromJson(json['netWeightUom'] as Map<String, dynamic>)
      ..palletId = json['palletId'] as String?
      ..packingListId = json['packingListId'] as String?
      ..palletDetails = json['palletDetails'] == null
          ? null
          : Pallet.fromJson(json['palletDetails'] as Map<String, dynamic>)
      ..packingListDetails = json['packingListDetails'] == null
          ? null
          : PackingList.fromJson(
              json['packingListDetails'] as Map<String, dynamic>)
      ..isLotUsedForTicketSplitting =
          json['isLotUsedForTicketSplitting'] as bool;

Map<String, dynamic> _$LotToJson(Lot instance) => <String, dynamic>{
      'id': instance.id,
      'extendedProperties': instance.extendedProperties,
      'created': instance.created,
      'modified': instance.modified,
      'code': instance.code,
      'changeVector': instance.changeVector,
      'yardId': instance.yardId,
      'type': _$LotTypeEnumMap[instance.type]!,
      'state': _$LotStateEnumMap[instance.state]!,
      'tags': instance.tags,
      'photos': instance.photos,
      'ticketInfo': instance.ticketInfo,
      'sourceInventoryLocationInfo': instance.sourceInventoryLocationInfo,
      'comments': instance.comments,
      'grossWeightUom': instance.grossWeightUom,
      'tareWeightUom': instance.tareWeightUom,
      'netWeightUom': instance.netWeightUom,
      't2LotNumber': instance.t2LotNumber,
      'palletId': instance.palletId,
      'packingListId': instance.packingListId,
      'palletDetails': instance.palletDetails,
      'packingListDetails': instance.packingListDetails,
      'isLotUsedForTicketSplitting': instance.isLotUsedForTicketSplitting,
    };

const _$LotTypeEnumMap = {
  LotType.unknown: 0,
  LotType.sticks: 1,
  LotType.joints: 2,
};

const _$LotStateEnumMap = {
  LotState.newLot: 0,
  LotState.createdInTrade: 1,
  LotState.deleted: 2,
};
