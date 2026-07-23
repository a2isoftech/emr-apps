// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'haulier_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HaulierDetails _$HaulierDetailsFromJson(Map<String, dynamic> json) =>
    HaulierDetails(
      haulierCode: json['haulierCode'] as String?,
      haulierName: json['haulierName'] as String?,
      haulierType: json['haulierType'] as String?,
      assetNumber: json['assetNumber'] as String?,
      vrm: json['vrm'] as String?,
      trucks: (json['trucks'] as List<dynamic>?)
              ?.map((e) => TruckInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HaulierDetailsToJson(HaulierDetails instance) =>
    <String, dynamic>{
      'haulierCode': instance.haulierCode,
      'haulierName': instance.haulierName,
      'haulierType': instance.haulierType,
      'assetNumber': instance.assetNumber,
      'vrm': instance.vrm,
      'trucks': instance.trucks,
    };
