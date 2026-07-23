import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/pricing-yard/yard_prices_data_controller.dart';
import 'package:emr_one_crm/screens/pricing-yard/yard_prices_mob.dart';
import 'package:emr_one_crm/screens/pricing-yard/yard_prices_web.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class YardPricesScreen extends StatelessWidget {
  const YardPricesScreen({
    required this.client,
    super.key,
  });

  final BaseClient client;

  @override
  Widget build(BuildContext context) {
    final yardsDataController = Provider.of<YardPricesDataController>(context);

    final isLarge =
        getWindowType(context) >= EmrOneConstants.appDefaultSizeBreakpoint;
    return isLarge
        ? YardPricesWeb(
            client: client,
            yardPricesDataController: yardsDataController,
          )
        : YardPricesMob(
            client: client,
            yardPricesDataController: yardsDataController,
          );
  }
}
