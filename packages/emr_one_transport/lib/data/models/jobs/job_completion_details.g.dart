// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_completion_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobCompletionDetails _$JobCompletionDetailsFromJson(
        Map<String, dynamic> json) =>
    JobCompletionDetails(
      startedBy: json['startedBy'] as String,
      startedByEntity: json['startedByEntity'] as String,
      startedAt: DateTime.parse(json['startedAt'] as String),
      finishedBy: json['finishedBy'] as String?,
      finishedAt: json['finishedAt'] == null
          ? null
          : DateTime.parse(json['finishedAt'] as String),
      finishedByEntity: json['finishedByEntity'] as String?,
    );

Map<String, dynamic> _$JobCompletionDetailsToJson(
        JobCompletionDetails instance) =>
    <String, dynamic>{
      'startedBy': instance.startedBy,
      'startedByEntity': instance.startedByEntity,
      'startedAt': instance.startedAt.toIso8601String(),
      'finishedBy': instance.finishedBy,
      'finishedAt': instance.finishedAt?.toIso8601String(),
      'finishedByEntity': instance.finishedByEntity,
    };
