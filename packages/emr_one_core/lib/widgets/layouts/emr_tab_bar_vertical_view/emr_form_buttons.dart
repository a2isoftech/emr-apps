import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

enum EmrFormButtonsSaveButtonText { save, ok }

class EmrFormButtons extends StatefulWidget {
  const EmrFormButtons({
    super.key,
    this.onSave,
    this.onCancel,
    this.buttons = const [],
    this.saveButtonText = .save,
  });

  final void Function()? onSave;

  final void Function()? onCancel;

  final EmrFormButtonsSaveButtonText saveButtonText;

  final List<TextButton> buttons;

  @override
  State<EmrFormButtons> createState() => _EmrFormButtonsState();
}

class _EmrFormButtonsState extends State<EmrFormButtons> {
  bool isSaving = false;

  @override
  Widget build(BuildContext context) {
    if (widget.onSave == null && widget.onCancel == null) {
      return const SizedBox();
    }

    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Theme.of(context).dividerColor)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ...widget.buttons,
            const Spacer(),
            if (widget.onCancel != null)
              TextButton(
                onPressed: widget.onCancel,
                child: Text(context.l10n.cancel),
              ),
            if (widget.onSave != null)
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter),
                child: FilledButton(
                  onPressed: isSaving ? null : _handleButtonClick,
                  style: EmrButtonStyles.cta(),
                  child: isSaving
                      ? const SizedBox(
                          height: 18,
                          // 31 makes the button stay the same size
                          // (for "Save" in English at least).
                          width: 31,
                          child: CircularProgressIndicator.adaptive(
                            strokeWidth: 3,
                          ),
                        )
                      : Text(
                          widget.saveButtonText == .ok
                              ? context.l10n.ok
                              : context.l10n.save,
                        ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleButtonClick() async {
    setState(() => isSaving = true);

    widget.onSave?.call();

    setState(() => isSaving = false);
  }
}
