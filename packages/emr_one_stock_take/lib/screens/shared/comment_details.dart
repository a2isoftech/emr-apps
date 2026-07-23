import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/constants.dart';
import 'package:emr_one_stock_take/extensions/get_initials.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:flutter/material.dart';

class CommentDetails extends StatelessWidget {
  const CommentDetails({
    required this.comment,
    required this.stocktakeService,
    required this.stockTakeId,
    required this.locationId,
    required this.onCommentDeleted,
    required this.onCommentDeleteFailed,
    this.weightId,
    super.key,
  });

  final CommentModel comment;
  final StocktakeService stocktakeService;
  final String stockTakeId;
  final String locationId;
  final int? weightId;
  final Future<void> Function(List<CommentModel>) onCommentDeleted;
  final Future<void> Function(CommentModel) onCommentDeleteFailed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loggedInUserId = UserInfoService.instance?.userInfo.id;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.gutter / 2,
        horizontal: Insets.gutter / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Container(
                      padding: const EdgeInsets.all(Insets.gutter / 4),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(Insets.gutter * 1.5),
                        ),
                        color: loggedInUserId == comment.userId.split('/').last
                            ? theme.colorScheme.onSurface
                            : OppraBrandColors.alluminiumPowder,
                      ),
                      child: Center(
                        child: Text(
                          comment.userName.getInitials(),
                          style: theme.textTheme.titleMedium!.copyWith(
                            color: theme.colorScheme.surface,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: Insets.gutter / 2,
                  ),
                  Text(
                    comment.userName,
                    style: theme.textTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: Insets.gutter / 2),
                  Text(
                    comment.date.asyMMdtime(Localizations.localeOf(context)),
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              if (loggedInUserId == comment.userId.split('/').last &&
                  !comment.isFailed)
                IconButton(
                  onPressed: () => deleteComment(context),
                  icon: const Icon(Icons.delete_outline),
                ),
              if (comment.isFailed)
                Tooltip(
                  message: comment.errorMessage,
                  child: Icon(
                    Icons.warning,
                    color: theme.colorScheme.error,
                    size: Insets.gutter,
                  ),
                ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 40,
              ),
              Expanded(
                child: Text(
                  comment.content,
                  style: theme.textTheme.bodyMedium,
                  softWrap: true,
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> deleteComment(BuildContext context) async {
    final commentInput = Input$DeleteCommentInput(
      stocktakeId: stockTakeId,
      locationId: locationId,
      weightId: weightId,
      timestamp: comment.date,
    );
    final result = await stocktakeService.deleteComment(commentInput);
    if (result.success) {
      await onCommentDeleted.call(result.data!);
    } else {
      final failedComment = CommentModel(
        content: comment.content,
        date: comment.date,
        userId: comment.userId,
        userName: comment.userName,
        errorMessage: context.mounted
            ? HelperMethods.getErrorMessage(context, result)
            : result.message,
        isFailed: true,
      );
      await onCommentDeleteFailed.call(failedComment);
    }
  }
}
