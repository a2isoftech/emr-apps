import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/planner/planner_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/jobs/container_details.dart';
import 'package:emr_one_transport/data/models/jobs/containers.dart';
import 'package:emr_one_transport/data/services/haulier_service.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/haulier_load_widget.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/provisional_costs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class CreatePlan extends StatefulWidget {
  const CreatePlan(this.appConfig, {super.key});
  final AppConfig appConfig;

  @override
  State<CreatePlan> createState() => _CreatePlanState();
}

class _CreatePlanState extends State<CreatePlan> {
  late JobListService joblistservice;
  late HaulierService haulierService;
  late PlannerController controller;
  late EmrOneNotificationController notificationController;

  late final Listenable _showNoRatesAvailable;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    joblistservice = Provider.of<JobListService>(context, listen: false);
    haulierService = Provider.of<HaulierService>(context, listen: false);
    controller = Provider.of<PlannerController>(context, listen: false);
    notificationController = context.read<EmrOneNotificationController>();

    _showNoRatesAvailable = Listenable.merge([
      controller.selectedJobtype,
      controller.provisionalRateOptions,
    ]);
    controller.fetchPlanDetails(null);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PlannerController>(
      builder: (context, val, child) => Stack(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: EmrTabBarVerticalView(
                    columns: const [1, 1, 1, 1, 1, 1],
                    onSave: () async {
                      if (_validateForm() && _validateLoads()) {
                        final response = await controller.createPlan();
                        if (context.mounted) {
                          if (response.isSuccess) {
                            await SuccessAlertWidget.showSuccessDialogWithInfo(
                              context,
                              context.l10n.planCreatedSuccessfully,
                              '${context.l10n.planNumberFollowsMsg} :',
                              response.data?.planNumber.toString() ?? '',
                              showCopyIcon: true,
                            );
                            if (context.mounted) {
                              context.goNamed(RoutingPathName.planner);
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
                    },
                    onCancel: () {
                      context.goNamed(RoutingPathName.planner);
                    },
                    buttons: [
                      TextButton(
                        onPressed: controller.resetFields,
                        style: TextButton.styleFrom(
                          fixedSize: const Size(75, 18),
                        ),
                        child: Text(context.l10n.reset),
                      ),
                    ],
                    children: [
                      EmrTabBarVerticalViewCard(
                        title: context.l10n.planDetails,
                        child: _buildPlanDetailsCard(),
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
                        title: context.l10n.haulier,
                        child: _buildHaulageCard(),
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
          if (controller.isLoading) const LoadingIndicator(),
        ],
      ),
    );
  }

  Widget _buildPlanDetailsCard() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: EmrPickerFormField(
                labelText: context.l10n.typeofJob,
                validator: Validators.required,
                items: (_) => Future.value(controller.jobTypes),
                itemTitleText: (item) => item,
                binding: controller.selectedJobtype,
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            Expanded(
              child: EmrPickerFormField(
                labelText: context.l10n.dispatchYard,
                validator: Validators.required,
                items: (_) => Future.value(controller.dispatchYards),
                itemTitleText: (item) => item,
                binding: controller.selectedDispatchYard,
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
                binding: controller.selectedCustomerLocation,
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
                validator: Validators.required,
                items: (_) async {
                  if (controller.productTypes.isNotEmpty) {
                    return Future.value(controller.productTypes);
                  } else {
                    final response = await joblistservice.getProductTypes();
                    return response
                        .map((e) => e.description ?? e.code ?? '')
                        .toList();
                  }
                },
                itemTitleText: (item) => item,
                binding: controller.selectedProductType,
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
                binding: controller.selectedStartLocation,
                itemTitleText: StringHelper.buildAccountAddress,
                items: (query) =>
                    joblistservice.partySearchByAccountOrName(query),
                validator: Validators.required,
                enabled: controller.isStartLocnEnabled,
              ),
            ),
            const SizedBox(width: Insets.gutter * 4),
            Expanded(
              child: ListenableBuilder(
                listenable: Listenable.merge([
                  controller.products,
                  controller.selectedProductType,
                ]),
                builder: (_, __) {
                  return controller.isProductLoading
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
                          items: (_) => Future.value(controller.products.value),
                          itemTitleText: (item) =>
                              (item.description?.isNotEmpty ?? false)
                              ? '${item.code} - ${item.description}'
                              : item.code,
                          binding: controller.selectedProduct,
                          enabled: controller.selectedProductType.value != null
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
                binding: controller.selectedEndLocation,
                itemTitleText: StringHelper.buildAccountAddress,
                items: (query) =>
                    joblistservice.partySearchByAccountOrName(query),
                validator: Validators.required,
                enabled: controller.isEndLocnEnabled,
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
      valueListenable: controller.selectedJobtype,
      builder: (context, selectedJobtype, child) {
        if (selectedJobtype != null) {
          final showCustomerLocnContainers = controller
              .showCustomerLocationContainers(selectedJobtype);
          final showStartLocnContainers = controller
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
        BuildColumnWithControl(
          label:
              '${context.l10n.customerLocation} '
              '${context.l10n.containers} & '
              '${context.l10n.trailers}',
          control: EmrPickerFormField(
            items: (_) =>
                Future.value(controller.customerLocnContainerTypes.value),
            itemTitleText: (item) => item.assetNumber != null
                ? '${item.assetNumber}'
                      ' - ${item.containerType}'
                : item.containerType ?? '',
            binding: controller.selectedCustomerLocnContainer,
            validator: (value) {
              if (controller.addedCustomerLocnContainers.value.isEmpty) {
                return '${context.l10n.required}  '
                    '( '
                    '${context.l10n.noAddedContainerFound}'
                    ' )';
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 6,
            top: Insets.gutter * 2,
            bottom: 28,
          ),
          child: Text(
            context.l10n.addedContainers,
            style: const TextStyle(fontSize: Constants.fontSizeXL),
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
                child: ValueListenableBuilder<Containers?>(
                  valueListenable: controller.selectedCustomerLocnContainer,
                  builder: (context, selectedcontainer, child) {
                    if (selectedcontainer?.containerType != null &&
                        controller.addedCustomerLocnContainers.value.length <
                            9 &&
                        !controller.addedCustomerLocnContainers.value.any(
                          (e) =>
                              e.containerType ==
                                  selectedcontainer?.containerType &&
                              e.suggestedAssetNumber ==
                                  selectedcontainer?.assetNumber,
                        )) {
                      controller.addedCustomerLocnContainers.value = [
                        ...controller.addedCustomerLocnContainers.value,
                        ContainerDetails(
                          containerType: selectedcontainer?.containerType,
                          suggestedAssetNumber: selectedcontainer?.assetNumber,
                        ),
                      ];
                    }
                    return ValueListenableBuilder<List<ContainerDetails>>(
                      valueListenable: controller.addedCustomerLocnContainers,
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
        const SizedBox(height: 14),
      ],
    );
  }

  Widget _buildStartLocnAddedContainerswidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildColumnWithControl(
          label:
              '${context.l10n.startLocation} '
              '${context.l10n.containers} & '
              '${context.l10n.trailers}',
          control: EmrPickerFormField(
            items: (_) =>
                Future.value(controller.startLocnContainerTypes.value),
            itemTitleText: (item) => item.assetNumber != null
                ? '${item.assetNumber}'
                      ' - ${item.containerType}'
                : item.containerType ?? '',
            binding: controller.selectedStartLocnContainer,
            validator: validateStartLocationContainer,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 6,
            top: Insets.gutter * 2,
            bottom: 28,
          ),
          child: Text(
            context.l10n.addedContainers,
            style: const TextStyle(fontSize: Constants.fontSizeXL),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: ValueListenableBuilder<Containers?>(
                  valueListenable: controller.selectedStartLocnContainer,
                  builder: (context, selectedcontainer, child) {
                    if (selectedcontainer?.containerType != null &&
                        controller.addedStartLocnContainers.value.length < 9 &&
                        !controller.addedStartLocnContainers.value.any(
                          (e) =>
                              e.containerType ==
                                  selectedcontainer?.containerType &&
                              e.suggestedAssetNumber ==
                                  selectedcontainer?.assetNumber,
                        )) {
                      controller.addedStartLocnContainers.value = [
                        ...controller.addedStartLocnContainers.value,
                        ContainerDetails(
                          containerType: selectedcontainer?.containerType,
                          suggestedAssetNumber: selectedcontainer?.assetNumber,
                        ),
                      ];
                    }
                    return ValueListenableBuilder<List<ContainerDetails>>(
                      valueListenable: controller.addedStartLocnContainers,
                      builder: (context, list, child) {
                        if (list.isEmpty && !isLiveLoadJob) {
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
        const SizedBox(height: 24),
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
            const SizedBox(width: 6),
            Text(
              context.l10n.containerReqWarningMsg,
              style: const TextStyle(fontSize: Constants.iconSizeS),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHaulageCard() {
    return ValueListenableBuilder(
      valueListenable: controller.schedulePlanController.schedulePlanDetail,
      builder: (context, detail, child) {
        return Column(
          children: [
            HaulierLoadWidget(
              hauliers: detail,
              schedulePlanController: controller.schedulePlanController,
              deleteReasons: controller.schedulePlanController.deleteReasons,
            ),
          ],
        );
      },
    );
  }

  Widget _buildScheduleCard() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: Insets.gutter),
                  BuildColumnWithControl(
                    label: context.l10n.planDate,
                    control: Row(
                      children: [
                        Expanded(
                          child: EmrDateFormField(
                            binding: controller.selectedScheduledDate,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: Insets.gutter),
                  BuildColumnWithControl(
                    label: context.l10n.clonePlanForDays,
                    control: Row(
                      children: [
                        Expanded(
                          child: EmrButtonGroupFormField(
                            options: controller.days,
                            binding: controller.selectedDays,
                            mode: EmrButtonGroupFormFieldMode.multiple,
                          ),
                        ),
                      ],
                    ),
                  ),
                  BuildColumnWithControl(
                    label: context.l10n.due,
                    control: Row(
                      children: [
                        Expanded(
                          child: EmrPickerFormField(
                            items: (_) => Future.value(controller.due),
                            itemTitleText: (item) => item,
                            binding: controller.selectedDue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 245,
              child: BuildColumnWithControl(
                label: context.l10n.totalLoads,
                control: Row(
                  children: [
                    Expanded(
                      child: EmrStepperFormField(
                        binding: controller.selectedTotalLoad,
                        validator: (value) => Validators.join([
                          Validators.required(value),
                          Validators.integer(value, min: 1),
                          controller.schedulePlanController.loadsValidator(
                            value,
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: Insets.gutter),
            SizedBox(
              width: 245,
              child: EmrUomFormField(
                labelText: context.l10n.weightPerLoad,
                binding: controller.uomValueNotifier,
              ),
            ),
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
                final options = controller.provisionalRateOptions.value;
                final isLoading = controller.loadingPrices.value;
                if (options.isEmpty && !isLoading) {
                  return Center(
                    child: Text(' ${context.l10n.noRatesAvailable}'),
                  );
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
          children: [
            Expanded(
              child: SizedBox(
                width: Insets.gutter * 20,
                child: ValueListenableBuilder(
                  valueListenable: controller.provisionalRateOptions,
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
                binding: controller.dispatcherNotes,
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
                binding: controller.officeNotes,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _getAddedStartLocnContainers() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: controller.addedStartLocnContainers.value.length,
      itemBuilder: (context, index) {
        final currentContainer =
            controller.addedStartLocnContainers.value[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: Insets.gutter - 6),
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
                    padding: const EdgeInsets.only(left: Insets.gutter - 4),
                    child: Text(
                      currentContainer.suggestedAssetNumber != null
                          ? '[${currentContainer.suggestedAssetNumber}] - '
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
                      labelText: context.l10n.quantity,
                      binding: currentContainer.quantity,
                      visible: ValueNotifier<bool>(true),
                      validator: (value) => Validators.join([
                        Validators.integer(
                          value,
                          min: 1,
                          max: Constants.maxContainersAllowed,
                        ),
                        Validators.required(value),
                      ]),
                      readOnly: currentContainer.suggestedAssetNumber != null
                          ? ValueNotifier<bool>(true)
                          : ValueNotifier<bool>(false),
                    ),
                  ),
                ),
                FilledButton(
                  style: EmrButtonStyles.danger(),
                  onPressed: () {
                    controller.selectedStartLocnContainer.value = null;
                    controller.addedStartLocnContainers.value =
                        List.from(controller.addedStartLocnContainers.value)
                          ..removeWhere(
                            (item) =>
                                item.containerType ==
                                    currentContainer.containerType &&
                                item.suggestedAssetNumber ==
                                    currentContainer.suggestedAssetNumber,
                          );
                  },
                  child: Text(
                    context.l10n.removeButtonText,
                    style: const TextStyle(fontSize: Insets.gutter),
                  ),
                ),
                const SizedBox(width: 12),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _getAddedCstmrLocnContainers() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: controller.addedCustomerLocnContainers.value.length,
      itemBuilder: (context, index) {
        if (controller.addedCustomerLocnContainers.value.isNotEmpty) {
          final currentContainer =
              controller.addedCustomerLocnContainers.value[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: Insets.gutter - 6),
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
                      padding: const EdgeInsets.only(left: Insets.gutter - 4),
                      child: Text(
                        currentContainer.suggestedAssetNumber != null
                            ? '[${currentContainer.suggestedAssetNumber}] - '
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
                        labelText: context.l10n.quantity,
                        binding: currentContainer.quantity,
                        visible: ValueNotifier<bool>(true),
                        validator: (value) => Validators.join([
                          Validators.integer(
                            value,
                            min: 1,
                            max: Constants.maxContainersAllowed,
                          ),
                          Validators.required(value),
                        ]),
                        readOnly: currentContainer.suggestedAssetNumber != null
                            ? ValueNotifier<bool>(true)
                            : ValueNotifier<bool>(false),
                      ),
                    ),
                  ),
                  FilledButton(
                    style: EmrButtonStyles.danger(),
                    onPressed: () {
                      controller.selectedCustomerLocnContainer.value = null;
                      controller.addedCustomerLocnContainers.value =
                          List.from(
                            controller.addedCustomerLocnContainers.value,
                          )..removeWhere(
                            (item) =>
                                item.containerType ==
                                    currentContainer.containerType &&
                                item.suggestedAssetNumber ==
                                    currentContainer.suggestedAssetNumber,
                          );
                    },
                    child: Text(
                      context.l10n.removeButtonText,
                      style: const TextStyle(fontSize: Insets.gutter),
                    ),
                  ),
                  const SizedBox(width: 12),
                ],
              ),
            ),
          );
        }
        return null;
      },
    );
  }

  bool _validateLoads() {
    final isValid = controller.validateLoads();
    if (!isValid) {
      notificationController.showNotification(
        EmrOneErrorNotification(
          title: context.l10n.error,
          description: context.l10n.planLoadsError,
        ),
      );
    }
    return isValid;
  }

  bool _validateForm() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      notificationController.showNotification(
        EmrOneErrorNotification(
          title: context.l10n.error,
          description: context.l10n.fixValidationDisplay,
        ),
      );
    }
    return isValid;
  }

  String? validateStartLocationContainer(String? val) {
    if (isLiveLoadJob) {
      return null;
    }
    if (controller.addedStartLocnContainers.value.isEmpty) {
      return '${context.l10n.required}  '
          '( '
          '${context.l10n.noAddedContainerFound}'
          ' )';
    }
    return null;
  }

  bool get isLiveLoadJob =>
      controller.selectedJobtype.value == StringConstants.liveLoadDisplay;
}
