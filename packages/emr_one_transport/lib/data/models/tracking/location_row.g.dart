// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationRow _$LocationRowFromJson(Map<String, dynamic> json) => LocationRow(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      speed: (json['speed'] as num?)?.toDouble(),
      heading: (json['heading'] as num?)?.toDouble(),
      locationTimestamp: json['locationTimestamp'] == null
          ? null
          : DateTime.parse(json['locationTimestamp'] as String),
      accuracy: (json['accuracy'] as num?)?.toDouble(),
    );
