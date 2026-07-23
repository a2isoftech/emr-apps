import 'package:json_annotation/json_annotation.dart';

part 'unassign_job_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class UnassignJobRequest {
  UnassignJobRequest({
    required this.jobId,
    required this.unAssignReasonCode,
    required this.unAssignReason,
    this.unAssignComments,
  });
  factory UnassignJobRequest.fromJson(Map<String, dynamic> json) =>
      _$UnassignJobRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UnassignJobRequestToJson(this);

  final String jobId;

  final String unAssignReasonCode;

  final String? unAssignComments;

  final String unAssignReason;
}
