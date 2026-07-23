// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobSummary _$JobSummaryFromJson(Map<String, dynamic> json) => JobSummary(
      jobNumber: (json['jobNumber'] as num?)?.toInt(),
      jobType: json['jobType'] as String?,
      scheduledDate: json['scheduledDate'] == null
          ? null
          : DateTime.parse(json['scheduledDate'] as String),
      jobStatus: json['jobStatus'] as String?,
      customerName: json['customerName'] as String?,
      startLocation: json['startLocation'] as String?,
      endLocation: json['endLocation'] as String?,
      jobStartTime: json['jobStartTime'] == null
          ? null
          : DateTime.parse(json['jobStartTime'] as String),
      jobEndTime: json['jobEndTime'] == null
          ? null
          : DateTime.parse(json['jobEndTime'] as String),
    );

Map<String, dynamic> _$JobSummaryToJson(JobSummary instance) =>
    <String, dynamic>{
      'jobNumber': instance.jobNumber,
      'jobType': instance.jobType,
      'scheduledDate': instance.scheduledDate?.toIso8601String(),
      'jobStatus': instance.jobStatus,
      'customerName': instance.customerName,
      'startLocation': instance.startLocation,
      'endLocation': instance.endLocation,
      'jobStartTime': instance.jobStartTime?.toIso8601String(),
      'jobEndTime': instance.jobEndTime?.toIso8601String(),
    };
