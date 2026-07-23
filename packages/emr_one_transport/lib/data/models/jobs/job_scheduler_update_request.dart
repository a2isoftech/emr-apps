import 'package:json_annotation/json_annotation.dart';

part 'job_scheduler_update_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JobSchedulerUpdateRequest {
  JobSchedulerUpdateRequest({
    required this.id,
    this.dispatcherNotes,
    this.abandonReason,
    this.startedTime,
    this.finishedTime,
    this.isAbandoned,
    this.abandonComments
  });

  factory JobSchedulerUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$JobSchedulerUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$JobSchedulerUpdateRequestToJson(this);

  final String id;
  final String? dispatcherNotes;
  final bool? isAbandoned;
  final String? abandonReason;
  final DateTime? startedTime;
  final DateTime? finishedTime;
  final String? abandonComments;
}
