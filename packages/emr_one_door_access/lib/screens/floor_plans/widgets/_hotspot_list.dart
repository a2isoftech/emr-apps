import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/screens/floor_plans/widgets/_assign_access_point_dialog.dart';
import 'package:emr_one_door_access/screens/floor_plans/widgets/_unlock_access_point_dialog.dart';
import 'package:flutter/material.dart';

class HotspotList extends StatelessWidget {
  const HotspotList({required this.controller, super.key});

  final FloorPlanController controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: controller.hotspots.isEmpty
          ? const Center(child: Text('No hotspots'))
          : ListView.builder(
              itemCount: controller.hotspots.length,
              itemBuilder: (context, index) {
                final h = controller.hotspots[index];

                return Card(
                  child: ListTile(
                    leading: Text('${index + 1}'),
                    title: Text(
                      h.name.isNotEmpty ? h.name : 'Hotspot ${index + 1}',
                    ),
                    trailing: controller.isInEditMode
                        ? Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  showDialog<void>(
                                    context: context,
                                    builder: (_) => AssignAccessPointDialog(
                                      controller: controller,
                                      hotspot: h,
                                    ),
                                  );
                                },
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  controller.removeHotspot(h.id);
                                },
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              ElevatedButton(
                                onPressed: h.status == HotspotStatus.restricted
                                    ? null
                                    : () {
                                        showDialog<void>(
                                          context: context,
                                          builder: (_) =>
                                              UnlockAccessPointDialog(
                                                controller: controller,
                                                hotspot: h,
                                              ),
                                        );
                                      },
                                child: const Text('Unlock'),
                              ),
                            ],
                          ),
                  ),
                );
              },
            ),
    );
  }
}
