// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_x_jobs_with_container_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastXJobsWithContainerResponse _$LastXJobsWithContainerResponseFromJson(
        Map<String, dynamic> json) =>
    LastXJobsWithContainerResponse(
      jobs: (json['jobs'] as List<dynamic>)
          .map((e) => TransportJobResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      assetNumber: json['assetNumber'] as String,
    );

Map<String, dynamic> _$LastXJobsWithContainerResponseToJson(
        LastXJobsWithContainerResponse instance) =>
    <String, dynamic>{
      'jobs': instance.jobs.map((e) => e.toJson()).toList(),
      'assetNumber': instance.assetNumber,
    };
