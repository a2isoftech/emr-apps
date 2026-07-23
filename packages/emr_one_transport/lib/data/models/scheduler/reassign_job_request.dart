import 'package:emr_one_transport/data/models/scheduler/job_reassign_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reassign_job_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ReassignJobRequest {
  ReassignJobRequest({
    required this.scheduleDate,
    required this.haulierType,
    required this.haulierCode,
    required this.dispatchYard,
    required this.jobs,
    required this.vrm,
    required this.timezoneId,
    this.assetNumber = '',
  });

  factory ReassignJobRequest.fromJson(Map<String, dynamic> json) =>
      _$ReassignJobRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReassignJobRequestToJson(this);

  String haulierType;
  String haulierCode;
  String vrm;
  String assetNumber;
  DateTime scheduleDate;
  String dispatchYard;
  List<JobReassignInfo> jobs;
  String timezoneId;
}
