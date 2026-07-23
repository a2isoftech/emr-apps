import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/my_calendar.dart/views/my_calendar_common.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:flutter/material.dart';

class MyCalendarWeb extends MyCalendarCommon {
  MyCalendarWeb({
    required super.config,
    super.key,
  });

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  Widget widgetBuilder(BuildContext context) {
    return Stack(
      children: [
        EmrCalendarMonthView(
          controller: calendarController,
        ),
        if (controller.isBusy) showSpinner(),
      ],
    );
  }

  @override
  Widget? getActionButton(BuildContext context) => ElevatedButton.icon(
        onPressed: controller.selectedDate == null
            ? null
            : () async {
                await context.pushNamed(
                  FormsRoutingName.createWorkOrder,
                  extra: controller.selectedDate,
                );

                await controller.loadJobs(yard.yardCode!);

                updateCalendarDataSource();
              },
        icon: const Icon(Icons.add),
        label: Text(context.l10n.create),
      );
}
