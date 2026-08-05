import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccessControllersGrid extends StatefulWidget {
  const AccessControllersGrid({
    required this.accessControllers,
    required this.siteId,
    required this.onRefresh,
    super.key,
  });

  final List<AccessController> accessControllers;
  final String siteId;
  final void Function() onRefresh;

  @override
  State<AccessControllersGrid> createState() => _AccessControllersGridState();
}

class _AccessControllersGridState extends State<AccessControllersGrid> {
  late final DoorAccessGridDataSource<AccessController> _dataSource;
  late final EmrQueryLayoutController<AccessController> _queryLayoutController;
  final Map<String, ValueNotifier<bool>> _loadingMap = {};
  ValueNotifier<bool> _getNotifier(String id) {
    return _loadingMap.putIfAbsent(id, () => ValueNotifier(false));
  }

  final Map<Type, EmrAction<Intent>> actions = {};

  late ManageDoorControllerController controller;

  @override
  void dispose() {
    for (final notifier in _loadingMap.values) {
      notifier.dispose();
    }
    _queryLayoutController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = Provider.of<ManageDoorControllerController>(
      context,
      listen: false,
    );

    _dataSource = DoorAccessGridDataSource<AccessController>(
      gridData: widget.accessControllers,
    );
    actions[AddNewDoorControllerIntent] = AddNewDoorControllerAction(
      controller: controller,
      createIntent: (context) => AddNewDoorControllerIntent(context: context),
      onSuccessfulSave: () async {
        StaticData.ignoreCache = true;
        await _queryLayoutController.dataSource.refresh();
        widget.onRefresh.call();
      },
    );
    actions[RefreshIntent] = RefreshAction(
      onRefresh: () async {
        StaticData.ignoreCache = true;
        await _queryLayoutController.dataSource.refresh();
        widget.onRefresh.call();
      },
    );
    _dataSource.sortBy('name');
    _queryLayoutController = EmrQueryLayoutController<AccessController>(
      dataSource: _dataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    final controller = Provider.of<ManageDoorControllerController>(
      context,
      listen: false,
    );

    return EmrQueryLayoutHybrid<AccessController>(
      controller: _queryLayoutController,
      actions: actions,
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'name',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Name', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(item.name),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'site',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Site Id', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(item.site),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'uri',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Url', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(item.uri),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'externalId',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('External Id', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(item.externalId),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'externalName',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('External Name', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(item.externalName),
        ),

        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
          cellBuilder: (item) => Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  StaticData.accessControllerId = item.id;
                  context.goNamed(
                    DoorAccessRouteRegistry.routeSchedules,
                    params: {
                      'siteId': widget.siteId,
                      'accessControllerId': item.id,
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                child: const Text('Schedules'),
              ),
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () => AddNewDoorControllerAction.openModal(
                  controller,
                  context,
                  'Edit Door Controller',
                  'Door controller could not be updated.',
                  () async {
                    StaticData.ignoreCache = true;
                    await _queryLayoutController.dataSource.refresh();
                    widget.onRefresh.call();
                  },
                  accessController: item,
                ),
              ),
              if (item.active ?? false) ...{
                EmrSecurityContainer(
                  allowedPermissions: Permissions.getAllowedPermissions(
                    Permissions.deleteController,
                  ),
                  child: RecordDeleter(
                    entityName: 'access controller',
                    showIcon: true,
                    onPreDelete: () {},
                    onDelete: () => restoreOrDelete(item.id, delete: true),
                  ),
                ),
                EmrSecurityContainer(
                  allowedPermissions: Permissions.getAllowedPermissions(
                    Permissions.syncAccessPoints,
                  ),
                  child: ValueListenableBuilder<bool>(
                    valueListenable: _getNotifier(item.id),
                    builder: (context, isProcessing, child) {
                      if (isProcessing) {
                        return processingIndicator();
                      }
                      return IconButton(
                        icon: const Icon(Icons.sync),
                        tooltip:
                            'Sync access points by fetching them from '
                            'controller and saving in db',
                        onPressed: () async {
                          final notifier = _getNotifier(item.id);
                          notifier.value = true;

                          try {
                            final success = await controller
                                .doorAccessService
                                .accessControllersService
                                .syncAccessPoints(item.id);

                            if (!context.mounted) {
                              return;
                            }

                            await _handleApiResponse(
                              context,
                              success: success,
                              error: 'Access points could not be synced',
                              successMessage:
                                  'Access points synced successfully',
                            );
                          } finally {
                            notifier.value = false;
                          }
                        },
                      );
                    },
                  ),
                ),
              } else ...{
                EmrSecurityContainer(
                  allowedPermissions: Permissions.getAllowedPermissions(
                    Permissions.restoreController,
                  ),
                  child: ValueListenableBuilder<bool>(
                    valueListenable: _getNotifier(item.id),
                    builder: (context, isProcessing, child) {
                      if (isProcessing) {
                        return processingIndicator();
                      }

                      return IconButton(
                        icon: const Icon(Icons.restore),
                        onPressed: () async {
                          final notifier = _getNotifier(item.id);
                          notifier.value = true;

                          try {
                            await restoreOrDelete(item.id, delete: false);
                          } finally {
                            notifier.value = false;
                          }
                        },
                      );
                    },
                  ),
                ),
              },
            ],
          ),
        ),
      ],
      onItemTapped: (ac) => context.goNamed(
        DoorAccessRouteRegistry.routeDoorControllerDetail,
        params: {'siteId': widget.siteId, 'accessControllerId': ac.id},
      ),
    );
  }

  Future<(bool success, String error)> restoreOrDelete(
    String id, {
    required bool delete,
  }) async {
    final controller = Provider.of<ManageDoorControllerController>(
      context,
      listen: false,
    );

    final error =
        'Access controller could not be ${delete ? 'deleted' : 'restored'}';

    final success = delete
        ? await controller.doorAccessService.accessControllersService
              .deleteAccessController(id)
        : await controller.doorAccessService.accessControllersService
              .restoreAccessConroller(id);

    if (!mounted) {
      return (false, 'Widget no longer mounted');
    }

    return _handleApiResponse(
      context,
      success: success,
      error: error,
      successMessage: 'Access controller ${delete ? 'deleted' : 'restored'}',
    );
  }

  Future<(bool success, String error)> _handleApiResponse(
    BuildContext context, {
    required bool success,
    required String error,
    required String successMessage,
  }) async {
    if (!success) {
      await EmrModal.showMessageBar(
        context,
        error,
        messageType: MessageBarTypes.error,
      );

      return (false, error);
    }

    StaticData.ignoreCache = true;
    widget.onRefresh.call();

    if (!context.mounted) {
      return (false, 'Widget no longer mounted');
    }

    await EmrModal.showMessageBar(context, successMessage);

    return (true, '');
  }
}
