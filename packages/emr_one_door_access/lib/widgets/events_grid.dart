import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class EventsGrid extends StatefulWidget {
  const EventsGrid({required this.events, required this.isUserMode, super.key});
  final List<DoorAccessAttemptEvent> events;
  final bool isUserMode;

  @override
  State<EventsGrid> createState() => _EventsGridState();
}

class _EventsGridState extends State<EventsGrid> {
  late final DoorAccessGridDataSource<DoorAccessAttemptEvent> _dataSource;
  late final EmrQueryLayoutController<DoorAccessAttemptEvent>
  _queryLayoutController;

  @override
  void initState() {
    super.initState();
    _dataSource = DoorAccessGridDataSource<DoorAccessAttemptEvent>(
      gridData: widget.events,
    );
    _dataSource.sortBy('utcTime');
    _queryLayoutController = EmrQueryLayoutController<DoorAccessAttemptEvent>(
      dataSource: _dataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return EmrQueryLayoutHybrid<DoorAccessAttemptEvent>(
      controller: _queryLayoutController,
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'rowId',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('ID', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(item.rowId.toString()),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'utcTime',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Timestamp', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(item.utcTime.toString()),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'event',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Event', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(
            widget.isUserMode
                ? '${item.topic0}/${item.topic1}/${item.topic2} to ${item.accessPointName}'
                : '${item.topic0}/${item.topic1}/${item.topic2} to ${item.email ?? item.cardNumber ?? item.userId}',
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _queryLayoutController.dispose();
    super.dispose();
  }
}
