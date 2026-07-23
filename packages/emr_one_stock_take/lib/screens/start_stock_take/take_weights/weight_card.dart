import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/scales/emr_scale_controller.dart';
import 'package:emr_one_stock_take/extensions/location_weight_extensions.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:flutter/material.dart';

class WeightCard extends StatefulWidget {
  const WeightCard({
    required this.takenWeights,
    required this.controller,
    required this.onSaveWeight,
    required this.location,
    required this.stockTake,
    required this.scaleController,
    required this.createdDate,
    this.onDeleteWeight,
    this.onRefresh,
    super.key,
  });

  final List<LocationWeightModel> takenWeights;
  final LocationWeightController controller;
  final Future<void> Function(List<LocationWeightModel> weightsToBeSaved)
  onSaveWeight;
  final StocktakeLocation location;
  final StockTake stockTake;
  final EmrScaleController scaleController;
  final void Function(LocationWeightModel weight)? onDeleteWeight;
  final DateTime createdDate;
  final void Function(List<LocationWeightModel> savedWeights)? onRefresh;

  @override
  State<WeightCard> createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {
  @override
  void initState() {
    super.initState();
    widget.controller.activeWeight.value = widget.takenWeights.first;
  }

  @override
  Widget build(BuildContext context) {
    final takenWeights = widget.takenWeights.activeWeights();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: takenWeights.length,
            itemBuilder: (context, index) {
              return ValueListenableBuilder(
                valueListenable: widget.controller.activeWeight,
                builder: (context, value, child) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Insets.gutter / 2,
                      horizontal: Insets.gutter / 4,
                    ),
                    child: WeightDetail(
                      weight: takenWeights[index],
                      controller: widget.controller,
                      onSaveWeight: widget.onSaveWeight,
                      stockTake: widget.stockTake,
                      location: widget.location,
                      createdDate: widget.createdDate,
                      scaleController: widget.scaleController,
                      onDeleteWeight: (weight) {
                        widget.onDeleteWeight?.call(weight);
                      },
                      onRefresh: (savedWeights) =>
                          widget.onRefresh?.call(savedWeights),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
