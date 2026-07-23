import 'package:emr_one_door_access/emr_one_door_access.dart';

class FloorPlan {
  FloorPlan({
    required this.id,
    required this.siteId,
    required this.name,
    required this.imageUrl,
    required this.createdOn,
    required this.hotspots,
  });

  final String id;
  final String siteId;
  final String name;
  final String imageUrl;
  final DateTime createdOn;
  final List<Hotspot> hotspots;
}
