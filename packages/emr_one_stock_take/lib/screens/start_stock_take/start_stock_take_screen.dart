import 'package:emr_core_api/services/user_access_service.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartStockTakeScreen extends StatelessWidget {
  const StartStockTakeScreen({
    required this.controller,
    required this.id,
    required this.userAccessService,
    super.key,
  });

  final LocationWeightController controller;
  final String id;
  final UserAccessService userAccessService;

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppConfig>(context);

    return app.isWeb
        ? StocktakeManualUpdateScreen(
            stockTakeID: id,
            controller: controller,
            userAccessService: userAccessService,
          )
        : LocationWeightsList(
            locationWeightController: controller,
            stockTakeId: id,
          );
  }
}
