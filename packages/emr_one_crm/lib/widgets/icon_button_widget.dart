import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    required this.onPressed,
    required this.icon,
    this.padding,
    this.color,
    this.radius,
    super.key,
  });

  final void Function() onPressed;
  final IconData icon;
  final double? padding;
  final Color? color;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(padding ?? Insets.gutter / 2),
        decoration: ShapeDecoration(
          color: color ?? Theme.of(context).colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? Insets.gutter),
          ),
        ),
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.onSecondaryContainer,
        ),
      ),
    );
  }
}
