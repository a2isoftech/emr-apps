import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Comment {
  Comment(this.content, this.created);

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  final String content;
  final Created created;

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}
