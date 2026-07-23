import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:flutter/material.dart';

class CardEditActionIntent extends Intent {
  const CardEditActionIntent({required this.context});

  final BuildContext context;
}

class CardEditAction extends EmrAction<CardEditActionIntent> {
  CardEditAction(
    BuildContext context, {
    required super.createIntent,
    required this.onAction,
    bool enabled = true,
  }) : super(icon: Icons.edit, label: context.l10n.edit) {
    super.actionEnabled.value = enabled;
  }

  final void Function() onAction;

  @override
  Object? invoke(
    covariant CardEditActionIntent intent, [
    BuildContext? context,
  ]) {
    onAction();

    return null;
  }
}
