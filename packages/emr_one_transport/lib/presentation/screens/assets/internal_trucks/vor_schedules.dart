import 'dart:async';

import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/mixins/emr_filled_button.dart';
import 'package:emr_one_core/utilities/emr_dialog.dart';
import 'package:emr_one_core/widgets/grid/emr_grid.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/data/controllers/trucks/internal_truck_controller.dart';
import 'package:emr_one_transport/data/models/vor/vor_schedule.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:emr_one_transport/presentation/screens/assets/internal_trucks/add_edit_vor_schedule.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class VorSchedules extends StatefulWidget {
  const VorSchedules({
    required this.internalTruckController,
    required this.vrm,
    super.key,
  });

  final InternalTruckController internalTruckController;
  final String vrm;

  @override
  State<VorSchedules> createState() => _VorSchedulesState();
}

class _VorSchedulesState extends State<VorSchedules> {
  final addVORformKey = GlobalKey<FormState>();
  final editVORformKey = GlobalKey<FormState>();
  late EmrGridController<VORSchedule> controller;

  @override
  void initState() {
    super.initState();
    controller = EmrGridController(data: ValueNotifier([]));
    WidgetsBinding.instance.addPostFrameCallback((_) => loadVorSchedules());
  }

  @override
  Widget build(BuildContext context) {
    final notificationController = context.read<EmrOneNotificationController>();
    if (widget.internalTruckController.isLoading) {
      return const LoadingIndicator();
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.gutter,
            bottom: Insets.gutter,
          ),
          child: Row(
            children: [
              Text(
                context.l10n.vorSchedule,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: Insets.gutter),
              if (context.userHasPermission(
                UserPermissions.internalTrucksWrite,
              ))
                FilledButton(
                  onPressed: () {
                    EmrDialog.modal<bool?>(
                      context,
                      titleText: context.l10n.addVorSchedule,
                      builder: (_) => SizedBox(
                        height: 430,
                        width: 500,
                        child: AddEditVorSchedule(
                          internalTruckController:
                              widget.internalTruckController,
                          key: addVORformKey,
                        ),
                      ),
                      onAccept: () async {
                        final validationMsg = DateHelper.validateEndDate(
                          widget.internalTruckController.startDate.value,
                          widget.internalTruckController.endDate.value,
                          compareTime: true,
                        );
                        if (validationMsg != null) {
                          notificationController.showNotification(
                            EmrOneErrorNotification(
                              title: context.l10n.error,
                              description: validationMsg,
                            ),
                          );
                        } else if (addVORformKey.currentState?.validate() ??
                            false == true) {
                          final request = widget.internalTruckController
                              .buildVorScheduleRequest(null);

                          final failedVrms = <String>[];

                          final response = await widget.internalTruckController
                              .createVORSchedules(widget.vrm, [request]);

                          if (!response.isSuccess) {
                            failedVrms.add(widget.vrm);
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
                              'Failed for VRMs: ${failedVrms.join(', ')}\n'
                              '${response.errorMessage}',
                            );
                          }
                        } else {
                          notificationController.showNotification(
                            EmrOneErrorNotification(
                              title: context.l10n.error,
                              description: context.l10n.requiredFieldsErrorMsg,
                            ),
                          );
                        }
                      },
                    ).then((result) {
                      if (result ?? false) {
                        loadVorSchedules();
                      }
                    });
                  },
                  style: EmrButtonStyles.cta(),
                  child: Text(context.l10n.addVorSchedule),
                ),
            ],
          ),
        ),
        Expanded(
          child: SelectionArea(
            child: EmrGrid(
              alternateBackgroundRowColour: true,
              pinnedRowCount: 1,
              controller: controller,
              columns: [
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.startDate,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  cellBuilder: (schedule) {
                    final data = schedule! as VORSchedule;
                    final fromDateTime = data.startDateTime;
                    return Text(
                      fromDateTime != null
                          ? DateFormat(
                              StringConstants.ymdTimeFormat,
                            ).format(fromDateTime.toLocal())
                          : '-',
                    );
                  },
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.endDate,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  cellBuilder: (schedule) {
                    final data = schedule! as VORSchedule;
                    final toDateTime = data.endDateTime;
                    return Text(
                      toDateTime != null
                          ? DateFormat(
                              StringConstants.ymdTimeFormat,
                            ).format(toDateTime.toLocal())
                          : '-',
                    );
                  },
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.reasons,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  cellBuilder: (row) {
                    final data = row! as VORSchedule;
                    return Text(data.reason ?? '-');
                  },
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.notes,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  cellBuilder: (row) {
                    final data = row! as VORSchedule;
                    return Text(data.notes ?? '-');
                  },
                ),
                EmrGridColumn(
                  headerBuilder: () => Text(
                    context.l10n.createdDate,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  cellBuilder: (row) {
                    final data = row! as VORSchedule;
                    final createdAtStr = data.created?.at;

                    if (createdAtStr == null || createdAtStr.isEmpty) {
                      return const Text('-');
                    }

                    try {
                      final createdAt = DateTime.parse(createdAtStr);
                      return Text(
                        DateFormat(
                          StringConstants.ymdTimeFormat,
                        ).format(createdAt.toLocal()),
                      );
                    } catch (_) {
                      return Text(createdAtStr);
                    }
                  },
                ),
                if (context.userHasPermission(
                  UserPermissions.internalTrucksWrite,
                ))
                  EmrGridColumn(
                    headerBuilder: () => const Text(''),
                    cellBuilder: (row) {
                      final data = row! as VORSchedule;
                      return IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          EmrDialog.modal<bool?>(
                            context,
                            titleText: context.l10n.vorUpdate,
                            builder: (_) => SizedBox(
                              height: 430,
                              width: 500,
                              child: AddEditVorSchedule(
                                internalTruckController:
                                    widget.internalTruckController,
                                vorSchedule: data,
                                key: editVORformKey,
                              ),
                            ),
                            onAccept: () async {
                              final validationMsg = DateHelper.validateEndDate(
                                widget.internalTruckController.startDate.value,
                                widget.internalTruckController.endDate.value,
                                compareTime: true,
                              );
                              if (validationMsg != null) {
                                notificationController.showNotification(
                                  EmrOneErrorNotification(
                                    title: context.l10n.error,
                                    description: validationMsg,
                                  ),
                                );
                              } else if (editVORformKey.currentState
                                      ?.validate() ??
                                  false == true) {
                                final request = widget.internalTruckController
                                    .buildVorScheduleRequest(data);

                                final failedVrms = <String>[];

                                final response = await widget
                                    .internalTruckController
                                    .updateVorSchedule(
                                      widget.vrm,
                                      data.id!,
                                      request,
                                    );

                                if (!response.isSuccess) {
                                  failedVrms.add(widget.vrm);
                                }

                                if (!context.mounted) return;

                                if (failedVrms.isEmpty) {
                                  await SuccessAlertWidget.showSuccessMessage(
                                    context,
                                    context.l10n.vorScheduleUpdatedSuccessfully,
                                  );
                                  if (context.mounted) {
                                    Navigator.of(context).pop(true);
                                  }
                                } else {
                                  await ErrorAlertWidget.showErrorMessage(
                                    context,
                                    'Failed for VRMs: '
                                    '${failedVrms.join(', ')}\n'
                                    '${response.errorMessage}',
                                  );
                                }
                              } else {
                                notificationController.showNotification(
                                  EmrOneErrorNotification(
                                    title: context.l10n.error,
                                    description:
                                        context.l10n.requiredFieldsErrorMsg,
                                  ),
                                );
                              }
                            },
                          ).then((value) {
                            if (value ?? false == true) {
                              loadVorSchedules();
                            }
                          });
                        },
                      );
                    },
                    width: Insets.gutter,
                  ),
                if (context.userHasPermission(
                  UserPermissions.internalTrucksWrite,
                ))
                  EmrGridColumn(
                    headerBuilder: () => const Text(''),
                    cellBuilder: (row) {
                      final data = row! as VORSchedule;
                      return IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () async {
                          await EmrDialog.modal<String?>(
                            context,
                            titleText: context.l10n.confirmDelete,
                            builder: (_) => Padding(
                              padding: const EdgeInsets.only(
                                top: Insets.gutter,
                                right: Insets.gutter * 3,
                                bottom: Insets.gutter,
                              ),
                              child: Text(context.l10n.areYouSureVorDelete),
                            ),
                            acceptLabel: context.l10n.delete,
                            isDanger: true,
                            onAccept: () async {
                              final response = await widget
                                  .internalTruckController
                                  .deleteVORSchedule(widget.vrm, data.id!);

                              if (context.mounted) {
                                await (response
                                    ? SuccessAlertWidget.showSuccessMessage(
                                        context,
                                        context.l10n.vorDeletedSuccessfully,
                                      ).then(
                                        (_) => {
                                          if (context.mounted)
                                            {Navigator.of(context).pop()},
                                          loadVorSchedules(),
                                        },
                                      )
                                    : ErrorAlertWidget.showErrorMessage(
                                        context,
                                        context.l10n.deleteVorErrorMsg,
                                      ));
                              }
                            },
                          );
                        },
                      );
                    },
                    width: Insets.gutter,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> loadVorSchedules() async {
    controller.showLoader.value = true;
    final result = await widget.internalTruckController.getVORSchedules(
      widget.vrm,
    );

    if (result.isSuccess && result.data != null) {
      final allVors = result.data!.vorSchedule ?? <VORSchedule>[];
      final activeVors = allVors.where((vor) => vor.active ?? false).toList();
      controller.data.value = activeVors;
    } else {
      controller.data.value = [];
    }
    controller.showLoader.value = false;
  }
}
