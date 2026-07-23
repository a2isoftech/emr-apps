// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketMedia _$TicketMediaFromJson(Map<String, dynamic> json) => TicketMedia(
      url: json['url'] as String,
      sasThumbnailUrl: json['sasThumbnailUrl'] as String?,
      sasUrl: json['sasUrl'] as String?,
    );

Map<String, dynamic> _$TicketMediaToJson(TicketMedia instance) =>
    <String, dynamic>{
      'url': instance.url,
      'sasUrl': instance.sasUrl,
      'sasThumbnailUrl': instance.sasThumbnailUrl,
    };
