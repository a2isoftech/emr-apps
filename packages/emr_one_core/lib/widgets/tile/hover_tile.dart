import 'package:flutter/material.dart';

class EOHoverTile extends StatefulWidget {
  const EOHoverTile({
    required this.child,
    super.key,
    this.onTap,
  });

  final Widget child;
  final void Function()? onTap;

  @override
  State<EOHoverTile> createState() => _EOHoverTileState();
}

class _EOHoverTileState extends State<EOHoverTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animationTween;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 30),
      vsync: this,
    );
    _animationTween =
        Tween<double>(begin: 0, end: 1).animate(_animationController);
    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _animationController.forward();
        });
      },
      onExit: (_) {
        setState(() {
          _animationController.reverse();
        });
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Card(
          child: Transform.scale(
            scale: 1.0 + (_animationTween.value * 0.05),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
