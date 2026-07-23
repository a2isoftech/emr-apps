// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_truck.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransportTruck _$TransportTruckFromJson(Map<String, dynamic> json) =>
    TransportTruck(
      id: json['id'] as String?,
      assetNumber: json['assetNumber'] as String?,
      vrm: json['vrm'] as String?,
      friendlyName: json['friendlyName'] as String?,
      haulierCode: json['haulierCode'] as String?,
      condition: json['condition'] as String?,
      serialNumber: json['serialNumber'] as String?,
      make: json['make'] as String?,
      model: json['model'] as String?,
      haulierType: json['haulierType'] as String?,
      enforceJobSequence: json['enforceJobSequence'] as bool?,
      truckType: json['truckType'] as String?,
      active: json['active'] as bool?,
      lifecycleStatus: json['lifecycleStatus'] as String?,
      created: json['created'] == null
          ? null
          : UserActionInfo.fromJson(json['created'] as Map<String, dynamic>),
      modified: json['modified'] == null
          ? null
          : UserActionInfo.fromJson(json['modified'] as Map<String, dynamic>),
      costCenter: json['costCenter'] as String?,
      dispatchYard: json['dispatchYard'] as String?,
      activeLeaseId: json['activeLeaseId'] as String?,
    );

Map<String, dynamic> _$TransportTruckToJson(TransportTruck instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assetNumber': instance.assetNumber,
      'vrm': instance.vrm,
      'friendlyName': instance.friendlyName,
      'haulierCode': instance.haulierCode,
      'condition': instance.condition,
      'serialNumber': instance.serialNumber,
      'make': instance.make,
      'model': instance.model,
      'haulierType': instance.haulierType,
      'costCenter': instance.costCenter,
      'dispatchYard': instance.dispatchYard,
      'enforceJobSequence': instance.enforceJobSequence,
      'truckType': instance.truckType,
      'activeLeaseId': instance.activeLeaseId,
      'active': instance.active,
      'lifecycleStatus': instance.lifecycleStatus,
      'created': instance.created,
      'modified': instance.modified,
    };
