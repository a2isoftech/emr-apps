// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_price_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehiclePriceDetail _$VehiclePriceDetailFromJson(Map<String, dynamic> json) =>
    VehiclePriceDetail(
      price: (json['price'] as num).toDouble(),
      totalCatPrice: (json['totalCatPrice'] as num).toDouble(),
      status: quoteStatusFromJson(json['status'] as String),
      partPrices: (json['partPrices'] as List<dynamic>)
          .map((e) => PartPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VehiclePriceDetailToJson(VehiclePriceDetail instance) =>
    <String, dynamic>{
      'price': instance.price,
      'totalCatPrice': instance.totalCatPrice,
      'status': quoteStatusToJson(instance.status),
      'partPrices': instance.partPrices,
    };
