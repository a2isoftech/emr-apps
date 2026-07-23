import 'package:emr_one_cashiersearch/common/constants.dart';
import 'package:emr_one_cashiersearch/models/ticket_line.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    required this.comment,
    this.canDelete = false,
    this.onDelete,
    super.key,
  });
  final Comment comment;
  final void Function()? onDelete;
  final bool canDelete;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 4),
      child: Column(
        children: [
          ListTile(
            visualDensity: VisualDensity.compact,
            minVerticalPadding: 0,
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              child: Text(
                _getInitials(comment.created.userName),
              ),
            ),
            trailing: canDelete
                ? IconButton(
                    icon: const Icon(Icons.delete_outline_outlined),
                    onPressed: () => onDelete?.call(),
                  )
                : null,
            title: Text(
              comment.created.userName,
              style: textTheme.bodySmall,
            ),
            subtitle: Text(
              DateFormat(CashierConstants.dateTimeFormat)
                  .format(comment.created.at),
              style: textTheme.bodySmall!.copyWith(fontSize: 9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: Insets.gutter / 2,
              left: Insets.gutter / 4,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    comment.content,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getInitials(String userName) {
    final names = userName.split(' ');
    if (names.length == 1) {
      return names.first.characters.first;
    }
    if (names.length >= 2) {
      return '${names.first.characters.first}${names.last.characters.first}';
    }
    return userName.characters.first;
  }
}
