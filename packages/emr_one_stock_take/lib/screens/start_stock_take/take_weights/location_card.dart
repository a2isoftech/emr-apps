import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/constants.dart';
import 'package:emr_one_stock_take/models/stock_take_model.dart';
import 'package:emr_one_stock_take/models/stocktake_location.dart';
import 'package:emr_one_stock_take/screens/home/widgets/label_value_display.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({
    required this.location,
    required this.controller,
    required this.stockTake,
    required this.index,
    this.onEdited,
    super.key,
  });

  final StocktakeLocation location;
  final LocationWeightController controller;
  final StockTake stockTake;
  final int index;
  final void Function()? onEdited;

  @override
  Widget build(BuildContext context) {
    final brandColors = Theme.of(context).extension<EOBrandTheme>()!;
    final totalWeight = HelperMethods.calculateTotalWeight(
      location.takenWeights,
      location.defaultUom,
    );

    final isProductDescAvailable =
        location.productDesc != null && location.productDesc != '';
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.gutter / 4,
      ),
      child: EmrCard(
        title: '${location.code} - ${location.description}',
        subtitle: '${location.productCode} '
            '${isProductDescAvailable ? '-' : ''} '
            '${location.productDesc}',
        padding: const EdgeInsets.all(Insets.gutter / 2),
        onSelected: ({selected = false}) async {
          context.goNamed(
            StockTakeNamedRoutes.stockTakeAddWeight,
            params: {
              'id': HelperMethods.encodedStocktakeId(stockTake.id!),
              'locationid': location.id,
            },
            extra: stockTake,
          );
        },
        trailing: GestureDetector(
          child: const Icon(Icons.comment_outlined,),
          onTap: () => HelperMethods.openCommentsDialog(
            context,
            stockTake.id!,
            location,
            controller.stocktakeService,
          ),
        ),
        child: Column(
          children: [
            LabelValueDisplayWidget(
              label: context.l10n.numberOfWeightsTaken,
              value: location.takenWeights.length.toString(),
            ),
            LabelValueDisplayWidget(
              label: '${context.l10n.totalWeight}:',
              value: HelperMethods.toFormattedWeight(
                context,
                totalWeight,
                location.defaultUom,
              ),
              valueStyle: TextStyle(
                color: totalWeight > 0
                    ? brandColors.ctaColour
                    : OppraBrandColors.errorColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
