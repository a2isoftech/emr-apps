// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TruckInfo _$TruckInfoFromJson(Map<String, dynamic> json) => TruckInfo(
      dispatchYard: json['dispatchYard'] as String?,
      haulierType: json['haulierType'] as String?,
      assetNumber: json['assetNumber'] as String?,
      vrm: json['vrm'] as String?,
      driverName: json['driverName'] as String?,
      haulierCode: json['haulierCode'] as String?,
      haulierName: json['haulierName'] as String?,
    );

Map<String, dynamic> _$TruckInfoToJson(TruckInfo instance) => <String, dynamic>{
      'dispatchYard': instance.dispatchYard,
      'haulierType': instance.haulierType,
      'assetNumber': instance.assetNumber,
      'vrm': instance.vrm,
      'driverName': instance.driverName,
      'haulierCode': instance.haulierCode,
      'haulierName': instance.haulierName,
    };
