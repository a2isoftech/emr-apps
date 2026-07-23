import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

Future<String?> showNoteDialog(BuildContext context, String note) async {
  final newNote = ValueNotifier<String?>(note);
  final formKey = GlobalKey<FormState>();
  return showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    isDismissible: false,
    builder: (context) {
      return Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.only(
            left: Insets.gutter,
            right: Insets.gutter,
            bottom: MediaQuery.of(context).viewInsets.bottom + Insets.gutter,
            top: Insets.gutter,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.addNote,
                style: EmrOneConstants.kOpenSans18BoldTextStyle,
              ),
              const SizedBox(height: Insets.gutter / 2),
              EmrTextFormField<String?>(
                validator: (value) {
                  if (value != null && value.length > 500) {
                    return context.l10n.mustBeMaxOrLess(500);
                  }
                  return null;
                },
                maxLines: 5,
                binding: newNote,
              ),
              const SizedBox(height: Insets.gutter),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.surface,
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: Text(context.l10n.cancel),
                  ),
                  FilledButton(
                    style: EmrButtonStyles.cta(),
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        Navigator.pop(context, newNote.value);
                      }
                    },
                    child: Text(context.l10n.save),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
