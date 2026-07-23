import 'package:emr_one_transport/data/models/common/location_info.dart';
import 'package:emr_one_transport/data/models/plans/haulier_schedule_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'plan_job_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PlanJobResponse {
  PlanJobResponse({
    required this.sourceId,
    required this.jobNumber,
    required this.dispatchYard,
    required this.jobStatus,
    required this.customerLocation,
    required this.startLocation,
    required this.endLocation,
    this.haulier,
  });
  factory PlanJobResponse.fromJson(Map<String, dynamic> json) =>
      _$PlanJobResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlanJobResponseToJson(this);
  String sourceId;
  int jobNumber;
  String dispatchYard;
  String jobStatus;
  HaulierScheduleDetail? haulier;
  LocationInfo customerLocation;
  LocationInfo startLocation;
  LocationInfo endLocation;
}
