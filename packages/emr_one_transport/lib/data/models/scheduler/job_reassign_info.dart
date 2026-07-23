import 'package:json_annotation/json_annotation.dart';

part 'job_reassign_info.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobReassignInfo {
  JobReassignInfo({
    required this.jobNumber,
    required this.duration,
    this.scheduledDate,
  });

  factory JobReassignInfo.fromJson(Map<String, dynamic> json) =>
      _$JobReassignInfoFromJson(json);

  Map<String, dynamic> toJson() => _$JobReassignInfoToJson(this);

  int jobNumber;
  int duration;
  DateTime? scheduledDate;
}
