import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class EmrFormButtons extends StatefulWidget {
  const EmrFormButtons({
    required this.controller,
    required this.formKey,
    required this.onSuccessfulSave,
    this.deleteButtonWidget,
    this.buttonText,
    this.successMessage,
    super.key,
  });

  final Widget? deleteButtonWidget;
  final DoorAccessBaseController controller;
  final GlobalKey<FormState> formKey;
  final void Function() onSuccessfulSave;
  final String? buttonText;
  final String? successMessage;

  @override
  State<EmrFormButtons> createState() => _EmrFormButtonsState();
}

class _EmrFormButtonsState extends State<EmrFormButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Theme.of(context).dividerColor)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (widget.deleteButtonWidget != null) widget.deleteButtonWidget!,
          if (widget.controller.processing) ...{
            const CircularProgressIndicator(),
          } else ...{
            Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: ElevatedButton(
                onPressed: onSave,
                child: Text(widget.buttonText ?? context.l10n.save),
              ),
            ),
          },
        ],
      ),
    );
  }

  Future<void> onSave() async {
    widget.controller.toggleProcessing(value: true);
    if (widget.formKey.currentState?.validate() == false) {
      await EmrModal.showMessageBar(
        context,
        'Please correct the validation error(s).',
        messageType: MessageBarTypes.error,
      );
      widget.controller.toggleProcessing();
      return;
    }
    final (success, error) = await widget.controller.update();
    if (success == false) {
      widget.controller.toggleProcessing();
      await EmrModal.showMessageBar(
        context,
        error,
        messageType: MessageBarTypes.error,
      );
      return;
    }
    widget.controller.toggleProcessing();
    unawaited(
      EmrModal.showMessageBar(
        context,
        widget.successMessage ?? 'Successfully saved',
      ),
    );
    widget.onSuccessfulSave();
  }
}
