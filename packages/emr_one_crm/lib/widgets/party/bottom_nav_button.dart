import 'package:flutter/material.dart';

class BottomNavButton extends StatelessWidget {
  const BottomNavButton({
    required this.label,
    super.key,
    this.icon,
    this.colour,
    this.onPressed,
  });

  final Icon? icon;
  final Widget label;
  final Color? colour;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const circleFabBorder = CircleBorder();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null)
          Material(
            color: colour ?? theme.colorScheme.secondary,
            shape: circleFabBorder,
            child: InkWell(
              onTap: onPressed,
              customBorder: circleFabBorder,
              child: Column(
                children: [
                  SizedBox(
                    height: 28,
                    width: 28,
                    child: Center(
                      child: icon,
                    ),
                  ),
                ],
              ),
            ),
          ),
        InkWell(
          onTap: onPressed,
          child: label,
        ),
      ],
    );
  }
}
