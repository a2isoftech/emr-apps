import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/standing_order/standing_order_create_edit_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/jobs/container_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/time_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateStandingOrder extends StatefulWidget {
  const CreateStandingOrder({this.job, super.key});

  final JobList? job;

  @override
  State<CreateStandingOrder> createState() => _CreateStandingOrderState();
}

class _CreateStandingOrderState extends State<CreateStandingOrder> {
  final _formKey = GlobalKey<FormState>();
  late final JobListService joblistservice;
  late StandingOrderCreateEditController _controller;

  double? screenWidth;
  bool _isInitialized = false;

  @override
  void initState() {
    joblistservice = Provider.of<JobListService>(context, listen: false);
    _controller = Provider.of<StandingOrderCreateEditController>(
      context,
      listen: false,
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitialized) {
      _isInitialized = true;
      _controller.initialize(job: widget.job);
    }
  }

  @override
  void dispose() {
    _controller.disposeListeners();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notificationController = context.read<EmrOneNotificationController>();
    screenWidth = MediaQuery.of(context).size.width;

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
                      if (_formKey.currentState?.validate() ?? false == true) {
                        final response = await _controller
                            .createStandingOrder();
                        if (context.mounted) {
                          if (response.isSuccess) {
                            await SuccessAlertWidget.showSuccessDialogWithInfo(
                              context,
                              context.l10n.standingOrderCreatedSuccessfully,
                              '${context.l10n.orderNumberFollowsMsg} :',
                              response.data?.standingOrderNumber.toString() ??
                                  '',
                              showCopyIcon: true,
                            );
                            if (context.mounted) {
                              context.goNamed(RoutingPathName.standingOrder);
                            }
                          } else {
                            await ErrorAlertWidget.showErrorMessage(
                              context,
                              response.errorMessage.isNotEmpty
                                  ? response.errorMessage
                                  : context.l10n.errorAndTryAgainMsg,
                            );
                          }
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
                    onCancel: () {
                      context.goNamed(RoutingPathName.standingOrder);
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
                    joblistservice.partySearchByAccountOrName(query),
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
                    final response = await joblistservice.getProductTypes();
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
                    joblistservice.partySearchByAccountOrName(query),
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
                    joblistservice.partySearchByAccountOrName(query),
                validator: Validators.required,
                enabled: _controller.isEndLocnEnabled,
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            const Spacer(),
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
                padding: const EdgeInsets.only(
                  left: Insets.gutter / 2,
                  right: Insets.gutter / 2,
                ),
                child: ValueListenableBuilder<List<ContainerDetails>>(
                  valueListenable: _controller.addedCustomerLocnContainers,
                  builder: (context, list, child) {
                    if (list.isEmpty) {
                      return _emptyContainerWarningWidget();
                    } else {
                      return _getAddedCstmrLocnContainers();
                    }
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
                child: ValueListenableBuilder<List<ContainerDetails>>(
                  valueListenable: _controller.addedStartLocnContainers,
                  builder: (context, list, child) {
                    if (list.isEmpty) {
                      return _emptyContainerWarningWidget();
                    } else {
                      return _getAddedStartLocnContainers();
                    }
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
                items: (query) =>
                    joblistservice.searchTruckHaulierForUser(query),
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
            const Spacer(),
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
              child: EmrTextFormField(
                labelText: context.l10n.dispatcherNotes,
                maxLines: 3,
                keyboardType: TextInputType.multiline,
                hintText:
                    '${context.l10n.additionalNotes} '
                    '(${context.l10n.shownToDriver})',
                binding: _controller.dispatcherNotes,
              ),
            ),
            const SizedBox(width: Insets.gutter * 3),
            Expanded(
              child: EmrTextFormField(
                labelText: context.l10n.officeNotes,
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
            const Spacer(),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ValueListenableBuilder<String>(
                valueListenable: _controller.selectedReccuringFrequency,
                builder: (context, selectedReccuringFrequency, _) {
                  if (_controller.showWeekdays(selectedReccuringFrequency)) {
                    return EmrButtonGroupFormField(
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
                      padding: const EdgeInsets.only(left: 12),
                      child: SelectableText(
                        '${currentContainer.containerType}',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: Insets.gutter,
                      right: 48,
                    ),
                    child: SizedBox(
                      width: 200,
                      child: EmrStepperFormField(
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
                    padding: const EdgeInsets.only(left: 12),
                    child: SelectableText(
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
