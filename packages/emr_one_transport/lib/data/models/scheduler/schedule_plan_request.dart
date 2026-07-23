import 'package:json_annotation/json_annotation.dart';

part 'schedule_plan_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SchedulePlanRequest {
  SchedulePlanRequest({
    required this.planId,
    required this.scheduleDate,
    required this.targetHaulierCode,
    required this.targetHaulierType,
    required this.fromHaulierCode,
    required this.fromHaulierType,
    required this.loadsToSchedule,
    required this.duration,
    required this.timezoneId,
    required this.isExactSchedule,
    this.vrm,
  });

  factory SchedulePlanRequest.fromJson(Map<String, dynamic> json) =>
      _$SchedulePlanRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SchedulePlanRequestToJson(this);

  String planId;
  DateTime scheduleDate;
  String? vrm;
  String targetHaulierCode;
  String targetHaulierType;
  String fromHaulierCode;
  String fromHaulierType;
  int loadsToSchedule;
  int duration;
  String timezoneId;
  bool isExactSchedule;
}
