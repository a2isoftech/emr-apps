import 'package:emr_one_securitymgmt/models/attendee_model.dart';
import 'package:emr_one_securitymgmt/models/date_query_model.dart';
import 'package:emr_one_securitymgmt/models/response_status_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_response_model.g.dart';

@JsonSerializable()
class SmEventResponseModel {
  SmEventResponseModel(
    this.odataContext,
    this.odataEtag,
    this.id,
    this.createdDateTime,
    this.lastModifiedDateTime,
    this.changeKey,
    this.categories,
    this.transactionId,
    this.originalStartTimeZone,
    this.originalEndTimeZone,
    this.iCalUId,
    this.reminderMinutesBeforeStart,
    // ignore: avoid_positional_boolean_parameters
    this.isReminderOn,
    this.hasAttachments,
    this.subject,
    this.bodyPreview,
    this.importance,
    this.sensitivity,
    this.isAllDay,
    this.isCancelled,
    this.isOrganizer,
    this.responseRequested,
    this.seriesMasterId,
    this.showAs,
    this.type,
    this.webLink,
    this.onlineMeetingUrl,
    this.isOnlineMeeting,
    this.onlineMeetingProvider,
    this.allowNewTimeProposals,
    this.occurrenceId,
    this.isDraft,
    this.hideAttendees,
    this.responseStatus,
    this.start,
    this.end,
    this.recurrence,
    this.attendees,
    this.onlineMeeting,
  );

  factory SmEventResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SmEventResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SmEventResponseModelToJson(this);

  @JsonKey(name: '@odata.context')
  final String odataContext;
  @JsonKey(name: '@odata.etag')
  final String odataEtag;
  final String id;
  final String createdDateTime;
  final String lastModifiedDateTime;
  final String changeKey;
  final List<String> categories;
  final String transactionId;
  final String originalStartTimeZone;
  final String originalEndTimeZone;
  final String iCalUId;
  final int reminderMinutesBeforeStart;
  final bool isReminderOn;
  final bool hasAttachments;
  final String subject;
  final String bodyPreview;
  final String importance;
  final String sensitivity;
  final bool isAllDay;
  final bool isCancelled;
  final bool isOrganizer;
  final bool responseRequested;
  final String? seriesMasterId;
  final String showAs;
  final String type;
  final String webLink;
  final String? onlineMeetingUrl;
  final bool isOnlineMeeting;
  final String onlineMeetingProvider;
  final bool allowNewTimeProposals;
  final String? occurrenceId;
  final bool isDraft;
  final bool hideAttendees;
  final SmResponseStatusModel responseStatus;
  final SmDateQueryModel start;
  final SmDateQueryModel end;
  final String? recurrence;
  final List<SmAttendeeModel> attendees;
  final String? onlineMeeting;
}
