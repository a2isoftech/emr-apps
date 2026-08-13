import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/screens/floor_plans/widgets/hotspot_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloorPlanEditorMobile extends StatelessWidget {
  const FloorPlanEditorMobile({
    required this.controller,
    required this.floorPlan,
    super.key,
  });

  final FloorPlanController controller;
  final FloorPlan? floorPlan;

  Future<FloorPlan?> _load() async {
    try {
      if (floorPlan != null) {
        await controller.setFloorPlan(floorPlan!, isInEditMode: false);
      }
    } catch (err) {
      debugPrint(err.toString());
    }
    return floorPlan;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _load(),
      builder: (BuildContext ctx, AsyncSnapshot<FloorPlan?> snapshot) {
        if (ConnectionState.done == snapshot.connectionState) {
          return ChangeNotifierProvider.value(
            value: controller,
            child: Consumer<FloorPlanController>(
              builder: (context, controller, child) {
                return HotspotList(controller: controller);
              },
            ),
          );
        }
        return processingIndicator();
      },
    );
  }
}
