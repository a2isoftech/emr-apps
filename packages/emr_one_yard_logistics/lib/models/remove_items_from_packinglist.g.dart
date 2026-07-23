// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_items_from_packinglist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoveItemsFromPackingList _$RemoveItemsFromPackingListFromJson(
        Map<String, dynamic> json) =>
    RemoveItemsFromPackingList(
      packingListId: json['packingListId'] as String,
      palletId: json['palletId'] as String?,
      lotId: json['lotId'] as String?,
    );

Map<String, dynamic> _$RemoveItemsFromPackingListToJson(
        RemoveItemsFromPackingList instance) =>
    <String, dynamic>{
      'packingListId': instance.packingListId,
      'palletId': instance.palletId,
      'lotId': instance.lotId,
    };
