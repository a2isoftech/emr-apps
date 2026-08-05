import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:emr_one_door_access/widgets/base_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SitesScreen extends StatefulWidget {
  const SitesScreen({super.key});

  @override
  State<SitesScreen> createState() => _SitesScreenState();
}

class _SitesScreenState extends State<SitesScreen> {
  late final EmrQueryLayoutController<Site> queryLayoutController;
  final Map<String, ValueNotifier<bool>> _loadingMap = {};
  ValueNotifier<bool> _getNotifier(String id) {
    return _loadingMap.putIfAbsent(id, () => ValueNotifier(false));
  }

  final Map<Type, EmrAction<Intent>> actions = {};

  late ManageSiteController controller;

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

    queryLayoutController = Provider.of<EmrQueryLayoutController<Site>>(
      context,
      listen: false,
    );

    controller = Provider.of<ManageSiteController>(context, listen: false);

    actions[AddNewSiteIntent] = AddNewSiteAction(
      controller: controller,
      createIntent: (context) => AddNewSiteIntent(context: context),
      onSuccessfulSave: () async {
        StaticData.ignoreCache = true;
        await queryLayoutController.dataSource.refresh();
      },
    );
    actions[RefreshIntent] = RefreshAction(
      onRefresh: () async {
        StaticData.ignoreCache = true;
        await queryLayoutController.dataSource.refresh();
      },
    );
    final gridDataSource = queryLayoutController.dataSource as SitesDataSource;
    gridDataSource.refresh();
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return BasePage(
      signalRService: DoorAccessRealtime.instance.service,
      child: EmrQueryLayoutHybrid<Site>(
        controller: queryLayoutController,
        actions: actions,
        columns: [
          EmrGridColumn(
            headerBuilder: () => EmrSortableGridHeader(
              field: 'name',
              dataSource: queryLayoutController.dataSource,
              child: const Text('Name', style: headerTextStyle),
            ),
            cellBuilder: (o) => Text(o.name),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrSortableGridHeader(
              field: 'yardCode',
              dataSource: queryLayoutController.dataSource,
              child: const Text('Yard Code', style: headerTextStyle),
            ),
            cellBuilder: (o) => Text(o.yardCode),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
            cellBuilder: (item) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => AddNewSiteAction.openModal(
                    controller,
                    context,
                    'Edit Site',
                    'Site could not be updated.',
                    () async {
                      StaticData.ignoreCache = true;
                      await queryLayoutController.dataSource.refresh();
                    },
                    site: item,
                  ),
                ),
                if (item.active ?? false) ...{
                  EmrSecurityContainer(
                    allowedPermissions: Permissions.getAllowedPermissions(
                      Permissions.deleteSite,
                    ),
                    child: RecordDeleter(
                      entityName: 'site',
                      showIcon: true,
                      onPreDelete: () {},
                      onDelete: () => restoreOrDelete(item.id, delete: true),
                    ),
                  ),
                } else ...{
                  EmrSecurityContainer(
                    allowedPermissions: Permissions.getAllowedPermissions(
                      Permissions.restoreSite,
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
        onItemTapped: (site) => context.goNamed(
          DoorAccessRouteRegistry.routeSiteDetails,
          params: {'siteId': site.id},
        ),
      ),
    );
  }

  Future<(bool success, String error)> restoreOrDelete(
    String id, {
    required bool delete,
  }) async {
    final controller = Provider.of<ManageSiteController>(
      context,
      listen: false,
    );

    final error = 'Site could not be ${delete ? 'deleted' : 'restored'}';

    final success = delete
        ? await controller.doorAccessService.sitesService.deleteSite(id)
        : await controller.doorAccessService.sitesService.restoreSite(id);

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
    await (queryLayoutController.dataSource as SitesDataSource).refresh();

    if (!mounted) {
      return (false, 'Widget no longer mounted');
    }

    await EmrModal.showMessageBar(
      context,
      'Site ${delete ? 'deleted' : 'restored'}',
    );

    return (true, '');
  }
}
