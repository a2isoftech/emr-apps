import 'package:emr_one_transport/data/models/jobs/driver_event_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'driver_event.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class DriverEvent {
  DriverEvent({
    this.eventType,
    this.subType,
    this.started,
    this.eventId,
    this.ended,
    this.comments,
    this.data,
    this.active = true,
  });
  factory DriverEvent.fromJson(Map<String, dynamic> json) =>
      _$DriverEventFromJson(json);

  Map<String, dynamic> toJson() => _$DriverEventToJson(this);

  String? eventId;
  String? eventType;
  String? subType;
  DateTime? started;
  DateTime? ended;
  String? comments;
  bool active;
  List<DriverEventData>? data;
}
