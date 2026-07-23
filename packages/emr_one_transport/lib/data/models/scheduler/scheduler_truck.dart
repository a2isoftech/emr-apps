import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/scheduler/vor_schedule.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scheduler_truck.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SchedulerTruck {
  SchedulerTruck({
    required this.vrm,
    required this.schedulerJobs,
    required this.truckDescription,
    required this.truckType,
    required this.isJobSequenceEnforced,
    this.assetNumber,
    this.haulierName,
    this.haulierCode,
    this.driverName,
    this.vorSchedules,
  });
  factory SchedulerTruck.fromJson(Map<String, dynamic> json) =>
      _$SchedulerTruckFromJson(json);

  Map<String, dynamic> toJson() => _$SchedulerTruckToJson(this);
  final String? driverName;
  final String vrm;
  final String? haulierName;
  final String? assetNumber;
  final String? haulierCode;
  final String truckType;
  final String truckDescription;
  bool isJobSequenceEnforced;
  List<SchedulerJob> schedulerJobs;
  List<VorSchedule>? vorSchedules;
}
