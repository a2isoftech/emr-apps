import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/constants/permission.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewStockTakeScreen extends StatefulWidget {
  const ViewStockTakeScreen({
    required this.controller,
    required this.id,
    super.key,
  });

  final ViewStockTakeController controller;
  final String id;

  @override
  State<ViewStockTakeScreen> createState() => _ViewStockTakeScreenState();
}

class _ViewStockTakeScreenState extends State<ViewStockTakeScreen> {
  ReviewStocktakeController? reviewController;

  @override
  void initState() {
    super.initState();
    reviewController = ReviewStocktakeController(
      service: widget.controller.service,
      userInfoService: widget.controller.userInfoService,
    );
  }

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppConfig>(context);

    return FutureBuilder(
      future: widget.controller.service
          .getStockTake(id: HelperMethods.decodedStocktakeId(widget.id)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data != null) {
            if (snapshot.data!.status == Enum$StocktakeStatus.COMPLETED &&
                context
                    .userHasPermission(StockTakePermissions.reviewStocktake)) {
              return ReviewStocktakeScreen(
                id: widget.id,
                stockTake: snapshot.data,
                controller: reviewController!,
              );
            }
            return switch (app.isWeb) {
              true => ViewStockTakeWeb(
                  stockTake: snapshot.data!,
                  controller: widget.controller,
                ),
              false => ViewStockTakeMobileScreen(
                  stockTake: snapshot.data!,
                  controller: widget.controller,
                )
            };
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
