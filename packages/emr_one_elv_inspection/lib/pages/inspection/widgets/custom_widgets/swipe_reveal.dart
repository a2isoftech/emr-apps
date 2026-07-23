import 'dart:math' as math;

import 'package:flutter/material.dart';

class SwipeReveal extends StatefulWidget {
  const SwipeReveal({
    required this.child,
    required this.action,
    super.key,
    this.actionWidth = 72,
    this.onActionTap,
    this.threshold = 0.4,
  });
  final Widget child;
  final Widget action;
  final double actionWidth;
  final VoidCallback? onActionTap;
  final double threshold;

  @override
  State<SwipeReveal> createState() => _SwipeRevealState();
}

class _SwipeRevealState extends State<SwipeReveal>
    with SingleTickerProviderStateMixin {
  late final AnimationController _anim;
  double _translate = 0;
  double _dragStartTranslate = 0;

  @override
  void initState() {
    super.initState();
    _anim = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );
  }

  @override
  void dispose() {
    _anim.dispose();
    super.dispose();
  }

  void _animateTo(double target) {
    final start = _translate;
    final animation = Tween<double>(begin: start, end: target).animate(
      CurvedAnimation(parent: _anim, curve: Curves.easeOut),
    );

    void listener() {
      setState(() => _translate = animation.value);
    }

    _anim.removeListener(listener);
    _anim.addListener(listener);

    _anim.forward(from: 0);
  }

  double _clampTranslate(double value) {
    final maxLeft = -widget.actionWidth;
    if (value < maxLeft - 40) {
      return maxLeft -
          40 -
          (40 * (1 - math.exp((value - (maxLeft - 40)) / 40)));
    }
    if (value < maxLeft) return maxLeft;
    if (value > 0) return 0;
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onHorizontalDragStart: (details) {
            _dragStartTranslate = _translate;
            _anim.stop();
          },
          onHorizontalDragUpdate: (details) {
            var next = _dragStartTranslate + details.delta.dx;
            next = _clampTranslate(next);
            setState(() {
              _translate = next;
            });
            _dragStartTranslate = _translate;
          },
          onHorizontalDragEnd: (details) {
            final vx = details.velocity.pixelsPerSecond.dx;

            if (vx < -300) {
              _animateTo(-widget.actionWidth);
              return;
            }

            if (vx > 300) {
              _animateTo(0);
              return;
            }

            final progress = _translate.abs() / widget.actionWidth;

            if (progress >= widget.threshold) {
              _animateTo(-widget.actionWidth);
            } else {
              _animateTo(0);
            }
          },
          onTap: () {
            if (_translate != 0) _animateTo(0);
          },
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: widget.actionWidth,
                    height: constraints.maxHeight,
                    child: InkWell(
                      onTap: () {
                        widget.onActionTap?.call();
                        _animateTo(0);
                      },
                      child: widget.action,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(_translate, 0),
                child: widget.child,
              ),
            ],
          ),
        );
      },
    );
  }
}
