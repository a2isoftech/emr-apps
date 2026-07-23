// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_take_scale_local_storage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockTakeScaleLocalStorage _$StockTakeScaleLocalStorageFromJson(
  Map<String, dynamic> json,
) => StockTakeScaleLocalStorage(
  lastUsedScale: json['lastUsedScale'] as String,
  id: json['id'] as String,
);

Map<String, dynamic> _$StockTakeScaleLocalStorageToJson(
  StockTakeScaleLocalStorage instance,
) => <String, dynamic>{
  'id': instance.id,
  'lastUsedScale': instance.lastUsedScale,
};
