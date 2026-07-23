import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardRow extends StatelessWidget {
  const CardRow({
    required this.largePadding,
    required this.color,
    required this.children,
    super.key,
    this.borderColor,
  });

  final EdgeInsets largePadding;
  final Color color;
  final List<Widget> children;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border:
                  borderColor == null ? null : Border.all(color: borderColor!),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              color: color,
            ),
            child: Padding(
              padding: largePadding,
              child: Column(
                children: children,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
