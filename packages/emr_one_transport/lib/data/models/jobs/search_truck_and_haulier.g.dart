// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_truck_and_haulier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchTruckAndHaulier _$SearchTruckAndHaulierFromJson(
        Map<String, dynamic> json) =>
    SearchTruckAndHaulier(
      internalTrucks: (json['internalTrucks'] as List<dynamic>?)
              ?.map((e) => TruckInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hauliers: (json['hauliers'] as List<dynamic>?)
              ?.map((e) => HaulierDetails.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchTruckAndHaulierToJson(
        SearchTruckAndHaulier instance) =>
    <String, dynamic>{
      'internalTrucks': instance.internalTrucks,
      'hauliers': instance.hauliers,
    };
