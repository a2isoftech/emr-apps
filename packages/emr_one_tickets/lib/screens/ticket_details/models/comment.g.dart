// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
  json['content'] as String,
  Created.fromJson(json['created'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
  'content': instance.content,
  'created': instance.created,
};
