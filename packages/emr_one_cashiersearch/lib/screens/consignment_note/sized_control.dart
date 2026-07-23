import 'package:flutter/material.dart';

class SizedControl extends StatelessWidget {
  const SizedControl({
    required this.child,
    this.height,
    this.flex,
    super.key,
  });

  final Widget child;
  final double? height;
  final int? flex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: SizedBox(
        height: height ?? 110,
        child: child,
      ),
    );
  }
}
