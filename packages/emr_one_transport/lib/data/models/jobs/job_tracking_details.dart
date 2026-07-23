import 'package:emr_one_transport/data/models/jobs/job_event_timeline.dart';
import 'package:emr_one_transport/data/models/jobs/job_timeline_location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_tracking_details.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobTrackingDetails {
  JobTrackingDetails({
    required this.jobNumber,
    required this.jobType,
    required this.jobStatus,
    required this.jobStartTime,
    required this.jobFinishTime,
    required this.customer,
    required this.startLocation,
    required this.customerLocation,
    required this.endLocation,
    required this.scheduledDate,
    required this.vrm,
    required this.dispatcherNotes,
    required this.timeTakenInMinutes,
    required this.timeLine,
    this.dispatcherName,
    this.driverName,
    this.officeNotes,
    this.driverNotes,
  });
  factory JobTrackingDetails.fromJson(Map<String, dynamic> json) =>
      _$JobTrackingDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$JobTrackingDetailsToJson(this);

  final int jobNumber;
  final String jobType;
  final String jobStatus;
  final DateTime? jobStartTime;
  final DateTime? jobFinishTime;
  final JobTimelineLocation customer;
  final JobTimelineLocation startLocation;
  final JobTimelineLocation customerLocation;
  final JobTimelineLocation endLocation;
  final DateTime? scheduledDate;
  final String? vrm;
  final String? dispatcherNotes;
  final String? officeNotes;
  final String? dispatcherName;
  final String? driverName;
  final String? driverNotes;
  final double? timeTakenInMinutes;
  final List<JobEventTimeline> timeLine;
}
