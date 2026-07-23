// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_take_print_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockTakePrintModel _$StockTakePrintModelFromJson(Map<String, dynamic> json) =>
    StockTakePrintModel(
      name: json['name'] as String,
      yardCode: json['yardCode'] as String,
      snapshotTaken: json['snapshotTaken'] as String?,
      stockTakeLocations: (json['stockTakeLocations'] as List<dynamic>)
          .map((e) =>
              StockTakeLocationPrintModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StockTakePrintModelToJson(
        StockTakePrintModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'yardCode': instance.yardCode,
      'snapshotTaken': instance.snapshotTaken,
      'stockTakeLocations': instance.stockTakeLocations,
    };
