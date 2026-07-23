import 'dart:math';

import 'package:emr_one_core/widgets/filter/triangle_painter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmrPopover extends StatefulWidget {
  EmrPopover({
    required this.targetKey,
    required this.contentBuilder,
    super.key,
    SizedBox Function()? closeButtonBuilder,
    EdgeInsets? padding,
    EdgeInsets? margin,
    double? maxWidth,
  }) {
    // Set defaults if values haven't been specified.
    this.closeButtonBuilder = closeButtonBuilder ?? _defaultCloseButtonBuilder;
    this.padding = padding ?? const EdgeInsets.all(16);
    this.margin = margin ?? const EdgeInsets.only(left: 12, right: 32);
    this.maxWidth = maxWidth ?? 320;
  }

  static Future<void> show({
    required BuildContext context,
    required GlobalKey<State<StatefulWidget>> targetKey,
    required Widget Function(BuildContext) contentBuilder,
    SizedBox Function()? closeButtonBuilder,
    EdgeInsets? padding,
    EdgeInsets? margin,
    double? maxWidth,
  }) async {
    final popover = EmrPopover(
      targetKey: targetKey,
      contentBuilder: contentBuilder,
      closeButtonBuilder: closeButtonBuilder,
      padding: padding,
      margin: margin,
      maxWidth: maxWidth,
    );

    await showDialog<void>(
      context: context,
      barrierColor: Colors.transparent,
      useSafeArea: false,
      builder: (dialogContext) => popover,
    );
  }

  final GlobalKey targetKey;

  final Widget Function(BuildContext context) contentBuilder;

  late final SizedBox Function()? closeButtonBuilder;

  // Padding is applied inside the popover.
  // Currently only `right` takes any effect.
  late final EdgeInsets padding;

  // Margin is applied outside the popover but only takes effect to add distance
  // between the popover and the edge of the screen when it would overflow.
  // Currently only `left` and `right` have any effect. If the close button is
  // shown then `right` should be sufficiently large so the button doesn't
  // overflow the screen width.
  late final EdgeInsets margin;

  /// The maximum width of the popover. On a small screen the width will be
  /// adjusted to fit.
  late final double maxWidth;

  @override
  State<EmrPopover> createState() => _EmrPopoverState();

  static SizedBox _defaultCloseButtonBuilder() => SizedBox(
        width: 28,
        height: 28,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: FaIcon(
                FontAwesomeIcons.circleXmark,
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
}

class _EmrPopoverState extends State<EmrPopover> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // Try to get the RenderBox of the target if we can.
    RenderBox? target;
    try {
      target =
          widget.targetKey.currentContext!.findRenderObject() as RenderBox?;
    } catch (ex) {
      // Ignore exceptions as we will exit the method if target is null.
    }

    if (target == null) {
      return const SizedBox();
    }

    // Get the position of the target for anchoring the popover.
    final globalPosition = target.localToGlobal(Offset.zero);

    // Get the screen size to know if the widget will go off the side.
    // We subtract Insets.gutter to give a bit of padding on the right.
    final screenSize = MediaQuery.of(context).size.width - widget.margin.right;

    // Adjust the width so the popover is never too wide for the screen.
    final width = min(widget.maxWidth, screenSize);

    // Calculate the overflow to shift the content onto the visible screen.
    final overflowX = globalPosition.dx + width - screenSize;
    final offsetX = min(overflowX * -1, 0);

    // Calculate dialogX, to keep the popover on the screen.
    final dialogX = max(widget.margin.left, globalPosition.dx + offsetX);

    final dialogY = globalPosition.dy + target.size.height;

    final theme = Theme.of(context);

    const arrowHeight = 16.0;

    final closeButton = widget.closeButtonBuilder?.call();

    return Stack(
      children: <Widget>[
        Positioned(
          left: dialogX,
          top: dialogY + arrowHeight,
          width: width,
          child: Material(
            color: theme.dialogTheme.backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            elevation: 2,
            child: Padding(
              padding: widget.padding,
              child: widget.contentBuilder(context),
            ),
          ),
        ),
        Positioned(
          width: target.size.width,
          left: globalPosition.dx,
          top: dialogY,
          child: Center(
            child: ClipRect(
              child: PhysicalShape(
                color: theme.dialogTheme.backgroundColor!,
                elevation: 2,
                clipper: TriangleClipper(),
                child: CustomPaint(
                  painter: TrianglePainter(
                    strokeColor: theme.dialogTheme.backgroundColor!,
                    strokeWidth: 10,
                    paintingStyle: PaintingStyle.fill,
                  ),
                  child: const SizedBox(
                    width: arrowHeight * 2,
                    height: arrowHeight,
                  ),
                ),
              ),
            ),
          ),
        ),
        if (closeButton != null)
          Positioned(
            top: dialogY + arrowHeight - (closeButton.height! / 2.0),
            left: dialogX + width - (closeButton.width! / 2.0),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: closeButton,
            ),
          ),
      ],
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
