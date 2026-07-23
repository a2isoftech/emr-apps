import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/data/controllers/standing_order/standing_order_create_edit_controller.dart';
import 'package:emr_one_transport/data/dataSources/standing_order_data.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/jobs/container_details.dart';
import 'package:emr_one_transport/data/models/jobs/containers.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/time_picker.dart';
import 'package:emr_one_transport/presentation/shared_widgets/standing_order/confirm_standing_order_update_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditStandingOrder extends StatefulWidget {
  const EditStandingOrder(
    this.gridDataSource, {
    required this.standingOrderId,
    required this.controller,
    required this.jobListService,
    super.key,
  });

  final String standingOrderId;
  final JobListService jobListService;
  final StandingOrderCreateEditController controller;
  final StandingOrderDataSource? gridDataSource;

  @override
  State<EditStandingOrder> createState() => _EditStandingOrderState();
}

class _EditStandingOrderState extends State<EditStandingOrder> {
  final _formKey = GlobalKey<FormState>();
  late StandingOrderCreateEditController _controller;
  StandingOrder? standingOrder;

  double? screenWidth;

  @override
  void initState() {
    _controller = widget.controller;
    _controller.initialize(standingOrderId: widget.standingOrderId);

    super.initState();
  }

  @override
  void dispose() {
    widget.controller.disposeListeners();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notificationController = context.read<EmrOneNotificationController>();
    screenWidth = MediaQuery.of(context).size.width;
    return ChangeNotifierProvider.value(
      value: _controller,
      builder: (context, child) {
        return Consumer<StandingOrderCreateEditController>(
          builder: (context, val, child) => Stack(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Expanded(
                      child: EmrTabBarVerticalView(
                        columns: const [1, 1, 1, 1, 1],
                        onSave: () async {
                          if (_formKey.currentState?.validate() ??
                              false == true) {
                            await EmrDialog.modal<void>(
                              context,
                              builder: (context) {
                                return ConfirmStandingOrderUpdatePopup(
                                  standingOrderId: widget.standingOrderId,
                                  controller: _controller,
                                );
                              },
                              titleText: context.l10n.updateStandingOrder,
                              acceptLabel: context.l10n.updateStandingOrder,
                              onAccept: () async {
                                final result = await _controller
                                    .updateStandingOrder();
                                if (result.isSuccess) {
                                  if (context.mounted) {
                                    Navigator.of(context)
                                      ..pop()
                                      ..pop();
                                  }
                                  await widget.gridDataSource?.refresh();
                                } else {
                                  if (context.mounted) {
                                    await ErrorAlertWidget.showErrorMessage(
                                      context,
                                      result.errorMessage.isNotEmpty
                                          ? result.errorMessage
                                          : context.l10n.errorAndTryAgainMsg,
                                    );
                                  }
                                }
                              },
                            );
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
                        onCancel: () {
                          context.pop();
                        },
                        buttons: [
                          TextButton(
                            onPressed: _controller.resetFields,
                            style: TextButton.styleFrom(
                              fixedSize: const Size(75, 18),
                            ),
                            child: Text(context.l10n.reset),
                          ),
                        ],
                        children: [
                          EmrTabBarVerticalViewCard(
                            title: context.l10n.basicDetails,
                            child: _buildJobDetailsCard(),
                          ),
                          EmrTabBarVerticalViewCard(
                            title:
                                '${context.l10n.containers} & '
                                '${context.l10n.trailers}',
                            child: _buildContainersCard(),
                          ),
                          EmrTabBarVerticalViewCard(
                            title: context.l10n.schedule,
                            child: _buildScheduleCard(),
                          ),
                          EmrTabBarVerticalViewCard(
                            title: context.l10n.notes,
                            child: _buildNotesCard(),
                          ),
                          EmrTabBarVerticalViewCard(
                            title: context.l10n.reccuranceDetails,
                            child: _buildRecurrenceCard(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (_controller.isLoading) const LoadingIndicator(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildJobDetailsCard() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: EmrPickerFormField(
                labelText: context.l10n.typeofJob,
                items: (_) => Future.value(_controller.jobTypes),
                itemTitleText: (item) => item,
                binding: _controller.selectedJobtype,
                validator: Validators.required,
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            Expanded(
              child: EmrPickerFormField(
                labelText: context.l10n.dispatchYard,
                items: (_) => Future.value(_controller.dispatchYards),
                itemTitleText: (item) => item,
                binding: _controller.selectedDispatchYard,
                validator: Validators.required,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: EmrPickerFormField(
                labelText: context.l10n.customerLocation,
                binding: _controller.selectedCustomerLocation,
                itemTitleText: StringHelper.buildAccountAddress,
                items: (query) =>
                    widget.jobListService.partySearchByAccountOrName(query),
                validator: Validators.required,
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            Expanded(
              child: EmrPickerFormField(
                labelText: context.l10n.productFamily,
                items: (_) async {
                  if (_controller.productTypes.isNotEmpty) {
                    return Future.value(_controller.productTypes);
                  } else {
                    final response = await widget.jobListService
                        .getProductTypes();
                    return response
                        .map((e) => e.description ?? e.code ?? '')
                        .toList();
                  }
                },
                itemTitleText: (item) => item,
                binding: _controller.selectedproductType,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: EmrPickerFormField(
                labelText: context.l10n.startLocation,
                binding: _controller.selectedStartLocation,
                itemTitleText: StringHelper.buildAccountAddress,
                items: (query) =>
                    widget.jobListService.partySearchByAccountOrName(query),
                validator: Validators.required,
                enabled: _controller.isStartLocnEnabled,
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            Expanded(
              child: ListenableBuilder(
                listenable: Listenable.merge([
                  _controller.products,
                  _controller.selectedproductType,
                ]),
                builder: (_, __) {
                  return _controller.isProductLoading
                      ? const Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: Insets.gutter * 2),
                            child: SizedBox(
                              height: 32,
                              width: 32,
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        )
                      : EmrMultiPickerFormField(
                          key: GlobalKey(),
                          labelText: context.l10n.products,
                          items: (_) =>
                              Future.value(_controller.products.value),
                          itemTitleText: (item) =>
                              (item.description?.isNotEmpty ?? false)
                              ? '${item.code} - ${item.description}'
                              : item.code,
                          binding: _controller.selectedproduct,
                          enabled: _controller.selectedproductType.value != null
                              ? ValueNotifier(true)
                              : ValueNotifier(false),
                        );
                },
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: EmrPickerFormField(
                labelText: context.l10n.endLocation,
                binding: _controller.selectedEndLocation,
                itemTitleText: StringHelper.buildAccountAddress,
                items: (query) =>
                    widget.jobListService.partySearchByAccountOrName(query),
                validator: Validators.required,
                enabled: _controller.isEndLocnEnabled,
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            const Expanded(child: Spacer()),
          ],
        ),
      ],
    );
  }

  Widget _buildContainersCard() {
    return ValueListenableBuilder<String?>(
      valueListenable: _controller.selectedJobtype,
      builder: (context, selectedJobtype, child) {
        if (selectedJobtype != null) {
          final showCustomerLocnContainers = _controller
              .showCustomerLocationContainers(selectedJobtype);
          final showStartLocnContainers = _controller
              .showStartLocationContainers(selectedJobtype);

          return Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (showCustomerLocnContainers &&
                      showStartLocnContainers) ...[
                    Expanded(child: _buildCustomerLocnAddedContainerswidget()),
                    const SizedBox(width: Insets.gutter * 4),
                    Expanded(child: _buildStartLocnAddedContainerswidget()),
                  ] else if (showCustomerLocnContainers) ...[
                    Expanded(child: _buildCustomerLocnAddedContainerswidget()),
                    const SizedBox(width: Insets.gutter * 4),
                    const Spacer(),
                  ] else if (showStartLocnContainers) ...[
                    Expanded(child: _buildStartLocnAddedContainerswidget()),
                    const SizedBox(width: Insets.gutter * 4),
                    const Spacer(),
                  ] else ...[
                    const SizedBox(height: Insets.gutter),
                  ],
                ],
              ),
            ],
          );
        } else {
          return const SizedBox(height: Insets.gutter);
        }
      },
    );
  }

  Widget _buildCustomerLocnAddedContainerswidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EmrPickerFormField(
          labelText:
              '${context.l10n.customerLocation} '
              '${context.l10n.containers} & '
              '${context.l10n.trailers}',
          items: (_) =>
              Future.value(_controller.customerLocnContainerTypes.value),
          itemTitleText: (item) => item.containerType ?? '',
          binding: _controller.selectedCustomerLocnContainer,
          validator: (value) {
            if (_controller.addedCustomerLocnContainers.value.isEmpty) {
              return '${context.l10n.required}  '
                  '( ${context.l10n.noAddedContainerFound} )';
            }
            return null;
          },
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter / 2,
            top: Insets.gutter * 2,
            bottom: Insets.gutter * 2,
          ),
          child: Text(
            context.l10n.addedContainers,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 6, right: 6),
                child: ValueListenableBuilder<Containers?>(
                  valueListenable: _controller.selectedCustomerLocnContainer,
                  builder: (context, selectedcontainer, child) {
                    if (selectedcontainer != null &&
                        _controller.addedCustomerLocnContainers.value.length <
                            9 &&
                        !_controller.addedCustomerLocnContainers.value.any(
                          (e) =>
                              e.containerType ==
                              selectedcontainer.containerType,
                        )) {
                      _controller.addedCustomerLocnContainers.value = [
                        ..._controller.addedCustomerLocnContainers.value,
                        ContainerDetails(
                          containerType: selectedcontainer.containerType,
                        ),
                      ];
                    }

                    return ValueListenableBuilder<List<ContainerDetails>>(
                      valueListenable: _controller.addedCustomerLocnContainers,
                      builder: (context, list, child) {
                        if (list.isEmpty) {
                          return _emptyContainerWarningWidget();
                        } else {
                          return _getAddedCstmrLocnContainers();
                        }
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: Insets.gutter),
      ],
    );
  }

  Widget _buildStartLocnAddedContainerswidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EmrPickerFormField(
          labelText:
              '${context.l10n.startLocation} '
              '${context.l10n.containers} & '
              '${context.l10n.trailers}',
          items: (_) => Future.value(_controller.startLocnContainerTypes.value),
          itemTitleText: (item) => item.containerType ?? '',
          binding: _controller.selectedStartLocnContainer,
          validator: (value) {
            if (_controller.addedStartLocnContainers.value.isEmpty) {
              return '${context.l10n.required}  '
                  '( ${context.l10n.noAddedContainerFound} )';
            }
            return null;
          },
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter / 2,
            top: Insets.gutter * 2,
            bottom: Insets.gutter * 2,
          ),
          child: Text(
            context.l10n.addedContainers,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: ValueListenableBuilder<Containers?>(
                  valueListenable: _controller.selectedStartLocnContainer,
                  builder: (context, selectedcontainer, child) {
                    if (selectedcontainer != null &&
                        _controller.addedStartLocnContainers.value.length < 9 &&
                        !_controller.addedStartLocnContainers.value.any(
                          (e) =>
                              e.containerType ==
                              selectedcontainer.containerType,
                        )) {
                      _controller.addedStartLocnContainers.value = [
                        ..._controller.addedStartLocnContainers.value,
                        ContainerDetails(
                          containerType: selectedcontainer.containerType,
                        ),
                      ];
                    }

                    return ValueListenableBuilder<List<ContainerDetails>>(
                      valueListenable: _controller.addedStartLocnContainers,
                      builder: (context, list, child) {
                        if (list.isEmpty) {
                          return _emptyContainerWarningWidget();
                        } else {
                          return _getAddedStartLocnContainers();
                        }
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: Insets.gutter),
      ],
    );
  }

  Widget _emptyContainerWarningWidget() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: TransportAppColors.containersBoxBorderColor,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Row(
          children: [
            const Icon(
              Icons.warning,
              color: Colors.orange,
              size: Constants.iconSizeS,
            ),
            const SizedBox(width: Insets.gutter / 2),
            Text(
              context.l10n.containerReqWarningMsg,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleCard() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: EmrDateFormField(
                labelText: context.l10n.effectiveDateDisplay,
                binding: _controller.selectedEffectiveDate,
                validator: Validators.required,
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            Expanded(
              child: EmrPickerFormField(
                labelText: context.l10n.scheduleForTruckHaulier,
                binding: _controller.selectedhaulier,
                itemTitleText: StringHelper.buildTruckAndHaulierDisplay,
                items: widget.jobListService.searchTruckHaulierForUser,
                itemSubtitleText: (haulier) {
                  return StringHelper.getHaulierDisplayType(
                    haulier.haulierType!,
                  );
                },
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: EmrDateFormField(
                labelText: context.l10n.expiryDate,
                binding: _controller.selectedExpiryDate,
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            const Expanded(child: Spacer()),
          ],
        ),

        const SizedBox(height: Insets.gutter),
        Row(
          children: [
            Expanded(
              child: ListenableBuilder(
                listenable: _controller.proposedDuration,
                builder: (_, __) {
                  return BuildColumnWithControl(
                    label: context.l10n.jobDuration,
                    control: TimePicker(
                      onTimeChanged: _controller.proposedDuration,
                      initialTimeInMinutes: _controller.proposedDuration.value,
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }

  Widget _buildNotesCard() {
    return Column(
      children: [
        const SizedBox(height: Insets.gutter),
        Row(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 160,
                    child: Padding(
                      padding: const EdgeInsets.only(top: Insets.gutter * 2),
                      child: Text(
                        context.l10n.dispatcherNotes,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: EmrTextFormField(
                      maxLines: 3,
                      keyboardType: TextInputType.multiline,
                      hintText:
                          '${context.l10n.additionalNotes} '
                          '(${context.l10n.shownToDriver})',
                      binding: _controller.dispatcherNotes,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: Insets.gutter * 3),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Insets.gutter * 10,
                    child: Padding(
                      padding: const EdgeInsets.only(top: Insets.gutter * 2),
                      child: Text(
                        context.l10n.officeNotes,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  Expanded(
                    child: EmrTextFormField(
                      maxLines: 3,
                      keyboardType: TextInputType.multiline,
                      hintText:
                          '${context.l10n.additionalNotes} '
                          '(${context.l10n.visibleToDispatchersNote})',
                      binding: _controller.officeNotes,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRecurrenceCard() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: EmrPickerFormField(
                labelText: context.l10n.reccuringFrequency,
                items: (_) => Future.value(_controller.reccuringFrequency),
                itemTitleText: (item) => item,
                binding: _controller.selectedReccuringFrequency,
                validator: Validators.required,
                mode: EmrPickerMode.dropdown,
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            Expanded(
              child: EmrStepperFormField(
                labelText: context.l10n.jobCreateDaysInAdvance,
                binding: _controller.numberofDaysInAdvance,
                validator: (value) => Validators.join([
                  Validators.integer(value, min: 1),
                  Validators.required(value),
                ]),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: EmrPickerFormField(
                labelText: context.l10n.jobRepetitionsPerDay,
                items: (_) => Future.value(_controller.repetitionPerDay),
                itemTitleText: (item) => item,
                binding: _controller.selectedRepetitionPerDay,
                validator: Validators.required,
                mode: EmrPickerMode.dropdown,
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            const Expanded(child: Spacer()),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ValueListenableBuilder<String>(
                valueListenable: _controller.selectedReccuringFrequency,
                builder: (context, selectedReccuringFrequency, _) {
                  if (_controller.showWeekdays(
                    selectedReccuringFrequency,
                    isEditScreen: true,
                  )) {
                    return EmrButtonGroupFormField(
                      key: GlobalKey(),
                      labelText: context.l10n.weekdays,
                      binding: _controller.selectedWeekDays,
                      options: _controller.weekdays,
                      mode: _controller.weekDaysMode,
                      enabled: _controller.weekDaysEnabled,
                    );
                  } else {
                    return const SizedBox(height: Insets.gutter / 2);
                  }
                },
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            const Expanded(child: Spacer()),
          ],
        ),
      ],
    );
  }

  Widget _getAddedCstmrLocnContainers() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _controller.addedCustomerLocnContainers.value.length,
      itemBuilder: (context, index) {
        if (_controller.addedCustomerLocnContainers.value.isNotEmpty) {
          final currentContainer =
              _controller.addedCustomerLocnContainers.value[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: TransportAppColors.containersBoxBorderColor,
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: Insets.gutter),
                      child: Text(
                        '${currentContainer.containerType}',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: Insets.gutter,
                      right: Insets.gutter * 3,
                    ),
                    child: SizedBox(
                      width: 200,
                      child: EmrStepperFormField(
                        key: GlobalKey(),
                        labelText: context.l10n.quantity,
                        binding: currentContainer.quantity,
                        validator: (value) => Validators.join([
                          Validators.integer(
                            value,
                            min: 1,
                            max: Constants.maxContainersAllowed,
                          ),
                          Validators.required(value),
                        ]),
                      ),
                    ),
                  ),
                  FilledButton(
                    style: EmrButtonStyles.danger(),
                    onPressed: () {
                      _controller.addedCustomerLocnContainers.value =
                          List.from(
                            _controller.addedCustomerLocnContainers.value,
                          )..removeWhere(
                            (item) =>
                                item.containerType ==
                                currentContainer.containerType,
                          );
                    },
                    child: Text(context.l10n.removeButtonText),
                  ),
                  const SizedBox(width: Insets.gutter),
                ],
              ),
            ),
          );
        }
        return null;
      },
    );
  }

  Widget _getAddedStartLocnContainers() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _controller.addedStartLocnContainers.value.length,
      itemBuilder: (context, index) {
        final currentContainer =
            _controller.addedStartLocnContainers.value[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: TransportAppColors.containersBoxBorderColor,
                width: 2,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: Insets.gutter),
                    child: Text(
                      '${currentContainer.containerType}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: Insets.gutter,
                    right: Insets.gutter * 3,
                  ),
                  child: SizedBox(
                    width: 200,
                    child: EmrStepperFormField(
                      key: GlobalKey(),
                      labelText: context.l10n.quantity,
                      binding: currentContainer.quantity,
                      validator: (value) => Validators.join([
                        Validators.integer(
                          value,
                          min: 1,
                          max: Constants.maxContainersAllowed,
                        ),
                        Validators.required(value),
                      ]),
                    ),
                  ),
                ),
                FilledButton(
                  style: EmrButtonStyles.danger(),
                  onPressed: () {
                    _controller.addedStartLocnContainers.value =
                        List.from(_controller.addedStartLocnContainers.value)
                          ..removeWhere(
                            (item) =>
                                item.containerType ==
                                currentContainer.containerType,
                          );
                  },
                  child: Text(context.l10n.removeButtonText),
                ),
                const SizedBox(width: Insets.gutter),
              ],
            ),
          ),
        );
      },
    );
  }
}
