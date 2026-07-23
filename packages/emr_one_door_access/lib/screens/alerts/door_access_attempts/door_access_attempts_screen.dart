import 'dart:typed_data';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoorAccessAttemptsScreen extends StatefulWidget {
  const DoorAccessAttemptsScreen({required this.withSnapshots, super.key});

  final bool withSnapshots;

  @override
  State<DoorAccessAttemptsScreen> createState() =>
      _DoorAccessAttemptsScreenState();
}

class _DoorAccessAttemptsScreenState extends State<DoorAccessAttemptsScreen> {
  late final EmrQueryLayoutController<DoorAccessAttemptEvent>
  queryLayoutController;

  @override
  void initState() {
    super.initState();
    queryLayoutController =
        Provider.of<EmrQueryLayoutController<DoorAccessAttemptEvent>>(
          context,
          listen: false,
        );
    final filterController =
        queryLayoutController.filterController!
            as DoorAccessAttemptsFilterController;
    filterController.fetchFilterValues();
    final gridDataSource =
        queryLayoutController.dataSource as DoorAccessAttemptsDataSource;

    gridDataSource.withSnapshots = widget.withSnapshots;

    gridDataSource.refresh();
  }

  @override
  void dispose() {
    queryLayoutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);

    final gridDataSource =
        queryLayoutController.dataSource as DoorAccessAttemptsDataSource;
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
          child: EmrQueryLayoutHybrid<DoorAccessAttemptEvent>(
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
                  field: 'accessPointId',
                  dataSource: queryLayoutController.dataSource,
                  child: const Text('Access Point Id', style: headerTextStyle),
                ),
                cellBuilder: (event) =>
                    Text((event.accessPointId ?? '').split('/').last),
              ),
              EmrGridColumn(
                headerBuilder: () => EmrSortableGridHeader(
                  field: 'accessPointName',
                  dataSource: queryLayoutController.dataSource,
                  child: const Text(
                    'Access Point Name',
                    style: headerTextStyle,
                  ),
                ),
                cellBuilder: (event) => Text(event.accessPointName ?? ''),
              ),
              EmrGridColumn(
                headerBuilder: () => EmrSortableGridHeader(
                  field: 'name',
                  dataSource: queryLayoutController.dataSource,
                  child: const Text('User Name', style: headerTextStyle),
                ),
                cellBuilder: (event) => Text(event.userFullName ?? ''),
              ),
              EmrGridColumn(
                headerBuilder: () => EmrSortableGridHeader(
                  field: 'cardNumber',
                  dataSource: queryLayoutController.dataSource,
                  child: const Text('Card Number', style: headerTextStyle),
                ),
                cellBuilder: (event) => Text(
                  (event.rawCardNumber ?? '').isEmpty
                      ? event.cardNumber ?? ''
                      : '${event.cardNumber} (${event.rawCardNumber})',
                ),
              ),
              EmrGridColumn(
                headerBuilder: () => EmrSortableGridHeader(
                  field: 'email',
                  dataSource: queryLayoutController.dataSource,
                  child: const Text('User Email', style: headerTextStyle),
                ),
                cellBuilder: (event) => Text(event.email ?? ''),
              ),
              EmrGridColumn(
                headerBuilder: () => EmrSortableGridHeader(
                  field: 'siteName',
                  dataSource: queryLayoutController.dataSource,
                  child: const Text('Site', style: headerTextStyle),
                ),
                cellBuilder: (event) => Text(event.siteName ?? ''),
              ),
              if (widget.withSnapshots) ...{
                EmrGridColumn(
                  headerBuilder: () => EmrSortableGridHeader(
                    field: 'snapshotReason',
                    dataSource: queryLayoutController.dataSource,
                    child: const Text('Snapshot', style: headerTextStyle),
                  ),
                  cellBuilder: (event) => Text(event.snapshotReason ?? ''),
                ),
              } else ...{
                EmrGridColumn(
                  headerBuilder: () => EmrSortableGridHeader(
                    field: 'accessResponse',
                    dataSource: queryLayoutController.dataSource,
                    child: const Text('Result', style: headerTextStyle),
                  ),
                  cellBuilder: (event) => Text(event.accessResponse ?? ''),
                ),
              },
            ],
            onItemTapped: widget.withSnapshots
                ? (ac) => _renderImage(gridDataSource, ac.snapshotUrl, context)
                : null,
          ),
        ),
      ],
    );
  }

  void _renderImage(
    DoorAccessAttemptsDataSource ds,
    String? imageUrl,
    BuildContext context,
  ) {
    EmrDialog.modal<void>(
      context,
      titleText: 'Snapshot',
      acceptLabel: context.l10n.save,
      builder: (context1) => ScaffoldMessenger(
        child: (imageUrl ?? '').isEmpty
            ? const Text('No Image')
            : FutureBuilder(
                builder:
                    (BuildContext ctx, AsyncSnapshot<Uint8List?> snapshot) {
                      if (ConnectionState.done == snapshot.connectionState) {
                        if (snapshot.data != null) {
                          return Builder(
                            builder: (contextBuilder) {
                              return SizedBox(
                                width:
                                    MediaQuery.of(contextBuilder).size.width *
                                    0.9,
                                height:
                                    MediaQuery.of(contextBuilder).size.height *
                                    0.9,

                                child: Image.memory(snapshot.data!),
                              );
                            },
                          );
                        } else if (snapshot.data == null) {
                          return const Text('Image could not be retrieved');
                        }
                      }
                      return processingIndicator();
                    },
                future: ds.doorAccessService.mediaService.getImage(imageUrl!),
              ),
      ),
      buttons: {EmrDialogButton.cancel},
    );
  }
}
