// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lock_ticket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LockTicketResponse _$LockTicketResponseFromJson(Map<String, dynamic> json) =>
    LockTicketResponse(
      isSuccess: json['isSuccess'] as bool? ?? true,
      ticketId: json['ticketId'] as String? ?? '',
      lockedBy: json['lockedBy'] as String?,
    );

Map<String, dynamic> _$LockTicketResponseToJson(LockTicketResponse instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'ticketId': instance.ticketId,
      'lockedBy': instance.lockedBy,
    };
