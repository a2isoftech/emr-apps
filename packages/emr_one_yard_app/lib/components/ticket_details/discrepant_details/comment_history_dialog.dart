import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/card_base.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/models/ticket/comment_model.dart';
import 'package:flutter/material.dart';

class CommentHistoryDialog extends StatefulWidget {
  const CommentHistoryDialog({
    required this.comments,
    required this.userName,
    required this.onAdd,
    super.key,
  });

  final List<CommentModel> comments;
  final String userName;
  final Future<bool> Function(CommentModel newComment) onAdd;

  static Future<void> show({
    required BuildContext context,
    required List<CommentModel> comments,
    required String userName,
    required Future<bool> Function(CommentModel newComment) onAdd,
  }) async {
    comments.sort((a, b) => b.date.compareTo(a.date));

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        insetPadding: const EdgeInsets.all(Insets.gutter),
        child: SafeArea(
          child: CommentHistoryDialog(
            comments: comments,
            userName: userName,
            onAdd: onAdd,
          ),
        ),
      ),
    );
  }

  @override
  State<CommentHistoryDialog> createState() => _CommentHistoryDialogState();
}

class _CommentHistoryDialogState extends State<CommentHistoryDialog> {
  final ScrollController _scrollController = ScrollController();
  final newComment = ValueNotifier<String>('');
  final commentController = TextEditingController();

  late final List<CommentModel> _comments;

  @override
  void initState() {
    super.initState();
    _comments = List.from(widget.comments);
  }

  Future<void> _addComment() async {
    final comment = CommentModel(
      newComment.value,
      widget.userName,
      DateTime.now(),
    );

    setState(() {
      _comments.insert(0, comment);
    });

    newComment.value = '';
    commentController.clear();
    final success = await widget.onAdd(comment);

    if (!success) {
      final failedComment = CommentModel(
        comment.content,
        comment.userName,
        comment.date,
        isFailed: true,
      );

      setState(() {
        _comments[0] = failedComment;
      });
    }

    _scrollToTop();
  }

  void _scrollToTop() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * 0.7,
      child: Column(
        children: [
          SizedBox(
            height: Insets.gutter * 3,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: ColoredBox(
                    color: Theme.of(context).colorScheme.onSurface,
                    child: SizedBox(
                      height: Insets.gutter * 3,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: Insets.gutter),
                          child: Text(
                            context.l10n.comments,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Insets.gutter * 3,
                  child: ColoredBox(
                    color: Theme.of(context).colorScheme.onSurface,
                    child: Center(
                      child: IconButton(
                        icon: const Icon(Icons.close),
                        color: Theme.of(context).colorScheme.surface,
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: const EdgeInsets.all(Insets.gutter / 2),
              controller: _scrollController,
              itemCount: _comments.length,
              itemBuilder: (context, index) {
                final comment = _comments[index];
                return CardBase.contentOnly(
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.gutter / 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              comment.userName,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            if (comment.isFailed)
                              Icon(
                                Icons.warning,
                                color: Theme.of(context).colorScheme.error,
                                size: Insets.gutter,
                              ),
                          ],
                        ),
                        const SizedBox(height: Insets.gutter / 4),
                        Text(
                          comment.content,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            comment.date.asyMMdtime(
                              Localizations.localeOf(context),
                            ),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Insets.gutter / 2),
            child: TextFormField(
              controller: commentController,
              maxLines: 2,
              onChanged: (newValue) => newComment.value = newValue,
              decoration: InputDecoration(
                hintText: context.l10n.comments,
                suffixIcon: ValueListenableBuilder<String>(
                  valueListenable: newComment,
                  builder: (context, value, child) => IconButton(
                    icon: const Icon(Icons.send),
                    color: Theme.of(context).colorScheme.primary,
                    iconSize: LayoutConstants.iconSizeBig,
                    onPressed: value.isNotEmpty ? _addComment : null,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
