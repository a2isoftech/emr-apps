import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:flutter/material.dart';

class AddFab extends StatelessWidget {
  const AddFab({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const circleFabBorder = CircleBorder();
    return Material(
      color: EmrColours.primaryGreen,
      elevation: 2,
      shape: circleFabBorder,
      child: InkWell(
        onTap: onPressed,
        customBorder: circleFabBorder,
        child: SizedBox(
          height: 56,
          width: 56,
          child: Center(
            child: Icon(
              Icons.add,
              color: theme.colorScheme.onSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
