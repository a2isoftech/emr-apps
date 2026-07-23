import 'dart:async';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_create_edit_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/jobs/container_details.dart';
import 'package:emr_one_transport/data/models/jobs/containers.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/screens/jobs/edit_or_clone_job.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/provisional_costs.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/time_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class CreateJob extends StatefulWidget {
  const CreateJob(this.appConfig, {super.key});
  final AppConfig appConfig;

  @override
  State<CreateJob> createState() => _CreateJobState();
}

class _CreateJobState extends State<CreateJob> {
  final _formKey = GlobalKey<FormState>();
  late final JobListService joblistservice;
  late JobCreateEditController _controller;
  late final Listenable _showNoRatesAvailable;
  double? screenWidth;

  @override
  void initState() {
    joblistservice = Provider.of<JobListService>(context, listen: false);
    _controller = Provider.of<JobCreateEditController>(context, listen: false);
    _controller.initialize(null, JobMode.create);
    _showNoRatesAvailable = Listenable.merge([
      _controller.selectedJobtype,
      _controller.provisionalRateOptions,
    ]);
    super.initState();
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

    return Consumer<JobCreateEditController>(
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
                        final response = await _controller.createJob();
                        if (context.mounted) {
                          if (response.isSuccess) {
                            await SuccessAlertWidget.showSuccessDialogWithInfo(
                              context,
                              context.l10n.jobsCreatedSuccessfully,
                              '${context.l10n.jobNumbersFollowsMsg} :',
                              response.data?.jobNumber.toString() ?? '',
                              showCopyIcon: true,
                            );
                            if (context.mounted) {
                              context.goNamed(RoutingPathName.jobs);
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
                      context.goNamed(RoutingPathName.jobs);
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
              child: EmrDateFormField(
                labelText: context.l10n.dueDateLabel,
                binding: _controller.selectedDueDate,
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
                if (_controller.addedCustomerLocnContainers.value.isEmpty) {
                  return '${context.l10n.required}  '
                      '( ${context.l10n.noAddedContainerFound}'
                      ' )';
                }
                return null;
              },
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
                    if (list.isEmpty) {
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
                if (_controller.addedStartLocnContainers.value.isEmpty) {
                  return '${context.l10n.required}  '
                      '( ${context.l10n.noAddedContainerFound}'
                      ' )';
                }
                return null;
              },
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
                    if (list.isEmpty) {
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
                items: (query) =>
                    joblistservice.searchTruckHaulierForUser(query),
                itemSubtitleText: (haulier) {
                  return StringHelper.getHaulierDisplayType(
                    haulier.haulierType!,
                  );
                },
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
                        ),
                      ),
                      GestureDetector(
                        onTap: enableScheduleDateAndLock
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
                    return ValueListenableBuilder(
                      valueListenable: _controller.selectedhaulier,
                      builder: (context, haulier, _) {
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
                                  title: context.l10n.error,
                                  description:
                                      context.l10n.containerAlreadyScannedMsg,
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
}
