import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_stock_take/models/stocktake_location.dart';
import 'package:emr_one_stock_take/screens/home/widgets/label_value_display.dart';
import 'package:flutter/material.dart';

class SelectLocationCard extends StatelessWidget {
  const SelectLocationCard({
    required this.location,
    super.key,
  });
  final StocktakeLocation location;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LabelValueDisplayWidget(
          label: context.l10n.productClass,
          value: location.productClass,
        ),
        LabelValueDisplayWidget(
          label: context.l10n.productLine,
          value: location.productLine,
        ),
      ],
    );
  }
}
