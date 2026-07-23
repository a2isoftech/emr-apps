import 'package:flutter/material.dart';

/// Widget that measures its child's size and calls onChange callback
class MeasureSize extends StatefulWidget {
  const MeasureSize({required this.onChange, required this.child, super.key});

  final ValueChanged<Size> onChange;
  final Widget child;

  @override
  State<MeasureSize> createState() => _MeasureSizeState();
}

class _MeasureSizeState extends State<MeasureSize> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _measureSize();
      }
    });
  }

  void _measureSize() {
    if (!mounted) return;
    final renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox != null && mounted) {
      widget.onChange(renderBox.size);
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
