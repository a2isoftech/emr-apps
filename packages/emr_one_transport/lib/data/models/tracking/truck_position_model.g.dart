// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_position_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TruckPosition _$TruckPositionFromJson(Map<String, dynamic> json) =>
    TruckPosition(
      assetNumber: json['assetNumber'] as String?,
      vrm: json['vrm'] as String?,
      geoLocation: json['geoLocation'] == null
          ? null
          : GeoLocation.fromJson(json['geoLocation'] as Map<String, dynamic>),
      speed: (json['speed'] as num?)?.toDouble(),
      heading: (json['heading'] as num?)?.toDouble(),
      locationTimestamp: json['locationTimestamp'] == null
          ? null
          : DateTime.parse(json['locationTimestamp'] as String),
      accuracy: (json['accuracy'] as num?)?.toDouble(),
      status: json['status'] as String?,
      yard: json['yard'] as String?,
      driverName: json['driverName'] as String?,
    );
