import 'package:json_annotation/json_annotation.dart';

part 'job_assign_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobAssignRequest {
  JobAssignRequest({
    required this.jobNumber,
    required this.proposedDurationMinutes,
    required this.proposedScheduledDate,
    required this.loads,
    required this.vrm,
    required this.haulierTypeEnum,
    required this.timezoneId,
    required this.isFlexibleSchedule,
  });

  Map<String, dynamic> toJson() => _$JobAssignRequestToJson(this);

  int jobNumber;
  int loads;
  String vrm;
  DateTime proposedScheduledDate;
  int proposedDurationMinutes;
  String haulierTypeEnum;
  String timezoneId;
  bool isFlexibleSchedule;
}
