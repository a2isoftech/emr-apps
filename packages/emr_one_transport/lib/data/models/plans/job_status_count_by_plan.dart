import 'package:json_annotation/json_annotation.dart';

part 'job_status_count_by_plan.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobStatusCountByPlan {
  JobStatusCountByPlan(
    this.jobStatus,
    this.count,
  );

  factory JobStatusCountByPlan.fromJson(Map<String, dynamic> json) =>
      _$JobStatusCountByPlanFromJson(json);

  Map<String, dynamic> toJson() => _$JobStatusCountByPlanToJson(this);

  final String jobStatus;
  final int count;
  int planCount = 0;
}
