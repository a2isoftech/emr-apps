// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_remittance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketRemittance _$TicketRemittanceFromJson(Map<String, dynamic> json) =>
    TicketRemittance(
      mediaUrl: json['mediaUrl'] as String,
      created: Created.fromJson(json['created'] as Map<String, dynamic>),
      modified: Modified.fromJson(json['modified'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TicketRemittanceToJson(TicketRemittance instance) =>
    <String, dynamic>{
      'mediaUrl': instance.mediaUrl,
      'created': instance.created.toJson(),
      'modified': instance.modified.toJson(),
    };
