import 'package:json_annotation/json_annotation.dart';

part 'move_outstanding_jobs.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class MovePendingJobsRequest {
  MovePendingJobsRequest({
    required this.sourceTruckVrm,
    required this.targetHaulierType,
    required this.sourceDate,
    required this.targetDate,
    required this.timezoneId,
    required this.targetHaulierCode,
    this.targetTruckVrm,
  });

  factory MovePendingJobsRequest.fromJson(Map<String, dynamic> json) =>
      _$MovePendingJobsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MovePendingJobsRequestToJson(this);

  final String sourceTruckVrm;
  final String? targetTruckVrm;
  final String targetHaulierCode;
  final String targetHaulierType;
  final String timezoneId;
  final DateTime sourceDate;
  final DateTime targetDate;
}
