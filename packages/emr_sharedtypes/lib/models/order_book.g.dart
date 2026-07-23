// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderBook _$OrderBookFromJson(Map<String, dynamic> json) => OrderBook(
      (json['id'] as num).toInt(),
      json['name'] as String,
      json['gradeType'] as String,
    );

Map<String, dynamic> _$OrderBookToJson(OrderBook instance) => <String, dynamic>{
      'id': instance.id,
      'gradeType': instance.gradeType,
      'name': instance.name,
    };
