import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/provisional_cost_details.dart';
import 'package:emr_one_transport/data/models/jobs/driver_event.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scheduler_job.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SchedulerJob {
  SchedulerJob({
    required this.id,
    required this.jobNumber,
    required this.jobStatus,
    required this.jobType,
    required this.dispatchYard,
    required this.duration,
    required this.customerName,
    required this.endLocationAddress,
    required this.scheduledDate,
    required this.dueDate,
    required this.delays,
    required this.vrm,
    required this.flowType,
    required this.customerLocationAddress,
    required this.startLocationAddress,
    this.postCodes,
    this.driverEvents,
    this.yardCodeLocations,
    this.provisionalCost,
    this.isLocked,
    this.groupId,
    this.startedDateTime,
    this.finishedDateTime,
    this.jobProgressPercentage = 0,
    this.currencyCode = '',
    this.isContainerImageProcessingRequired = false,
  });
  factory SchedulerJob.fromJson(Map<String, dynamic> json) =>
      _$SchedulerJobFromJson(json);

  Map<String, dynamic> toJson() => _$SchedulerJobToJson(this);

  String id;
  bool? isLocked;
  String? groupId;
  String jobType;
  String flowType;
  String? vrm;
  DateTime? startedDateTime;
  DateTime? finishedDateTime;
  String jobStatus;
  String customerName;
  String endLocationAddress;
  int jobNumber;
  String dispatchYard;
  DateTime scheduledDate;
  DateTime dueDate;
  int duration;
  int? _durationSlots;
  List<DriverEvent>? delays;
  ProvisionalCostDetails? provisionalCost;
  int jobProgressPercentage;
  String currencyCode;
  bool isContainerImageProcessingRequired;
  String customerLocationAddress;
  String startLocationAddress;
  Map<LocationTypeEnum, String>? postCodes;
  Map<LocationTypeEnum, String>? yardCodeLocations;
  List<String>? driverEvents;

  // Lazily compute and cache the number of slots the job occupies on scheduler
  @JsonKey(includeFromJson: false, includeToJson: false)
  int get durationSlots {
    _durationSlots ??= duration ~/ 15;
    return _durationSlots!;
  } // Cached duration slots

  @JsonKey(includeFromJson: false, includeToJson: false)
  int? _startIndex; // Cached start index

  // Calculate the starting slot index based on midnight (12:00 AM)
  @JsonKey(includeFromJson: false, includeToJson: false)
  int get startIndex {
    if (_startIndex == null) {
      final scheduledMinutes =
          scheduledDate.toLocal().hour * 60 +
          scheduledDate.toLocal().minute +
          15;
      _startIndex = scheduledMinutes ~/ 15; // Each slot is 15 minutes
    }
    return _startIndex!;
  }
}
