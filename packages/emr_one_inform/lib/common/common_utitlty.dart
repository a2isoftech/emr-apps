import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:flutter/material.dart';

class CommonUtility {
  static IconData getIconDataForScheduleItemType(String? scheduleItemType) {
    switch (scheduleItemType) {
      case ScheduleItemType.Automatic:
        return Icons.schedule;
      case ScheduleItemType.Manual:
        return Icons.description_outlined;
      case ScheduleItemType.Linked:
        return Icons.insert_link;
      case ScheduleItemType.Workflow:
        return Icons.settings_suggest_outlined;
      case ScheduleItemType.WorkOrder:
        return Icons.work_history_outlined;
    }
    return Icons.work;
  }

  static int getJobPriority(String? jobPriority) {
    if (jobPriority == null) return 1;
    switch (jobPriority) {
      case JobPriority.Low:
        return 1;
      case JobPriority.Medium:
        return 2;
      case JobPriority.High:
        return 3;
      case JobPriority.Critical:
        return 4;
      case JobPriority.Urgent:
        return 5;
    }
    return 1;
  }

  static Widget iconForJobPriority(String? jobPriority) {
    var icon = Icon(
      Icons.arrow_downward,
      color: FormAppColors.success,
    );
    switch (jobPriority) {
      case JobPriority.Low:
        icon = Icon(
          Icons.arrow_downward,
          color: FormAppColors.information,
        );
      case JobPriority.Medium:
        icon = Icon(
          Icons.arrow_upward,
          color: FormAppColors.inProgress,
        );
      case JobPriority.High:
        icon = Icon(
          Icons.priority_high_sharp,
          color: FormAppColors.error,
        );
      case JobPriority.Critical:
        icon = Icon(
          Icons.keyboard_double_arrow_up,
          color: FormAppColors.error,
        );
      case JobPriority.Urgent:
        icon = Icon(Icons.block, color: FormAppColors.error);
    }
    return Tooltip(
      message: jobPriority,
      child: icon,
    );
  }
}
