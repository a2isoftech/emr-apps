import 'package:emr_core_api/services/user_access_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:flutter/material.dart';

class StocktakeManualUpdateScreen extends StatelessWidget {
  const StocktakeManualUpdateScreen({
    required this.stockTakeID,
    required this.userAccessService,
    required this.controller,
    super.key,
  });

  final String stockTakeID;
  final UserAccessService userAccessService;
  final LocationWeightController controller;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.stocktakeService.getStockTake(
        id: HelperMethods.decodedStocktakeId(stockTakeID),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data != null) {
            return StocktakeManualWeb(
              stockTake: snapshot.data!,
              userAccessService: userAccessService,
              controller: controller,
            );
          } else {
            return Center(
              child: Text(
                context.l10n.anErrorOccurredTryAgain,
                style: const TextStyle(color: OppraBrandColors.errorColor),
              ),
            );
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
