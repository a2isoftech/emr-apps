// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pallet _$PalletFromJson(Map<String, dynamic> json) => Pallet(
      code: json['code'] as String,
      created: Created.fromJson(json['created'] as Map<String, dynamic>),
      modified: Modified.fromJson(json['modified'] as Map<String, dynamic>),
      id: json['id'] as String,
      yardId: json['yardId'] as String,
      lotIds: (json['lotIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    )
      ..extendedProperties = json['extendedProperties'] as Map<String, dynamic>
      ..changeVector = json['changeVector'] as String?
      ..state = $enumDecode(_$PalletStateEnumMap, json['state'])
      ..type = $enumDecode(_$PalletTypeEnumMap, json['type'])
      ..grossWeightUom =
          UomValue.fromJson(json['grossWeightUom'] as Map<String, dynamic>)
      ..tareWeightUom =
          UomValue.fromJson(json['tareWeightUom'] as Map<String, dynamic>)
      ..packingListId = json['packingListId'] as String?
      ..packingListDetails = json['packingListDetails'] == null
          ? null
          : PackingList.fromJson(
              json['packingListDetails'] as Map<String, dynamic>)
      ..lotDetails = (json['lotDetails'] as List<dynamic>)
          .map((e) => Lot.fromJson(e as Map<String, dynamic>))
          .toList()
      ..comments = (json['comments'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList()
      ..photos =
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList();

Map<String, dynamic> _$PalletToJson(Pallet instance) => <String, dynamic>{
      'id': instance.id,
      'extendedProperties': instance.extendedProperties,
      'created': instance.created,
      'modified': instance.modified,
      'code': instance.code,
      'changeVector': instance.changeVector,
      'yardId': instance.yardId,
      'state': _$PalletStateEnumMap[instance.state]!,
      'type': _$PalletTypeEnumMap[instance.type]!,
      'lotIds': instance.lotIds,
      'grossWeightUom': instance.grossWeightUom,
      'tareWeightUom': instance.tareWeightUom,
      'packingListId': instance.packingListId,
      'packingListDetails': instance.packingListDetails,
      'lotDetails': instance.lotDetails,
      'comments': instance.comments,
      'photos': instance.photos,
    };

const _$PalletStateEnumMap = {
  PalletState.empty: 0,
  PalletState.inProgress: 1,
  PalletState.packed: 2,
  PalletState.onPackingList: 3,
};

const _$PalletTypeEnumMap = {
  PalletType.normal: 0,
  PalletType.polyJointBag: 1,
  PalletType.leadJointBag: 2,
};
