import 'package:json_annotation/json_annotation.dart';

part 'clone_jobs_for_the_day_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class CloneJobsForTheDayRequest {
  CloneJobsForTheDayRequest({
    required this.sourceDate,
    required this.targetDate,
    required this.targetDueDate,
    required this.timezoneId,
    this.sourceTruckVrm,
    this.sourceHaulierCode,
    this.targetHaulierCode,
    this.targetVrm,
  });

  factory CloneJobsForTheDayRequest.fromJson(Map<String, dynamic> json) =>
      _$CloneJobsForTheDayRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CloneJobsForTheDayRequestToJson(this);

  final DateTime sourceDate;
  final DateTime targetDate;
  final DateTime targetDueDate;
  final String? sourceTruckVrm;
  final String? sourceHaulierCode;
  final String? targetHaulierCode;
  final String? targetVrm;
  final String timezoneId;
}
