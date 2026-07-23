import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/shared/shared.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WeightLineComments extends StatefulWidget {
  const WeightLineComments({
    required this.weight,
    required this.location,
    required this.stockTakeId,
    required this.stockTakeService,
    required this.onCommentsChanged,
    super.key,
  });

  final LocationWeightModel weight;
  final StocktakeLocation location;
  final String stockTakeId;
  final StocktakeService stockTakeService;
  final Future<void> Function(List<CommentModel> comments) onCommentsChanged;

  @override
  State<WeightLineComments> createState() => _WeightLineCommentsState();
}

class _WeightLineCommentsState extends State<WeightLineComments> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: kIsWeb
          ? theme.dialogTheme.backgroundColor
          : theme.colorScheme.surface,
      child: Column(
        children: [
          Row(
            children: [
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.of(context).pop(),
                child: Icon(
                  CupertinoIcons.back,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              Text(
                widget.weight.title,
                style: theme.textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Expanded(
            child: widget.weight.comments.isEmpty
                ? Center(
                    child: Text(context.l10n.noComments),
                  )
                : ListView.builder(
                    controller: _scrollController,
                    itemCount: widget.weight.comments.length,
                    itemBuilder: (context, index) {
                      final comment = widget.weight.comments[index];
                      return CommentDetails(
                        comment: comment,
                        locationId: widget.location.id,
                        stockTakeId: widget.stockTakeId,
                        stocktakeService: widget.stockTakeService,
                        weightId: widget.weight.id,
                        onCommentDeleted: (comments) async => setState(() {
                          widget.weight.comments = [...comments];
                          widget.onCommentsChanged.call(comments);
                        }),
                        onCommentDeleteFailed: (comment) async => setState(() {
                          widget.weight.comments =
                              [...widget.weight.comments].map((x) {
                            return comment.date.isAtSameMomentAs(x.date)
                                ? comment
                                : x;
                          }).toList();
                          widget.onCommentsChanged.call(widget.weight.comments);
                        }),
                      );
                    },
                  ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Insets.gutter,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: CommentsInput(
              locationId: widget.location.id,
              stockTakeId: widget.stockTakeId,
              stocktakeService: widget.stockTakeService,
              weightId: widget.weight.id,
              onCommentAdded: (newComments) async => setState(() {
                widget.weight.comments = [...newComments];
                widget.onCommentsChanged.call(newComments);
                _scrollToBottom();
              }),
            ),
          ),
        ],
      ),
    );
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }
}
