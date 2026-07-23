import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/scheduler/views/scheduler_common.dart';
import 'package:flutter/material.dart';

class SchedulerWeb extends SchedulerCommon {
  SchedulerWeb({super.key});

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: onRefresh,
        icon: Icon(Icons.refresh, color: FormAppColors.white),
      ),
      ...super.getActions(context),
    ];
  }

  @override
  Widget? getActionButton(BuildContext context) => ElevatedButton.icon(
        onPressed: () => onActionButtonPressed(context),
        icon: const Icon(Icons.add),
        label: Text(context.l10n.create),
      );
}
