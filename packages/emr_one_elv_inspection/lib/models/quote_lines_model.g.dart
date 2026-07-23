// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_lines_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuoteLinesModel _$QuoteLinesModelFromJson(Map<String, dynamic> json) =>
    QuoteLinesModel(
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$QuoteLinesModelToJson(QuoteLinesModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'price': instance.price,
    };
