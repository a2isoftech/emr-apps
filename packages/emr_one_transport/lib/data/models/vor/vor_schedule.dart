import 'package:emr_one_transport/data/models/common/useractioninfo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vor_schedule.g.dart';

@JsonSerializable()
class VORSchedule {
  VORSchedule({
    this.id,
    this.startDateTime,
    this.endDateTime,
    this.active,
    this.created,
    this.modified,
    this.reason,
    this.notes,
  });

  factory VORSchedule.fromJson(Map<String, dynamic> json) =>
      _$VORScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$VORScheduleToJson(this);

  final String? id;
  final DateTime? startDateTime;
  final DateTime? endDateTime;
  final bool? active;
  final UserActionInfo? created;
  final UserActionInfo? modified;
  final String? reason;
  final String? notes;
}
