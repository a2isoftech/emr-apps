import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/widgets/grid/emr_grid.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:flutter/material.dart';

class ThirdPartyJobSelectionTable extends StatefulWidget {
  const ThirdPartyJobSelectionTable({
    required this.data,
    required this.selectedRowsNotifier,
    super.key,
  });
  final List<SchedulerJob> data;
  final ValueNotifier<List<SchedulerJob>> selectedRowsNotifier;
  @override
  State<ThirdPartyJobSelectionTable> createState() =>
      _ThirdPartyJobSelectionTableState();
}

class _ThirdPartyJobSelectionTableState
    extends State<ThirdPartyJobSelectionTable> {
  late EmrGridController<SchedulerJob> _gridController;

  @override
  void initState() {
    super.initState();

    _gridController = EmrGridController<SchedulerJob>(
      data: ValueNotifier(widget.data),
      rowSelectionMode: RowSelectionMode.multiple,
    );
    _gridController.selectedRows.addListener(_updateSelectedRows);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.data.isEmpty) {
      return Center(child: Text(context.l10n.noDataFound));
    }
    return EmrGrid<SchedulerJob>(
      alternateBackgroundRowColour: true,
      controller: _gridController,
      pinnedRowCount: 1,
      columns: [
        EmrGridColumn(
          headerBuilder: () => Text(
            context.l10n.jobNumber,
            style: Theme.of(
              context,
            ).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          cellBuilder: (SchedulerJob rowItem) => Text('${rowItem.jobNumber}'),
        ),
        EmrGridColumn(
          flex: 4,
          headerBuilder: () => Text(
            context.l10n.customer,
            style: Theme.of(
              context,
            ).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          cellBuilder: (SchedulerJob rowItem) => Text(rowItem.customerName),
        ),
      ],
    );
  }

  void _updateSelectedRows() {
    widget.selectedRowsNotifier.value = _gridController.selectedRows.value;
  }
}
