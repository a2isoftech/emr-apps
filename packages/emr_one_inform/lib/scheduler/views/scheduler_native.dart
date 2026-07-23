import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/scheduler/views/scheduler_common.dart';
import 'package:flutter/material.dart';

class SchedulerNative extends SchedulerCommon {
  SchedulerNative({super.key});

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
      onPressed: () => onActionButtonPressed(context),
      tooltip: 'Create',
      shape: const CircleBorder(),
      child: Icon(
        Icons.add,
        color: FormAppColors.white,
      ),
    );
  }
}
