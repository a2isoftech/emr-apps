import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:flutter/material.dart';

class SelectorButtonHelper {
  static OutlinedButton create({
    required BuildContext context,
    required Widget child,
    void Function()? onPressed,
    bool selected = false,
    bool error = false,
  }) =>
      OutlinedButton(
        onPressed: onPressed,
        style: selected
            ? OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: EmrColours.primaryBlue,
                side: const BorderSide(color: EmrColours.primaryBlue),
              )
            : error
                ? OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.red),
                  )
                : OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
        child: child,
      );
}
