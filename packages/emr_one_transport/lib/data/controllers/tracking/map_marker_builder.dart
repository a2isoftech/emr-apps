import 'dart:ui' as ui;

import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// Utility for creating custom map markers with icons and text labels.
class MapMarkerBuilder {
  MapMarkerBuilder._(); // Private constructor - static methods only

  /// Creates a marker icon with a Material icon and optional text label.
  ///
  /// Parameters:
  /// - [icon]: Material icon to use (e.g., Icons.location_on, Icons.flag)
  /// - [fillColor]: Primary color for the icon
  /// - [outlineColor]: Outline color for contrast
  /// - [label]: Optional text label
  /// - [trimLength]: Max label length; trims to last N chars. Null = no trim.
  /// - [labelFontSize]: Font size for label (default 10)
  /// - [labelFontWeight]: Font weight for label (default w500)
  /// - [iconFontSize]: Size of the Material icon (default 45)
  /// - [canvasWidth]: Width of the canvas (default 40)
  /// - [canvasHeight]: Height of the canvas (default 60)
  /// - [iconYOffset]: Y offset from bottom for icon positioning (default 1)
  static Future<BitmapDescriptor> createMarkerIcon({
    required IconData icon,
    required Color fillColor,
    required Color outlineColor,
    String? label,
    int? trimLength = Constants.defaultMarkerLabelTrimLength,
    double labelFontSize = 10,
    FontWeight labelFontWeight = FontWeight.w500,
    double iconFontSize = 45,
    double canvasWidth = 40,
    double canvasHeight = 60,
    double iconYOffset = 1,
  }) async {
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);

    // Render icon with outline effect (first, so label appears on top)
    _renderIconWithOutline(
      canvas: canvas,
      icon: icon,
      fillColor: fillColor,
      outlineColor: outlineColor,
      fontSize: iconFontSize,
      canvasWidth: canvasWidth,
      canvasHeight: canvasHeight,
      yOffset: iconYOffset,
    );

    // Render label if provided (last, so it's visible over icon)
    if (label != null && label.isNotEmpty) {
      _renderLabel(
        canvas: canvas,
        label: label,
        trimLength: trimLength,
        fontSize: labelFontSize,
        fontWeight: labelFontWeight,
        maxWidth: canvasWidth,
      );
    }

    // Convert to BitmapDescriptor
    return _convertToBitmap(
      recorder: recorder,
      width: canvasWidth,
      height: canvasHeight,
    );
  }

  /// Renders text label with dark background pill
  static void _renderLabel({
    required Canvas canvas,
    required String label,
    required double fontSize,
    required FontWeight fontWeight,
    required double maxWidth,
    int? trimLength,
  }) {
    // Show last N characters if trimming enabled (end is more unique for VRMs)
    final displayText = trimLength != null && label.length > trimLength
        ? label.substring(label.length - trimLength)
        : label;

    final textStyle = TextStyle(
      color: TransportAppColors.whiteTextColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );

    final textPainter = TextPainter(
      text: TextSpan(text: displayText, style: textStyle),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(maxWidth: maxWidth - 2);

    const textX = 2.0;
    const textY = 2.0;

    // Dark background pill
    final bgRect = RRect.fromRectAndRadius(
      Rect.fromLTWH(
        textX - 2,
        textY - 1,
        textPainter.width + 4,
        textPainter.height + 2,
      ),
      const Radius.circular(3),
    );

    canvas.drawRRect(
      bgRect,
      Paint()
        ..color = TransportAppColors.labelPillBackgroundColor
        ..style = PaintingStyle.fill,
    );

    textPainter.paint(canvas, const Offset(textX, textY));
  }

  /// Renders icon with outline effect (draw at ±1px offsets)
  static void _renderIconWithOutline({
    required Canvas canvas,
    required IconData icon,
    required Color fillColor,
    required Color outlineColor,
    required double fontSize,
    required double canvasWidth,
    required double canvasHeight,
    required double yOffset,
  }) {
    final iconText = String.fromCharCode(icon.codePoint);

    // Create outline painter
    final outlinePainter = TextPainter(
      text: TextSpan(
        text: iconText,
        style: TextStyle(
          color: outlineColor,
          fontSize: fontSize,
          fontFamily: icon.fontFamily,
          package: icon.fontPackage,
          fontWeight: FontWeight.w900,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    // Position icon centered horizontally, anchored at bottom
    final iconX = canvasWidth / 2 - outlinePainter.width / 2;
    final iconY = canvasHeight - outlinePainter.height - yOffset;

    // Draw outline at ±1px offsets
    for (var i = -1; i <= 1; i++) {
      for (var j = -1; j <= 1; j++) {
        if (i != 0 || j != 0) {
          outlinePainter.paint(canvas, Offset(iconX + i, iconY + j));
        }
      }
    }

    // Draw filled icon on top
    final fillPainter = TextPainter(
      text: TextSpan(
        text: iconText,
        style: TextStyle(
          color: fillColor,
          fontSize: fontSize,
          fontFamily: icon.fontFamily,
          package: icon.fontPackage,
          fontWeight: FontWeight.w900,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    fillPainter.paint(canvas, Offset(iconX, iconY));
  }

  /// Converts Picture to platform-appropriate BitmapDescriptor
  static Future<BitmapDescriptor> _convertToBitmap({
    required ui.PictureRecorder recorder,
    required double width,
    required double height,
  }) async {
    final picture = recorder.endRecording();
    final image = await picture.toImage(width.toInt(), height.toInt());
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    final bytesList = bytes!.buffer.asUint8List();

    // Platform-specific sizing:
    // - Web: width/height are PHYSICAL pixels
    // - Mobile: width/height are LOGICAL pixels
    if (kIsWeb) {
      return BytesMapBitmap(bytesList, width: width, height: height);
    } else {
      return BytesMapBitmap(
        bytesList,
        width: width / 3, // ~10-13 logical pixels
        height: height / 3, // ~17-20 logical pixels
      );
    }
  }
}
