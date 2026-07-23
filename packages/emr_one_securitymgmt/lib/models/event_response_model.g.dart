// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmEventResponseModel _$SmEventResponseModelFromJson(
        Map<String, dynamic> json) =>
    SmEventResponseModel(
      json['@odata.context'] as String,
      json['@odata.etag'] as String,
      json['id'] as String,
      json['createdDateTime'] as String,
      json['lastModifiedDateTime'] as String,
      json['changeKey'] as String,
      (json['categories'] as List<dynamic>).map((e) => e as String).toList(),
      json['transactionId'] as String,
      json['originalStartTimeZone'] as String,
      json['originalEndTimeZone'] as String,
      json['iCalUId'] as String,
      (json['reminderMinutesBeforeStart'] as num).toInt(),
      json['isReminderOn'] as bool,
      json['hasAttachments'] as bool,
      json['subject'] as String,
      json['bodyPreview'] as String,
      json['importance'] as String,
      json['sensitivity'] as String,
      json['isAllDay'] as bool,
      json['isCancelled'] as bool,
      json['isOrganizer'] as bool,
      json['responseRequested'] as bool,
      json['seriesMasterId'] as String?,
      json['showAs'] as String,
      json['type'] as String,
      json['webLink'] as String,
      json['onlineMeetingUrl'] as String?,
      json['isOnlineMeeting'] as bool,
      json['onlineMeetingProvider'] as String,
      json['allowNewTimeProposals'] as bool,
      json['occurrenceId'] as String?,
      json['isDraft'] as bool,
      json['hideAttendees'] as bool,
      SmResponseStatusModel.fromJson(
          json['responseStatus'] as Map<String, dynamic>),
      SmDateQueryModel.fromJson(json['start'] as Map<String, dynamic>),
      SmDateQueryModel.fromJson(json['end'] as Map<String, dynamic>),
      json['recurrence'] as String?,
      (json['attendees'] as List<dynamic>)
          .map((e) => SmAttendeeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['onlineMeeting'] as String?,
    );

Map<String, dynamic> _$SmEventResponseModelToJson(
        SmEventResponseModel instance) =>
    <String, dynamic>{
      '@odata.context': instance.odataContext,
      '@odata.etag': instance.odataEtag,
      'id': instance.id,
      'createdDateTime': instance.createdDateTime,
      'lastModifiedDateTime': instance.lastModifiedDateTime,
      'changeKey': instance.changeKey,
      'categories': instance.categories,
      'transactionId': instance.transactionId,
      'originalStartTimeZone': instance.originalStartTimeZone,
      'originalEndTimeZone': instance.originalEndTimeZone,
      'iCalUId': instance.iCalUId,
      'reminderMinutesBeforeStart': instance.reminderMinutesBeforeStart,
      'isReminderOn': instance.isReminderOn,
      'hasAttachments': instance.hasAttachments,
      'subject': instance.subject,
      'bodyPreview': instance.bodyPreview,
      'importance': instance.importance,
      'sensitivity': instance.sensitivity,
      'isAllDay': instance.isAllDay,
      'isCancelled': instance.isCancelled,
      'isOrganizer': instance.isOrganizer,
      'responseRequested': instance.responseRequested,
      'seriesMasterId': instance.seriesMasterId,
      'showAs': instance.showAs,
      'type': instance.type,
      'webLink': instance.webLink,
      'onlineMeetingUrl': instance.onlineMeetingUrl,
      'isOnlineMeeting': instance.isOnlineMeeting,
      'onlineMeetingProvider': instance.onlineMeetingProvider,
      'allowNewTimeProposals': instance.allowNewTimeProposals,
      'occurrenceId': instance.occurrenceId,
      'isDraft': instance.isDraft,
      'hideAttendees': instance.hideAttendees,
      'responseStatus': instance.responseStatus,
      'start': instance.start,
      'end': instance.end,
      'recurrence': instance.recurrence,
      'attendees': instance.attendees,
      'onlineMeeting': instance.onlineMeeting,
    };
