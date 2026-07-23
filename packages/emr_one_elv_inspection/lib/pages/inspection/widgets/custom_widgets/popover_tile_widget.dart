import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class PopoverTile extends StatefulWidget {
  const PopoverTile({
    required this.leading,
    required this.title,
    required this.child,
    super.key,
    this.horizontalMargin = Insets.gutter / 2,
    this.verticalMargin = Insets.gutter / 2,
    this.borderRadius = Insets.gutter / 2,
    this.elevation = Insets.gutter / 2,
    this.backgroundColor,
    this.showArrow = true,
  });
  final Widget leading;
  final Widget title;
  final Widget child;
  final double horizontalMargin;
  final double verticalMargin;
  final double borderRadius;
  final double elevation;
  final Color? backgroundColor;
  final bool showArrow;

  @override
  State<PopoverTile> createState() => _PopoverTileState();
}

class _PopoverTileState extends State<PopoverTile>
    with TickerProviderStateMixin {
  final LayerLink _layerLink = LayerLink();
  final GlobalKey _tileKey = GlobalKey();
  OverlayEntry? _entry;
  bool _isOpen = false;

  @override
  void dispose() {
    _removeEntry();
    super.dispose();
  }

  void _removeEntry() {
    _entry?.remove();
    _entry = null;
    _isOpen = false;
  }

  void _toggle() {
    if (_isOpen) {
      _removeEntry();
      setState(() {});
    } else {
      _showPopover();
    }
  }

  void _showPopover() {
    final tileBox = _tileKey.currentContext!.findRenderObject()! as RenderBox;
    final tileSize = tileBox.size;
    final tileTopLeft = tileBox.localToGlobal(Offset.zero);
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final spaceBelow = screenHeight - tileTopLeft.dy - tileSize.height;
    final spaceAbove = tileTopLeft.dy;

    final preferBelow = spaceBelow >= 120 || spaceBelow >= spaceAbove;

    final availableHeight =
        (preferBelow ? spaceBelow : spaceAbove) - widget.verticalMargin;
    final maxHeight = availableHeight.clamp(80.0, screenHeight * 0.85);

    final maxWidth =
        (screenWidth - (widget.horizontalMargin * 2)).clamp(100.0, screenWidth);

    // follower offset (place popover below or above tile)
    final followerOffset = preferBelow
        ? Offset(0, tileSize.height + widget.verticalMargin)
        : Offset(0, -widget.verticalMargin);

    // prevent overflow to the right: compute left correction if necessary
    final tileLeft = tileTopLeft.dx;
    final desiredLeft = tileLeft;
    final rightOverflow =
        (desiredLeft + tileSize.width + widget.horizontalMargin) - screenWidth;
    final leftCorrection = rightOverflow > 0 ? -rightOverflow : 0.0;

    // animation controller for subtle fade & scale
    final animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 160),
    );
    final Animation<double> fade =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    final scale = Tween<double>(begin: 0.96, end: 1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOutBack,
      ),
    );

    _entry = OverlayEntry(
      builder: (context) {
        final bgColor = widget.backgroundColor ??
            Theme.of(context).colorScheme.surfaceContainerHighest;
        return Positioned.fill(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              animationController.reverse().then((_) {
                animationController.dispose();
                _removeEntry();
                setState(() {});
              });
            },
            child: Stack(
              children: [
                CompositedTransformFollower(
                  link: _layerLink,
                  showWhenUnlinked: false,
                  offset: followerOffset + Offset(leftCorrection, 0),
                  child: FadeTransition(
                    opacity: fade,
                    child: ScaleTransition(
                      scale: scale,
                      alignment: preferBelow
                          ? Alignment.topLeft
                          : Alignment.bottomLeft,
                      child: Material(
                        elevation: widget.elevation,
                        color: Colors.transparent,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            // The popover card
                            Container(
                              width: tileSize.width.clamp(100.0, maxWidth),
                              constraints: BoxConstraints(
                                maxHeight: maxHeight,
                              ),
                              decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius:
                                    BorderRadius.circular(widget.borderRadius),
                                boxShadow: [
                                  BoxShadow(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .shadow
                                        .withAlpha(31),
                                    blurRadius: widget.elevation,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(widget.borderRadius),
                                child: SingleChildScrollView(
                                  physics: const ClampingScrollPhysics(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                      Insets.gutter / 1.5,
                                    ),
                                    child: widget.child,
                                  ),
                                ),
                              ),
                            ),

                            // optional arrow (triangle)
                            if (widget.showArrow)
                              Positioned(
                                left: Insets.gutter,
                                top: preferBelow ? -(Insets.gutter / 2) : null,
                                bottom:
                                    preferBelow ? null : -(Insets.gutter / 2),
                                child: Transform.rotate(
                                  angle: preferBelow ? 0 : 3.14159,
                                  child: CustomPaint(
                                    size: const Size(
                                      Insets.gutter,
                                      Insets.gutter / 2,
                                    ),
                                    painter: _TrianglePainter(color: bgColor),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    Overlay.of(context).insert(_entry!);
    animationController.forward();
    setState(() => _isOpen = true);

    void disposeControllerIfNeeded() {
      if (_entry == null || !_isOpen) {
        try {
          animationController.dispose();
        } catch (_) {}
      }
    }

    // keep a small periodic check until overlay removed (safe cleanup)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_entry != null) {
        // schedule a small delayed check
        Future<void>.delayed(const Duration(milliseconds: 300))
            .then((_) => disposeControllerIfNeeded());
      } else {
        disposeControllerIfNeeded();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = widget.borderRadius;
    return CompositedTransformTarget(
      link: _layerLink,
      child: Container(
        key: _tileKey,
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.gutter / 1.5,
          vertical: Insets.gutter / 2,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(border),
        ),
        child: InkWell(
          onTap: _toggle,
          borderRadius: BorderRadius.circular(border),
          child: Row(
            children: [
              Center(
                child: widget.leading,
              ),
              const SizedBox(width: Insets.gutter / 2),
              Expanded(
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                  child: widget.title,
                ),
              ),
              Icon(
                _isOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TrianglePainter extends CustomPainter {
  _TrianglePainter({required this.color});
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _TrianglePainter oldDelegate) =>
      oldDelegate.color != color;
}
