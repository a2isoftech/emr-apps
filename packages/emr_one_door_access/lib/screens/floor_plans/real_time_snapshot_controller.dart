import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/widgets.dart';

class RealTimeSnapshotController extends ChangeNotifier {
  RealTimeSnapshotController({required this.mediaService});

  final MediaService mediaService;
  List<Hotspot> hotspots = [];

  final List<SnapshotOverlay> snapshots = [];
  void startRealtime(List<Hotspot> hs) {
    hotspots = hs;
    DoorAccessRealtime.instance.bridge?.actions.addAll({
      'ViewFloorPlan': _handleNotification,
    });
  }

  void stopRealtime() {
    DoorAccessRealtime.instance.bridge?.actions.remove('ViewFloorPlan');
  }

  void _handleNotification(NotificationEvent event) {
    if (event.messageType == 'AccessPointSnapshot') {
      final hotspot = hotspots.firstWhereOrNull(
        (h) => h.accessPointId == event.message,
      );
      if (hotspot != null) {
        final snapshot = SnapshotOverlay(
          hotspotX: hotspot.x,
          hotspotY: hotspot.y,
          accessPointId: event.message,
          imageUrl: event.title,
        );

        snapshots.removeWhere((e) => e.accessPointId == snapshot.accessPointId);

        snapshots.add(snapshot);

        notifyListeners();

        Future.delayed(const Duration(seconds: 5), () {
          snapshots.remove(snapshot);

          notifyListeners();
        });
      }
    }
  }

  Future<Uint8List?> getImage(String url) async {
    return mediaService.getImage(url);
  }
}
