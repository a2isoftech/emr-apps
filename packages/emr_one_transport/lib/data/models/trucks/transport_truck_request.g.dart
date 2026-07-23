// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_truck_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransportTruckRequest _$TransportTruckRequestFromJson(
        Map<String, dynamic> json) =>
    TransportTruckRequest(
      vrm: json['vrm'] as String,
      haulierCode: json['haulierCode'] as String,
      haulierType: json['haulierType'] as String,
      maxAllowedContainers: (json['maxAllowedContainers'] as num).toInt(),
      enforceJobSequence: json['enforceJobSequence'] as bool,
      active: json['active'] as bool,
      assetNumber: json['assetNumber'] as String?,
      dispatchYard: json['dispatchYard'] as String?,
      activeLeaseId: json['activeLeaseId'] as String?,
      truckType: json['truckType'] as String?,
      lifecycleStatus: json['lifecycleStatus'] as String?,
      make: json['make'] as String?,
      model: json['model'] as String?,
      friendlyName: json['friendlyName'] as String?,
    );

Map<String, dynamic> _$TransportTruckRequestToJson(
        TransportTruckRequest instance) =>
    <String, dynamic>{
      'assetNumber': instance.assetNumber,
      'vrm': instance.vrm,
      'haulierCode': instance.haulierCode,
      'haulierType': instance.haulierType,
      'dispatchYard': instance.dispatchYard,
      'activeLeaseId': instance.activeLeaseId,
      'maxAllowedContainers': instance.maxAllowedContainers,
      'enforceJobSequence': instance.enforceJobSequence,
      'truckType': instance.truckType,
      'active': instance.active,
      'lifecycleStatus': instance.lifecycleStatus,
      'make': instance.make,
      'model': instance.model,
      'friendlyName': instance.friendlyName,
    };
