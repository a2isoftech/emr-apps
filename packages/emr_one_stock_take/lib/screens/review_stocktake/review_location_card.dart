import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/home/widgets/label_value_display.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ReviewLocationCard extends StatefulWidget {
  const ReviewLocationCard({
    required this.location,
    required this.controller,
    super.key,
  });
  final StocktakeLocation location;
  final ReviewStocktakeController controller;

  @override
  State<ReviewLocationCard> createState() => _ReviewLocationCardState();
}

class _ReviewLocationCardState extends State<ReviewLocationCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColors = Theme.of(context).extension<EOBrandTheme>()!;

    final uom = widget.location.defaultUom;
    final weightDiff = widget.location.weightVariance;
    final valueDiff = widget.location.valueVariance;
    final systemWeight = widget.controller
        .convertWeight(
          widget.location.snapshot?.snapshotWeight ?? UomValue.weight(0, uom),
        )
        .value;
    final netWeight = widget.controller
        .convertWeight(
          widget.location.netWeightMT ?? UomValue.weight(0, uom),
        )
        .value;
    final selectedUom = widget.controller.selectedUom.value ?? uom;
    final snapshotValue = widget.controller.calculateWeightRate(
      widget.location.snapshot?.totalWeight,
      widget.location.snapshot?.snapshotRate,
      selectedUom,
    );
    final stockTakeValue = widget.controller.calculateWeightRate(
      widget.location.netWeightMT,
      widget.location.snapshot?.snapshotRate,
      selectedUom,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LabelValueDisplayWidget(
          label: context.l10n.snapshotDateTime,
          value: widget.location.snapshot?.snapshotDate?.asyMMdtime(
                Localizations.localeOf(context),
              ) ??
              '-',
        ),
        LabelValueDisplayWidget(
          label: context.l10n.snapshotWeight,
          value: HelperMethods.toFormattedWeight(
            context,
            systemWeight,
            selectedUom,
          ),
        ),
        LabelValueDisplayWidget(
          label: context.l10n.snapshotRate,
          value: widget.controller
              .convertRate(
                widget.location.snapshot?.snapshotRate ??
                    UomValue.rate(0, Uom.mt),
              )
              .toRateString(),
        ),
        LabelValueDisplayWidget(
          label: context.l10n.snapshotValue,
          value: HelperMethods.toCurrency(
            context,
            snapshotValue,
            currencyCode: widget.controller.currencyCode,
          ),
        ),
        LabelValueDisplayWidget(
          label: context.l10n.weighedDateTime,
          value: widget.location.takenWeights.isNotEmpty
              ? widget.location.takenWeights.last.weighedDateTime!
                  .asyMMdtime(Localizations.localeOf(context))
              : '',
        ),
        LabelValueDisplayWidget(
          label: context.l10n.stockTakeWeight,
          value: HelperMethods.toFormattedWeight(
            context,
            netWeight,
            selectedUom,
          ),
        ),
        LabelValueDisplayWidget(
          label: context.l10n.stockTakeValue,
          value: HelperMethods.toCurrency(
            context,
            stockTakeValue,
            currencyCode: widget.controller.currencyCode,
          ),
        ),
        LabelValueDisplayWidget(
          label: context.l10n.adjustedWeight,
          value: HelperMethods.toFormattedWeight(
            context,
            widget.controller.convertWeight(weightDiff!).value,
            selectedUom,
            showPlusSign: true,
          ),
          valueStyle: theme.textTheme.bodyMedium?.copyWith(
            color: weightDiff.value != 0
                ? OppraBrandColors.warningColor
                : brandColors.ctaColour,
            fontWeight: FontWeight.bold,
          ),
        ),
        LabelValueDisplayWidget(
          label: context.l10n.adjustedValue,
          value: HelperMethods.toCurrency(
            context,
            valueDiff ?? 0,
            currencyCode: widget.controller.currencyCode,
            showPlusSign: true,
          ),
          valueStyle: theme.textTheme.bodyMedium?.copyWith(
            color: (valueDiff ?? 0) != 0
                ? OppraBrandColors.warningColor
                : brandColors.ctaColour,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
