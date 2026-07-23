import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/api_error_codes.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/trucks/truck_create_edit_controller.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddEditManagedTruck extends StatefulWidget {
  const AddEditManagedTruck({super.key, this.truckId});

  final String? truckId;

  @override
  State<AddEditManagedTruck> createState() => _AddEditManagedTruckState();
}

class _AddEditManagedTruckState extends State<AddEditManagedTruck> {
  late TruckCreateEditController _controller;

  @override
  void initState() {
    _controller = Provider.of<TruckCreateEditController>(
      context,
      listen: false,
    );

    _controller.initialize(widget.truckId);
    super.initState();
  }

  late final AsyncValidator<String> _vrmAsyncValidator = AsyncValidator(
    context,
    binding: _controller.vrm,
    onChange: (formFieldKey, value) async {
      final errorMessage = context.l10n.vrmAlreadyInUseValidation;
      final isVrmUnique = await _controller.isVrmUnique(value);

      return AsyncValidatorResult(message: !isVrmUnique ? errorMessage : null);
    },
  );

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final notificationController = context.read<EmrOneNotificationController>();
    return Consumer<TruckCreateEditController>(
      builder: (context, val, child) => Stack(
        children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                Expanded(
                  child: EmrTabBarVerticalView(
                    columns: const [1],
                    onSave: () async {
                      if (formKey.currentState?.validate() ?? false == true) {
                        final response = widget.truckId != null
                            ? await _controller.updateTruck()
                            : await _controller.createTruck();

                        if (context.mounted) {
                          if (response.isSuccess) {
                            await SuccessAlertWidget.showSuccessMessage(
                              context,
                              widget.truckId != null
                                  ? context.l10n.truckUpdatedSuccessfully
                                  : context.l10n.truckCreatedSuccessfully,
                            );
                            if (context.mounted) {
                              context.goNamed(RoutingPathName.managedTrucks);
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
                      } else {
                        notificationController.showNotification(
                          EmrOneErrorNotification(
                            title: context.l10n.error,
                            description: context.l10n.requiredFieldsErrorMsg,
                          ),
                        );
                      }
                    },
                    onCancel: () =>
                        context.goNamed(RoutingPathName.managedTrucks),
                    buttons: [
                      TextButton(
                        onPressed: _controller.resetFields,
                        style: TextButton.styleFrom(
                          fixedSize: const Size(75, 18),
                        ),
                        child: Text(
                          widget.truckId != null
                              ? context.l10n.reset
                              : context.l10n.reset,
                        ),
                      ),
                    ],
                    children: [
                      EmrTabBarVerticalViewCard(
                        title: context.l10n.truckDetails,
                        child: _buildProperties(),
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

  Widget _buildProperties() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EmrTextFormField(
          labelText: context.l10n.assetCode,
          binding: _controller.assetNumber,
          validator: Validators.required,
          enabled: ValueNotifier(false),
        ),
        EmrTextFormField(
          key: _vrmAsyncValidator.formFieldKey,
          labelText: context.l10n.vrm,
          binding: _controller.vrm,
          validator: (value) => Validators.join([
            Validators.required(value),
            _vrmAsyncValidator.validator(value),
          ]),
        ),
        EmrTextFormField(
          labelText: context.l10n.friendlyName,
          binding: _controller.friendlyName,
        ),
        EmrPickerFormField(
          labelText: context.l10n.haulier,
          items: (_) => Future.value(_controller.hauliers.value),
          itemTitleText: (item) => '${item.haulierCode} - ${item.haulierName}',
          binding: _controller.selectedHaulier,
          validator: Validators.required,
        ),
        EmrPickerFormField(
          labelText: context.l10n.status,
          items: (_) => Future.value(_controller.lifeCycleStatuses.value),
          itemTitleText: (item) => item.code != null
              ? '${item.description}'
              : item.description ?? '',
          binding: _controller.selectedLifeCycleStatus,
          validator: Validators.required,
        ),
        EmrPickerFormField(
          labelText: context.l10n.assetType,
          items: (_) => Future.value(_controller.truckTypes.value),
          itemTitleText: (item) => item.code != null
              ? '${item.description}'
              : item.description ?? '',
          binding: _controller.selectedTruckType,
          validator: Validators.required,
        ),
        EmrTextFormField(
          labelText: context.l10n.make,
          binding: _controller.make,
        ),
        EmrTextFormField(
          labelText: context.l10n.model,
          binding: _controller.model,
        ),
      ],
    );
  }
}
