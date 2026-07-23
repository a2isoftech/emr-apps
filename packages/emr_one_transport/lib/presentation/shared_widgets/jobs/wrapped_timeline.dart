import 'package:flutter/material.dart';

/// Defines how wrapping is handled.
enum WrapMode {
  /// Automatically fit as many items as possible per row.
  auto,

  /// Use a fixed number of items per row.
  fixedCount,
}

/// Styles for the connector line.
enum ConnectorStyle { solid, dashed }

/// A highly configurable wrapped timeline widget.
///
/// Provides options to control layout, connector styling, item sizing,
/// scrolling behavior, animations, and appearance of start/end markers.
class WrappedTimeline<T> extends StatelessWidget {
  const WrappedTimeline({
    required this.items,
    required this.itemBuilder,
    super.key,
    this.spacing = 200.0,
    this.rowHeight = 160.0,
    this.perRow,
    this.wrapMode = WrapMode.auto,
    this.lineColor = Colors.grey,
    this.lineWidth = 2.0,
    this.cornerRadius = 12.0,
    this.dotRadius = 6.0,
    this.startDotColor = Colors.grey,
    this.endDotColor = Colors.grey,
    this.connectorStyle = ConnectorStyle.solid,
    this.tileWidth = 220.0,
    this.tileHeight = 100.0,
    this.tileMargin = const EdgeInsets.all(6),
    this.scrollDirection = Axis.vertical,
    this.showStartDot = true,
    this.showEndDot = true,
    this.connectorHorizontalPadding = 60,
  });

  /// The list of data items to display along the timeline.
  final List<T> items;

  /// Builds the widget for each data item.
  final Widget Function(BuildContext context, T item, int index) itemBuilder;

  /// Horizontal distance, in logical pixels, between the center points
  /// of adjacent items.
  /// Increasing this moves items further apart horizontally.
  final double spacing;

  /// Vertical distance, in logical pixels, between rows of wrapped items.
  /// Controls how much space appears between one horizontal run and the next.
  final double rowHeight;

  /// If [wrapMode] is [WrapMode.fixedCount], this is the exact number of items
  /// to place in each row. Ignored when [wrapMode] is [WrapMode.auto].
  final int? perRow;

  /// Controls wrapping behavior:
  /// - [WrapMode.auto]: automatically fit as many items as possible per row
  /// based on available width.
  /// - [WrapMode.fixedCount]: use [perRow] items per row, regardless of width.
  final WrapMode wrapMode;

  // ──────────────────────────────────────────────────────────────────────────

  /// Color of the timeline connector line.
  final Color lineColor;

  /// Stroke width, in logical pixels, of the connector line.
  final double lineWidth;

  /// Radius, in logical pixels, of the rounded corners when the line bends.
  final double cornerRadius;

  /// Radius, in logical pixels, of the start/end marker dots.
  final double dotRadius;

  /// Fill color of the start dot.
  final Color startDotColor;

  /// Fill color of the end dot.
  final Color endDotColor;

  /// Whether the connector line should be drawn solid or dashed.
  final ConnectorStyle connectorStyle;

  // ──────────────────────────────────────────────────────────────────────────

  /// Width, in logical pixels, of each item tile.
  final double tileWidth;

  /// Height, in logical pixels, of each item tile.
  final double tileHeight;

  /// External padding around each tile, e.g. to control spacing between items
  /// and surrounding background.
  final EdgeInsets tileMargin;

  // ───────────────────────────────────────────────────────────────────────────

  /// Whether the timeline scrolls vertically (default) or horizontally.
  final Axis scrollDirection;

  // ───────────────────────────────────────────────────────────────────────────

  // ───────────────────────────────────────────────────────────────────────────

  /// If true, draws a marker dot immediately before the first item.
  /// Can be disabled to start the line directly at the first tile.
  final bool showStartDot;

  /// If true, draws a marker dot immediately after the last item.
  /// Can be disabled to end the line at the final tile.
  final bool showEndDot;

