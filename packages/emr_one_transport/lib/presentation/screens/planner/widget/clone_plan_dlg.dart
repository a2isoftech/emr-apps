import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/data/controllers/planner/clone_plan_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/product.dart';
import 'package:emr_one_transport/data/models/jobs/container_details.dart';
import 'package:emr_one_transport/data/models/plans/plan_response.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClonePlanDialog extends StatefulWidget {
  const ClonePlanDialog({
    required this.plan,
    required this.controller,
    super.key,
  });

  final PlanResponse plan;
  final ClonePlanController controller;

  @override
  State<ClonePlanDialog> createState() => _ClonePlanDialogState();
}

class _ClonePlanDialogState extends State<ClonePlanDialog> {
  @override
  void initState() {
    widget.controller.setFieldValues(widget.plan);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ClonePlanController>.value(
      value: widget.controller,
      child: Consumer<ClonePlanController>(
        builder: (context, controller, child) {
          return Stack(
            children: [
              SizedBox(
                width: 700,
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: Insets.gutter / 2,
                    children: [
                      BuildColumnWithControl(
                        label: '${context.l10n.scheduledDate} :',
                        control: EmrDateFormField(
                          key: GlobalKey(),
                          binding: widget.controller.cloneDate,
                        ),
                        isBoldLabel: true,
                      ),
                      BuildColumnWithControl(
                        label: context.l10n.productFamily,
                        control: EmrPickerFormField(
                          validator: Validators.required,
                          items: (_) =>
                              Future.value(widget.controller.productTypes),
                          itemTitleText: (item) => item,
                          binding: widget.controller.selectedProductType,
                        ),
                        isBoldLabel: true,
                      ),
                      ListenableBuilder(
                        listenable: Listenable.merge([
                          widget.controller.products,
                          widget.controller.selectedProductType,
                        ]),
                        builder: (_, __) {
                          return controller.isProductLoading
                              ? const Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: Insets.gutter * 2,
                                    ),
                                    child: SizedBox(
                                      height: 32,
                                      width: 32,
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                )
                              : BuildColumnWithControl(
                                  key: GlobalKey(),
                                  label: context.l10n.products,
                                  control: EmrMultiPickerFormField(
                                    items: (_) => Future.value(
                                      widget.controller.products.value,
                                    ),
                                    itemTitleText: (item) =>
                                        '${item.code} - ${item.description}',
                                    binding: widget.controller.selectedProduct,
                                    enabled:
                                        widget
                                                .controller
                                                .selectedProductType
                                                .value !=
                                            null
                                        ? ValueNotifier(true)
                                        : ValueNotifier(false),
                                  ),
                                  isBoldLabel: true,
                                );
                        },
                      ),
                      ValueListenableBuilder<List<Product>>(
                        valueListenable: widget.controller.selectedProduct,
                        builder: (context, selectedproduct, child) {
                          return const SizedBox(height: Insets.gutter / 2);
                        },
                      ),
                      BuildColumnWithControl(
                        label: context.l10n.totalLoads,
                        control: EmrStepperFormField(
                          validator: (value) => Validators.join([
                            Validators.required(value),
                            Validators.integer(value, min: 1),
                          ]),
                          binding: widget.controller.loads,
                        ),
                        isBoldLabel: true,
                      ),
                      _buildContainersCard(),
                      BuildColumnWithControl(
                        label: context.l10n.clone,
                        control: Row(
                          children: [
                            Expanded(
                              child: EmrButtonGroupFormField(
                                key: GlobalKey(),
                                options: widget.controller.days,
                                binding: widget.controller.selectedDays,
                                mode: EmrButtonGroupFormFieldMode.multiple,
                              ),
                            ),
                          ],
                        ),
                        isBoldLabel: true,
                      ),
                    ],
                  ),
                ),
              ),
              if (widget.controller.isLoading)
                const Positioned.fill(child: Center(child: LoadingIndicator())),
            ],
          );
        },
      ),
    );
  }

  Widget _buildContainersCard() {
    widget.controller.getContainers();
    final selectedJobtype = ValueNotifier('');
    final jobType = widget.plan.jobType!;

    selectedJobtype.value = jobTypeFromApiValue(jobType).toString();

    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: 24),
              ValueListenableBuilder<String>(
                valueListenable: selectedJobtype,
                builder: (context, selectedJobtype, child) {
                  if (_showCustomerLocationContainers(selectedJobtype)) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BuildColumnWithControl(
                          label:
                              '${context.l10n.customerLocation} '
                              '${context.l10n.containers}',
                          control: EmrPickerFormField(
                            validator: (val) => validateContainer(
                              val,
                              isCustomerContainer: true,
                            ),
                            items: (_) => Future.value(
                              widget
                                  .controller
                                  .customerLocnContainerTypes
                                  .value,
                            ),
                            itemTitleText: (item) => item.assetNumber != null
                                ? '${item.assetNumber}'
                                      ' - ${item.containerType}'
                                : item.containerType ?? '',
                            binding:
                                widget.controller.selectedCustomerLocnContainer,
                          ),
                          isBoldLabel: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: Insets.gutter / 2,
                            top: Insets.gutter / 2,
                            bottom: 28,
                          ),
                          child: Text(
                            context.l10n.addedContainers,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: _buildCustomerLocationContainer()),
                          ],
                        ),
                        if (_showStartLocationContainers(selectedJobtype)) ...[
                          const SizedBox(height: 50),
                        ],
                        const SizedBox(height: 14),
                      ],
                    );
                  } else {
                    return const SizedBox(height: 4);
                  }
                },
              ),
              ValueListenableBuilder<String>(
                valueListenable: selectedJobtype,
                builder: (context, selectedJobtype, child) {
                  if (_showStartLocationContainers(selectedJobtype)) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BuildColumnWithControl(
                          label:
                              '${context.l10n.startLocation} '
                              '${context.l10n.containers}',
                          control: EmrPickerFormField(
                            validator: (val) => validateContainer(
                              val,
                              isCustomerContainer: false,
                            ),
                            items: (_) => Future.value(
                              widget.controller.startLocnContainerTypes.value,
                            ),
                            itemTitleText: (item) => item.assetNumber != null
                                ? '${item.assetNumber}'
                                      ' - ${item.containerType}'
                                : item.containerType ?? '',
                            binding:
                                widget.controller.selectedStartLocnContainer,
                          ),
                          isBoldLabel: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: Insets.gutter / 2,
                            top: Insets.gutter / 2,
                            bottom: Insets.gutter,
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
                              child:
                                  ValueListenableBuilder<
                                    List<ContainerDetails>
                                  >(
                                    valueListenable: widget
                                        .controller
                                        .addedStartLocnContainers,
                                    builder: (context, list, child) {
                                      return _getaddedStartLocnContainerBox();
                                    },
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                      ],
                    );
                  } else {
                    return const SizedBox(height: 12);
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  bool _showCustomerLocationContainers(String selectedJobtype) {
    final jobswithcustomerlocationcontainers = [
      JobType.swap.toString(),
      JobType.pickUp.toString(),
      JobType.yardWork.toString(),
      JobType.pullAndReturn.toString(),
      JobType.emptyContainer.toString(),
    ];

    return jobswithcustomerlocationcontainers.any(
      (e) => e.toLowerCase() == selectedJobtype.toLowerCase(),
    );
  }

  bool _showStartLocationContainers(String selectedJobtype) {
    final jobswithstartlocationcontainers = [
      JobType.swap.toString(),
      JobType.dropOff.toString(),
      JobType.liveLoad.toString(),
      JobType.sales.toString(),
    ];

    return jobswithstartlocationcontainers.any(
      (e) => e.toLowerCase() == selectedJobtype.toLowerCase(),
    );
  }

  Widget _getaddedCustomerLocnContainerBox() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.controller.addedCustomerLocnContainers.value.length,
      itemBuilder: (context, index) {
        if (widget.controller.addedCustomerLocnContainers.value.isNotEmpty) {
          final currentContainer =
              widget.controller.addedCustomerLocnContainers.value[index];
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
                      padding: const EdgeInsets.only(left: Insets.gutter / 2),
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
                        visible: ValueNotifier<bool>(true),
                        readOnly: currentContainer.suggestedAssetNumber != null
                            ? ValueNotifier<bool>(true)
                            : ValueNotifier<bool>(false),
                      ),
                    ),
                  ),
                  FilledButton(
                    style: EmrButtonStyles.danger(),
                    onPressed: () {
                      widget.controller.addedCustomerLocnContainers.value =
                          List.from(
                            widget.controller.addedCustomerLocnContainers.value,
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
                      style: Theme.of(context).textTheme.bodyLarge,
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

  Widget _getaddedStartLocnContainerBox() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.controller.addedStartLocnContainers.value.length,
      itemBuilder: (context, index) {
        final currentContainer =
            widget.controller.addedStartLocnContainers.value[index];
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
                      visible: ValueNotifier<bool>(true),
                      readOnly: currentContainer.suggestedAssetNumber != null
                          ? ValueNotifier<bool>(true)
                          : ValueNotifier<bool>(false),
                    ),
                  ),
                ),
                FilledButton(
                  style: EmrButtonStyles.danger(),
                  onPressed: () {
                    widget.controller.addedStartLocnContainers.value =
                        List.from(
                          widget.controller.addedStartLocnContainers.value,
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
                    style: Theme.of(context).textTheme.bodyLarge,
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

  String? validateContainer(String? val, {required bool isCustomerContainer}) {
    if (isCustomerContainer) {
      final isContainerAdded =
          widget.controller.addedCustomerLocnContainers.value.isNotEmpty;
      return isContainerAdded ? null : 'Required';
    }
    final isContainerAdded =
        widget.controller.addedStartLocnContainers.value.isNotEmpty;
    return isContainerAdded ? null : 'Required';
  }

  Widget _buildCustomerLocationContainer() {
    return ValueListenableBuilder<List<ContainerDetails>>(
      valueListenable: widget.controller.addedCustomerLocnContainers,
      builder: (context, list, child) {
        return _getaddedCustomerLocnContainerBox();
      },
    );
  }
}
