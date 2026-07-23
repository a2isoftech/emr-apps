import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/extensions/stocktake_search_extensions.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/review_stocktake/review_stocktake_mobile.dart';
import 'package:emr_one_stock_take/screens/review_stocktake/review_stocktake_web.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_stock_take/widgets/loader_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReviewStocktakeScreen extends StatefulWidget {
  const ReviewStocktakeScreen({
    required this.controller,
    required this.id,
    this.stockTake,
    super.key,
  });

  final ReviewStocktakeController controller;
  final String id;
  final StockTake? stockTake;

  @override
  State<ReviewStocktakeScreen> createState() => _ReviewStocktakeScreenState();
}

class _ReviewStocktakeScreenState extends State<ReviewStocktakeScreen> {
  bool reload = false;

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppConfig>(context);
    if (widget.stockTake != null && !reload) {
      widget.controller.currencyCode = widget.stockTake!.currencyCode;
      return loadReviewStockTake(app, widget.stockTake!, context);
    }

    return FutureBuilder(
      future: widget.controller.service
          .getStockTake(id: HelperMethods.decodedStocktakeId(widget.id)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data != null) {
            widget.controller.currencyCode = snapshot.data!.currencyCode;
            return LoaderWrapper(
              showLoader: widget.controller.showLoader,
              child: loadReviewStockTake(app, snapshot.data!, context),
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

  Widget loadReviewStockTake(
    AppConfig app,
    StockTake stockTake,
    BuildContext context,
  ) {
    if (stockTake.canOpenReviewScreen(
      context,
      widget.controller.userInfoService.userInfo.emailAddress,
    )) {
      return switch (app.isWeb) {
        true => ReviewStocktakeWeb(
            stockTake: stockTake,
            controller: widget.controller,
            onVoteSubmit: () {
              setState(() {
                reload = true;
              });
            },
          ),
        false => ReviewStocktakeMobile(
            stockTake: stockTake,
            controller: widget.controller,
            onVoteSubmit: () {
              setState(() {
                reload = true;
              });
            },
          )
      };
    }
    //fallback to default screen if user dont have any permission
    return ViewStockTakeScreen(
      id: widget.id,
      controller: ViewStockTakeController(
        service: widget.controller.service,
        userInfoService: widget.controller.userInfoService,
      ),
    );
  }
}
