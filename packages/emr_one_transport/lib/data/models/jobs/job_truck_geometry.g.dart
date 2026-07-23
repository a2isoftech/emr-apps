// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_truck_geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobTruckGeometry _$JobTruckGeometryFromJson(Map<String, dynamic> json) =>
    JobTruckGeometry(
      json['vrm'] as String?,
      (json['geometry'] as List<dynamic>)
          .map((e) => LatLong.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JobTruckGeometryToJson(JobTruckGeometry instance) =>
    <String, dynamic>{
      'vrm': instance.vrm,
      'geometry': instance.geometry,
    };
