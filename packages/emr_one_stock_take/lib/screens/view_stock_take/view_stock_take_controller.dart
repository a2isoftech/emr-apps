import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/stocktake_location.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class ViewStockTakeController {
  ViewStockTakeController({
    required this.service,
    required this.userInfoService,
  });
  final StocktakeService service;
  final UserInfoService userInfoService;
  final showLoader = signal(false);

  Future<void> showLocationWeightsScreen(
    BuildContext context,
    StocktakeLocation location,
  ) async {
    await EmrModal.showModalBottomSheetOrFlyout<void>(
      context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              '${location.code} - ${location.description}',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: Insets.gutter / 2,
          ),
          LocationWeights(
            takenWeights: location.takenWeights,
            locationUom: location.defaultUom,
          ),
        ],
      ),
    );
  }
}
