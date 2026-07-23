// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_trailers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobTrailers _$JobTrailersFromJson(Map<String, dynamic> json) => JobTrailers(
      trailerType: json['trailerType'] as String?,
      model: json['model'] as String?,
      assetNumber: json['assetNumber'] as String?,
      withScan: json['withScan'] as bool?,
    );

Map<String, dynamic> _$JobTrailersToJson(JobTrailers instance) =>
    <String, dynamic>{
      'trailerType': instance.trailerType,
      'model': instance.model,
      'assetNumber': instance.assetNumber,
      'withScan': instance.withScan,
    };
