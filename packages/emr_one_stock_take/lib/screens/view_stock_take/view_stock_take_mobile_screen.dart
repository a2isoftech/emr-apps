import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class ViewStockTakeMobileScreen extends StatelessWidget {
  const ViewStockTakeMobileScreen({
    required this.controller,
    required this.stockTake,
    super.key,
  });
  final ViewStockTakeController controller;
  final StockTake stockTake;

  @override
  Widget build(BuildContext context) {
    final completedLocationsCount = stockTake.locations
        .where(
          (x) => x.takenWeights.any(
            (w) =>
                (w.grossWeight != null && w.grossWeight!.value > 0) ||
                (w.tareWeight != null && w.tareWeight!.value > 0),
          ),
        )
        .length;
    final toDoCount = (stockTake.locations.length) - completedLocationsCount;
    return Column(
      children: [
        HeaderDetails(
          productFamily: stockTake.productFamily,
          name: stockTake.name,
          yard: stockTake.yardCode,
          conductedBy: stockTake.conductor!,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Watch(
              (context) => DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Insets.gutter * 2),
                      ),
                      elevation: 1,
                      child: TabBar(
                        tabs: [
                          Tab(
                            text: '${context.l10n.toDo} ($toDoCount)',
                          ),
                          Tab(
                            text: '${context.l10n.completed} '
                                '($completedLocationsCount)',
                          ),
                        ],
                        indicator: BoxDecoration(
                          color: Theme.of(context).colorScheme.onSurface,
                          borderRadius:
                              BorderRadius.circular(Insets.gutter * 2),
                        ),
                        labelColor: Theme.of(context).colorScheme.surface,
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                    ),
                    const SizedBox(
                      height: Insets.gutter / 2,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _tabSection(context),
                          _tabSection(context, isCompleted: true),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _tabSection(BuildContext context, {bool isCompleted = false}) {
    final locations = stockTake.locations
        .where(
          (x) => isCompleted
              ? (x.takenWeights.any(
                  (w) =>
                      (w.grossWeight != null && w.grossWeight!.value > 0) ||
                      (w.tareWeight != null && w.tareWeight!.value > 0),
                ))
              : (x.takenWeights.every(
                  (w) =>
                      (w.grossWeight == null || w.grossWeight!.value == 0) &&
                      (w.tareWeight == null || w.tareWeight!.value == 0),
                )),
        )
        .toList();
    return locations.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: locations.length,
                  itemBuilder: (context, index) {
                    return ViewStockTakeDetailCard(
                      location: locations[index],
                      controller: controller,
                    );
                  },
                ),
              ),
            ],
          )
        : Center(child: Text(context.l10n.noLocationsFound));
  }
}
