import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

Widget emrListTile(
  BuildContext context, {
  required void Function() onTap,
  required bool isPressed,
  required String title,
  required String subtitle,
  required bool isDark,
}) {
  final pressedColour = Theme.of(context).colorScheme.tertiaryContainer;

  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ColoredBox(
        color: isPressed
            ? pressedColour
            : Theme.of(context).colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Transform.scale(
                scale: 1.4,
                child: Checkbox(
                  value: isPressed,
                  onChanged: (bool? value) {
                    onTap();
                  },
                ),
              ),
              const SizedBox(
                width: Insets.gutter,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isPressed
                          ? Colors.white
                          : Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 10,
                      color: isPressed
                          ? Colors.white
                          : Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
