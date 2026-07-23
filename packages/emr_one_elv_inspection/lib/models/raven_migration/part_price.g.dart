// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'part_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartPrice _$PartPriceFromJson(Map<String, dynamic> json) => PartPrice(
      price: (json['price'] as num).toDouble(),
      partInfo: PartInfo.fromJson(json['partInfo'] as Map<String, dynamic>),
      vehiclePartKeys: (json['vehiclePartKeys'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PartPriceToJson(PartPrice instance) => <String, dynamic>{
      'price': instance.price,
      'partInfo': instance.partInfo,
      'vehiclePartKeys': instance.vehiclePartKeys,
    };
