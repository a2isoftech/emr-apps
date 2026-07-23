import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoorsScreen extends StatefulWidget {
  const DoorsScreen({required this.configurationController, super.key});

  @override
  State<DoorsScreen> createState() => _DoorsScreenState();

  final ConfigurationController configurationController;
}

class _DoorsScreenState extends State<DoorsScreen> {
  late final EmrQueryLayoutController<DoorSearchResult> queryLayoutController;
  final Map<Type, EmrAction<Intent>> actions = {};

  @override
  void dispose() {
    queryLayoutController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    queryLayoutController =
        Provider.of<EmrQueryLayoutController<DoorSearchResult>>(
          context,
          listen: false,
        );
    final filterController =
        queryLayoutController.filterController! as DoorsFilterController;
    filterController.fetchFilterValues();

    final gridDataSource = queryLayoutController.dataSource as DoorDataSource;
    gridDataSource.refresh();

    final updateScheduleConfiguration = UpdateScheduleConfigurationAction(
      controller: widget.configurationController,
      getDoors: () {
        return Future.value(gridDataSource.data.value);
      },
      createIntent: (context) =>
          UpdateScheduleConfigurationIntent(context: context),
      onSuccessfulSave: _onSave,
    );
    actions[UpdateScheduleConfigurationIntent] = updateScheduleConfiguration;
  }

  Future<void> _onSave() async {
    StaticData.ignoreCache = true;
    await queryLayoutController.dataSource.refresh();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ManageDoorController>(
      context,
      listen: false,
    );
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return EmrQueryLayoutHybrid<DoorSearchResult>(
      controller: queryLayoutController,
      actions: actions,
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'siteName',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Site', style: headerTextStyle),
          ),
          cellBuilder: (o) => Text(o.siteName ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'accessControllerName',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Access Controller', style: headerTextStyle),
          ),
          cellBuilder: (o) => Text(o.accessControllerName),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'doorExternalId',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Door Id', style: headerTextStyle),
          ),
          cellBuilder: (o) => Text(o.doorExternalId),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'doorName',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Door Name', style: headerTextStyle),
          ),
          cellBuilder: (o) => Text(o.doorName),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'scheduleConfigId',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Schedule Config', style: headerTextStyle),
          ),
          cellBuilder: (o) => Text(o.scheduleConfigId ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'priorityConfigId',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Priority Config', style: headerTextStyle),
          ),
          cellBuilder: (o) => Text(o.priorityConfigId ?? ''),
        ),

        EmrGridColumn(
          headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
          cellBuilder: (item) => Row(
            children: [
              EmrSecurityContainer(
                allowedPermissions: Permissions.getAllowedPermissions(
                  Permissions.manageDoorControllers,
                ),
                child: IconButton(
                  icon: const Icon(Icons.door_front_door),
                  tooltip: 'Test door state',
                  onPressed: () => _openTestDoorModal(
                    context,
                    "Door's Current State",
                    item.accessControllerId,
                    item.doorExternalId,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      onItemTapped: (ac) async {
        if (!context.mounted) {
          return;
        }

        await EmrDialog.modal<void>(
          context,
          titleText: 'Edit Door Configuration',
          acceptLabel: context.l10n.save,
          builder: (context1) => ScaffoldMessenger(
            child: Builder(
              builder: (context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.9,

                  child: FutureBuilder<(List<Schedule>, AccessController?)>(
                    future: _getDoorData(controller, ac.accessControllerId),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      if (snapshot.hasError) {
                        return Center(
                          child: Text(
                            'Error: ${snapshot.error}',
                            style: const TextStyle(color: Colors.red),
                          ),
                        );
                      }

                      if (!snapshot.hasData) {
                        return const Center(child: Text('No data found'));
                      }

                      final door = snapshot.data?.$2?.doors.firstWhereOrNull(
                        (d) => d.externalId == ac.doorExternalId,
                      );

                      return DoorConfigurationForm(
                        accessControllerId: ac.accessControllerId,
                        configurationController: widget.configurationController,
                        door: door,
                        schedules: snapshot.data!.$1,
                      );
                    },
                  ),
                );
              },
            ),
          ),
          buttons: {EmrDialogButton.cancel, EmrDialogButton.accept},
          onAccept: () async {
            if (widget.configurationController.formKey.currentState
                    ?.validate() ??
                true) {
              widget.configurationController.formKey.currentState!.save();

              final (success, error) = await widget.configurationController
                  .update();

              if (!success && context.mounted) {
                await EmrModal.showMessageBar(
                  context,
                  error,
                  messageType: MessageBarTypes.error,
                );
                return;
              }
              StaticData.ignoreCache = true;
              await queryLayoutController.dataSource.refresh();
              if (context.mounted) {
                context.pop();
              }
            } else {
              debugPrint('form is invalid');
            }
          },
        );
      },
    );
  }

  Future<(List<Schedule>, AccessController?)> _getDoorData(
    ManageDoorController controller,
    String accessControllerId,
  ) async {
    return (
      await controller.doorAccessService.accessControllersService
          .getAllSchedules(accessControllerId: accessControllerId),
      (await controller.doorAccessService.accessControllersService
              .getDoorDetails(accessControllerId: accessControllerId))
          .firstOrNull,
    );
  }

  void _openTestDoorModal(
    BuildContext context,
    String title,
    String accessControllerId,
    String doorExternalId,
  ) {
    StaticData.ignoreCache = true;
    EmrDialog.modal<void>(
      context,
      titleText: title,
      acceptLabel: context.l10n.save,
      builder: (context1) => ScaffoldMessenger(
        child: Builder(
          builder: (context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.5,
              child: DoorStateWidget(
                future: widget
                    .configurationController
                    .doorAccessService
                    .accessControllersService
                    .getDoorPriorityState(
                      accessControllerId: accessControllerId,
                      doorExternalId: doorExternalId,
                    ),
              ),
            );
          },
        ),
      ),
      buttons: {EmrDialogButton.cancel},
    );
  }
}
