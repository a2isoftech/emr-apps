import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:flutter/material.dart';

class CardAddActionIntent extends Intent {
  const CardAddActionIntent({required this.context});

  final BuildContext context;
}

class CardAddAction extends EmrAction<CardAddActionIntent> {
  CardAddAction(
    BuildContext context, {
    required super.createIntent,
    required this.onAction,
    bool enabled = true,
  }) : super(icon: Icons.add, label: context.l10n.add) {
    super.actionEnabled.value = enabled;
  }

  final void Function() onAction;

  @override
  Object? invoke(
    covariant CardAddActionIntent intent, [
    BuildContext? context,
  ]) {
    onAction();

    return null;
  }
}
