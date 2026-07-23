import 'package:flutter/material.dart';

Color partBoxColor({
  required bool isSelected,
  required BuildContext context,
  bool dismantled = false,
}) {
  if (dismantled) {
    return Theme.of(context).primaryColorLight;
  }
  return isSelected
      ? Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.7)
      : Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.2);
}
