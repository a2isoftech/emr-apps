import 'package:json_annotation/json_annotation.dart';

part 'job_completion_details.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobCompletionDetails {
  JobCompletionDetails({
    required this.startedBy,
    required this.startedByEntity,
    required this.startedAt,
    required this.finishedBy,
    required this.finishedAt,
    required this.finishedByEntity,
  });
  factory JobCompletionDetails.fromJson(Map<String, dynamic> json) =>
      _$JobCompletionDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$JobCompletionDetailsToJson(this);
  final String startedBy;
  final String startedByEntity;
  final DateTime startedAt;
  final String? finishedBy;
  final DateTime? finishedAt;
  final String? finishedByEntity;
}
