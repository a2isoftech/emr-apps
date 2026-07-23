import 'package:json_annotation/json_annotation.dart';

part 'third_party_job.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ThirdPartyJob {
  ThirdPartyJob({
    required this.id,
    required this.jobNumber,
    required this.jobType,
    required this.flowType,
    required this.dueDate,
    required this.jobStatus,
    required this.customerName,
    required this.endLocationAddress,
    required this.dispatchYard,
    required this.duration,
    this.startedDateTime,
    this.finishedDateTime,
    this.isDelayed = false,
  });
  factory ThirdPartyJob.fromJson(Map<String, dynamic> json) =>
      _$ThirdPartyJobFromJson(json);

  Map<String, dynamic> toJson() => _$ThirdPartyJobToJson(this);

  String id;
  DateTime dueDate;
  String flowType;
  String jobType;
  DateTime? startedDateTime;
  DateTime? finishedDateTime;
  String jobStatus;
  String customerName;
  String endLocationAddress;
  int jobNumber;
  String dispatchYard;
  int duration;
  bool isDelayed;
}
