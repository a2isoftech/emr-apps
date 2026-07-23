// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_asset_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackingAssetLocationResponse _$TrackingAssetLocationResponseFromJson(
        Map<String, dynamic> json) =>
    TrackingAssetLocationResponse(
      assetNumber: json['assetNumber'] as String?,
      vrm: json['vrm'] as String?,
      locationRows: (json['locationRows'] as List<dynamic>?)
          ?.map((e) => LocationRow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
