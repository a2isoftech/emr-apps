import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/users/users_data_source.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class UserSearch extends StatefulWidget with AppBarExtender, OmniSearch {
  const UserSearch({super.key});

  @override
  List<Widget> getActions(BuildContext context) => [
    if (context.userHasPermission('data-management/users/create/action'))
      IconButton.filled(
        tooltip: 'Add user',
        onPressed: () => context.goNamed(
          EmrOneDataManagementConstants.kRouteUserForm,
          params: {'id': EmrOneDataManagementConstants.kEmptyGuid},
        ),
        icon: const Icon(Icons.add_circle),
      ),
  ];

  @override
  State<UserSearch> createState() => _UserSearchState();
}

class _UserSearchState extends State<UserSearch> {
  late final UsersDataSource _dataSource;
  late final EmrQueryLayoutController<User> _queryLayoutController;

  @override
  void initState() {
    super.initState();

    _dataSource = UsersDataSource(coreApiService: context.coreApi);

    // Set the initial sort order to be last name ascending.
    _dataSource.sortBy('lastName');

    _queryLayoutController = EmrQueryLayoutController<User>(
      dataSource: _dataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);

    return EmrQueryLayoutHybrid<User>(
      controller: _queryLayoutController,
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'firstName',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('First Name', style: headerTextStyle),
          ),
          cellBuilder: (user) => Text(user.firstName),
          width: 150,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'lastName',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Last Name', style: headerTextStyle),
          ),
          cellBuilder: (user) => Text(user.lastName),
          width: 150,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'emailAddress',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Email Address', style: headerTextStyle),
          ),
          cellBuilder: (user) => Text(user.emailAddress),
          width: 300,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'employeeNumber',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Employee Number', style: headerTextStyle),
          ),
          cellBuilder: (user) => Text(user.employeeNumber),
          width: 150,
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'defaultYard',
            dataSource: _queryLayoutController.dataSource,
            child: const Text('Default Yard', style: headerTextStyle),
          ),
          cellBuilder: (user) => Text(user.defaultYardId.stripCollectionName),
        ),
      ],
      onItemTapped: (user) => context.goNamed(
        EmrOneDataManagementConstants.kRouteUserForm,
        params: {'id': user.id.stripCollectionName},
      ),
    );
  }
}
