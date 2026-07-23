import 'dart:async';

import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/data/controllers/common/clone_jobs_forward_controller.dart';
import 'package:emr_one_transport/data/controllers/common/haulier_report_controller.dart';
import 'package:emr_one_transport/data/controllers/common/open_jobs_report_controller.dart';
import 'package:emr_one_transport/data/controllers/common/yard_report_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/move_outstanding_job_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_controller.dart';
import 'package:emr_one_transport/data/controllers/trucks/internal_truck_controller.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:emr_one_transport/presentation/screens/assets/internal_trucks/add_edit_vor_schedule.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/message_utility.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/clone_jobs_forward.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/context_menu_wrapper.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/move_outstanding_jobs_popup.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/report_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class TruckSecondaryTap extends StatelessWidget {
  const TruckSecondaryTap({
    required this.truck,
    required this.child,
    super.key,
  });
  final SchedulerTruck truck;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final schedulerController = Provider.of<SchedulerController>(
      context,
      listen: false,
    );
    final moveOutStandingJobController =
        Provider.of<MoveOutstandingJobController>(context);
    final cloneJobsForwardController = Provider.of<CloneJobsForwardController>(
      context,
    );
    final internalTruckController = Provider.of<InternalTruckController>(
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

    final overlayController = Provider.of<EmrOneNotificationController>(
      context,
    );

    return ContextMenuWrapper<TruckContextMenuOptions>(
      onItemSelected: (TruckContextMenuOptions option) async {
        try {
          schedulerController.pauseScreenRefresh();
          switch (option) {
            case TruckContextMenuOptions.moveOutStandingJobs:
              final isSuccess = await EmrDialog.modal<bool?>(
                context,
                titleText: context.l10n.moveOutstandingJobs,
                builder: (_) => ChangeNotifierProvider.value(
                  value: moveOutStandingJobController,
                  child: MoveOutstandingJobsPopup(
                    sourceTruck: truck,
                    sourceDate: schedulerController.selectedDateNotifier.value,
                  ),
                ),
                onAccept: () async {
                  final actionResult = await moveOutStandingJobController
                      .moveOutStandingJobs();
                  if (!context.mounted) return;

                  MessageUtility.handleResult(context, actionResult);
                },
              );
              if (isSuccess ?? false == true) {
                await schedulerController.fetchAllJobsAndArrangeJobs();
              }
            case TruckContextMenuOptions.cloneJobsForward:
              final isSuccess = await EmrDialog.modal<bool?>(
                context,
                titleText: context.l10n.cloneJobsForward,
                builder: (_) => ChangeNotifierProvider.value(
                  value: cloneJobsForwardController,
                  child: CloneJobsForwardDialog(
                    sourceTruck: truck,
                    sourceDate: schedulerController.selectedDateNotifier.value,
                  ),
                ),
                onAccept: () async {
                  final actionResult = await cloneJobsForwardController
                      .cloneJobsForward();
                  if (!context.mounted) return;

                  MessageUtility.handleResult(context, actionResult);
                },
              );
              if (isSuccess ?? false == true) {
                await schedulerController.fetchAllJobsAndArrangeJobs();
              }
            case TruckContextMenuOptions.addVOR:
              final addVORformKey = GlobalKey<FormState>();
              await EmrDialog.modal<bool?>(
                context,
                titleText: context.l10n.addVorSchedule,
                builder: (_) => SizedBox(
                  height: 430,
                  width: 500,
                  child: AddEditVorSchedule(
                    internalTruckController: internalTruckController,
                    key: addVORformKey,
                  ),
                ),
                onAccept: () async {
                  final dateError = DateHelper.validateEndDate(
                    internalTruckController.startDate.value,
                    internalTruckController.endDate.value,
                    compareTime: true,
                  );
                  if (dateError != null) {
                    unawaited(
                      ErrorAlertWidget.showErrorMessage(context, dateError),
                    );
                    return;
                  }

                  final isValid =
                      addVORformKey.currentState?.validate() ?? false;
                  if (!isValid) {
                    unawaited(
                      ErrorAlertWidget.showErrorMessage(
                        context,
                        context.l10n.requiredFieldsErrorMsg,
                      ),
                    );
                    return;
                  }

                  final failedVrms = <String>[];
                  final request = internalTruckController
                      .buildVorScheduleRequest(null);
                  final response = await internalTruckController
                      .createVORSchedules(truck.vrm, [request]);

                  if (!response.isSuccess) {
                    failedVrms.add(truck.vrm);
                  }

                  if (!context.mounted) return;

                  if (failedVrms.isEmpty) {
                    await SuccessAlertWidget.showSuccessMessage(
                      context,
                      context.l10n.vorCreatedSuccessfully,
                    );
                    if (context.mounted) {
                      Navigator.of(context).pop(true);
                    }
                  } else {
                    await ErrorAlertWidget.showErrorMessage(
                      context,
                      response.status == ResponseStatus.conflict
                          ? response.errorMessage
                          : 'Failed for VRMs: ${failedVrms.join(', ')}\n'
                                '${response.errorMessage}',
                    );
                  }
                },
              ).then((result) {
                if (result ?? false) {
                  schedulerController.fetchAllJobs();
                }
              });
            case TruckContextMenuOptions.haulierReport:
              final selectedReport = ValueNotifier<List<String>>([
                ReportType.haulier.toString(),
              ]);
              await EmrDialog.modal<void>(
                context,
                titleText: context.l10n.reports,
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
                    child: ReportModal(
                      selectedReport: selectedReport,
                      truckInfo: TruckInfo(
                        haulierCode: truck.haulierCode,
                        haulierName: truck.haulierName,
                        vrm: truck.vrm,
                        assetNumber: truck.assetNumber,
                      ),
                    ),
                  );
                },
                acceptLabel: context.l10n.sendOrDownload,
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
                    overlayController.showNotification(
                      response.status == ActionStatus.apiSuccess
                          ? EmrOneSuccessNotification(
                              title: context.l10n.success,
                              description:
                                  context.l10n.operationCompletedSuccessfully,
                            )
                          : EmrOneErrorNotification(
                              title: context.l10n.error,
                              description: response.errorMessage ?? '',
                            ),
                    );
                  }
                },
              );
            case TruckContextMenuOptions.enforceJobSequence:
              final actionResult = await schedulerController.enforceJobSequence(
                truck.vrm,
                enforceJobSequence: true,
              );
              if (!context.mounted) return;
              MessageUtility.handleResult(
                context,
                actionResult,
                canGoBack: false,
              );
            case TruckContextMenuOptions.ignoreJobSequence:
              final actionResult = await schedulerController.enforceJobSequence(
                truck.vrm,
                enforceJobSequence: false,
              );
              if (!context.mounted) return;
              MessageUtility.handleResult(
                context,
                actionResult,
                canGoBack: false,
              );
            case TruckContextMenuOptions.printDispatchSlip:
              final actionResult = await schedulerController
                  .printDispatchSlipForTrucks([truck.vrm], null);
              if (!context.mounted) return;
              MessageUtility.handleResult(
                context,
                actionResult,
                canGoBack: false,
              );
            case TruckContextMenuOptions.copyVrm:
              await Clipboard.setData(ClipboardData(text: truck.vrm));
              if (!context.mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Copied to clipboard!')),
              );
          }
        } finally {
          schedulerController.resumeScreenRefresh();
        }
      },
      menuItems: getMenuOptionsForThisTruck(context),
      child: child,
    );
  }

  //Returns the options which are onlu enabled for the current job
  List<TruckContextMenuOptions> getMenuOptionsForThisTruck(
    BuildContext context,
  ) {
    final masterList = <TruckContextMenuOptions>[];

    masterList.add(TruckContextMenuOptions.moveOutStandingJobs);
    masterList.add(TruckContextMenuOptions.cloneJobsForward);
    if (truck.isJobSequenceEnforced) {
      masterList.add(TruckContextMenuOptions.ignoreJobSequence);
    } else {
      masterList.add(TruckContextMenuOptions.enforceJobSequence);
    }
    masterList.add(TruckContextMenuOptions.addVOR);
    masterList.add(TruckContextMenuOptions.printDispatchSlip);
    if (context.userHasPermission(UserPermissions.reportsAction)) {
      masterList.add(TruckContextMenuOptions.haulierReport);
    }
    masterList.add(TruckContextMenuOptions.copyVrm);
    return masterList;
  }
}
