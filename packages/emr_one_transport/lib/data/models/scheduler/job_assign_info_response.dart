import 'package:json_annotation/json_annotation.dart';

part 'job_assign_info_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobReassignInfoResponse {
  JobReassignInfoResponse({
    required this.id,
    required this.jobNumber,
    required this.duration,
    this.scheduledDate,
  });

  factory JobReassignInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$JobReassignInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$JobReassignInfoResponseToJson(this);

  int jobNumber;
  String id;
  int duration;
  DateTime? scheduledDate;
}
