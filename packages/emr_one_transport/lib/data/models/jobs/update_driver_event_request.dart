import 'package:emr_one_transport/data/models/containers/scheduler_container_update_request.dart';
import 'package:emr_one_transport/data/models/jobs/driver_event.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_driver_event_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class UpdateDriverEventRequest {
  UpdateDriverEventRequest({
    required this.jobId,
    required this.containerRetention,
    required this.driverDelayEvents,
    this.startedTime,
    this.finishedTime,
    this.dispatcherNotes,
    this.officeNotes,
  });
  factory UpdateDriverEventRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UpdateDriverEventRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateDriverEventRequestToJson(this);
  String jobId;
  List<SchedulerContainerUpdateRequest> containerRetention;
  DateTime? startedTime;
  DateTime? finishedTime;
  String? dispatcherNotes;
  String? officeNotes;
  List<DriverEvent> driverDelayEvents;
}
