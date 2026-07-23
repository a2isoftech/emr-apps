import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/stocktake_location.dart';
import 'package:emr_one_stock_take/screens/home/widgets/widgets.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LocationApprovalDetail extends StatelessWidget {
  const LocationApprovalDetail({
    required this.location,
    required this.controller,
    super.key,
  });

  final StocktakeLocation location;
  final ReviewStocktakeController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColors = Theme.of(context).extension<EOBrandTheme>()!;

    final selectedUom = controller.selectedUom.value ?? location.defaultUom;
    final netWeight = controller.convertWeight(
      location.netWeightMT ?? UomValue.weight(0, selectedUom),
    );
    final systemWeight = controller
        .convertWeight(
          location.snapshot?.totalWeight ?? UomValue.weight(0, selectedUom),
        )
        .value;
    final stockTakeRate = controller.convertRate(
      location.snapshot?.snapshotRate ?? UomValue.rate(0, selectedUom),
    );
    final pricedWeight = location.getTotalPricedWeight(selectedUom).value;
    final unPricedWeight = location.getTotalUnPricedWeight(selectedUom).value;
    final snapshotValue = controller.calculateWeightRate(
      location.snapshot?.totalWeight,
      location.snapshot?.snapshotRate,
      selectedUom,
    );
    final stockTakeValue = controller.calculateWeightRate(
      location.netWeightMT,
      location.snapshot?.snapshotRate,
      selectedUom,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: Column(
                children: [
                  Text(
                    '${location.code} - ${location.description}',
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: Insets.gutter,
                  ),
                  if (location.locationType ==
                      Enum$InventoryLocationType.WEIGHTED)
                    LocationWeights(
                      takenWeights: location.takenWeights,
                      controller: controller,
                      locationUom: location.defaultUom,
                    ),
                  if (location.locationType ==
                      Enum$InventoryLocationType.WEIGHTED)
                    const SizedBox(
                      height: Insets.gutter,
                    ),
                  LabelValueDisplayWidget(
                    label: context.l10n.product,
                    value: '${location.productCode} - ${location.productDesc}',
                  ),
                  LabelValueDisplayWidget(
                    label: context.l10n.snapshotDateTime,
                    value: location.snapshot?.snapshotDate?.asyMMdtime(
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
                  Padding(
                    padding: const EdgeInsets.only(left: Insets.gutter / 2),
                    child: LabelValueDisplayWidget(
                      label: context.l10n.priced,
                      value: HelperMethods.toFormattedWeight(
                        context,
                        pricedWeight,
                        selectedUom,
                      ),
                      labelStyle: theme.textTheme.labelSmall,
                      valueStyle: theme.textTheme.labelSmall,
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: Insets.gutter / 2),
                    child: LabelValueDisplayWidget(
                      label: context.l10n.unpriced,
                      value: HelperMethods.toFormattedWeight(
                        context,
                        unPricedWeight,
                        selectedUom,
                      ),
                      labelStyle: theme.textTheme.labelSmall,
                      valueStyle: theme.textTheme.labelSmall,
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  LabelValueDisplayWidget(
                    label: context.l10n.snapshotRate,
                    value: NumberFormat.simpleCurrency(
                          name: controller.currencyCode,
                        ).currencySymbol +
                        stockTakeRate.toRateString(),
                  ),
                  LabelValueDisplayWidget(
                    label: context.l10n.snapshotValue,
                    value: HelperMethods.toCurrency(
                      context,
                      snapshotValue,
                      currencyCode: controller.currencyCode,
                    ),
                  ),
                  LabelValueDisplayWidget(
                    label: context.l10n.stockTakeWeight,
                    value: HelperMethods.toFormattedWeight(
                      context,
                      netWeight.value,
                      selectedUom,
                    ),
                  ),
                  LabelValueDisplayWidget(
                    label: context.l10n.stockTakeValue,
                    value: HelperMethods.toCurrency(
                      context,
                      stockTakeValue,
                      currencyCode: controller.currencyCode,
                    ),
                  ),
                  LabelValueDisplayWidget(
                    label: context.l10n.adjustedWeight,
                    value: HelperMethods.toFormattedWeight(
                      context,
                      controller.convertWeight(location.weightVariance!).value,
                      selectedUom,
                      showPlusSign: true,
                    ),
                    valueStyle: theme.textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: location.weightVariance?.value != 0
                          ? OppraBrandColors.warningColor
                          : brandColors.ctaColour,
                    ),
                  ),
                  LabelValueDisplayWidget(
                    label: context.l10n.adjustedValue,
                    value: HelperMethods.toCurrency(
                      context,
                      location.valueVariance ?? 0,
                      currencyCode: controller.currencyCode,
                      showPlusSign: true,
                    ),
                    valueStyle: theme.textTheme.labelLarge!.copyWith(
                      color: (location.valueVariance ?? 0) != 0
                          ? OppraBrandColors.warningColor
                          : brandColors.ctaColour,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
