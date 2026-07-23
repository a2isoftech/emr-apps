import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccessPointsGrid extends StatefulWidget {
  const AccessPointsGrid({
    required this.accessPoints,
    required this.siteId,
    required this.doorAccessService,
    required this.onRefresh,
    super.key,
  });

  final DoorAccessService doorAccessService;
  final List<AccessPoint> accessPoints;
  final String siteId;
  final void Function() onRefresh;

  @override
  State<AccessPointsGrid> createState() => _AccessPointsGridState();
}

class _AccessPointsGridState extends State<AccessPointsGrid> {
  late final DoorAccessGridDataSource<AccessPoint> _dataSource;
  late final EmrQueryLayoutController<AccessPoint> _queryLayoutController;
  final Map<String, ValueNotifier<bool>> _loadingMap = {};
  ValueNotifier<bool> _getNotifier(String id) {
    return _loadingMap.putIfAbsent(id, () => ValueNotifier(false));
  }

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
    _dataSource = DoorAccessGridDataSource<AccessPoint>(
      gridData: widget.accessPoints,
    );
    _dataSource.sortBy('name');
    _queryLayoutController = EmrQueryLayoutController<AccessPoint>(
      dataSource: _dataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return EmrQueryLayoutHybrid<AccessPoint>(
      controller: _queryLayoutController,
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
            field: 'accessControllerId',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Access Controller', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(item.accessControllerId),
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
            field: 'groupsCount',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Groups Count', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(item.groups.length.toString()),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'groups',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Groups', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(item.groups.join(' | ')),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'camera',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Camera Set?', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(item.camera == null ? 'NO' : 'YES'),
        ),
        EmrGridColumn(
          headerBuilder: () => const EmrGridHeader(text: 'Actions'),
          cellBuilder: (item) => Row(
            children: [
              EmrSecurityContainer(
                allowedPermissions: Permissions.getAllowedPermissions(
                  Permissions.linkAccessPoint,
                ),
                child: IconButton(
                  onPressed: () => _openLinkModal(
                    context,
                    'Link Group And Access Point',
                    'Access point could not be linked to group',
                    item.id,
                  ),
                  icon: const Icon(Icons.link),
                  tooltip: 'Link Group And Access Point',
                ),
              ),
              EmrSecurityContainer(
                allowedPermissions: Permissions.getAllowedPermissions(
                  Permissions.delinkAccessPoint,
                ),
                child: IconButton(
                  onPressed: () => _openDeLinkModal(
                    context,
                    'DeLink Group And Access Point',
                    'Access point could not be de-linked from group',
                    item.id,
                    item.groups,
                  ),
                  icon: const Icon(Icons.remove),
                  tooltip: 'DeLink Group And Access Point',
                ),
              ),

              EmrSecurityContainer(
                allowedPermissions: Permissions.getAllowedPermissions(
                  Permissions.restrictAccessPoint,
                ),
                child: ValueListenableBuilder<bool>(
                  valueListenable: _getNotifier(item.id),
                  builder: (context, isProcessing, child) {
                    if (isProcessing) {
                      return processingIndicator();
                    }
                    return IconButton(
                      icon: item.restricted
                          ? const Icon(Icons.expand)
                          : const Icon(Icons.stop),
                      tooltip: item.restricted
                          ? 'Permit Access Point'
                          : 'Restrict Access Point',
                      onPressed: () async {
                        final notifier = _getNotifier(item.id);
                        notifier.value = true;
                        await _restrictOrAllow(
                          item.id,
                          restrict: !item.restricted,
                        );
                      },
                    );
                  },
                ),
              ),
              EmrSecurityContainer(
                allowedPermissions: Permissions.getAllowedPermissions(
                  Permissions.permitAccessPoint,
                ),
                child: IconButton(
                  onPressed: () => _openSetCameraModal(
                    context,
                    'Set Camera',
                    'Camera could not be set',
                    item.id,
                    item.camera,
                  ),
                  icon: const Icon(Icons.camera),
                  tooltip: 'Set camera for access point',
                ),
              ),
            ],
          ),
        ),
      ],
      onItemTapped: (ap) => context.goNamed(
        DoorAccessRouteRegistry.routeAccessPointDetails,
        params: {'accessPointId': ap.id, 'siteId': widget.siteId},
      ),
    );
  }

  Future<(bool success, String error)> _restrictOrAllow(
    String id, {
    required bool restrict,
  }) async {
    final controller = Provider.of<ManageSiteController>(
      context,
      listen: false,
    );

    final error =
        'Access point could not be ${restrict ? 'restricted' : 'permitted'}';

    final success = restrict
        ? await controller.doorAccessService.accessPointsService
              .restrictAccessPoint(id)
        : await controller.doorAccessService.accessPointsService
              .permitAccessPoint(id);

    if (!mounted) {
      return (false, 'Widget no longer mounted');
    }

    if (!success) {
      await EmrModal.showMessageBar(
        context,
        error,
        messageType: MessageBarTypes.error,
      );

      return (false, error);
    }

    StaticData.ignoreCache = true;
    await (_queryLayoutController.dataSource
            as DoorAccessGridDataSource<AccessPoint>)
        .refresh();
    widget.onRefresh.call();

    if (!mounted) {
      return (false, 'Widget no longer mounted');
    }

    await EmrModal.showMessageBar(
      context,
      'Access point ${restrict ? 'restricted' : 'permitted'}',
    );

    return (true, '');
  }

  void _openLinkModal(
    BuildContext context,
    String title,
    String errorMessage,
    String accessPointId,
  ) {
    final controller = Provider.of<GroupsAccessPointsLinkController>(
      context,
      listen: false,
    );

    final formKey = GlobalKey<FormState>();
    EmrDialog.modal<void>(
      context,
      titleText: title,
      acceptLabel: context.l10n.save,
      builder: (context1) => ScaffoldMessenger(
        child: Builder(
          builder: (context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,

              child: DoorAccessRouteRegistry.openLinkGroupAndAccessPoint(
                controller,
                widget.doorAccessService,
                accessPointId: accessPointId,
                formKey,
                isinPopup: true,
              ),
            );
          },
        ),
      ),
      onAccept: () async {
        if (formKey.currentState?.validate() ?? true) {
          formKey.currentState!.save();

          final (success, error) = await controller.update();

          if (success && context.mounted) {
            await EmrModal.showMessageBar(
              context,
              'Link successfully created between group and access point',
            );
          } else if (!success && context.mounted) {
            await EmrModal.showMessageBar(
              context,
              '$errorMessage : $error',
              messageType: MessageBarTypes.error,
            );
            return;
          }
          StaticData.ignoreCache = true;
          await _queryLayoutController.dataSource.refresh();
          widget.onRefresh.call();

          if (context.mounted) {
            context.pop();
          }
        } else {
          debugPrint('form is invalid');
        }
      },
    );
  }

  void _openDeLinkModal(
    BuildContext context,
    String title,
    String errorMessage,
    String accessPointId,
    List<String> groupIds,
  ) {
    final controller = Provider.of<GroupsAccessPointsDeLinkController>(
      context,
      listen: false,
    );

    final formKey = GlobalKey<FormState>();
    EmrDialog.modal<void>(
      context,
      titleText: title,
      acceptLabel: context.l10n.save,
      builder: (context1) => ScaffoldMessenger(
        child: Builder(
          builder: (context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,

              child: DoorAccessRouteRegistry.openDeLinkGroupAndAccessPoint(
                controller,
                widget.doorAccessService,
                accessPointIds: [accessPointId],
                groupIds: groupIds,
                formKey,
                isinPopup: true,
              ),
            );
          },
        ),
      ),
      onAccept: () async {
        if (formKey.currentState?.validate() ?? true) {
          formKey.currentState!.save();

          final (success, error) = await controller.update();

          if (success && context.mounted) {
            await EmrModal.showMessageBar(
              context,
              'Link successfully created between group and access point',
            );
          } else if (!success && context.mounted) {
            await EmrModal.showMessageBar(
              context,
              '$errorMessage : $error',
              messageType: MessageBarTypes.error,
            );
            return;
          }
          StaticData.ignoreCache = true;
          await _queryLayoutController.dataSource.refresh();
          widget.onRefresh.call();

          if (context.mounted) {
            context.pop();
          }
        } else {
          debugPrint('form is invalid');
        }
      },
    );
  }

  void _openSetCameraModal(
    BuildContext context,
    String title,
    String errorMessage,
    String accessPointId,
    Camera? camera,
  ) {
    final controller = Provider.of<AccessPointCameraFormController>(
      context,
      listen: false,
    );

    EmrDialog.modal<void>(
      context,
      titleText: title,
      acceptLabel: context.l10n.save,
      builder: (context1) => ScaffoldMessenger(
        child: Builder(
          builder: (context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,

              child: DoorAccessRouteRegistry.openSetCamera(
                controller,
                widget.doorAccessService,
                accessPointId: accessPointId,
                camera: camera,
              ),
            );
          },
        ),
      ),
      onAccept: () async {
        if (controller.formKey.currentState?.validate() ?? true) {
          controller.formKey.currentState!.save();

          final (success, error) = await controller.update();

          if (success && context.mounted) {
            await EmrModal.showMessageBar(
              context,
              'Camera has been set for this access point',
            );
          } else if (!success && context.mounted) {
            await EmrModal.showMessageBar(
              context,
              '$errorMessage : $error',
              messageType: MessageBarTypes.error,
            );
            return;
          }
          StaticData.ignoreCache = true;
          await _queryLayoutController.dataSource.refresh();
          widget.onRefresh.call();

          if (context.mounted) {
            context.pop();
          }
        } else {
          debugPrint('form is invalid');
        }
      },
    );
  }
}
