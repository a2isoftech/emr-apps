import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScheduleUpdatesScreen extends StatefulWidget {
  const ScheduleUpdatesScreen({super.key});

  @override
  State<ScheduleUpdatesScreen> createState() => _ScheduleUpdatesScreenState();
}

class _ScheduleUpdatesScreenState extends State<ScheduleUpdatesScreen> {
  late final EmrQueryLayoutController<ScheduleUpdateEvent>
  queryLayoutController;

  @override
  void initState() {
    super.initState();
    queryLayoutController =
        Provider.of<EmrQueryLayoutController<ScheduleUpdateEvent>>(
          context,
          listen: false,
        );
    final filterController =
        queryLayoutController.filterController!
            as ScheduleUpdatesFilterController;
    filterController.fetchFilterValues();
    final gridDataSource =
        queryLayoutController.dataSource as ScheduleUpdatesDataSource;
    gridDataSource.refresh();
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);

    final gridDataSource =
        queryLayoutController.dataSource as ScheduleUpdatesDataSource;
    final width = context.screenWidth();
    return Column(
      children: [
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(
              width: width / 3,
              child: EmrDateFormField(
                labelText: 'From',
                binding: gridDataSource.fromDate,
              ),
            ),
            const SizedBox(width: Insets.gutter),
            SizedBox(
              width: width / 3,
              child: EmrDateFormField(
                labelText: 'To',
                binding: gridDataSource.toDate,
              ),
            ),
            const SizedBox(width: Insets.gutter),
            ElevatedButton(
              onPressed: () async {
                await gridDataSource.refresh();
              },
              child: const Text('Filter'),
            ),
          ],
        ),
        Expanded(
          child: EmrQueryLayoutHybrid<ScheduleUpdateEvent>(
            controller: queryLayoutController,
            columns: [
              EmrGridColumn(
                headerBuilder: () => EmrSortableGridHeader(
                  field: 'rowId',
                  dataSource: queryLayoutController.dataSource,
                  child: const Text('Row Id', style: headerTextStyle),
                ),
                cellBuilder: (event) => Text(event.rowId.toString()),
              ),
              EmrGridColumn(
                headerBuilder: () => EmrSortableGridHeader(
                  field: 'utcTime',
                  dataSource: queryLayoutController.dataSource,
                  child: const Text('Time', style: headerTextStyle),
                ),
                cellBuilder: (event) => Text(event.utcTime.toIso8601String()),
              ),
              EmrGridColumn(
                headerBuilder: () => EmrSortableGridHeader(
                  field: 'topic2',
                  dataSource: queryLayoutController.dataSource,
                  child: const Text('Effect', style: headerTextStyle),
                ),
                cellBuilder: (event) => Text(event.topic2 ?? ''),
              ),
              EmrGridColumn(
                headerBuilder: () => EmrSortableGridHeader(
                  field: 'accessControllerName',
                  dataSource: queryLayoutController.dataSource,
                  child: const Text(
                    'Access Controller',
                    style: headerTextStyle,
                  ),
                ),
                cellBuilder: (event) => Text(event.accessControllerName),
              ),
              EmrGridColumn(
                headerBuilder: () => EmrSortableGridHeader(
                  field: 'scheduleToken',
                  dataSource: queryLayoutController.dataSource,
                  child: const Text('Schedule', style: headerTextStyle),
                ),
                cellBuilder: (event) => Text(event.scheduleToken ?? ''),
              ),

              EmrGridColumn(
                headerBuilder: () => EmrSortableGridHeader(
                  field: 'siteName',
                  dataSource: queryLayoutController.dataSource,
                  child: const Text('Site', style: headerTextStyle),
                ),
                cellBuilder: (event) => Text(event.siteName ?? ''),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    queryLayoutController.dispose();
    super.dispose();
  }
}
