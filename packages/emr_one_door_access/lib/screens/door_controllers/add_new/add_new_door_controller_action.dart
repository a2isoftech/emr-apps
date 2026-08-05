import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/utilities/emr_dialog.dart';
import 'package:emr_one_core/utilities/emr_modal.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:flutter/material.dart';

class AddNewDoorControllerAction extends EmrAction<AddNewDoorControllerIntent> {
  AddNewDoorControllerAction({
    required this.controller,
    required this.onSuccessfulSave,
    required super.createIntent,
    super.icon = Icons.add,
    super.label = 'New Controller',
    super.controlType = EmrActionControlType.button,
    super.isPrimary = true,
    bool enabled = true,
  }) {
    super.actionEnabled.value = enabled;
  }

  final ManageDoorControllerController controller;
  final Future<void> Function() onSuccessfulSave;

  @override
  Object? invoke(
    covariant AddNewDoorControllerIntent intent, [
    BuildContext? context,
  ]) {
    openModal(
      controller,
      intent.context,
      'Add New Controller',
      'Controller could not be added',
      onSuccessfulSave,
    );
    return null;
  }

  static void openModal(
    ManageDoorControllerController controller,

    BuildContext context,
    String title,
    String errorMessage,
    Future<void> Function() onSuccessfulSave, {

    AccessController? accessController,
  }) {
    final formKey = GlobalKey<FormState>();
    EmrDialog.modal<void>(
      context,
      titleText: title,
      acceptLabel: context.l10n.save,
      builder: (context1) => ScaffoldMessenger(
        child: Builder(
          builder: (context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,

              child: DoorAccessRouteRegistry.openAddNewAccessController(
                controller,
                formKey,
                accessController,
              ),
            );
          },
        ),
      ),
      onAccept: () async {
        if (formKey.currentState?.validate() ?? true) {
          formKey.currentState!.save();

          final (success, error) = await controller.update();

          if (!success && context.mounted) {
            await EmrModal.showMessageBar(
              context,
              '$errorMessage : $error',
              messageType: MessageBarTypes.error,
            );
            return;
          }
          await onSuccessfulSave();
          if (context.mounted) {
            context.pop();
          }
        } else {
          debugPrint('form is invalid');
        }
      },
    );
  }
}
