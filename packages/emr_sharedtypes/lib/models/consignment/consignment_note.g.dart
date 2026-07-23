// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consignment_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsignmentNote _$ConsignmentNoteFromJson(Map<String, dynamic> json) =>
    ConsignmentNote(
      code: json['code'] as String,
      created: Created.fromJson(json['created'] as Map<String, dynamic>),
      modified: Modified.fromJson(json['modified'] as Map<String, dynamic>),
      mediaUrl: json['mediaUrl'] as String?,
    );

Map<String, dynamic> _$ConsignmentNoteToJson(ConsignmentNote instance) =>
    <String, dynamic>{
      'code': instance.code,
      'mediaUrl': instance.mediaUrl,
      'created': instance.created,
      'modified': instance.modified,
    };
