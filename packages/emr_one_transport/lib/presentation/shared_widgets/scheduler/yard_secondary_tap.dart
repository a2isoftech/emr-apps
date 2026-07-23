import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/utilities/emr_dialog.dart';
import 'package:emr_one_core/utilities/emr_modal.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/common/haulier_report_controller.dart';
import 'package:emr_one_transport/data/controllers/common/open_jobs_report_controller.dart';
import 'package:emr_one_transport/data/controllers/common/yard_report_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_controller.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_yard.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/message_utility.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/context_menu_wrapper.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/report_modal.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/trucks_reorder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class YardSecondaryTap extends StatelessWidget {
  const YardSecondaryTap({required this.yard, required this.child, super.key});
  final SchedulerYard yard;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final schedulerController = Provider.of<SchedulerController>(
      context,
      listen: false,
    );
    final haulierReportController = Provider.of<HaulierReportController>(
      context,
    );
    final yardReportController = Provider.of<YardReportController>(context);
    final openJobsReportController = Provider.of<OpenJobsReportController>(
      context,
    );

    final notificationController = Provider.of<EmrOneNotificationController>(
      context,
    );

    return ContextMenuWrapper<YardContextMenuOptions>(
      onItemSelected: (YardContextMenuOptions option) async {
        try {
          schedulerController.pauseScreenRefresh();
          switch (option) {
            case YardContextMenuOptions.rearrangeTrucks:
              final orderedTruckVrm =
                  await EmrModal.showModalBottomSheetOrFlyout<List<String>>(
                    context,
                    child: TrucksReorderWidget(yard: yard),
                  );
              if (!context.mounted) return;

              final controller = context.read<SchedulerController>();
              await controller.reArrangeTrucksAndSave(
                yard.yardCode,
                orderedTruckVrm ?? yard.trucks.map((e) => e.vrm).toList(),
              );
            case YardContextMenuOptions.printDispatchSlip:
              final truckVrms = yard.trucks.map((e) => e.vrm).toList();

              final actionResult = await schedulerController
                  .printDispatchSlipForTrucks(truckVrms, yard.yardCode);
              if (!context.mounted) return;
              MessageUtility.handleResult(
                context,
                actionResult,
                canGoBack: false,
              );
            case YardContextMenuOptions.yardReport:
              final selectedReport = ValueNotifier<List<String>>([
                ReportType.yard.toString(),
              ]);
              await EmrDialog.modal<void>(
                context,
                titleText: StringConstants.reports,
                builder: (context) {
                  return MultiProvider(
                    providers: [
                      ChangeNotifierProvider<HaulierReportController>.value(
                        value: haulierReportController,
                      ),
                      ChangeNotifierProvider<YardReportController>.value(
                        value: yardReportController,
                      ),
                      ChangeNotifierProvider<OpenJobsReportController>.value(
                        value: openJobsReportController,
                      ),
                    ],
                    child: ReportModal(selectedReport: selectedReport),
                  );
                },
                acceptLabel: StringConstants.sendOrDownloadDisplay,
                onAccept: () async {
                  ActionResult? response;
                  switch (selectedReport.value.first) {
                    case StringConstants.haulierDisplay:
                      response = await haulierReportController
                          .sendOrDownloadReport();

                    case StringConstants.yardText:
                      response = await yardReportController
                          .sendOrDownloadYardReport();

                    case StringConstants.openJobs:
                      response = await openJobsReportController
                          .downloadOpenJobsReport();
                    default:
                      break;
                  }

                  if (response != null &&
                      response.status == ActionStatus.formValidationFailed &&
                      context.mounted) {
                    return;
                  } else if (response != null && context.mounted) {
                    notificationController.showNotification(
                      response.status == ActionStatus.apiSuccess
                          ? EmrOneSuccessNotification(
                              title: StringConstants.success,
                              description: StringConstants
                                  .operationCompletedSuccessfully,
                            )
                          : EmrOneErrorNotification(
                              title: StringConstants.errorDisplay,
                              description: response.errorMessage ?? '',
                            ),
                    );
                  }
                },
              );
          }
        } finally {
          schedulerController.resumeScreenRefresh();
        }
      },
      menuItems: _getOptions(yard),
      child: child,
    );
  }

  List<YardContextMenuOptions> _getOptions(SchedulerYard yard) {
    final masterList = <YardContextMenuOptions>[];

    masterList.add(YardContextMenuOptions.printDispatchSlip);
    masterList.add(YardContextMenuOptions.yardReport);
    masterList.add(YardContextMenuOptions.rearrangeTrucks);

    return masterList;
  }
}
