import 'package:emr_one_transport/data/models/common/clone_haulier_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_quick_clone_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobQuickCloneRequest {
  JobQuickCloneRequest({
    required this.cloneFromJobId,
    required this.noOfJobsToBeCreated,
    required this.targetDueDate,
    this.targetHaulierTruck,
    this.targetScheduledDate,
  });

  factory JobQuickCloneRequest.fromJson(Map<String, dynamic> json) =>
      _$JobQuickCloneRequestFromJson(json);

  Map<String, dynamic> toJson() => _$JobQuickCloneRequestToJson(this);

  final String cloneFromJobId;
  final CloneJobHaulierInfo? targetHaulierTruck;
  final int noOfJobsToBeCreated;
  final DateTime? targetScheduledDate;
  final DateTime targetDueDate;
}
