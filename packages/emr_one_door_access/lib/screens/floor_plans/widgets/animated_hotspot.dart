import 'package:flutter/material.dart';

class AnimatedHotspot extends StatefulWidget {
  const AnimatedHotspot({
    required this.color,
    required this.label,
    required this.onTap,
    required this.isInEditMode,
    super.key,
  });
  final Color color;
  final String label;
  final bool isInEditMode;
  final VoidCallback onTap;

  @override
  State<AnimatedHotspot> createState() => _AnimatedHotspotState();
}

class _AnimatedHotspotState extends State<AnimatedHotspot>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: 100, // fixed box ensures true centering
        height: 200,
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (widget.isInEditMode) ...{
              ///Ripple wave (CENTERED)
              AnimatedBuilder(
                animation: _controller,
                builder: (_, __) {
                  return Transform.scale(
                    scale: _controller.value,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.color.withValues(
                          alpha: 1 - _controller.value,
                        ),
                      ),
                    ),
                  );
                },
              ),
            },

            if (!widget.isInEditMode) ...{
              ///Center dot (ALWAYS FIXED)
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: widget.color,
                  shape: BoxShape.circle,
                ),
              ),
            },

            ///Label
            Positioned(
              child: Text(widget.label, style: const TextStyle(fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
