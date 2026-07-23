// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_display_order_for_yard_request.dart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TruckDisplayOrderForYardRequest _$TruckDisplayOrderForYardRequestFromJson(
        Map<String, dynamic> json) =>
    TruckDisplayOrderForYardRequest(
      yardCode: json['yardCode'] as String,
      truckVrmDisplayOrder: (json['truckVrmDisplayOrder'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TruckDisplayOrderForYardRequestToJson(
        TruckDisplayOrderForYardRequest instance) =>
    <String, dynamic>{
      'yardCode': instance.yardCode,
      'truckVrmDisplayOrder': instance.truckVrmDisplayOrder,
    };
