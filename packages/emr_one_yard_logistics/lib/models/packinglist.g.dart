// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packinglist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackingList _$PackingListFromJson(Map<String, dynamic> json) => PackingList(
      id: json['id'] as String,
      created: Created.fromJson(json['created'] as Map<String, dynamic>),
      modified: Modified.fromJson(json['modified'] as Map<String, dynamic>),
      yardId: json['yardId'] as String,
      accountCode: json['accountCode'] as String,
      accountName: json['accountName'] as String,
      packingListRef: (json['packingListRef'] as num).toInt(),
    )
      ..extendedProperties = json['extendedProperties'] as Map<String, dynamic>
      ..state = $enumDecode(_$PackingListStateEnumMap, json['state'])
      ..grossWeightUom = json['grossWeightUom'] == null
          ? null
          : UomValue.fromJson(json['grossWeightUom'] as Map<String, dynamic>)
      ..lotIds =
          (json['lotIds'] as List<dynamic>).map((e) => e as String).toList()
      ..palletIds =
          (json['palletIds'] as List<dynamic>).map((e) => e as String).toList()
      ..lotDetails = (json['lotDetails'] as List<dynamic>)
          .map((e) => Lot.fromJson(e as Map<String, dynamic>))
          .toList()
      ..palletDetails = (json['palletDetails'] as List<dynamic>)
          .map((e) => Pallet.fromJson(e as Map<String, dynamic>))
          .toList()
      ..trade2Id = (json['trade2Id'] as num?)?.toInt()
      ..changeVector = json['changeVector'] as String?;

Map<String, dynamic> _$PackingListToJson(PackingList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extendedProperties': instance.extendedProperties,
      'created': instance.created,
      'modified': instance.modified,
      'yardId': instance.yardId,
      'accountCode': instance.accountCode,
      'accountName': instance.accountName,
      'state': _$PackingListStateEnumMap[instance.state]!,
      'grossWeightUom': instance.grossWeightUom,
      'packingListRef': instance.packingListRef,
      'lotIds': instance.lotIds,
      'palletIds': instance.palletIds,
      'lotDetails': instance.lotDetails,
      'palletDetails': instance.palletDetails,
      'trade2Id': instance.trade2Id,
      'changeVector': instance.changeVector,
    };

const _$PackingListStateEnumMap = {
  PackingListState.empty: 0,
  PackingListState.inProgress: 1,
  PackingListState.packed: 2,
  PackingListState.completed: 3,
};
