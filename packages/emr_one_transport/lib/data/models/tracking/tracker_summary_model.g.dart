// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracker_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackerSummary _$TrackerSummaryFromJson(Map<String, dynamic> json) =>
    TrackerSummary(
      assetNumber: json['assetNumber'] as String?,
      vrm: json['vrm'] as String?,
      currentPosition: json['currentPosition'] == null
          ? null
          : GeoLocation.fromJson(
              json['currentPosition'] as Map<String, dynamic>),
      speed: (json['speed'] as num?)?.toDouble(),
      heading: (json['heading'] as num?)?.toDouble(),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      activeJobNumber: (json['activeJobNumber'] as num?)?.toInt(),
      dispatchYard: json['dispatchYard'] as String?,
      driverName: json['driverName'] as String?,
    );
