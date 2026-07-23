import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:flutter/material.dart';

class InspectionValidateVinAlertWidget extends StatefulWidget {
  const InspectionValidateVinAlertWidget({
    required this.controller,
    required this.onValidVinEntered,
    super.key,
  });

  final InspectionScreenController controller;
  final void Function(String vin) onValidVinEntered;

  @override
  State<InspectionValidateVinAlertWidget> createState() =>
      _InspectionValidateVinAlertWidgetState();
}

class _InspectionValidateVinAlertWidgetState
    extends State<InspectionValidateVinAlertWidget> {
  late TextEditingController txtVinController;
  late GlobalKey<FormState> formKey;
  late String existingVinNumber;

  @override
  void initState() {
    super.initState();
    txtVinController = TextEditingController();
    formKey = GlobalKey<FormState>();
    existingVinNumber =
        (widget.controller.state.quoteToInspect!.vehicleDescription.vin ?? '')
            .toUpperCase();
  }

  @override
  void dispose() {
    txtVinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(context.l10n.cancel),
        ),
        TextButton(
          onPressed: () {
            if (widget.controller.state.isVinUnreadable.value) {
              formKey.currentState!.reset();
            } else if (!formKey.currentState!.validate()) {
              return;
            }

            context.pop();
            widget.onValidVinEntered(txtVinController.text);
          },
          child: Text(context.l10n.save),
        ),
      ],
      title: Center(
        child: Text(
          context.l10n.validateVin,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      content: SizedBox(
        width: 400,
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ValueListenableBuilder<bool>(
                valueListenable: widget.controller.state.isVinUnreadable,
                builder: (context, isUnreadable, child) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InspectionTextForm(
                        txtController: txtVinController,
                        header: context.l10n.enterLast4DigitsOfVinValidation,
                        placeholder: context.l10n.vinNumber,
                        maxLength: 4,
                        isDisabled: isUnreadable,
                        validator: (val) {
                          if (isUnreadable) return null;

                          if ((val ?? '').isEmpty) {
                            return context.l10n.enterVinNumber;
                          }
                          if (val!.length < 4) {
                            return context.l10n.enterLast4DigitsOfVinValidation;
                          }
                          if (val.toUpperCase() !=
                              existingVinNumber.substring(
                                existingVinNumber.length - 4,
                              )) {
                            return context.l10n.vinNumberIsNotValid;
                          }
                          return null;
                        },
                      ),
                      SwitchListTile(
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(context.l10n.vinUnreadable),
                        value: isUnreadable,
                        onChanged: (bool? value) {
                          widget.controller.state.isVinUnreadable.value =
                              value ?? false;
                          widget
                                  .controller
                                  .state
                                  .quoteToInspect!
                                  .vehicleConfiguration!
                                  .vinUnreadable =
                              widget.controller.state.isVinUnreadable.value;
                          if (value ?? false) {
                            txtVinController.clear();
                          }
                        },
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
