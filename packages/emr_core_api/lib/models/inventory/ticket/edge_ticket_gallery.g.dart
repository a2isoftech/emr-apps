// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_ticket_gallery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EdgeTicketGallery _$EdgeTicketGalleryFromJson(Map<String, dynamic> json) =>
    EdgeTicketGallery(
      json['id'] as String,
      (json['tickets'] as List<dynamic>?)
          ?.map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['title'] as String,
      (json['excludedImageUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      json['publicUrl'] as String?,
      Created.fromJson(json['created'] as Map<String, dynamic>),
      Modified.fromJson(json['modified'] as Map<String, dynamic>),
      active: json['active'] as bool? ?? true,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$EdgeTicketGalleryToJson(EdgeTicketGallery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'publicUrl': instance.publicUrl,
      'excludedImageUrls': instance.excludedImageUrls,
      'tickets': instance.tickets,
      'created': instance.created,
      'modified': instance.modified,
      'active': instance.active,
      'tags': instance.tags,
    };
