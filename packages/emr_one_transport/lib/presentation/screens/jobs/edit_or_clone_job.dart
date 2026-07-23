import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_create_edit_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/jobs/container_details.dart';
import 'package:emr_one_transport/data/models/jobs/containers.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/provisional_costs.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/time_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

enum JobMode { create, edit, clone }

class EditOrCloneJob extends StatefulWidget {
  const EditOrCloneJob({
    required this.jobNumber,
    required this.jobListService,
    required this.controller,
    required this.mode,
    required this.appConfig,
    super.key,
  });

  final int jobNumber;
  final JobListService jobListService;
  final JobCreateEditController controller;
  final JobMode mode;
  final AppConfig appConfig;

  @override
  State<EditOrCloneJob> createState() => _EditOrCloneJobState();
}

class _EditOrCloneJobState extends State<EditOrCloneJob> {
  final _formKey = GlobalKey<FormState>();
  late JobCreateEditController _controller;
  JobList? job;
  double? screenWidth;
  late final Listenable _showNoRatesAvailable;

  @override
  void initState() {
    _controller = widget.controller;
    _controller.initialize(widget.jobNumber, widget.mode);

    _showNoRatesAvailable = Listenable.merge([
      _controller.selectedJobtype,
      _controller.provisionalRateOptions,
    ]);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.disposeListeners();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return ChangeNotifierProvider.value(
      value: _controller,
      builder: (context, child) {
        return Consumer<JobCreateEditController>(
          builder: (context, val, child) => Stack(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Expanded(
                      child: EmrTabBarVerticalView(
                        columns: widget.mode == JobMode.edit
                            ? [1, 1, 1, 1, 1]
                            : [1, 1, 1, 1, 1, 1],
                        onSave:
                            _controller.readOnlyMap.values.every(
                              (notifier) => notifier.value == true,
                            )
                            ? null
                            : widget.mode == JobMode.edit
                            ? () async {
                                if (_formKey.currentState?.validate() ??
                                    false == true) {
                                  final response = await _controller
                                      .updateJobDetailsbyId();
                                  if (context.mounted && response.isSuccess) {
                                    await SuccessAlertWidget.showSuccessMessage(
                                      context,
                                      context.l10n.jobUpdatedSuccessfully,
                                    );
                                    if (context.mounted) {
                                      Navigator.of(context).pop(true);
                                    }
                                  } else if (context.mounted) {
                                    await ErrorAlertWidget.showErrorMessage(
                                      context,
                                      response.errorMessage.isNotEmpty
                                          ? response.errorMessage
                                          : context.l10n.errorAndTryAgainMsg,
                                    );
                                  }
                                } else {
                                  await ErrorAlertWidget.showErrorMessage(
                                    context,
                                    context.l10n.requiredFieldsErrorMsg,
                                  );
                                }
                              }
                            : () async {
                                if (_formKey.currentState?.validate() ??
                                    false == true) {
                                  if (_controller
                                          .numberOfJobsToBeCreated
                                          .value! >
                                      0) {
                                    final response = await _controller
                                        .cloneJob();
                                    if (context.mounted && response.isSuccess) {
                                      // TODO: Refactor this file.
                                      // ignore: lines_longer_than_80_chars
                                      await SuccessAlertWidget.showSuccessDialogWithInfo(
                                        context,
                                        context.l10n.jobClonedSuccessfully,
                                        'Following are the job numbers :',
                                        response.data?.join(', ') ?? '',
                                        showCopyIcon: true,
                                      );
                                      if (context.mounted) {
                                        Navigator.of(context).pop(true);
                                      }
                                    } else if (context.mounted) {
                                      await ErrorAlertWidget.showErrorMessage(
                                        context,
                                        response.errorMessage.isNotEmpty
                                            ? response.errorMessage
                                            : context.l10n.errorAndTryAgainMsg,
                                      );
                                    }
                                  }
                                } else {
                                  await ErrorAlertWidget.showErrorMessage(
                                    context,
                                    context.l10n.requiredFieldsErrorMsg,
                                  );
                                }
                              },
                        onCancel: () {
                          Navigator.of(context).pop();
                        },
                        buttons: [
                          if (_controller.readOnlyMap.values.any(
                            (notifier) => notifier.value == false,
                          ))
                            TextButton(
                              onPressed: _controller.resetWithInitialFieldLoads,
                              style: TextButton.styleFrom(
                                fixedSize: const Size(75, 18),
                              ),
                              child: Text(context.l10n.reset),
                            ),
                        ],
                        children: [
                          if (widget.mode == JobMode.clone)
                            EmrTabBarVerticalViewCard(
                              title: context.l10n.repeatLabel,
                              child: _buildRepeatCard(),
                            ),
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
                            title: context.l10n.ratesAndCosts,
                            child: _buildRatesCard(),
                          ),
                          EmrTabBarVerticalViewCard(
                            title: context.l10n.schedule,
                            child: _buildScheduleCard(),
                          ),
                          EmrTabBarVerticalViewCard(
                            title: context.l10n.notes,
                            child: _buildNotesCard(),
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

  Future<void> edit(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false == true) {
      final response = await _controller.updateJobDetailsbyId();
      if (context.mounted) {
        if (response.isSuccess) {
          await SuccessAlertWidget.showSuccessMessage(
            context,
            context.l10n.jobUpdatedSuccessfully,
          );
          if (context.mounted) {
            Navigator.of(context).pop(true);
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
      await ErrorAlertWidget.showErrorMessage(
        context,
        context.l10n.requiredFieldsErrorMsg,
      );
    }
  }

  Future<void> clone(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false == true) {
      if (_controller.numberOfJobsToBeCreated.value! > 0) {
        final response = await _controller.cloneJob();
        if (context.mounted) {
          if (response.isSuccess) {
            await SuccessAlertWidget.showSuccessDialogWithInfo(
              context,
              context.l10n.jobClonedSuccessfully,
              'Following are the job numbers :',
              response.data?.join(', ') ?? '',
              showCopyIcon: true,
            );
            if (context.mounted) {
              Navigator.of(context).pop(true);
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
      }
    } else {
      await ErrorAlertWidget.showErrorMessage(
        context,
        context.l10n.requiredFieldsErrorMsg,
      );
    }
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
                readOnly: _controller.readOnlyMap[StringConstants.basicDetails],
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
                readOnly: _controller.readOnlyMap[StringConstants.basicDetails],
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
                items: widget.jobListService.partySearchByAccountOrName,
                validator: Validators.required,
                readOnly: _controller.readOnlyMap[StringConstants.basicDetails],
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            Expanded(
              child: EmrDateFormField(
                labelText: context.l10n.dueDateLabel,
                binding: _controller.selectedDueDate,
                validator: Validators.required,
                readOnly: _controller.readOnlyMap[StringConstants.basicDetails],
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
                items: widget.jobListService.partySearchByAccountOrName,
                validator: Validators.required,
                enabled: _controller.isStartLocnEnabled,
                readOnly: _controller.readOnlyMap[StringConstants.basicDetails],
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
                readOnly: _controller.readOnlyMap[StringConstants.basicDetails],
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
                items: widget.jobListService.partySearchByAccountOrName,
                validator: Validators.required,
                enabled: _controller.isEndLocnEnabled,
                readOnly: _controller.readOnlyMap[StringConstants.basicDetails],
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
                          readOnly: _controller
                              .readOnlyMap[StringConstants.basicDetails],
                          enabled: _controller.selectedproductType.value != null
                              ? ValueNotifier(true)
                              : ValueNotifier(false),
                        );
                },
              ),
            ),
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
        ValueListenableBuilder<List<Containers>>(
          valueListenable: _controller.customerLocnContainerTypes,
          builder: (context, customerLocnContainers, child) {
            return EmrPickerFormField(
              key: GlobalKey(),
              labelText:
                  '${context.l10n.customerLocation} '
                  '${context.l10n.containers} & '
                  '${context.l10n.trailers}',
              items: (_) => Future.value(customerLocnContainers),
              itemTitleText: (item) => item.assetNumber != null
                  ? '${item.assetNumber}'
                        ' - ${item.containerType}'
                  : item.containerType ?? '',
              binding: _controller.selectedCustomerLocnContainer,
              validator: (value) {
                if (_controller.addedCustomerLocnContainers.value
                    .where((e) => (e.active ?? true) == true)
                    .isEmpty) {
                  return '${context.l10n.required}  '
                      '( ${context.l10n.noAddedContainerFound}'
                      ' )';
                }
                return null;
              },
              readOnly: _controller.readOnlyMap[StringConstants.container],
            );
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
                    if (list.where((e) => (e.active ?? true) == true).isEmpty) {
                      return _emptyContainerWarningWidget();
                    } else {
                      return getAddedCstmrLocnContainers();
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
        ValueListenableBuilder<List<Containers>>(
          valueListenable: _controller.startLocnContainerTypes,
          builder: (context, startLocnContainers, child) {
            return EmrPickerFormField(
              key: GlobalKey(),
              labelText:
                  '${context.l10n.startLocation} '
                  '${context.l10n.containers} & '
                  '${context.l10n.trailers}',
              items: (_) => Future.value(startLocnContainers),
              itemTitleText: (item) => item.assetNumber != null
                  ? '${item.assetNumber}'
                        ' - ${item.containerType}'
                  : item.containerType ?? '',
              binding: _controller.selectedStartLocnContainer,
              validator: (value) {
                if (_controller.addedStartLocnContainers.value
                    .where((e) => (e.active ?? true) == true)
                    .isEmpty) {
                  return '${context.l10n.required}  '
                      '( ${context.l10n.noAddedContainerFound}'
                      ' )';
                }
                return null;
              },
              readOnly: _controller.readOnlyMap[StringConstants.container],
            );
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
                    if (list.where((e) => (e.active ?? true) == true).isEmpty) {
                      return _emptyContainerWarningWidget();
                    } else {
                      return getAddedStartLocnContainers();
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
                readOnly: _controller.readOnlyMap[StringConstants.schedule],
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            Expanded(
              child: ListenableBuilder(
                listenable: _controller.selectedhaulier,
                builder: (_, __) {
                  final enableScheduleDateAndLock =
                      _controller.selectedhaulier.value != null;
                  return Row(
                    children: [
                      Expanded(
                        child: EmrDateFormField(
                          labelText: context.l10n.scheduledDate,
                          binding: _controller.selectedScheduledDate,
                          enabled: ValueNotifier(enableScheduleDateAndLock),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: enableScheduleDateAndLock
                              ? Validators.required
                              : null,
                          readOnly:
                              _controller.readOnlyMap[StringConstants.schedule],
                        ),
                      ),
                      GestureDetector(
                        onTap:
                            (enableScheduleDateAndLock &&
                                !_controller
                                    .readOnlyMap[StringConstants.schedule]!
                                    .value)
                            ? () {
                                _controller.isLocked.value =
                                    !_controller.isLocked.value;
                              }
                            : null,
                        child: ValueListenableBuilder<bool>(
                          valueListenable: _controller.isLocked,
                          builder: (context, isLocked, child) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                top: Insets.gutter,
                                left: Insets.gutter,
                                bottom: Insets.gutter,
                              ),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Tooltip(
                                  message: isLocked
                                      ? context.l10n.unlockJobFromScheduledDate
                                      : context.l10n.lockJobToScheduleDate,
                                  child: Icon(
                                    isLocked ? Icons.lock : Icons.lock_open,
                                    size: 36,
                                    color: TransportAppColors
                                        .timIntervalHourDotColor,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: Insets.gutter),
        Row(
          children: [
            Expanded(
              child: ListenableBuilder(
                listenable: _controller.proposedDuration,
                builder: (_, __) {
                  return ValueListenableBuilder(
                    valueListenable:
                        _controller.readOnlyMap[StringConstants.jobDuration]!,
                    builder: (context, val, child) {
                      return IgnorePointer(
                        ignoring: val,
                        child: BuildColumnWithControl(
                          label: context.l10n.jobDuration,
                          control: TimePicker(
                            onTimeChanged: _controller.proposedDuration,
                            initialTimeInMinutes:
                                _controller.proposedDuration.value,
                          ),
                        ),
                      );
                    },
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

  Widget _buildRatesCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '${context.l10n.provisionalRate} :',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Constants.fontSizeXL,
              ),
            ),
            AnimatedBuilder(
              animation: _showNoRatesAvailable,
              builder: (context, _) {
                final options = _controller.provisionalRateOptions.value;
                final isLoading = _controller.loadingPrices.value;
                if (options.isEmpty && !isLoading) {
                  return Text(' ${context.l10n.noRatesAvailable}');
                } else if (isLoading) {
                  return const Center(
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: LoadingIndicator(),
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                width: Insets.gutter * 20,
                child: ValueListenableBuilder(
                  valueListenable: _controller.provisionalRateOptions,
                  builder: (context, rateList, _) {
                    if (rateList.isEmpty) {
                      return const SizedBox.shrink();
                    }
                    final editPriceMatrixUrl =
                        '${widget.appConfig.transportHomePageUrl}'
                        '/${StringConstants.kHaulierCreatePriceMatrixUrl}'
                        '?priceMatrixId=';
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: Insets.gutter),
                        ProvisionalCosts(
                          options: rateList,
                          editPriceMatrixUrl: editPriceMatrixUrl,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: Insets.gutter),
          child: FilledButton(
            onPressed: () {
              launchUrl(
                Uri.parse(
                  '${widget.appConfig.transportHomePageUrl}'
                  '/${StringConstants.kHaulierCreatePriceMatrixUrl}',
                ),
                webOnlyWindowName: '_blank',
              );
            },
            child: Text(context.l10n.createPriceMatrix),
          ),
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
                readOnly: _controller.readOnlyMap[StringConstants.notes],
              ),
            ),
            const SizedBox(width: 48),
            Expanded(
              child: EmrTextFormField(
                labelText: context.l10n.officeNotes,
                maxLines: 3,
                keyboardType: TextInputType.multiline,
                hintText:
                    '${context.l10n.additionalNotes} '
                    '(${context.l10n.visibleToDispatchersNote})',
                binding: _controller.officeNotes,
                readOnly: _controller.readOnlyMap[StringConstants.notes],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRepeatCard() {
    return EmrStepperFormField(
      key: GlobalKey(),
      labelText: context.l10n.noOfJobsToCreate,
      binding: _controller.numberOfJobsToBeCreated,
      validator: (value) => Validators.join([
        Validators.integer(value, min: 1, max: Constants.maxContainersAllowed),
        Validators.required(value),
      ]),
      readOnly: _controller.readOnlyMap[StringConstants.repeat],
    );
  }

  Widget getAddedCstmrLocnContainers() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _controller.addedCustomerLocnContainers.value.length,
      itemBuilder: (context, index) {
        final notificationController = context
            .read<EmrOneNotificationController>();
        final currentContainer =
            _controller.addedCustomerLocnContainers.value[index];
        if ((currentContainer.active ?? true) == false) {
          return const SizedBox.shrink();
        }
        return Padding(
          padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
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
                    child: SelectableText(
                      currentContainer.suggestedAssetNumber != null &&
                              !(currentContainer.suggestedAssetNumber?.contains(
                                    'Any',
                                  ) ??
                                  true)
                          ? '${currentContainer.suggestedAssetNumber} - '
                                '${currentContainer.containerType}'
                          : '${currentContainer.containerType}',
                      style: const TextStyle(fontSize: Insets.gutter),
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
                      readOnly:
                          currentContainer.suggestedAssetNumber != null &&
                              !(currentContainer.suggestedAssetNumber?.contains(
                                    'Any',
                                  ) ??
                                  true)
                          ? ValueNotifier<bool>(true)
                          : _controller.readOnlyMap[StringConstants.container],
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
                  onPressed:
                      _controller.readOnlyMap[StringConstants.container]!.value
                      ? null
                      : () {
                          if (_controller.mode == JobMode.edit) {
                            if (_controller.addedCustomerLocnContainers.value
                                .any(
                                  (item) =>
                                      item.containerType ==
                                          currentContainer.containerType &&
                                      item.suggestedAssetNumber ==
                                          currentContainer
                                              .suggestedAssetNumber &&
                                      (item.active ?? true) == true &&
                                      item.assetNumberUsed != null,
                                )) {
                              notificationController.showNotification(
                                EmrOneErrorNotification(
                                  title: context.l10n.error,
                                  description:
                                      context.l10n.containerAlreadyScannedMsg,
                                ),
                              );
                            } else {
                              _controller.addedCustomerLocnContainers.value =
                                  List.from(
                                    _controller
                                        .addedCustomerLocnContainers
                                        .value,
                                  )..forEach((item) {
                                    if (item.containerType ==
                                            currentContainer.containerType &&
                                        item.suggestedAssetNumber ==
                                            currentContainer
                                                .suggestedAssetNumber) {
                                      item.active = false;
                                    }
                                  });
                            }
                          } else {
                            _controller.addedCustomerLocnContainers.value =
                                List.from(
                                  _controller.addedCustomerLocnContainers.value,
                                )..removeWhere(
                                  (item) =>
                                      item.containerType ==
                                          currentContainer.containerType &&
                                      item.suggestedAssetNumber ==
                                          currentContainer.suggestedAssetNumber,
                                );
                          }
                        },
                  child: Text(
                    context.l10n.removeButtonText,
                    style: const TextStyle(fontSize: Insets.gutter),
                  ),
                ),
                const SizedBox(width: Insets.gutter),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget getAddedStartLocnContainers() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _controller.addedStartLocnContainers.value.length,
      itemBuilder: (context, index) {
        final notificationController = context
            .read<EmrOneNotificationController>();
        final currentContainer =
            _controller.addedStartLocnContainers.value[index];
        if ((currentContainer.active ?? true) == false) {
          return const SizedBox.shrink();
        }
        return Padding(
          padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
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
                    child: SelectableText(
                      currentContainer.suggestedAssetNumber != null &&
                              !(currentContainer.suggestedAssetNumber?.contains(
                                    'Any',
                                  ) ??
                                  true)
                          ? '${currentContainer.suggestedAssetNumber} - '
                                '${currentContainer.containerType}'
                          : '${currentContainer.containerType}',
                      style: const TextStyle(fontSize: Insets.gutter),
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
                      readOnly:
                          currentContainer.suggestedAssetNumber != null &&
                              !(currentContainer.suggestedAssetNumber?.contains(
                                    'Any',
                                  ) ??
                                  true)
                          ? ValueNotifier<bool>(true)
                          : _controller.readOnlyMap[StringConstants.container],
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
                  onPressed:
                      _controller.readOnlyMap[StringConstants.container]!.value
                      ? null
                      : () {
                          if (_controller.mode == JobMode.edit) {
                            if (_controller.addedStartLocnContainers.value.any(
                              (item) =>
                                  item.containerType ==
                                      currentContainer.containerType &&
                                  item.suggestedAssetNumber ==
                                      currentContainer.suggestedAssetNumber &&
                                  (item.active ?? true) == true &&
                                  item.assetNumberUsed != null,
                            )) {
                              notificationController.showNotification(
                                EmrOneErrorNotification(
                                  title: StringConstants.errorDisplay,
                                  description: StringConstants
                                      .containerAlreadyScannedMsg,
                                ),
                              );
                            } else {
                              _controller.addedStartLocnContainers.value =
                                  List.from(
                                    _controller.addedStartLocnContainers.value,
                                  )..forEach((item) {
                                    if (item.containerType ==
                                            currentContainer.containerType &&
                                        item.suggestedAssetNumber ==
                                            currentContainer
                                                .suggestedAssetNumber) {
                                      item.active = false;
                                    }
                                  });
                            }
                          } else {
                            _controller.addedStartLocnContainers.value =
                                List.from(
                                  _controller.addedStartLocnContainers.value,
                                )..removeWhere(
                                  (item) =>
                                      item.containerType ==
                                          currentContainer.containerType &&
                                      item.suggestedAssetNumber ==
                                          currentContainer.suggestedAssetNumber,
                                );
                          }
                        },
                  child: const Text(
                    StringConstants.remove,
                    style: TextStyle(fontSize: Insets.gutter),
                  ),
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
