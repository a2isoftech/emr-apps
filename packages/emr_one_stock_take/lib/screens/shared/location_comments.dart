import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/shared/shared.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:flutter/material.dart';

class LocationComments extends StatefulWidget {
  const LocationComments({
    required this.location,
    required this.stockTakeId,
    required this.stockTakeService,
    required this.locationCommentsCount,
    super.key,
  });

  final StocktakeLocation location;
  final String stockTakeId;
  final StocktakeService stockTakeService;
  final ValueNotifier<int> locationCommentsCount;

  @override
  State<LocationComments> createState() => _LocationCommentsState();
}

class _LocationCommentsState extends State<LocationComments>
    with AutomaticKeepAliveClientMixin<LocationComments> {
  final ScrollController _scrollController = ScrollController();
  late List<CommentModel> locationComments = [];

  @override
  void initState() {
    super.initState();
    locationComments = widget.location.comments;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        if (locationComments.isEmpty)
          Expanded(child: Center(child: Text(context.l10n.noComments)))
        else
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: locationComments.length,
              itemBuilder: (context, index) {
                final comment = locationComments[index];
                return CommentDetails(
                  comment: comment,
                  locationId: widget.location.id,
                  stockTakeId: widget.stockTakeId,
                  stocktakeService: widget.stockTakeService,
                  onCommentDeleted: (comments) async => setState(() {
                    locationComments = [...comments];
                    widget.location.comments.clear();
                    widget.location.comments.addAll(comments);
                    widget.locationCommentsCount.value = comments.length;
                  }),
                  onCommentDeleteFailed: (comment) async => setState(() {
                    locationComments = [...widget.location.comments].map((x) {
                      return comment.date.isAtSameMomentAs(x.date)
                          ? comment
                          : x;
                    }).toList();
                    widget.location.comments.clear();
                    widget.location.comments.addAll(locationComments);
                    widget.locationCommentsCount.value =
                        locationComments.length;
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
            onCommentAdded: (newComments) async => setState(() {
              locationComments = [...newComments];
              widget.location.comments.add(newComments.last);
              widget.locationCommentsCount.value = locationComments.length;
              _scrollToBottom();
            }),
          ),
        ),
      ],
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

  @override
  bool get wantKeepAlive => true;
}
