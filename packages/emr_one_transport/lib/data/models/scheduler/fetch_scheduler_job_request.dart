import 'package:json_annotation/json_annotation.dart';

part 'fetch_scheduler_job_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class FetchSchedulerJobRequest {
  FetchSchedulerJobRequest({
    required this.yardCodes,
    required this.haulierCodes,
    required this.containerTypes,
    required this.haulierTypes,
    required this.truckTypes,
    required this.productFamilies,
    required this.jobTypes,
    required this.dueInDays,
    required this.scheduledDate,
    required this.timezoneId,
  });

  factory FetchSchedulerJobRequest.fromJson(Map<String, dynamic> json) =>
      _$FetchSchedulerJobRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FetchSchedulerJobRequestToJson(this);

  List<String> yardCodes;
  Map<String, List<String>> haulierCodes;
  List<String> containerTypes;
  List<String> haulierTypes;
  List<String> truckTypes;
  List<String> jobTypes;
  List<String> productFamilies;
  String dueInDays;
  String scheduledDate;
  String timezoneId;
}
