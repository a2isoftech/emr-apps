import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class LabeledBox extends StatelessWidget {
  const LabeledBox({
    required this.child,
    required this.labelText,
    super.key,
  });

  final Widget child;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<EmrScaleTheme>();
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(theme!.contentPadding),
          padding: EdgeInsets.all(theme.contentPadding),
          decoration: BoxDecoration(
            border: Border.all(
              width: theme.borderWidth,
              color: theme.borderColor ?? const Color(0xFF000000),
            ),
            borderRadius: BorderRadius.circular(theme.borderRadius),
          ),
          child: child,
        ),
        Positioned(
          left: theme.labelPositionLeft,
          top: theme.contentPadding * -1,
          child: Container(
            padding: EdgeInsets.only(
              left: theme.contentPadding,
              right: theme.contentPadding,
            ),
            color: Theme.of(context).colorScheme.surface,
            child: Text(
              labelText,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
