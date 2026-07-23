import 'package:emr_one_transport/data/models/jobs/lat_long.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_event_timeline.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobEventTimeline {
  JobEventTimeline(
    this.eventTime,
    this.data,
    this.eventType,
    this.eventSubType,
    this.timeLineEventType,
    this.locationCode,
    this.locationAt,
    this.images, {
    this.isDriverEvent = false,
    this.isDispatcherEvent = false,
    this.geoLocation,
    this.isTriggeredByGeoFence = false,
  });

  factory JobEventTimeline.fromJson(Map<String, dynamic> json) =>
      _$JobEventTimelineFromJson(json);

  Map<String, dynamic> toJson() => _$JobEventTimelineToJson(this);

  final DateTime eventTime;
  final Map<String, dynamic>? data;
  final String eventType;
  final String? eventSubType;
  final String timeLineEventType;
  final String? locationCode;
  final String? locationAt;
  final bool isDriverEvent;
  final bool isDispatcherEvent;
  final LatLong? geoLocation;
  final bool isTriggeredByGeoFence;
  final List<String> images;
}
