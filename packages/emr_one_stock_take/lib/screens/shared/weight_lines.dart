import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/extensions/location_weight_extensions.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/shared/weight_line_comments.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeightLines extends StatefulWidget {
  const WeightLines({
    required this.location,
    required this.stockTakeId,
    required this.stockTakeService,
    this.weightId,
    super.key,
  });
  final StocktakeLocation location;
  final String stockTakeId;
  final StocktakeService stockTakeService;
  final int? weightId;

  @override
  State<WeightLines> createState() => _WeightLinesState();
}

class _WeightLinesState extends State<WeightLines> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.weightId != null) {
        final weight = widget.location.takenWeights
            .firstWhere((x) => x.id == widget.weightId);
        _handleTap(weight);
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    widget.location.takenWeights.removeWhere(
      (x) => x.title == context.l10n.adjustment && x.isDeleted == null,
    );
  }

  @override
  Widget build(BuildContext context) {
    final subTitleStyle = Theme.of(context).textTheme.bodyMedium;
    final activeWeights = widget.location.takenWeights.activeWeights();
    return activeWeights.isEmpty
        ? Center(
            child: Text(context.l10n.noWeightLinesAvailable),
          )
        : ListView.builder(
            itemCount: activeWeights.length,
            itemBuilder: (context, index) {
              final weight = activeWeights[index];
              final weightCommentsValueNotifier =
                  ValueNotifier(weight.comments);

              final locationUom = widget.location.defaultUom;
              final grossWeight = weight.grossWeight?.value ?? 0;
              final grossWeightUom = weight.grossWeight != null
                  ? weight.grossWeight!.uom
                  : locationUom;
              final tareWeight = weight.tareWeight?.value ?? 0;
              final tareWeightUom = weight.tareWeight != null
                  ? weight.tareWeight!.uom
                  : locationUom;
              final formattedGrossWeight = HelperMethods.toFormattedWeight(
                context,
                grossWeight,
                grossWeightUom,
              );
              final formattedTareWeight = HelperMethods.toFormattedWeight(
                context,
                tareWeight,
                tareWeightUom,
              );
              final formattedNetWeight = HelperMethods.toFormattedWeight(
                context,
                weight.getNetWeight(grossWeightUom).value,
                grossWeightUom,
              );

              return Column(
                children: [
                  CupertinoListTile(
                    key: ValueKey(weight.id),
                    padding: const EdgeInsets.all(Insets.gutter),
                    title: Row(
                      children: [
                        Text(
                          weight.title,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(
                          width: Insets.gutter / 2,
                        ),
                        Badge(
                          label: ValueListenableBuilder(
                            valueListenable: weightCommentsValueNotifier,
                            builder: (context, value, child) {
                              return Text(
                                value.length.toString(),
                              );
                            },
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          padding: const EdgeInsets.symmetric(
                            horizontal: Insets.gutter / 2,
                          ),
                        ),
                      ],
                    ),
                    subtitle: Wrap(
                      children: [
                        Text(
                          '${context.l10n.gross}: $formattedGrossWeight, ',
                          style: subTitleStyle,
                        ),
                        Text(
                          '${context.l10n.tare}: $formattedTareWeight, ',
                          style: subTitleStyle,
                        ),
                        Text(
                          '${context.l10n.net}: $formattedNetWeight',
                          style: subTitleStyle,
                        ),
                      ],
                    ),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () => _handleTap(weight),
                  ),
                  const Divider(
                    height: 1,
                  ),
                ],
              );
            },
          );
  }

  void _handleTap(LocationWeightModel weight) {
    Navigator.of(context).push(
      DialogRoute<void>(
        context: context,
        builder: (BuildContext context) {
          return WeightLineComments(
            weight: weight,
            location: widget.location,
            stockTakeId: widget.stockTakeId,
            stockTakeService: widget.stockTakeService,
            onCommentsChanged: (comments) async => setState(() {
              weight.comments = [...comments];
            }),
          );
        },
      ),
    );
  }
}
