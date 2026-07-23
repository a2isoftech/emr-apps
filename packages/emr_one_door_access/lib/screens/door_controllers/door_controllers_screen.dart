import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/widgets.dart';

class DoorControllersScreen extends StatefulWidget {
  const DoorControllersScreen({
    required this.doorAccessService,
    required this.siteId,
    super.key,
  });

  final DoorAccessService doorAccessService;
  final String siteId;

  @override
  State<DoorControllersScreen> createState() => _DoorControllersScreenState();
}

class _DoorControllersScreenState extends State<DoorControllersScreen> {
  late Future<PaginatedResponse<List<AccessController>>> _future;

  @override
  void initState() {
    super.initState();
    _loadControllers();
  }

  void _loadControllers() {
    _future = widget.doorAccessService.accessControllersService
        .getAccessControllers(first: 50, siteId: widget.siteId);
  }

  Future<void> _refresh() async {
    setState(_loadControllers);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PaginatedResponse<List<AccessController>>>(
      future: _future,
      builder:
          (
            BuildContext ctx,
            AsyncSnapshot<PaginatedResponse<List<AccessController>>> snapshot,
          ) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.data != null) {
              return AccessControllersGrid(
                siteId: widget.siteId,
                accessControllers: snapshot.data!.data,
                onRefresh: _refresh,
              );
            }

            return processingIndicator();
          },
    );
  }
}
