import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/api_error_codes.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/containers/container_create_edit_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContainerCreateEditScreen extends StatefulWidget {
  const ContainerCreateEditScreen({super.key, this.containerId});

  final String? containerId;

  @override
  State<ContainerCreateEditScreen> createState() =>
      _ContainerCreateEditScreenState();
}

class _ContainerCreateEditScreenState extends State<ContainerCreateEditScreen> {
  late ContainerCreateEditController _controller;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _controller = Provider.of<ContainerCreateEditController>(
      context,
      listen: false,
    );

    _controller.initialize(widget.containerId);
    super.initState();
  }

  late final AsyncValidator<String> _assetNumberAsyncValidator = AsyncValidator(
    context,
    binding: _controller.assetNumber,
    onChange: (formFieldKey, value) async {
      final usedForOtherContainer = await _controller.isDuplicateAssetNumber(
        value,
      );

      return AsyncValidatorResult(
        message: usedForOtherContainer
            ? StringConstants.assetAlreadyExist
            : null,
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    final notificationController = context.read<EmrOneNotificationController>();
    return Consumer<ContainerCreateEditController>(
      builder: (context, val, child) => Stack(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: EmrTabBarVerticalView(
                    onSave: () async {
                      if (!_formKey.currentState!.validate()) {
                        notificationController.showNotification(
                          EmrOneErrorNotification(
                            title: context.l10n.error,
                            description: context.l10n.requiredFieldsErrorMsg,
                          ),
                        );
                        return;
                      }
                      final response = widget.containerId != null
                          ? await _controller.updateContainer()
                          : await _controller.createContainer();
                      if (context.mounted) {
                        if (response.isSuccess) {
                          await SuccessAlertWidget.showSuccessMessage(
                            context,
                            widget.containerId != null
                                ? context.l10n.containerUpdatedSuccessfully
                                : context.l10n.containerCreatedSuccessfully,
                          );
                          if (context.mounted) {
                            context.goNamed(RoutingPathName.containers);
                          }
                        } else {
                          if (response.errorCode ==
                              ApiErrorCodes.kassetAlreadyExists) {
                            await ErrorAlertWidget.showErrorMessage(
                              context,
                              context.l10n.assetNumberGenerated,
                            );
                            await _controller.getNextAssetNumber();
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
                    onCancel: () => context.goNamed(RoutingPathName.containers),
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
                        child: _buildBasicDetails(),
                      ),
                      EmrTabBarVerticalViewCard(
                        title: context.l10n.physicalDetails,
                        child: _buildPhysicalProperties(),
                      ),
                      EmrTabBarVerticalViewCard(
                        title: context.l10n.containerLocation,
                        child: _buildLocation(),
                      ),
                      EmrTabBarVerticalViewCard(
                        title: context.l10n.additionalDetails,
                        child: _buildAdditionalDetails(),
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

  Widget _buildBasicDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(context.l10n.assetCode),
                  const SizedBox(height: Insets.gutter / 4),
                  EmrTextFormField(
                    key: _assetNumberAsyncValidator.formFieldKey,
                    binding: _controller.assetNumber,
                    validator: (value) => Validators.join([
                      Validators.required(value),
                      _assetNumberAsyncValidator.validator(value),
                    ]),
                    enabled: _controller.enableAssetNumberEdit,
                  ),
                ],
              ),
            ),
            const SizedBox(width: Insets.gutter / 2),
            if (widget.containerId != null)
              Padding(
                padding: const EdgeInsets.only(
                  top: Insets.gutter + Insets.gutter / 2,
                ),
                child: SizedBox(
                  height: Insets.gutter * 3,
                  child: FilledButton(
                    onPressed: () async {
                      await _controller.downloadQRCodes(
                        StringConstants.getQrCodesApiPath,
                        MimeType.pdf,
                        '${_controller.assetNumber.value}'
                        '.${StringConstants.pdfExtension}',
                        queryParams: {
                          'assetNumbers': _controller.assetNumber.value,
                        },
                      );
                    },
                    style: EmrButtonStyles.cta(),
                    child: Text(context.l10n.downloadQRCode),
                  ),
                ),
              ),
          ],
        ),
        EmrTextFormField(
          labelText: context.l10n.description,
          binding: _controller.description,
          validator: Validators.required,
        ),
        EmrPickerFormField(
          labelText: context.l10n.assetType,
          items: (_) => Future.value(_controller.containerTypes.value),
          itemTitleText: (item) => item.description != null
              ? '${item.description}'
              : item.code ?? '',
          binding: _controller.selectedContainerType,
          validator: Validators.required,
        ),
        EmrPickerFormField(
          labelText: context.l10n.status,
          items: (_) => Future.value(_controller.lifeCycleStatuses),
          itemTitleText: (item) => item,
          binding: _controller.selectedLifeCycleStatus,
          validator: Validators.required,
        ),
        EmrTextFormField(
          labelText: context.l10n.serialNumber,
          binding: _controller.serialNumber,
          validator: Validators.required,
        ),
      ],
    );
  }

  Widget _buildPhysicalProperties() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EmrTextFormField(
          labelText: context.l10n.length,
          binding: _controller.length,
          validator: Validators.required,
        ),
        EmrTextFormField(
          labelText: context.l10n.weight,
          binding: _controller.weight,
          validator: Validators.required,
        ),
        EmrPickerFormField(
          labelText: context.l10n.condition,
          items: (_) => Future.value(_controller.conditions.value),
          itemTitleText: (item) => item.description ?? '',
          binding: _controller.selectedCondition,
          validator: Validators.required,
        ),
      ],
    );
  }

  Widget _buildLocation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EmrButtonGroupFormField(
          labelText: context.l10n.locationType,
          options: _controller.locationOptions,
          binding: _controller.selectedLocationType,
        ),
        const SizedBox(height: Insets.gutter),
        ValueListenableBuilder<List<String>>(
          valueListenable: _controller.selectedLocationType,
          builder: (context, selected, _) {
            final selectedCode = selected.first;
            final locationType = LocationType.values.firstWhere(
              (e) => e.code == selectedCode,
              orElse: () => LocationType.yard,
            );

            if (_controller.lastSelectedLocation !=
                _controller.selectedLocationType.value.first) {
              _controller.selectedLocationDetail.value = const ListDetails();
              _controller.lastSelectedLocation =
                  _controller.selectedLocationType.value.first;
            }

            _controller.selectedLocationType.value = [
              switch (locationType) {
                LocationType.customer => StringConstants.customerDisplay,
                LocationType.truck => StringConstants.truck,
                LocationType.yard => StringConstants.yard,
              },
            ];

            switch (locationType) {
              case LocationType.customer:
                return EmrPickerFormField(
                  key: GlobalKey(),
                  labelText: context.l10n.customer,
                  binding: _controller.selectedLocationDetail,
                  itemTitleText: (item) => item.code == null
                      ? ''
                      : '${item.code} - ${item.description}',
                  items: (query) => _controller.searchCustomers(query),
                );

              case LocationType.truck:
                return EmrPickerFormField(
                  key: GlobalKey(),
                  labelText: context.l10n.truck,
                  binding: _controller.selectedLocationDetail,
                  itemTitleText: (item) => item.description ?? '',
                  items: (query) => _controller.searchTrucks(query),
                );

              case LocationType.yard:
                final yardItems = _controller.yards
                    .map(
                      (e) => ListDetails(
                        description: e.yardCode,
                        code: e.yardCode,
                      ),
                    )
                    .toList();

                return EmrPickerFormField(
                  key: GlobalKey(),
                  labelText: context.l10n.yard,
                  binding: _controller.selectedLocationDetail,
                  itemTitleText: (item) => item.description ?? '',
                  items: (_) => Future.value(yardItems),
                  validator: Validators.required,
                );
            }
          },
        ),
      ],
    );
  }

  Widget _buildAdditionalDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EmrTextFormField(
          labelText: context.l10n.cost,
          binding: _controller.cost,
        ),
        EmrTextFormField(
          labelText: context.l10n.manufacturer,
          binding: _controller.manufacturer,
        ),
        EmrPickerFormField(
          labelText: context.l10n.owningYard,
          binding: _controller.yardCode,
          itemTitleText: (item) => item,
          items: (_) => Future.value(
            _controller.yards.map((e) => e.yardCode ?? '').toList(),
          ),
          validator: Validators.required,
        ),
        EmrTextFormField(
          labelText: context.l10n.comments,
          binding: _controller.comments,
        ),
        EmrDateFormField(
          labelText: context.l10n.validTill,
          binding: _controller.validUptoDate,
        ),
      ],
    );
  }
}
