import 'package:emr_one_securitymgmt/models/attendee_model.dart';
import 'package:emr_one_securitymgmt/models/date_query_model.dart';
import 'package:emr_one_securitymgmt/models/location_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_event_model.g.dart';

@JsonSerializable()
class SmCreateEventModel {
  SmCreateEventModel(
    this.start,
    this.end,
    this.subject,
    this.location,
    this.showAs,
    this.attendees,
    this.transactionId,
  );

  factory SmCreateEventModel.fromJson(Map<String, dynamic> json) =>
      _$SmCreateEventModelFromJson(json);

  Map<String, dynamic> toJson() => _$SmCreateEventModelToJson(this);

  final SmDateQueryModel start;
  final SmDateQueryModel end;
  final String subject;
  final String showAs;
  final SmLocationModel location;
  final List<SmAttendeeModel> attendees;
  final String transactionId;
}
