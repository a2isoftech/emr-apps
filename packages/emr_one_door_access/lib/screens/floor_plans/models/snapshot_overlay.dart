class SnapshotOverlay {
  SnapshotOverlay({
    required this.hotspotX,
    required this.hotspotY,
    required this.accessPointId,
    required this.imageUrl,
  });

  final String accessPointId;
  final String imageUrl;
  final double hotspotX;
  final double hotspotY;
}
