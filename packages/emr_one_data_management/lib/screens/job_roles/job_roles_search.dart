import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/job_roles/job_roles_data_source.dart';
import 'package:emr_sharedtypes/models/userRoles/job_role.dart';
import 'package:flutter/material.dart';

class JobRolesSearch extends StatefulWidget with AppBarExtender, OmniSearch {
  const JobRolesSearch({super.key});

  @override
  List<Widget> getActions(BuildContext context) => [
    IconButton.filled(
      tooltip: 'Add Job Role',
      onPressed: () {
        context.goNamed(
          EmrOneDataManagementConstants.kRouteJobRolesForm,
          params: {'id': EmrOneDataManagementConstants.kEmptyGuid},
        );
      },
      icon: const Icon(Icons.add_circle),
    ),
  ];

  @override
  State<JobRolesSearch> createState() => _JobRolesSearchState();
}

class _JobRolesSearchState extends State<JobRolesSearch> {
  late final JobRolesDataSource _dataSource;
  late final EmrQueryLayoutController<JobRole> _queryLayoutController;

  @override
  void initState() {
    super.initState();
    _dataSource = JobRolesDataSource(
      userAccessService: context.coreApi.userAccess,
    );
    _queryLayoutController = EmrQueryLayoutController<JobRole>(
      dataSource: _dataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return EmrQueryLayoutHybrid<JobRole>(
      controller: _queryLayoutController,
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'name',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Name', style: headerTextStyle),
          ),
          cellBuilder: (jobRole) => Text(jobRole.name),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'description',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Description', style: headerTextStyle),
          ),
          cellBuilder: (jobRole) => Text(jobRole.description),
        ),
      ],
      onItemTapped: (jobRole) {
        context.goNamed(
          EmrOneDataManagementConstants.kRouteJobRolesForm,
          params: {'id': jobRole.id},
        );
      },
    );
  }
}
