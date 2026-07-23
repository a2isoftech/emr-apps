import 'package:emr_core_api/graphql/fragments/stocktake/stocktake_search_fields.graphql.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_controller.dart';
import 'package:emr_one_stock_take/screens/home/controller/stock_take_home_controller.dart';
import 'package:emr_one_stock_take/screens/home/stock_take_mobile_home.dart';
import 'package:emr_one_stock_take/screens/home/stock_take_web_home.dart';
import 'package:emr_one_stock_take/widgets/loader_wrapper.dart';
import 'package:flutter/material.dart';

class StockTakeHomeScreen extends StatelessWidget {
  const StockTakeHomeScreen({
    required this.controller,
    required this.queryLayoutController,
    super.key,
  });
  final StockTakeHomeController controller;
  final EmrQueryLayoutController<Fragment$StocktakeSearchFields>
      queryLayoutController;

  @override
  Widget build(BuildContext context) {
    return LoaderWrapper(
      showLoader: controller.showLoader,
      child: switch (controller.appConfig.isWeb) {
        true => StockTakeWeb(
            controller: controller,
            queryLayoutController: queryLayoutController,
          ),
        false => StockTakeMobile(
            controller: controller,
            queryLayoutController: queryLayoutController,
          ),
      },
    );
  }
}
