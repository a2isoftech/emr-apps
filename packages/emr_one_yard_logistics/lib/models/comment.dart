import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Comment {
  Comment({
    required this.userId,
    required this.commentText,
    required this.userName,
    required this.commentDate,
  });

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);

  final String userId;
  final String commentText;
  final String userName;
  final DateTime commentDate;
}
