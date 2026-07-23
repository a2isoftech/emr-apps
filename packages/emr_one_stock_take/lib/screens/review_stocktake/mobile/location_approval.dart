import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/stocktake_location.dart';
import 'package:emr_one_stock_take/screens/home/widgets/label_value_display.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class LocationApproval extends StatelessWidget {
  const LocationApproval({
    required this.location,
    required this.controller,
    super.key,
  });

  final StocktakeLocation location;
  final ReviewStocktakeController controller;

  @override
  Widget build(BuildContext context) {
    final selectedUom = controller.selectedUom.value ?? location.defaultUom;

    final theme = Theme.of(context);
    final brandColors = theme.extension<EOBrandTheme>()!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelValueDisplayWidget(
          label: context.l10n.adjustedWeight,
          value: HelperMethods.toFormattedWeight(
            context,
            controller.convertWeight(location.weightVariance!).value,
            selectedUom,
            showPlusSign: true,
          ),
          valueStyle: theme.textTheme.labelLarge!.copyWith(
            color: location.weightVariance?.value != 0
                ? OppraBrandColors.warningColor
                : brandColors.ctaColour,
            fontWeight: FontWeight.bold,
          ),
          padding: EdgeInsets.zero,
        ),
        LabelValueDisplayWidget(
          label: context.l10n.adjustedValue,
          value: HelperMethods.toCurrency(
            context,
            location.valueVariance ?? 0,
            currencyCode: controller.currencyCode,
            showPlusSign: true,
          ),
          valueStyle: theme.textTheme.bodyMedium!.copyWith(
            color: (location.valueVariance ?? 0) != 0
                ? OppraBrandColors.warningColor
                : brandColors.ctaColour,
            fontWeight: FontWeight.bold,
          ),
          padding: EdgeInsets.zero,
        ),
      ],
    );
  }
}
