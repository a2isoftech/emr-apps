import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/system_roles/system_roles_data_source.dart';
import 'package:emr_sharedtypes/models/userRoles/system_role.dart';
import 'package:flutter/material.dart';

class SystemRolesSearch extends StatefulWidget with AppBarExtender, OmniSearch {
  const SystemRolesSearch({super.key});

  @override
  List<Widget> getActions(BuildContext context) => [
    IconButton.filled(
      tooltip: 'Add System Role',
      onPressed: () {
        context.goNamed(
          EmrOneDataManagementConstants.kRouteSystemRolesForm,
          params: {'id': EmrOneDataManagementConstants.kEmptyGuid},
        );
      },
      icon: const Icon(Icons.add_circle),
    ),
  ];

  @override
  State<SystemRolesSearch> createState() => _SystemRolesSearchState();
}

class _SystemRolesSearchState extends State<SystemRolesSearch> {
  late final SystemRolesDataSource _dataSource;
  late final EmrQueryLayoutController<SystemRole> _queryLayoutController;

  @override
  void initState() {
    super.initState();
    _dataSource = SystemRolesDataSource(
      userAccessService: context.coreApi.userAccess,
    );
    _queryLayoutController = EmrQueryLayoutController<SystemRole>(
      dataSource: _dataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);

    return EmrQueryLayoutHybrid<SystemRole>(
      controller: _queryLayoutController,
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'name',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Name', style: headerTextStyle),
          ),
          cellBuilder: (systemRole) => Text(systemRole.name),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'description',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Description', style: headerTextStyle),
          ),
          cellBuilder: (systemRole) => Text(systemRole.description),
        ),
      ],
      onItemTapped: (systemRole) {
        context.goNamed(
          EmrOneDataManagementConstants.kRouteSystemRolesForm,
          params: {'id': systemRole.id},
        );
      },
    );
  }
}
