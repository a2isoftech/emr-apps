// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_gallery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketGallery _$TicketGalleryFromJson(Map<String, dynamic> json) =>
    TicketGallery(
      json['id'] as String,
      (json['tickets'] as List<dynamic>?)
          ?.map((e) => Trade2Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['title'] as String,
      (json['excludedImageUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      json['createdBy'] as String,
      DateTime.parse(json['createdDate'] as String),
      json['publicUrl'] as String?,
    );

Map<String, dynamic> _$TicketGalleryToJson(TicketGallery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdBy': instance.createdBy,
      'publicUrl': instance.publicUrl,
      'createdDate': instance.createdDate.toIso8601String(),
      'excludedImageUrls': instance.excludedImageUrls,
      'tickets': instance.tickets,
    };
