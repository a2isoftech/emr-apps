import 'package:emr_one_cashiersearch/models/ticket_line.dart';
import 'package:flutter/material.dart';

class CommentFormData {
  CommentFormData({required Created created, String? content}) {
    this.content = ValueNotifier(content ?? '');
    this.created = ValueNotifier(created);
  }

  factory CommentFormData.fromComment(Comment comment) => CommentFormData(
        created: comment.created,
        content: comment.content,
      );

  Comment toComment() =>
      Comment(content: content.value, created: created.value);

  late final ValueNotifier<String> content;
  late final ValueNotifier<Created> created;
}
