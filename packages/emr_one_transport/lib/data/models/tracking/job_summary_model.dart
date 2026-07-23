import 'package:json_annotation/json_annotation.dart';

part 'job_summary_model.g.dart';

@JsonSerializable()
class JobSummary {

  JobSummary({
    required this.jobNumber,
    required this.jobType,
    required this.scheduledDate,
    required this.jobStatus,
    required this.customerName,
    required this.startLocation,
    required this.endLocation,
    this.jobStartTime,
    this.jobEndTime,
  });

  factory JobSummary.fromJson(Map<String, dynamic> json) =>
      _$JobSummaryFromJson(json);
  final int? jobNumber;
  final String? jobType;
  final DateTime? scheduledDate;
  final String? jobStatus;
  final String? customerName;
  final String? startLocation;
  final String? endLocation;
  final DateTime? jobStartTime;
  final DateTime? jobEndTime;

  Map<String, dynamic> toJson() => _$JobSummaryToJson(this);
}
