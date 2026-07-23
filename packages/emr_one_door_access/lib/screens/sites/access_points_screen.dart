import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/widgets.dart';

class AccessPointsScreen extends StatefulWidget {
  const AccessPointsScreen({
    required this.doorAccessService,
    required this.siteId,
    super.key,
  });

  final DoorAccessService doorAccessService;
  final String siteId;

  @override
  State<AccessPointsScreen> createState() => _AccessPointsScreenState();
}

class _AccessPointsScreenState extends State<AccessPointsScreen> {
  late Future<List<AccessPoint>> _future;

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() {
    _future = widget.doorAccessService.accessPointsService
        .getAccessPointsWithoutExternalData(siteId: widget.siteId);
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
