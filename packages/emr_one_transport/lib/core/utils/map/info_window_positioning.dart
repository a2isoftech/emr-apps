import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/data/models/tracking/marker_screen_position.dart';

/// Represents screen position coordinates for an info window.
class InfoWindowPosition {
  const InfoWindowPosition({
    required this.left,
    required this.top,
  });

  final double left;
  final double top;
}

/// Calculates the position for an info window above a map marker.
///
/// The info window is positioned:
/// - Vertically: Above the marker's top edge,
///   accounting for arrow and gap
/// - Horizontally: Centered on the marker's anchor point,
///   clamped to screen edges
///
/// Parameters:
/// - [markerPosition]: The screen position data for the marker
/// - [screenWidth]: Total width of the map container
/// - [infoWindowHeight]: Measured or default height of the info window
/// - [infoWindowWidth]: Width of the info window
///   (defaults to Constants value)
/// - [arrowHeight]: Height of the info window's arrow
///   (defaults to Constants value)
/// - [padding]: Screen edge padding (defaults to Constants value)
/// - [gapBetweenWindowAndMarker]: Gap between window and marker
///   (defaults to Constants value)
///
/// Returns an [InfoWindowPosition] with calculated left and top values.
InfoWindowPosition calculateInfoWindowPosition({
  required MarkerScreenPosition markerPosition,
  required double screenWidth,
  required double infoWindowHeight,
  double? infoWindowWidth,
  double? arrowHeight,
  double? padding,
  double? gapBetweenWindowAndMarker,
}) {
  final width = infoWindowWidth ?? Constants.infoWindowWidth;
  final arrow = arrowHeight ?? Constants.infoWindowArrowHeight;
  final pad = padding ?? Constants.infoWindowPadding;
  final gap = gapBetweenWindowAndMarker ??
      Constants.infoWindowGapBetweenWindowAndMarker;

  // Position info window above the marker icon
  // markerTop is the top edge of the marker icon
  final top = markerPosition.markerTop - infoWindowHeight - arrow - gap;

  // Center horizontally on the anchor point (bottom-center of marker)
  var left = markerPosition.pixelX - (width / 2);

  // Clamp to screen edges with padding
  left = left.clamp(pad, screenWidth - width - pad);

  return InfoWindowPosition(left: left, top: top);
}
