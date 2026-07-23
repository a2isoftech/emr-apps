import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/extensions/get_initials.dart';
import 'package:emr_one_stock_take/models/comment_model.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class CommentsInput extends StatelessWidget {
  CommentsInput({
    required this.stocktakeService,
    required this.stockTakeId,
    required this.locationId,
    required this.onCommentAdded,
    this.weightId,
    super.key,
  });

  final StocktakeService stocktakeService;
  final String stockTakeId;
  final String locationId;
  final int? weightId;
  final Future<void> Function(List<CommentModel> comments) onCommentAdded;
  final processing = signal<bool>(false);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final commentText = TextEditingController(text: '');

    return TextFormField(
      controller: commentText,
      onFieldSubmitted: processing.watch(context)
          ? null
          : (value) => addComment(context, commentText.text),
      decoration: InputDecoration(
        hintText: context.l10n.enterYourComments,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(Insets.gutter / 2),
          child: Container(
            height: Insets.gutter * 2,
            width: Insets.gutter * 2,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.all(Radius.circular(Insets.gutter)),
              color: theme.colorScheme.onSurface,
            ),
            child: Center(
              child: Text(
                UserInfoService.instance!.userInfo.name.getInitials(),
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.surface,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        suffixIcon: IconButton(
          padding: EdgeInsets.zero,
          onPressed: processing.watch(context)
              ? null
              : () => addComment(context, commentText.text),
          icon: const Icon(
            Icons.send,
          ),
        ),
      ),
    );
  }

  Future<void> addComment(BuildContext context, String comment) async {
    if (comment != '') {
      processing.value = true;
      final commentInput = Input$AddCommentInput(
        stocktakeId: stockTakeId,
        locationId: locationId,
        weightId: weightId,
        comment: comment,
      );
      final result = await stocktakeService.addComment(commentInput);
      if (result.success) {
        await onCommentAdded.call(result.data!);
      } else {
        final user = UserInfoService.instance!.userInfo;
        final newCommentModel = CommentModel(
          userName: user.name,
          userId: user.id,
          date: DateTime.now(),
          content: comment,
          isFailed: true,
          errorMessage: context.mounted
              ? HelperMethods.getErrorMessage(context, result)
              : result.message,
        );

        await onCommentAdded.call([newCommentModel]);
      }
      processing.value = false;
    }
  }
}
