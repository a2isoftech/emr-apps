import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/widgets/base_page.dart';
import 'package:flutter/widgets.dart';

class FloorPlansScreen extends StatefulWidget {
  const FloorPlansScreen({
    required this.floorPlanController,
    required this.siteId,
    super.key,
  });

  final FloorPlanController floorPlanController;
  final String siteId;

  @override
  State<FloorPlansScreen> createState() => _FloorPlansScreenState();
}

class _FloorPlansScreenState extends State<FloorPlansScreen> {
  late Future<List<FloorPlan>> _future;

  @override
  void initState() {
    super.initState();
    _loadFloorPlans();
  }

  void _loadFloorPlans() {
    _future = widget.floorPlanController.doorAccessService.sitesService
        .getFloorPlans(widget.siteId);
  }

  Future<void> _refresh() async {
    setState(_loadFloorPlans);
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      signalRService: DoorAccessRealtime.instance.service,
      child: FutureBuilder<List<FloorPlan>>(
        future: _future,
        builder: (BuildContext ctx, AsyncSnapshot<List<FloorPlan>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.data != null) {
            return FloorPlansGrid(
              floorPlanController: widget.floorPlanController,
              siteId: widget.siteId,
              floorPlans: snapshot.data!,
              onRefresh: _refresh,
            );
          }

          return processingIndicator();
        },
      ),
    );
  }
}
