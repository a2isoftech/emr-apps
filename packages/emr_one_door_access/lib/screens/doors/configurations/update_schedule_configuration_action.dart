import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/utilities/emr_dialog.dart';
import 'package:emr_one_core/utilities/emr_modal.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UpdateScheduleConfigurationAction
    extends EmrAction<UpdateScheduleConfigurationIntent> {
  UpdateScheduleConfigurationAction({
    required this.controller,
    required this.getDoors,
    required this.onSuccessfulSave,
    required super.createIntent,
    super.icon = Icons.add,
    super.label = 'Update Schedule Configuration',
    super.controlType = EmrActionControlType.button,
    super.isPrimary = true,
    bool enabled = true,
  }) {
    super.actionEnabled.value = enabled;
  }

  final ConfigurationController controller;
  final void Function() onSuccessfulSave;
  final Future<List<DoorSearchResult>>? Function() getDoors;

  @override
  Object? invoke(
    covariant UpdateScheduleConfigurationIntent intent, [
    BuildContext? context,
  ]) {
    openModal(
      controller,
      intent.context,
      'Update Schedule Configuration',
      'Schedule configurations could not be updated',
      onSuccessfulSave,
      isInEditMode: true,
    );
    return null;
  }

  void openModal(
    ConfigurationController controller,
    BuildContext context,
    String title,
    String errorMessage,
    void Function() onSuccessfulSave, {
    required bool isInEditMode,
    FloorPlan? floorPlan,
  }) {
    final bulkScheduleConfigurationController =
        Provider.of<BulkScheduleConfigurationController>(
          context,
          listen: false,
        );

    final formKey = GlobalKey<FormState>();
    EmrDialog.modal<void>(
      context,
      titleText: title,
      acceptLabel: context.l10n.save,
      builder: (context1) => ScaffoldMessenger(
        child: Builder(
          builder: (context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.9,

              child: FutureBuilder<List<DoorSearchResult>>(
                future: getDoors(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        'Error: ${snapshot.error}',
                        style: const TextStyle(color: Colors.red),
                      ),
                    );
                  }

                  if (!snapshot.hasData) {
                    return const Center(child: Text('No data found'));
                  }

                  final doors = snapshot.data!;

                  return ChangeNotifierProvider.value(
                    value: bulkScheduleConfigurationController,
                    child: Consumer<BulkScheduleConfigurationController>(
                      builder: (context, controller, child) {
                        return BulkScheduleConfigurationWidget(
                          controller: bulkScheduleConfigurationController,
                          formKey: formKey,
                          doors: doors,
                        );
                      },
                    ),
                  );
                },
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

          final (success, error) = await bulkScheduleConfigurationController
              .update();

          bulkScheduleConfigurationController.setToNotLoading();

          if (!success && context.mounted) {
            await EmrModal.showMessageBar(
              context,
              '$errorMessage : $error',
              messageType: MessageBarTypes.error,
            );
            return;
          }

          await EmrModal.showMessageBar(
            context,
            'Door configurations updated successfully',
          );

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
