// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_event_timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobEventTimeline _$JobEventTimelineFromJson(Map<String, dynamic> json) =>
    JobEventTimeline(
      DateTime.parse(json['eventTime'] as String),
      json['data'] as Map<String, dynamic>?,
      json['eventType'] as String,
      json['eventSubType'] as String?,
      json['timeLineEventType'] as String,
      json['locationCode'] as String?,
      json['locationAt'] as String?,
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      isDriverEvent: json['isDriverEvent'] as bool? ?? false,
      isDispatcherEvent: json['isDispatcherEvent'] as bool? ?? false,
      geoLocation: json['geoLocation'] == null
          ? null
          : LatLong.fromJson(json['geoLocation'] as Map<String, dynamic>),
      isTriggeredByGeoFence: json['isTriggeredByGeoFence'] as bool? ?? false,
    );

Map<String, dynamic> _$JobEventTimelineToJson(JobEventTimeline instance) =>
    <String, dynamic>{
      'eventTime': instance.eventTime.toIso8601String(),
      'data': instance.data,
      'eventType': instance.eventType,
      'eventSubType': instance.eventSubType,
      'timeLineEventType': instance.timeLineEventType,
      'locationCode': instance.locationCode,
      'locationAt': instance.locationAt,
      'isDriverEvent': instance.isDriverEvent,
      'isDispatcherEvent': instance.isDispatcherEvent,
      'geoLocation': instance.geoLocation,
      'isTriggeredByGeoFence': instance.isTriggeredByGeoFence,
      'images': instance.images,
    };
