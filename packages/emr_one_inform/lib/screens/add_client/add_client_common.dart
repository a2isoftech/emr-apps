import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/constants/styles.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/screens/add_client/add_client_controller.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:emr_one_inform/widgets/inform_textbox.dart';
import 'package:flutter/material.dart';

abstract class AddClientCommon extends BasePage<AddClientController> {
  AddClientCommon({required this.clientId, super.key});

  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _workRequestTypeController = TextEditingController();
  final _lifeCycleStateController = TextEditingController();

  final int clientId;

  late final Future<List<String>> lifeCycleStates;

  @override
  String getTitle(BuildContext context) {
    return clientId > 0 ? context.l10n.editClient : context.l10n.addClient;
  }

  @override
  void initState(BuildContext context) {
    lifeCycleStates = controller.getLifeCycleStates();
    if (clientId > 0) {
      controller.getClientById(clientId: clientId);
    }
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    if (controller.clientName != '') {
      _titleController.text = controller.clientName;
      _titleController.selection = TextSelection.fromPosition(
        TextPosition(offset: _titleController.text.length),
      );
    }

    _workRequestTypeController.text = controller.defaultWorkRequestType ?? '';
    if (controller.defaultWorkRequestType != '') {
      _workRequestTypeController.selection = TextSelection.fromPosition(
        TextPosition(offset: _workRequestTypeController.text.length),
      );
    }

    if (controller.defaultLifeCycleState != '') {
      _lifeCycleStateController.selection = TextSelection.fromPosition(
        TextPosition(offset: _lifeCycleStateController.text.length),
      );
    }

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: parentWidget(
          Wrap(
            runSpacing: 10,
            children: [
              InformTextBox(
                controller: _titleController,
                hintText: context.l10n.clientNameHint,
                labelText: context.l10n.clientNameLabel,
                onChanged: (value) => controller.setClientName(value ?? ''),
                validationMessage: context.l10n.clientNameValidation,
              ),
              InformTextBox(
                controller: _workRequestTypeController,
                hintText: context.l10n.workRequestTypeHint,
                labelText: context.l10n.workRequestTypeLabel,
                onChanged: (value) => controller.setDefaultWorkRequestType(
                  value == null || value.isEmpty ? null : value,
                ),
              ),
              FutureBuilder(
                future: lifeCycleStates,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Container();
                  }
                  return DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<String>(
                      decoration: FormAppDecorations.dropdownDecoration,
                      hint: Text(context.l10n.defaultLifeCycleState),
                      icon: FormAppIcons.dropdownList,
                      iconSize: 30,
                      isExpanded: true,
                      items: snapshot.data!.map((state) {
                        return DropdownMenuItem<String>(
                          value: state,
                          child: Text(state),
                        );
                      }).toList(),
                      initialValue: controller.defaultLifeCycleState,
                      onChanged: (String? value) {
                        controller.setDefaultLifeCycleState(value);
                      },
                    ),
                  );
                },
              ),
              if (InformJobs.preference?.isD365Enabled ?? false) ...[
                ChoiceChip(
                  label: Text(context.l10n.isD365),
                  selected: controller.isD365,
                  selectedColor: FormAppColors.success,
                  onSelected: (value) =>
                      controller.setClientIsD365(clientD365: value),
                ),
                const SizedBox(width: 10),
              ],
              ChoiceChip(
                label: Text(context.l10n.isActive),
                selected: controller.isActive,
                selectedColor: FormAppColors.success,
                onSelected: (value) =>
                    controller.setClientIsActive(clientIsActive: value),
              ),
              const SizedBox(width: 10),
              ChoiceChip(
                label: Text(context.l10n.canSchedule),
                selected: controller.canSchedule,
                selectedColor: FormAppColors.success,
                onSelected: (value) => controller.setClientCanBeScheduled(
                  clientCanSchedule: value,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onActionButtonPressed(BuildContext context) async {
    await controller.saveClient().then((value) {
      if (value) {
        final snackBarSuccess = appSnackBarMessage(
          'Category saved',
          MessageTypes.success,
        );
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(snackBarSuccess);
          context.pop();
        }
      } else {
        final snackBarFailure = appSnackBarMessage(
          'Failed to save category!',
          MessageTypes.success,
        );
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(snackBarFailure);
        }
      }
    });
  }

  Widget parentWidget(Widget child);
}
