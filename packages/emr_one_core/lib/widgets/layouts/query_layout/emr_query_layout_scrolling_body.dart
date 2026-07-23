import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// A widget that has a scrolling body, with a leading widget that slides
/// off the screen as the user scrolls. When the user scrolls the reverse
/// direction the leading widget slides back in.
class EmrQueryLayoutScrollingBody extends StatefulWidget {
  const EmrQueryLayoutScrollingBody({
    required this.scrollController,
    required this.leading,
    required this.leadingHeight,
    required this.body,
    required this.trailing,
    required this.trailingHeight,
    this.enableAnimation = true,
    this.isTrailingInline = false,
    super.key,
  });

  /// When animations are enabled, the leading and trailing widgets will slide
  /// out / in as the user scrolls the body.
  final bool enableAnimation;

  final ScrollController scrollController;

  final Widget leading;

  final double leadingHeight;

  final Widget body;

  final Widget trailing;

  final double trailingHeight;

  final bool isTrailingInline;

  @override
  State<EmrQueryLayoutScrollingBody> createState() =>
      _EmrQueryLayoutScrollingBodyState();
}

class _EmrQueryLayoutScrollingBodyState
    extends State<EmrQueryLayoutScrollingBody> with TickerProviderStateMixin {
  late final AnimationController _animationController;

  final _animationDuration = const Duration(milliseconds: 250);

  static const double _visible = 0;

  static const double _hidden = 1;

  double _lastTarget = _visible;

  bool _isAtTheEnd = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this);

    if (widget.enableAnimation) {
      widget.scrollController.addListener(_onScroll);
    }
  }

  @override
  void dispose() {
    if (widget.enableAnimation) {
      widget.scrollController.removeListener(_onScroll);
    }

    _animationController.dispose();

    super.dispose();
  }

  Future<void> _onScroll() async {
    // If we've scrolled past the min or max scroll extents, don't do anything.
    // This happens when the scrollable is overscrolled on iOS.
    if (widget.scrollController.offset <
        widget.scrollController.position.minScrollExtent) {
      return;
    }

    if (widget.scrollController.offset >
        widget.scrollController.position.maxScrollExtent) {
      return;
    }

    if (!_animationController.isAnimating) {
      // Show the leading & trailing widgets when the user is at the end.
      if (widget.scrollController.position.userScrollDirection ==
              ScrollDirection.reverse &&
          widget.scrollController.offset ==
              widget.scrollController.position.maxScrollExtent) {
        _isAtTheEnd = true;
        // Clear the flag when the user scrolls up a short distance.
      } else if (_isAtTheEnd &&
          widget.scrollController.position.userScrollDirection ==
              ScrollDirection.forward &&
          widget.scrollController.offset <
              widget.scrollController.position.maxScrollExtent -
                  widget.trailingHeight) {
        _isAtTheEnd = false;
        // Also clear the flag when the user is at the top, such as when we
        // change page and auto-scroll to the top.
      } else if (_isAtTheEnd && widget.scrollController.offset == 0) {
        _isAtTheEnd = false;
      }

      final target = _isAtTheEnd
          ? _visible
          : widget.scrollController.position.userScrollDirection ==
                  ScrollDirection.reverse
              ? _hidden
              : _visible;

      // Only animate when the target value has changed.
      if (target != _lastTarget && !_animationController.isAnimating) {
        _lastTarget = target;

        await _animationController.animateTo(
          target,
          duration: _animationDuration,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, boxConstraints) {
          final containerHeight = boxConstraints.maxHeight;

          return Stack(
            children: [
              // The leading widget.
              PositionedTransition(
                rect: RelativeRectTween(
                  begin: RelativeRect.fromLTRB(
                    0,
                    0,
                    0,
                    containerHeight - widget.leadingHeight,
                  ),
                  end: RelativeRect.fromLTRB(
                    0,
                    widget.leadingHeight * -1,
                    0,
                    containerHeight,
                  ),
                ).animate(
                  CurvedAnimation(
                    parent: _animationController,
                    curve: Curves.linear,
                  ),
                ),
                child: widget.leading,
              ),
              // The body.
              PositionedTransition(
                rect: RelativeRectTween(
                  begin: RelativeRect.fromLTRB(
                    0,
                    widget.leadingHeight,
                    0,
                    widget.trailingHeight,
                  ),
                  end: RelativeRect.fill,
                ).animate(
                  CurvedAnimation(
                    parent: _animationController,
                    curve: Curves.linear,
                  ),
                ),
                child: widget.body,
              ),
              if (widget.isTrailingInline)
                Positioned(
                  bottom: Insets.gutter / 2,
                  left: 0,
                  right: 0,
                  child: Center(child: widget.trailing),
                ),
              if (!widget.isTrailingInline)
                // The trailing widget.
                PositionedTransition(
                  rect: RelativeRectTween(
                    begin: RelativeRect.fromLTRB(
                      0,
                      containerHeight - widget.trailingHeight,
                      0,
                      0,
                    ),
                    end: RelativeRect.fromLTRB(
                      0,
                      containerHeight,
                      0,
                      widget.trailingHeight * -1,
                    ),
                  ).animate(
                    CurvedAnimation(
                      parent: _animationController,
                      curve: Curves.linear,
                    ),
                  ),
                  child: widget.trailing,
                ),
            ],
          );
        },
      );
}
