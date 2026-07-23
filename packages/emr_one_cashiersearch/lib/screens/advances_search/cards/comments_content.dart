import 'package:emr_one_cashiersearch/screens/advances_search/form_data/comment_form_data.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class CommentsContent extends StatefulWidget {
  const CommentsContent({
    required this.existingComments,
    required this.newComments,
    required this.currentUserId,
    required this.currentUserName,
    super.key,
  });

  final ValueNotifier<List<CommentFormData>> existingComments;
  final ValueNotifier<List<String>> newComments;
  final String currentUserId;
  final String currentUserName;

  @override
  State<CommentsContent> createState() => _CommentsContentState();
}

class _CommentsContentState extends State<CommentsContent> {
  final currentComment = ValueNotifier<String>('');
  final _formKey = GlobalKey<FormState>();

  void _addComment() {
    if ((_formKey.currentState?.validate() ?? false) &&
        currentComment.value.isNotEmpty) {
      widget.newComments.value = [
        ...widget.newComments.value,
        currentComment.value,
      ];
      currentComment.value = '';
    }
  }

  void _deleteComment({required int index}) {
    showDialog<void>(
      context: context,
      builder: (_) {
        final theme = Theme.of(context);
        return AlertDialog(
          title: Text(
            context.l10n.confirmDeletion,
            style: theme.textTheme.titleMedium,
          ),
          content: Text(
            context.l10n.commentDeletionConfirmation,
            style: theme.textTheme.bodyMedium,
          ),
          actions: [
            TextButton(
              onPressed: Navigator.of(context).pop,
              child:
                  Text(context.l10n.cancel, style: theme.textTheme.labelLarge),
            ),
            TextButton(
              onPressed: () {
                widget.newComments.value = [
                  ...widget.newComments.value..removeAt(index),
                ];
                Navigator.of(context).pop();
              },
              child: Text(
                context.l10n.delete,
                style: theme.textTheme.labelLarge
                    ?.copyWith(color: theme.colorScheme.error),
              ),
            ),
          ],
        );
      },
    );
  }

  String _initials(String name) {
    final parts = name.trim().split(' ');
    if (parts.length >= 2) {
      return parts[0][0] + parts[1][0];
    }
    return parts.first.substring(0, 1);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dividerColor = theme.dividerColor;
    final surfaceColor = theme.colorScheme.surface;
    final textSecondary = theme.textTheme.bodySmall?.color;
    final primaryColor = theme.colorScheme.primary;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: surfaceColor,
        border: Border.all(color: dividerColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 300),
            child: SingleChildScrollView(
              child: ValueListenableBuilder<List<String>>(
                valueListenable: widget.newComments,
                builder: (_, newList, __) {
                  return ValueListenableBuilder<List<CommentFormData>>(
                    valueListenable: widget.existingComments,
                    builder: (_, oldList, __) {
                      final total = oldList.length + newList.length;
                      if (total == 0) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: Center(
                            child: Text(
                              context.l10n.noCommentsYet,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        );
                      }

                      final rows = <Widget>[];
                      for (var i = 0; i < oldList.length; i++) {
                        final c = oldList[i];
                        final name = c.created.value.userName;
                        rows.add(
                          _buildRow(
                            name: name,
                            initials: _initials(name),
                            content: c.content.value,
                            time: c.created.value.at,
                            canDelete: false,
                            onDelete: null,
                            theme: theme,
                            textSecondary: textSecondary,
                          ),
                        );
                        if (i < total - 1) {
                          rows.add(Divider(color: dividerColor, height: 1));
                        }
                      }
                      for (var j = 0; j < newList.length; j++) {
                        final idx = oldList.length + j;
                        rows.add(
                          _buildRow(
                            name: widget.currentUserName,
                            initials: _initials(widget.currentUserName),
                            content: newList[j],
                            time: DateTime.now(),
                            canDelete: true,
                            onDelete: () => _deleteComment(index: j),
                            theme: theme,
                            textSecondary: textSecondary,
                          ),
                        );
                        if (idx < total - 1) {
                          rows.add(Divider(color: dividerColor, height: 1));
                        }
                      }
                      rows.add(Divider(color: dividerColor, height: 1));
                      return Column(children: rows);
                    },
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
                child: CircleAvatar(
                  radius: Insets.gutter,
                  backgroundColor: theme.colorScheme.primaryContainer,
                  child: Text(
                    _initials(widget.currentUserName),
                    style: theme.textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: EmrTextFormField<String?>(
                    binding: currentComment,
                    hintText: context.l10n.hintWriteAComment,
                    validator: Validators.required,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: Insets.gutter / 4),
                child: IconButton(
                  icon: Icon(Icons.send, color: primaryColor),
                  onPressed: _addComment,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRow({
    required String name,
    required String initials,
    required String content,
    required DateTime time,
    required bool canDelete,
    required VoidCallback? onDelete,
    required ThemeData theme,
    required Color? textSecondary,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: Insets.gutter,
                backgroundColor: theme.colorScheme.primaryContainer,
                child: Text(
                  initials,
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  name,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              if (canDelete)
                IconButton(
                  icon: Icon(
                    Icons.delete_outline,
                    size: 20,
                    color: theme.colorScheme.error,
                  ),
                  onPressed: onDelete,
                ),
            ],
          ),
          const SizedBox(height: 4),
          Text(content, style: theme.textTheme.bodyMedium),
          const SizedBox(height: 4),
          Text(
            '${time.toLocal()}'.split('.').first,
            style: theme.textTheme.bodySmall?.copyWith(color: textSecondary),
          ),
        ],
      ),
    );
  }
}
