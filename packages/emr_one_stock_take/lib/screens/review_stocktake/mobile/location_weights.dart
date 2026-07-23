import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/location_weight_model.dart';
import 'package:emr_one_stock_take/screens/review_stocktake/review_stocktake_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LocationWeights extends StatelessWidget {
  const LocationWeights({
    required this.takenWeights,
    this.controller,
    this.showHeader = true,
    this.locationUom,
    super.key,
  });

  final List<LocationWeightModel> takenWeights;
  final bool? showHeader;
  final ReviewStocktakeController? controller;
  final Uom? locationUom;

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final uom = controller?.selectedUom.value ??
        (locationUom ?? Uom.fromCode(AppConstants.defaultUom));
    const rowHeight = kIsWeb ? 60.0 : 80.0;
    final count = takenWeights.length;
    double height = 160;
    if (takenWeights.isNotEmpty) {
      height = count >= 5 ? rowHeight * 5 : rowHeight * takenWeights.length;
      height += 110;
    }

    return SizedBox(
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showHeader ?? true)
            Padding(
              padding: const EdgeInsets.only(
                top: Insets.gutter / 4,
                bottom: Insets.gutter / 4,
              ),
              child: Text(
                '${context.l10n.weights} (${uom.uomCode})',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          Expanded(
            child: EmrGrid<LocationWeightModel>(
              controller: EmrGridController(
                data: ValueNotifier(takenWeights.reversed.toList()),
              ),
              pinnedRowCount: 1,
              noRecordsMessage: Text(context.l10n.noRecordsMessage),
              rowHeight: (row) => kIsWeb || row == -1 ? 60 : 80,
              verticalScrollController: scrollController,
              alternateBackgroundRowColour: true,
              columns: [
                EmrGridColumn(
                  width: 80,
                  headerBuilder: () => Text(
                    context.l10n.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  cellBuilder: (item) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        maxLines: 2,
                      ),
                      Text(
                        item.weighedByName!,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                EmrGridColumn(
                  width: 60,
                  headerBuilder: () => Text(
                    context.l10n.gross,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  cellBuilder: (item) => Text(
                    HelperMethods.toFormattedDecimal(
                      context,
                      item.grossWeight?.convertWeight(uom).value ?? 0,
                      uom,
                    ),
                  ),
                ),
                EmrGridColumn(
                  width: 60,
                  headerBuilder: () => Text(
                    context.l10n.tare,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  cellBuilder: (item) => Text(
                    HelperMethods.toFormattedDecimal(
                      context,
                      item.tareWeight?.convertWeight(uom).value ?? 0,
                      uom,
                    ),
                  ),
                ),
                EmrGridColumn(
                  width: 60,
                  headerBuilder: () => Text(
                    context.l10n.net,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  cellBuilder: (item) => Text(
                    HelperMethods.toFormattedDecimal(
                      context,
                      item.getNetWeight(uom).value,
                      uom,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