  /// How many logical pixels beyond each tile’s center the
  /// connector (and start/end dots) should offset horizontally
  /// before bending or drawing the dot.
  final double connectorHorizontalPadding;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, bc) {
        // Determine items per row
        int countPerRow;
        if (wrapMode == WrapMode.fixedCount && perRow != null) {
          countPerRow = perRow!;
        } else {
          countPerRow = (bc.maxWidth / spacing).floor();
        }
        if (countPerRow < 1) countPerRow = 1;

        // Compute rows and total size
        final rowCount = (items.length + countPerRow - 1) ~/ countPerRow;
        final totalWidth = spacing * countPerRow;
        final totalHeight = rowHeight * rowCount;

        // Compute center positions for each item
        final centers = <Offset>[];
        final usedWidth = countPerRow * spacing;
        final startX = (bc.maxWidth - usedWidth) / 2;

        for (var i = 0; i < items.length; i++) {
          final row = i ~/ countPerRow;
          final col = i % countPerRow;
          final dx = startX + col * spacing + spacing / 2;
          final dy = row * rowHeight + rowHeight / 2;
          centers.add(Offset(dx, dy));
        }

        return SingleChildScrollView(
          scrollDirection: scrollDirection,
          child: SizedBox(
            width: scrollDirection == Axis.vertical ? bc.maxWidth : totalWidth,
            height:
                scrollDirection == Axis.vertical ? totalHeight : bc.maxHeight,
            child: Stack(
              children: [
                // Connector path
                CustomPaint(
                  size: Size(
                    scrollDirection == Axis.vertical ? bc.maxWidth : totalWidth,
                    scrollDirection == Axis.vertical
                        ? totalHeight
                        : bc.maxHeight,
                  ),
                  painter: _TimelinePainter(
                    centers: centers,
                    perRow: countPerRow,
                    rowHeight: rowHeight,
                    tileWidth: tileWidth,
                    spacing: spacing,
                    lineColor: lineColor,
                    lineWidth: lineWidth,
                    cornerRadius: cornerRadius,
                    dotRadius: dotRadius,
                    startDotColor: startDotColor,
                    endDotColor: endDotColor,
                    connectorStyle: connectorStyle,
                    showStartDot: showStartDot,
                    showEndDot: showEndDot,
                    connectorHorizontalPadding: connectorHorizontalPadding,
                  ),
                ),
                // Item widgets
                for (var i = 0; i < items.length; i++)
                  Positioned(
                    left: centers[i].dx - tileWidth / 2,
                    top: centers[i].dy - tileHeight / 2,
                    child: Padding(
                      padding: tileMargin,
                      child: SizedBox(
                        width: tileWidth,
                        height: tileHeight,
                        child: itemBuilder(ctx, items[i], i),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _TimelinePainter extends CustomPainter {
  const _TimelinePainter({
    required this.centers,
    required this.perRow,
    required this.rowHeight,
    required this.tileWidth,
    required this.spacing,
    required this.lineColor,
    required this.lineWidth,
    required this.cornerRadius,
    required this.dotRadius,
    required this.startDotColor,
    required this.endDotColor,
    required this.connectorStyle,
    required this.showStartDot,
    required this.showEndDot,
    required this.connectorHorizontalPadding,
  });
  final List<Offset> centers;
  final int perRow;
  final double rowHeight;
  final double spacing;

  final Color lineColor;
  final double lineWidth;
  final double cornerRadius;
  final double dotRadius;
  final Color startDotColor;
  final Color endDotColor;
  final ConnectorStyle connectorStyle;
  final bool showStartDot;
  final bool showEndDot;
  final double tileWidth;
  final double connectorHorizontalPadding;
  @override
  void paint(Canvas canvas, Size size) {
    if (centers.isEmpty) return;

    // 1) Paint setup
    final startDotPaint = Paint()
      ..color = startDotColor
      ..style = PaintingStyle.fill;

    final endDotPaint = Paint()
      ..color = endDotColor
      ..style = PaintingStyle.fill;

    final linePaint = Paint()
      ..color = lineColor
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke;

    // 2) Vertical nudge to center the stroke
    final shifted = centers.map((c) => Offset(c.dx, c.dy + 5)).toList();

    final midDrop = rowHeight / 2;
    final rowCount = (shifted.length + perRow - 1) ~/ perRow;

    // 3) Compute start/end dot positions
    final first = shifted.first;
    final startDot = Offset(
      first.dx - connectorHorizontalPadding,
      first.dy,
    );

    final last = shifted.last;
    final endDot = Offset(
      last.dx + connectorHorizontalPadding + dotRadius,
      last.dy,
    );

    // 4) Build the connector path
    final path = Path();
    if (showStartDot) {
      path.moveTo(startDot.dx, startDot.dy);
      path.lineTo(first.dx, first.dy);
    } else {
      path.moveTo(first.dx, first.dy);
    }

    for (var row = 0; row < rowCount; row++) {
      final startIndex = row * perRow;
      final endIndex = ((row + 1) * perRow).clamp(0, shifted.length);

      // a) Straight through this row’s items
      for (var j = startIndex + (row == 0 && showStartDot ? 1 : 0);
          j < endIndex;
          j++) {
        path.lineTo(shifted[j].dx, shifted[j].dy);
      }

      // b) Wrap‐connector to next row
      if (row < rowCount - 1) {
        final le = shifted[endIndex - 1];
        final ne = shifted[endIndex];
        final dropY = le.dy + midDrop;
        final pad = connectorHorizontalPadding;

        // 1) horizontal into place minus cornerRadius
        path.lineTo(le.dx + pad - cornerRadius, le.dy);

        // 2) arc from rightward → downward
        path.arcToPoint(
          Offset(le.dx + pad, le.dy + cornerRadius),
          radius: Radius.circular(cornerRadius),
        );

        // 3) vertical down to just before the next corner
        path.lineTo(le.dx + pad, dropY - cornerRadius);

        // 4) quarter‐circle bending left
        path.arcToPoint(
          Offset(le.dx + pad - cornerRadius, dropY),
          radius: Radius.circular(cornerRadius),
        );

        // 5) horizontal left to just before entering next row
        path.lineTo(ne.dx - pad + cornerRadius, dropY);

        // 6) quarter‐circle bending down into the row
        path.arcToPoint(
          Offset(ne.dx - pad, dropY + cornerRadius),
          radius: Radius.circular(cornerRadius),
          clockwise: false,
        );

        // 7) vertical drop to just before the final bend
        path.lineTo(ne.dx - pad, ne.dy - cornerRadius);

        // 8) quarter‐circle bending right into the next tile
        path.arcToPoint(
          Offset(ne.dx - pad + cornerRadius, ne.dy),
          radius: Radius.circular(cornerRadius),
          clockwise: false,
        );

        // 9) straight into the next item center
        path.lineTo(ne.dx, ne.dy);
      }
    }

    // 5) Optionally extend to the end dot
    if (showEndDot) {
      path.lineTo(endDot.dx, endDot.dy);
    }

    // 6) Dashed or solid
    final drawPath =
        connectorStyle == ConnectorStyle.dashed ? _dashPath(path) : path;

    // 7) Draw connector under dots
    canvas.drawPath(drawPath, linePaint);

    // 8) Draw start/end dots on top
    if (showStartDot) canvas.drawCircle(startDot, dotRadius, startDotPaint);
    if (showEndDot) canvas.drawCircle(endDot, dotRadius, endDotPaint);
  }

  Path _dashPath(Path source) {
    const dashWidth = 10.0;
    const dashSpace = 5.0;
    final metrics = source.computeMetrics();
    final dashed = Path();
    for (final metric in metrics) {
      double dist = 0;
      while (dist < metric.length) {
        dashed.addPath(metric.extractPath(dist, dist + dashWidth), Offset.zero);
        dist += dashWidth + dashSpace;
      }
    }
    return dashed;
  }

  @override
  bool shouldRepaint(covariant CustomPainter old) => false;
}
