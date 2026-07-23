// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_tracking_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobTrackingDetails _$JobTrackingDetailsFromJson(Map<String, dynamic> json) =>
    JobTrackingDetails(
      jobNumber: (json['jobNumber'] as num).toInt(),
      jobType: json['jobType'] as String,
      jobStatus: json['jobStatus'] as String,
      jobStartTime: json['jobStartTime'] == null
          ? null
          : DateTime.parse(json['jobStartTime'] as String),
      jobFinishTime: json['jobFinishTime'] == null
          ? null
          : DateTime.parse(json['jobFinishTime'] as String),
      customer: JobTimelineLocation.fromJson(
          json['customer'] as Map<String, dynamic>),
      startLocation: JobTimelineLocation.fromJson(
          json['startLocation'] as Map<String, dynamic>),
      customerLocation: JobTimelineLocation.fromJson(
          json['customerLocation'] as Map<String, dynamic>),
      endLocation: JobTimelineLocation.fromJson(
          json['endLocation'] as Map<String, dynamic>),
      scheduledDate: json['scheduledDate'] == null
          ? null
          : DateTime.parse(json['scheduledDate'] as String),
      vrm: json['vrm'] as String?,
      dispatcherNotes: json['dispatcherNotes'] as String?,
      timeTakenInMinutes: (json['timeTakenInMinutes'] as num?)?.toDouble(),
      timeLine: (json['timeLine'] as List<dynamic>)
          .map((e) => JobEventTimeline.fromJson(e as Map<String, dynamic>))
          .toList(),
      dispatcherName: json['dispatcherName'] as String?,
      driverName: json['driverName'] as String?,
      officeNotes: json['officeNotes'] as String?,
      driverNotes: json['driverNotes'] as String?,
    );

Map<String, dynamic> _$JobTrackingDetailsToJson(JobTrackingDetails instance) =>
    <String, dynamic>{
      'jobNumber': instance.jobNumber,
      'jobType': instance.jobType,
      'jobStatus': instance.jobStatus,
      'jobStartTime': instance.jobStartTime?.toIso8601String(),
      'jobFinishTime': instance.jobFinishTime?.toIso8601String(),
      'customer': instance.customer,
      'startLocation': instance.startLocation,
      'customerLocation': instance.customerLocation,
      'endLocation': instance.endLocation,
      'scheduledDate': instance.scheduledDate?.toIso8601String(),
      'vrm': instance.vrm,
      'dispatcherNotes': instance.dispatcherNotes,
      'officeNotes': instance.officeNotes,
      'dispatcherName': instance.dispatcherName,
      'driverName': instance.driverName,
      'driverNotes': instance.driverNotes,
      'timeTakenInMinutes': instance.timeTakenInMinutes,
      'timeLine': instance.timeLine,
    };
