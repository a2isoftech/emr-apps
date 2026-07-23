// ignore_for_file: avoid_positional_boolean_parameters

import 'package:emr_one_securitymgmt/models/date_query_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'schedule_item.g.dart';

@JsonSerializable()
class SmScheduleItem {
  SmScheduleItem(
    this.isPrivate,
    this.status,
    this.subject,
    this.location,
    this.isMeeting,
    this.isRecurring,
    this.isException,
    this.isReminderSet,
    this.start,
    this.end,
  );

  factory SmScheduleItem.fromJson(Map<String, dynamic> json) =>
      _$SmScheduleItemFromJson(json);

  Map<String, dynamic> toJson() => _$SmScheduleItemToJson(this);

  @JsonKey(defaultValue: false)
  final bool isPrivate;
  @JsonKey(defaultValue: '')
  final String status;
  @JsonKey(defaultValue: '')
  final String subject;
  @JsonKey(defaultValue: '')
  final String location;
  @JsonKey(defaultValue: false)
  final bool isMeeting;
  @JsonKey(defaultValue: false)
  final bool isRecurring;
  @JsonKey(defaultValue: false)
  final bool isException;
  @JsonKey(defaultValue: false)
  final bool isReminderSet;
  final SmDateQueryModel start;
  final SmDateQueryModel end;
}
