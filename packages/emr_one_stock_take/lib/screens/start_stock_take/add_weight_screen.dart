import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/stock_take_model.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:flutter/material.dart';

class AddWeightScreen extends StatelessWidget {
  const AddWeightScreen({
    required this.controller,
    required this.locationId,
    required this.stockTake,
    required this.stockTakeId,
    super.key,
  });

  final LocationWeightController controller;
  final String locationId;
  final StockTake? stockTake;
  final String stockTakeId;

  @override
  Widget build(BuildContext context) {
    if (stockTake == null) {
      return FutureBuilder(
        future: controller.stocktakeService
            .getStockTake(id: HelperMethods.decodedStocktakeId(stockTakeId)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SearchScales(
              controller: controller,
              stockTake: snapshot.data!,
              locationId: locationId,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );
    }
    return SearchScales(
      controller: controller,
      stockTake: stockTake!,
      locationId: locationId,
    );
  }
}

class SearchScales extends StatelessWidget {
  const SearchScales({
    required this.controller,
    required this.stockTake,
    required this.locationId,
    super.key,
  });

  final LocationWeightController controller;
  final StockTake stockTake;
  final String locationId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.stocktakeService.searchScales(stockTake.yardCode),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          controller.scales = snapshot.data ?? [];
          final location = stockTake.locations
              .firstWhere((location) => location.id == locationId);

          return AddWeight(
            controller: controller,
            stockTake: stockTake,
            currentLocation: location,
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
