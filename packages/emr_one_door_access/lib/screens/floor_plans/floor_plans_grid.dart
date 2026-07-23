import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloorPlansGrid extends StatefulWidget {
  const FloorPlansGrid({
    required this.floorPlanController,
    required this.floorPlans,
    required this.siteId,
    required this.onRefresh,
    super.key,
  });

  final FloorPlanController floorPlanController;
  final List<FloorPlan> floorPlans;
  final String siteId;
  final void Function() onRefresh;

  @override
  State<FloorPlansGrid> createState() => _FloorPlansGridState();
}

class _FloorPlansGridState extends State<FloorPlansGrid> {
  late final DoorAccessGridDataSource<FloorPlan> _dataSource;
  late final EmrQueryLayoutController<FloorPlan> _queryLayoutController;
  final Map<Type, EmrAction<Intent>> actions = {};
  late FloorPlanController controller;

  @override
  void initState() {
    super.initState();
    controller = Provider.of<FloorPlanController>(context, listen: false);

    _dataSource = DoorAccessGridDataSource<FloorPlan>(
      gridData: widget.floorPlans,
    );
    final addNewFloorPlanAction = AddNewFloorPlanAction(
      controller: controller,
      siteId: widget.siteId,
      createIntent: (context) => AddNewFloorPlanIntent(context: context),
      onSuccessfulSave: _onSave,
    );
    actions[AddNewFloorPlanIntent] = addNewFloorPlanAction;
    _dataSource.sortBy('name');
    _queryLayoutController = EmrQueryLayoutController<FloorPlan>(
      dataSource: _dataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  void dispose() {
    _queryLayoutController.dispose();
    super.dispose();
  }

  Future<void> _onSave() async {
    StaticData.ignoreCache = true;
    await _queryLayoutController.dataSource.refresh();
    widget.onRefresh.call();
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);

    return EmrQueryLayoutHybrid<FloorPlan>(
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
            field: 'createdOn',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Created On', style: headerTextStyle),
          ),
          cellBuilder: (item) => Text(item.createdOn.toString()),
        ),
        EmrGridColumn(
          headerBuilder: () => const EmrGridHeader(text: 'Actions'),
          cellBuilder: (ac) => Wrap(
            children: [
              EmrSecurityContainer(
                allowedPermissions: Permissions.getAllowedPermissions(
                  Permissions.editFloorPlans,
                ),
                child: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => AddNewFloorPlanAction.openModal(
                    controller,
                    context,
                    'Edit Floor Plan',
                    'Floor plan could not be saved',
                    widget.siteId,
                    _onSave,
                    floorPlan: ac,
                    isInEditMode: true,
                  ),
                ),
              ),
              EmrSecurityContainer(
                allowedPermissions: Permissions.getAllowedPermissions(
                  Permissions.deleteFloorPlans,
                ),
                child: RecordDeleter(
                  entityName: 'floor plan',
                  showIcon: true,
                  onPreDelete: () {},
                  onDelete: () => _delete(widget.floorPlanController, ac.id),
                ),
              ),
            ],
          ),
        ),
      ],
      onItemTapped: (ac) => AddNewFloorPlanAction.openModal(
        controller,
        context,
        'View Floor Plan',
        'Floor plan could not be saved',
        widget.siteId,
        _onSave,
        floorPlan: ac,
        isInEditMode: false,
      ),
    );
  }

  Future<(bool success, String error)> _delete(
    FloorPlanController controller,
    String id,
  ) async {
    const error = 'Floor plan could not be deleted';

    final success = await controller.doorAccessService.sitesService
        .deleteFloorPlan(id);

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
    await _queryLayoutController.dataSource.refresh();
    widget.onRefresh.call();

    if (!mounted) {
      return (false, 'Widget no longer mounted');
    }

    await EmrModal.showMessageBar(context, 'Floor plan deleted');

    return (true, '');
  }
}
