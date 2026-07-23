import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/models/scheduler/drop_down_item.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_yard.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/reorder_items_widget.dart';
import 'package:flutter/material.dart';

class TrucksReorderWidget extends StatefulWidget {
  const TrucksReorderWidget({required this.yard, super.key});
  final SchedulerYard yard;

  @override
  State<TrucksReorderWidget> createState() => _TrucksReorderWidgetState();
}

class _TrucksReorderWidgetState extends State<TrucksReorderWidget> {
  late ValueNotifier<List<SchedulerTruck>> sortedTrucksNotifier;
  final ValueNotifier<DropDownItem<bool>?> sortDirection = ValueNotifier(null);

  @override
  void initState() {
    super.initState();
    sortedTrucksNotifier = ValueNotifier<List<SchedulerTruck>>(
      List.from(widget.yard.trucks),
    ); // Make a copy

    sortDirection.addListener(_sortTrucks);
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Yard: ${widget.yard.yardCode}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                IconButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total Trucks: ${widget.yard.trucks.length}'),
                  ],
                ),
                SizedBox(
                  width: 300,
                  child: EmrPickerFormField<DropDownItem<bool>>(
                    labelText: '${context.l10n.sortBy}:',
                    items: (_) => Future.value([
                      DropDownItem(
                        displayName:
                            '${context.l10n.truckType}: '
                            '${context.l10n.ascending}',
                        value: false,
                      ),
                      DropDownItem(
                        displayName:
                            '${context.l10n.truckType}: '
                            '${context.l10n.descending}',
                        value: true,
                      ),
                    ]),
                    itemTitleText: (item) => item.displayName,
                    binding: sortDirection,
                  ),
                ),
              ],
            ),
          ),
          ReorderItemsWidget<SchedulerTruck>(
            listNotifier: sortedTrucksNotifier,
            itemBuilder: (buildContext, truckJob) {
              return Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Insets.gutter / 2,
                    vertical: Insets.gutter / 2,
                  ),
                  child: Row(
                    key: ValueKey(truckJob.vrm),
                    children: [
                      const SizedBox(
                        width: 30,
                        child: Center(child: Icon(Icons.drag_indicator)),
                      ),
                      Expanded(
                        child: Column(
                          spacing: 5,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'VRM:',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelSmall,
                                      ),
                                      TextSpan(
                                        text: ' ${truckJob.vrm}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (truckJob.driverName != null &&
                                    truckJob.driverName != '')
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Driver:',
                                          style: Theme.of(
                                            context,
                                          ).textTheme.labelSmall,
                                        ),
                                        TextSpan(
                                          text: ' ${truckJob.driverName}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Description:',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelSmall,
                                      ),
                                      TextSpan(
                                        text: ' ${truckJob.truckDescription}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            onSave: (updatedTruckOrderList) async {
              context.pop(updatedTruckOrderList.map((e) => e.vrm).toList());
            },
          ),
        ],
      ),
    );
  }

  void _sortTrucks() {
    setState(() {
      sortedTrucksNotifier.value = List.from(sortedTrucksNotifier.value)
        ..sort(
          (a, b) => sortDirection.value!.value
              ? b.truckDescription.compareTo(a.truckType)
              : a.truckType.compareTo(b.truckType),
        ); // Sorting by name
    });
  }
}
