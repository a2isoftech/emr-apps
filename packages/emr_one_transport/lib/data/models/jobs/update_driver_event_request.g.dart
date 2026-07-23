// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_driver_event_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateDriverEventRequest _$UpdateDriverEventRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateDriverEventRequest(
      jobId: json['jobId'] as String,
      containerRetention: (json['containerRetention'] as List<dynamic>)
          .map((e) => SchedulerContainerUpdateRequest.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      driverDelayEvents: (json['driverDelayEvents'] as List<dynamic>)
          .map((e) => DriverEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      startedTime: json['startedTime'] == null
          ? null
          : DateTime.parse(json['startedTime'] as String),
      finishedTime: json['finishedTime'] == null
          ? null
          : DateTime.parse(json['finishedTime'] as String),
      dispatcherNotes: json['dispatcherNotes'] as String?,
      officeNotes: json['officeNotes'] as String?,
    );

Map<String, dynamic> _$UpdateDriverEventRequestToJson(
        UpdateDriverEventRequest instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'containerRetention': instance.containerRetention,
      'startedTime': instance.startedTime?.toIso8601String(),
      'finishedTime': instance.finishedTime?.toIso8601String(),
      'dispatcherNotes': instance.dispatcherNotes,
      'officeNotes': instance.officeNotes,
      'driverDelayEvents': instance.driverDelayEvents,
    };
