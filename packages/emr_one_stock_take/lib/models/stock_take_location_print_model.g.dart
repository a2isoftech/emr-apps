// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_take_location_print_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockTakeLocationPrintModel _$StockTakeLocationPrintModelFromJson(
        Map<String, dynamic> json) =>
    StockTakeLocationPrintModel(
      productClass: json['productClass'] as String,
      productLine: json['productLine'] as String,
      location: json['location'] as String,
      product: json['product'] as String,
      stockTakeWeight: json['stockTakeWeight'] as String?,
      uom: json['uom'] as String?,
      weighedBy: json['weighedBy'] as String?,
      weighedDate: json['weighedDate'] as String?,
      weighedTime: json['weighedTime'] as String?,
    );

Map<String, dynamic> _$StockTakeLocationPrintModelToJson(
        StockTakeLocationPrintModel instance) =>
    <String, dynamic>{
      'productClass': instance.productClass,
      'productLine': instance.productLine,
      'location': instance.location,
      'product': instance.product,
      'stockTakeWeight': instance.stockTakeWeight,
      'uom': instance.uom,
      'weighedBy': instance.weighedBy,
      'weighedDate': instance.weighedDate,
      'weighedTime': instance.weighedTime,
    };
