// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_last_x_jobs_with_containers_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetLastXJobsWithContainersRequest _$GetLastXJobsWithContainersRequestFromJson(
        Map<String, dynamic> json) =>
    GetLastXJobsWithContainersRequest(
      count: (json['count'] as num).toInt(),
      assetNumbers: (json['assetNumbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$GetLastXJobsWithContainersRequestToJson(
        GetLastXJobsWithContainersRequest instance) =>
    <String, dynamic>{
      'count': instance.count,
      'assetNumbers': instance.assetNumbers,
    };
