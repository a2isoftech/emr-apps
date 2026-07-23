// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_packinglist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmPackingList _$ConfirmPackingListFromJson(Map<String, dynamic> json) =>
    ConfirmPackingList(
      id: json['id'] as String,
      packingListState:
          $enumDecode(_$PackingListStateEnumMap, json['packingListState']),
    );

Map<String, dynamic> _$ConfirmPackingListToJson(ConfirmPackingList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'packingListState': _$PackingListStateEnumMap[instance.packingListState]!,
    };

const _$PackingListStateEnumMap = {
  PackingListState.empty: 0,
  PackingListState.inProgress: 1,
  PackingListState.packed: 2,
  PackingListState.completed: 3,
};
