import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/my_calendar.dart/views/my_calendar_common.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:flutter/material.dart';

class MyCalendarNative extends MyCalendarCommon {
  MyCalendarNative({
    required super.config,
    super.key,
  });

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget widgetBuilder(BuildContext context) {
    const calendarHeight = 338.0;

    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: calendarHeight,
          child: EmrCalendarMonthView(
            controller: calendarController,
          ),
        ),
        Positioned(
          top: calendarHeight,
          left: 0,
          right: 0,
          bottom: 0,
          child: EmrCalendarAgendaView(
            controller: agendaController,
            // Make sure the items are not hidden by the Floating Action Button.
            innerPadding: const EdgeInsets.only(
              bottom: Insets.gutter * 3,
            ),
          ),
        ),
        if (controller.isBusy) showSpinner(),
      ],
    );
  }

  @override
  Widget? getActionButton(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
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
      tooltip: 'Create',
      shape: const CircleBorder(),
      backgroundColor: controller.selectedDate == null
          ? FormAppColors.black
          : FormAppColors.success,
      child: Icon(
        Icons.add,
        color: FormAppColors.white,
      ),
    );
  }
}
