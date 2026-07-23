import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class ReviewStocktakeController {
  ReviewStocktakeController({
    required this.service,
    required this.userInfoService,
  });
  final StocktakeService service;
  final showLoader = signal(false);

  late final ValueNotifier<Uom?> selectedUom = ValueNotifier(null);
  final UserInfoService userInfoService;
  late String currencyCode;
  UomValue convertWeight(UomValue weight) {
    return weight.convertWeight(selectedUom.value ?? weight.uom);
  }

  UomValue convertRate(UomValue rate) {
    return rate.convertRate(selectedUom.value ?? rate.uom);
  }

  double stockLocationValue(
    UomValue weight,
    UomValue rate,
  ) {
    return weight.value * rate.value;
  }

  double calculateWeightRate(
    UomValue? weight,
    UomValue? snapshotRate,
    Uom uom,
  ) {
    final convertedWeight =
        (weight ?? UomValue.weight(0, uom)).convertWeight(uom);
    final rate = convertRate(
      snapshotRate ?? UomValue.rate(0, uom),
    ).value;
    return convertedWeight.value * rate;
  }
}
