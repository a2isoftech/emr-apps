import 'package:json_annotation/json_annotation.dart';

part 'vor_schedule_request.g.dart';

@JsonSerializable()
class VORScheduleRequest {
  VORScheduleRequest({
    this.id,
    this.startDateTime,
    this.endDateTime,
    this.active,
    this.reason,
    this.notes,
  });

  factory VORScheduleRequest.fromJson(Map<String, dynamic> json) =>
      _$VORScheduleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VORScheduleRequestToJson(this);

  final String? id;
  final DateTime? startDateTime;
  final DateTime? endDateTime;
  final bool? active;
  final String? reason;
  final String? notes;
}
