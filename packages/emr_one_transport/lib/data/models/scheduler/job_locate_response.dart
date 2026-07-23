import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_locate_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobLocateResponse {
  JobLocateResponse({
    required this.haulierType,
    this.job,
    this.dispatchYard,
    this.haulierCode,
  });
  factory JobLocateResponse.fromJson(Map<String, dynamic> json) =>
      _$JobLocateResponseFromJson(json);
  Map<String, dynamic> toJson() => _$JobLocateResponseToJson(this);

  SchedulerJob? job;
  String haulierType;
  String? dispatchYard;
  String? haulierCode;
}
