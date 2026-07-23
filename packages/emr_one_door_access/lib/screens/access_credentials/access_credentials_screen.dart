import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/widgets/base_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccessCredentialsScreen extends StatefulWidget {
  const AccessCredentialsScreen({super.key});

  @override
  State<AccessCredentialsScreen> createState() =>
      _AccessCredentialsScreenState();
}

class _AccessCredentialsScreenState extends State<AccessCredentialsScreen> {
  late final EmrQueryLayoutController<AccessCredential> queryLayoutController;
  final Map<String, ValueNotifier<bool>> _loadingMap = {};
  ValueNotifier<bool> _getNotifier(String id) {
    return _loadingMap.putIfAbsent(id, () => ValueNotifier(false));
  }

  @override
  void dispose() {
    for (final notifier in _loadingMap.values) {
      notifier.dispose();
    }
    queryLayoutController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    queryLayoutController =
        Provider.of<EmrQueryLayoutController<AccessCredential>>(
          context,
          listen: false,
        );
    final filterController =
        queryLayoutController.filterController!
            as AccessCredentialsFilterController;
    filterController.fetchFilterValues();

    final gridDataSource =
        queryLayoutController.dataSource as AccessCredentialsDataSourrce;
    gridDataSource.refresh();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ManageAccessCredentialController>(
      context,
      listen: false,
    );
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return BasePage(
      signalRService: DoorAccessRealtime.instance.service,
      child: EmrQueryLayoutHybrid<AccessCredential>(
        controller: queryLayoutController,
        columns: [
          EmrGridColumn(
            headerBuilder: () => EmrSortableGridHeader(
              field: 'externalId',
              dataSource: queryLayoutController.dataSource,
              child: const Text('External Id', style: headerTextStyle),
            ),
            cellBuilder: (o) => Text(o.externalId),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrSortableGridHeader(
              field: 'accessController',
              dataSource: queryLayoutController.dataSource,
              child: const Text('Access Controller', style: headerTextStyle),
            ),
            cellBuilder: (o) =>
                Text(o.accessController?.name ?? o.accessController?.id ?? ''),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrSortableGridHeader(
              field: 'accessPoint',
              dataSource: queryLayoutController.dataSource,
              child: const Text('Access Point', style: headerTextStyle),
            ),
            cellBuilder: (o) =>
                Text(o.accessPoint?.name ?? o.accessPoint?.id ?? ''),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrSortableGridHeader(
              field: 'group',
              dataSource: queryLayoutController.dataSource,
              child: const Text('Group', style: headerTextStyle),
            ),
            cellBuilder: (o) => Text(o.group?.name ?? o.group?.azureId ?? ''),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrSortableGridHeader(
              field: 'user',
              dataSource: queryLayoutController.dataSource,
              child: const Text('User', style: headerTextStyle),
            ),
            cellBuilder: (o) => Text(o.user?.name ?? o.user?.userName ?? ''),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrSortableGridHeader(
              field: 'deletedInDoorControllerOn',
              dataSource: queryLayoutController.dataSource,
              child: const Text(
                'Deleted In Door Controller On',
                style: headerTextStyle,
              ),
            ),
            cellBuilder: (o) =>
                Text(o.deletedInDoorControllerOn?.toString() ?? ''),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrSortableGridHeader(
              field: 'deletedOn',
              dataSource: queryLayoutController.dataSource,
              child: const Text('Deleted In Db On', style: headerTextStyle),
            ),
            cellBuilder: (o) => Text(o.deletedOn?.toString() ?? ''),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
            cellBuilder: (item) => Row(
              children: [
                EmrSecurityContainer(
                  allowedPermissions: Permissions.getAllowedPermissions(
                    Permissions.syncAccessCredentials,
                  ),
                  child: ValueListenableBuilder<bool>(
                    valueListenable: _getNotifier(item.id),
                    builder: (context, isProcessing, child) {
                      if (isProcessing) {
                        return processingIndicator();
                      }

                      return IconButton(
                        icon: const Icon(Icons.sync),
                        tooltip: 'Sync Access Credential To Door Controller',
                        onPressed: () async {
                          final notifier = _getNotifier(item.id);
                          notifier.value = true;

                          try {
                            final result = await controller
                                .syncAccessCredential(item.id);

                            if (context.mounted) {
                              // if successful
                              if (result.$1) {
                                await EmrModal.showMessageBar(
                                  context,
                                  'Access credential synced successfully.',
                                );
                                await (queryLayoutController.dataSource
                                        as AccessCredentialsDataSourrce)
                                    .refresh();
                              } else {
                                await EmrModal.showMessageBar(
                                  context,
                                  controller.error,
                                  messageType: MessageBarTypes.error,
                                );
                              }
                            }
                          } finally {
                            notifier.value = false;
                          }
                        },
                      );
                    },
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
