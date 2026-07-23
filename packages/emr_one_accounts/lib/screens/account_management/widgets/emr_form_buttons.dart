import 'dart:async';

import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EmrFormButtons extends StatefulWidget {
  const EmrFormButtons({
    required this.controller,
    required this.formKey,
    required this.onSuccessfulSave,
    super.key,
    this.deleteButtonWidget,
  });

  final Widget? deleteButtonWidget;
  final AccountManagementBaseController controller;
  final GlobalKey<FormState> formKey;
  final void Function() onSuccessfulSave;

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
                child: Text(context.l10n.save),
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
      await EmrModal.showMessageBar(
        context,
        error,
        messageType: MessageBarTypes.error,
      );

      return;
    }

    widget.controller.toggleProcessing();

    unawaited(EmrModal.showMessageBar(context, 'Successfully saved'));

    AccountDetailsController.forceLoad = true;

    widget.onSuccessfulSave();
  }
}
