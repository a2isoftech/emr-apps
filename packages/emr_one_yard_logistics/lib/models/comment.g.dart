// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      userId: json['userId'] as String,
      commentText: json['commentText'] as String,
      userName: json['userName'] as String,
      commentDate: DateTime.parse(json['commentDate'] as String),
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'userId': instance.userId,
      'commentText': instance.commentText,
      'userName': instance.userName,
      'commentDate': instance.commentDate.toIso8601String(),
    };
