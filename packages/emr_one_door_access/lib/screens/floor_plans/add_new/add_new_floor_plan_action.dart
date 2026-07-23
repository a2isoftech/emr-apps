import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/utilities/emr_dialog.dart';
import 'package:emr_one_core/utilities/emr_modal.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/routing/door_access_route_registry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNewFloorPlanAction extends EmrAction<AddNewFloorPlanIntent> {
  AddNewFloorPlanAction({
    required this.controller,
    required this.siteId,
    required this.onSuccessfulSave,
    required super.createIntent,
    super.icon = Icons.add,
    super.label = 'New Floor Plan',
    super.controlType = EmrActionControlType.button,
    super.isPrimary = true,
    bool enabled = true,
  }) {
    super.actionEnabled.value = enabled;
  }

  final FloorPlanController controller;
  final void Function() onSuccessfulSave;
  final String siteId;

  @override
  Object? invoke(
    covariant AddNewFloorPlanIntent intent, [
    BuildContext? context,
  ]) {
    openModal(
      controller,
      intent.context,
      'Add New Floor Plan',
      'Floorr plan could not be saved',
      siteId,
      onSuccessfulSave,
      isInEditMode: true,
    );
    return null;
  }

  static void openModal(
    FloorPlanController controller,
    BuildContext context,
    String title,
    String errorMessage,
    String siteId,
    void Function() onSuccessfulSave, {
    required bool isInEditMode,
    FloorPlan? floorPlan,
  }) {
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    final formKey = GlobalKey<FormState>();

    final (isPhone, isNotDesktop) = context.getScreenFacts();

    if (isPhone || isNotDesktop) {
      showDialog<void>(
        context: context,
        builder: (contextBuilder) {
          return Padding(
            padding: const EdgeInsetsGeometry.all(Insets.gutter * 2),
            child: Flex(
              direction: Axis.vertical,
              children: [
                FloorPlanEditorMobile(
                  controller: controller,
                  floorPlan: floorPlan,
                ),
                ElevatedButton(
                  child: const Text('Close'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        },
      );
    } else {
      EmrDialog.modal<void>(
        context,
        titleText: title,
        acceptLabel: context.l10n.save,
        builder: (context1) => ScaffoldMessenger(
          child: Builder(
            builder: (contextBuilder) {
              return SizedBox(
                width: MediaQuery.of(contextBuilder).size.width * 0.9,
                height: MediaQuery.of(contextBuilder).size.height * 0.9,

                child: DoorAccessRouteRegistry.openUpdateFloorPlan(
                  controller,
                  formKey,
                  appConfig,
                  siteId,
                  floorPlan,
                  isInEditMode: isInEditMode,
                ),
              );
            },
          ),
        ),
        buttons: isInEditMode
            ? {EmrDialogButton.cancel, EmrDialogButton.accept}
            : {EmrDialogButton.cancel},
        onAccept: () async {
          if (formKey.currentState?.validate() ?? true) {
            formKey.currentState!.save();

            if ((controller.name.value ?? '').isEmpty) {
              await EmrModal.showMessageBar(
                context,
                'Please enter a name for floor plan.',
                messageType: MessageBarTypes.error,
              );
              return;
            }

            final (success, error) = await controller.update();

            if (!success && context.mounted) {
              await EmrModal.showMessageBar(
                context,
                '$errorMessage : $error',
                messageType: MessageBarTypes.error,
              );
              return;
            }
            onSuccessfulSave();
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
}
