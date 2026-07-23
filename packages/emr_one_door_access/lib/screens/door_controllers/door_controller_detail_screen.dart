import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/widgets.dart';

class DoorControllerDetailScreen extends StatefulWidget {
  const DoorControllerDetailScreen({
    required this.doorAccessService,
    required this.accessControllerId,
    required this.siteId,
    super.key,
  });

  final DoorAccessService doorAccessService;
  final String accessControllerId;
  final String siteId;

  @override
  State<DoorControllerDetailScreen> createState() =>
      _DoorControllerDetailScreenState();
}

class _DoorControllerDetailScreenState
    extends State<DoorControllerDetailScreen> {
  late Future<List<AccessPoint>> _future;

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() {
    _future = widget.doorAccessService.accessPointsService
        .getAccessPointsWithoutExternalData(
          accessControllerId: widget.accessControllerId,
        );
  }

  Future<void> _refresh() async {
    setState(_load);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (BuildContext ctx, AsyncSnapshot<List<AccessPoint>> snapshot) {
        if (ConnectionState.done == snapshot.connectionState) {
          if (snapshot.data != null) {
            return AccessPointsGrid(
              accessPoints: snapshot.data!,
              siteId: widget.siteId,
              doorAccessService: widget.doorAccessService,
              onRefresh: _refresh,
            );
          }
        }
        return processingIndicator();
      },
      future: _future,
    );
  }
}
