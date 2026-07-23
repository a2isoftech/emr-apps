/// Represents screen position and visual bounds of a map marker.
class MarkerScreenPosition {
  const MarkerScreenPosition({
    required this.anchorX,
    required this.anchorY,
    required this.pixelX,
    required this.pixelY,
    required this.markerTop,
    required this.markerBottom,
    required this.markerLeft,
    required this.markerRight,
  });

  /// Normalized X of anchor (0-1).
  final double anchorX;

  /// Normalized Y of anchor (0-1).
  final double anchorY;

  /// Pixel X of anchor.
  final double pixelX;

  /// Pixel Y of anchor.
  final double pixelY;

  /// Pixel Y of marker top edge.
  final double markerTop;

  /// Pixel Y of marker bottom edge.
  final double markerBottom;

  /// Pixel X of marker left edge.
  final double markerLeft;

  /// Pixel X of marker right edge.
  final double markerRight;
}
