// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_trailer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransportTrailer _$TransportTrailerFromJson(Map<String, dynamic> json) =>
    TransportTrailer(
      id: json['id'] as String,
      assetNumber: json['assetNumber'] as String?,
      serialNumber: json['serialNumber'] as String?,
      costCenter: json['costCenter'] as String?,
      description: json['description'] as String?,
      trailerType: json['trailerType'] as String?,
      make: json['make'] as String?,
      model: json['model'] as String?,
      condition: json['condition'] as String?,
      status: json['status'] as String?,
      yardCode: json['yardCode'] as String?,
      active: json['active'] as bool?,
      currentLocation: json['currentLocation'] == null
          ? null
          : CurrentLocation.fromJson(
              json['currentLocation'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : UserActionInfo.fromJson(json['created'] as Map<String, dynamic>),
      modified: json['modified'] == null
          ? null
          : UserActionInfo.fromJson(json['modified'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransportTrailerToJson(TransportTrailer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assetNumber': instance.assetNumber,
      'serialNumber': instance.serialNumber,
      'costCenter': instance.costCenter,
      'description': instance.description,
      'trailerType': instance.trailerType,
      'make': instance.make,
      'model': instance.model,
      'condition': instance.condition,
      'status': instance.status,
      'yardCode': instance.yardCode,
      'active': instance.active,
      'currentLocation': instance.currentLocation,
      'created': instance.created,
      'modified': instance.modified,
    };
