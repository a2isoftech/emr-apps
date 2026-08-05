import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/widgets/base_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SchedulesScreen extends StatefulWidget {
  const SchedulesScreen({
    required this.accessControllerId,
    required this.siteId,
    super.key,
  });

  final String accessControllerId;
  final String siteId;

  @override
  State<SchedulesScreen> createState() => _SchedulesScreenState();
}

class _SchedulesScreenState extends State<SchedulesScreen> {
  late final EmrQueryLayoutController<Schedule> queryLayoutController;
  final Map<Type, EmrAction<Intent>> actions = {};

  @override
  void initState() {
    super.initState();
    queryLayoutController = Provider.of<EmrQueryLayoutController<Schedule>>(
      context,
      listen: false,
    );

    actions[AddNewScheduleIntent] = AddNewScheduleAction(
      siteId: widget.siteId,
      accessControllerId: widget.accessControllerId,
      createIntent: (context) => AddNewScheduleIntent(context: context),
    );
    actions[RefreshIntent] = RefreshAction(
      onRefresh: () async {
        StaticData.ignoreCache = true;
        await queryLayoutController.dataSource.refresh();
      },
    );

    final gridDataSource =
        queryLayoutController.dataSource as SchedulesDataSource;
    gridDataSource.refresh();
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return BasePage(
      signalRService: DoorAccessRealtime.instance.service,
      child: EmrQueryLayoutHybrid<Schedule>(
        controller: queryLayoutController,
        actions: actions,
        columns: [
          EmrGridColumn(
            headerBuilder: () => EmrSortableGridHeader(
              field: 'token',
              dataSource: queryLayoutController.dataSource,
              child: const Text('Token', style: headerTextStyle),
            ),
            cellBuilder: (s) => Text(s.token),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrSortableGridHeader(
              field: 'name',
              dataSource: queryLayoutController.dataSource,
              child: const Text('Name', style: headerTextStyle),
            ),
            cellBuilder: (s) => Text(s.name),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrSortableGridHeader(
              field: 'description',
              dataSource: queryLayoutController.dataSource,
              child: const Text('Description', style: headerTextStyle),
            ),
            cellBuilder: (s) => Text(s.description),
          ),
        ],
        onItemTapped: (s) {
          StaticData.accessControllerId = widget.accessControllerId;
          VCalendarViewer.show(context, s.scheduleDefinition);
        },
      ),
    );
  }

  @override
  void dispose() {
    queryLayoutController.dispose();
    super.dispose();
  }
}
