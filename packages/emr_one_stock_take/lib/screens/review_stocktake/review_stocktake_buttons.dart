import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/stock_take_model.dart';
import 'package:emr_one_stock_take/screens/review_stocktake/review_stocktake_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ReviewStocktakeButtons extends StatelessWidget {
  const ReviewStocktakeButtons({
    required this.stockTake,
    required this.controller,
    required this.onVoteSubmit,
    super.key,
  });

  final StockTake stockTake;
  final ReviewStocktakeController controller;
  final void Function() onVoteSubmit;
  @override
  @override
  Widget build(BuildContext context) {
    const isWeb = kIsWeb;

    Widget rejectButton = FilledButton(
      onPressed: () async {
        await HelperMethods.showApproveRejectModal(
          isWeb: isWeb,
          context: context,
          isApproveLocation: false,
          controller: controller,
          stockTakeId: stockTake.id!,
          currentLevel: stockTake.currentWfLevel,
          onVoteSubmit: onVoteSubmit,
        );
      },
      child: Text(context.l10n.reject),
    );

    Widget approveButton = FilledButton(
      onPressed: () async {
        await HelperMethods.showApproveRejectModal(
          isWeb: isWeb,
          context: context,
          controller: controller,
          stockTakeId: stockTake.id!,
          currentLevel: stockTake.currentWfLevel,
          onVoteSubmit: onVoteSubmit,
        );
      },
      style: EmrButtonStyles.cta(),
      child: Text(context.l10n.approve),
    );

    // Only wrap in Expanded for mobile/tablet
    if (!isWeb) {
      rejectButton = Expanded(child: rejectButton);
      approveButton = Expanded(child: approveButton);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
      child: Row(
        mainAxisAlignment:
            isWeb ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          rejectButton,
          const SizedBox(width: 10),
          approveButton,
        ],
      ),
    );
  }
}
