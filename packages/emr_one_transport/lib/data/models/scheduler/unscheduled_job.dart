import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:json_annotation/json_annotation.dart';

part 'unscheduled_job.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class UnscheduledJob {
  UnscheduledJob({
    required this.jobType,
    required this.customerName,
    required this.endLocationAddress,
    required this.startLocationAddress,
    required this.customerLocationAddress,
    required this.dispatchYard,
    required this.flowType,
    required this.dueDate,
    this.postCodes,
    this.yardCodeLocations,
    this.haulierType,
    this.duration,
    this.loadsRemaining,
    this.jobNumber,
    this.planNumber,
    this.planId,
  });

  factory UnscheduledJob.fromScheduledJob(SchedulerJob job) {
    return UnscheduledJob(
      jobType: job.jobType,
      customerName: job.customerName,
      endLocationAddress: job.endLocationAddress,
      dispatchYard: job.dispatchYard,
      flowType: job.flowType,
      loadsRemaining: 1,
      jobNumber: job.jobNumber,
      dueDate: job.dueDate,
      startLocationAddress: job.startLocationAddress,
      customerLocationAddress: job.customerLocationAddress,
      postCodes: job.postCodes,
      yardCodeLocations: job.yardCodeLocations,
    );
  }

  factory UnscheduledJob.fromJson(Map<String, dynamic> json) =>
      _$UnscheduledJobFromJson(json);

  Map<String, dynamic> toJson() => _$UnscheduledJobToJson(this);

  String jobType;
  String flowType;
  String customerName;
  String endLocationAddress;
  String startLocationAddress;
  String customerLocationAddress;
  int? planNumber;
  String? planId;
  int? jobNumber;
  String dispatchYard;
  int? loadsRemaining;
  DateTime? dueDate;
  String? haulierName;
  String? haulierType;
  String? haulierCode;
  int? duration;
  Map<LocationTypeEnum, String>? postCodes;
  Map<LocationTypeEnum, String>? yardCodeLocations;
}
