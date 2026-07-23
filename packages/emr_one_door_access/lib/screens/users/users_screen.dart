import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  late final EmrQueryLayoutController<DoorAccessUser> queryLayoutController;
  @override
  void initState() {
    super.initState();
    queryLayoutController =
        Provider.of<EmrQueryLayoutController<DoorAccessUser>>(
          context,
          listen: false,
        );
    final gridDataSource = queryLayoutController.dataSource as UsersDataSource;
    gridDataSource.refresh();
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return EmrQueryLayoutHybrid<DoorAccessUser>(
      controller: queryLayoutController,
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'name',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Name', style: headerTextStyle),
          ),
          cellBuilder: (user) => Text(user.name),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'userName',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Username', style: headerTextStyle),
          ),
          cellBuilder: (account) => Text(account.userName),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'cardNumber',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Card Number', style: headerTextStyle),
          ),
          cellBuilder: (account) => Text(account.cardNumber),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'azureId',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Azure Id', style: headerTextStyle),
          ),
          cellBuilder: (account) => Text(account.azureId),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'externalId',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Axis Id', style: headerTextStyle),
          ),
          cellBuilder: (account) => Text(account.externalId ?? ''),
        ),
      ],
      onItemTapped: (user) => context.goNamed(
        DoorAccessRouteRegistry.routeUserDetails,
        params: {'userId': user.id},
      ),
    );
  }

  @override
  void dispose() {
    queryLayoutController.dispose();
    super.dispose();
  }
}
