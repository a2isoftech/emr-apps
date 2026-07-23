import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GroupsScreen extends StatefulWidget {
  const GroupsScreen({super.key});

  @override
  State<GroupsScreen> createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen> {
  late final EmrQueryLayoutController<AdGroup> queryLayoutController;
  final Map<Type, EmrAction<Intent>> actions = {};

  @override
  void initState() {
    super.initState();
    queryLayoutController = Provider.of<EmrQueryLayoutController<AdGroup>>(
      context,
      listen: false,
    );
    final controller = Provider.of<ManageGroupController>(
      context,
      listen: false,
    );
    actions[AddNewGroupIntent] = AddNewGroupAction(
      controller: controller,
      createIntent: (context) => AddNewGroupIntent(context: context),
      onSuccessfulSave: () async {
        StaticData.ignoreCache = true;
        await queryLayoutController.dataSource.refresh();
      },
    );
    final gridDataSource = queryLayoutController.dataSource as GroupsDataSource;
    gridDataSource.refresh();
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return EmrQueryLayoutHybrid<AdGroup>(
      controller: queryLayoutController,
      actions: actions,
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
            field: 'lastUpdatedFromAzureAdOn',
            dataSource: queryLayoutController.dataSource,
            child: const Text(
              'Last Updated From AzureAd On',
              style: headerTextStyle,
            ),
          ),
          cellBuilder: (account) =>
              Text(account.lastUpdatedFromAzureAdOn?.toString() ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'usersCount',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Users Count', style: headerTextStyle),
          ),
          cellBuilder: (account) => Text(account.users.length.toString()),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'azureId',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Azure Id', style: headerTextStyle),
          ),
          cellBuilder: (account) => Text(account.azureId ?? ''),
        ),
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'assignedTo',
            dataSource: queryLayoutController.dataSource,
            child: const Text('Assigned To', style: headerTextStyle),
          ),
          cellBuilder: (group) =>
              Text(group.accessPoints.entries.map((e) => e.key).join(' | ')),
        ),
        EmrGridColumn(
          headerBuilder: () => const EmrGridHeader(text: 'Actions'),
          cellBuilder: (group) => Row(
            children: [
              ElevatedButton(
                onPressed: () => _linkAccessPoint(context, group.id),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                child: const Text('Link Access Point'),
              ),
            ],
          ),
        ),
      ],
      onItemTapped: (group) {
        StaticData.userIds = group.users;
        context.goNamed(DoorAccessRouteRegistry.routeUsers);
      },
    );
  }

  void _linkAccessPoint(BuildContext context, String groupId) {
    context.goNamed(
      DoorAccessRouteRegistry.routeLinkGroupAccessPoint,
      params: {'groupId': groupId},
    );
  }

  @override
  void dispose() {
    queryLayoutController.dispose();
    super.dispose();
  }
}
