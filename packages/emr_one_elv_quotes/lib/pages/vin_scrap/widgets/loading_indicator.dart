import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_elv_quotes/pages/vin_scrap/vin_scrap_quote_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<VINScrapController>(context);

    if (controller.state.vehicleSearchComplete) {
      return const SizedBox();
    }

    return const Padding(
      padding: EdgeInsets.only(top: Insets.gutter, bottom: Insets.gutter * 2),
      child: CircularProgressIndicator(),
    );
  }
}
