import 'package:flutter/material.dart';

enum EmrActionControlType {
  iconButton,
  button,
}

abstract class EmrAction<T extends Intent> extends ContextAction<T> {
  EmrAction({
    required this.createIntent,
    required this.label,
    this.icon = Icons.help,
    this.isContextual = false,
    this.controlType = EmrActionControlType.iconButton,
    this.isPrimary = false,
  }) : assert(
          !(isPrimary && isContextual),
          'Cannot set both isPrimary and isContextual to true.',
        );

  final bool isPrimary;
  final T Function(BuildContext context) createIntent;
  final IconData icon;
  final String label;
  final ValueNotifier<bool> actionEnabled = ValueNotifier<bool>(true);
  final bool isContextual;
  final EmrActionControlType controlType;

  @override
  bool get isActionEnabled => callingAction?.isActionEnabled ?? false;

  @override
  bool isEnabled(T intent, [BuildContext? context]) => actionEnabled.value;

  @override
  Object? invoke(T intent, [BuildContext? context]) =>
      throw UnimplementedError();
}
