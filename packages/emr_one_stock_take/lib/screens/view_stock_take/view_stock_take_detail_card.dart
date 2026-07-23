import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/home/widgets/label_value_display.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:flutter/material.dart';

class ViewStockTakeDetailCard extends StatelessWidget {
  const ViewStockTakeDetailCard({
    required this.location,
    required this.controller,
    super.key,
  });

  final StocktakeLocation location;
  final ViewStockTakeController controller;

  @override
  Widget build(BuildContext context) {
    final totalWeight = HelperMethods.calculateTotalWeight(
      location.takenWeights,
      location.defaultUom,
    );
    final totalWeightFormatted = HelperMethods.toFormattedWeight(
      context,
      totalWeight,
      location.defaultUom,
    );

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: GestureDetector(
        onTap: () => controller.showLocationWeightsScreen(context, location),
        child: EmrCard(
          title: '${location.code} - ${location.description}',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelValueDisplayWidget(
                label: context.l10n.product,
                value: '${location.productCode} - ${location.description}',
                padding: EdgeInsets.zero,
              ),
              if (totalWeight > 0)
                LabelValueDisplayWidget(
                  label: context.l10n.totalWeight,
                  value: totalWeightFormatted,
                  padding: EdgeInsets.zero,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
