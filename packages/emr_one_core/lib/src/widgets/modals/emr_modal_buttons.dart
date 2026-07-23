import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class EmrModalButtons extends StatefulWidget {
  const EmrModalButtons({
    required this.isAccepting,
    required this.acceptLabel,
    super.key,
    this.onAccept,
    this.onCancel,
    this.buttons = const [],
    this.isDanger = false,
  });

  final ValueNotifier<bool> isAccepting;

  final Future<void> Function()? onAccept;

  final void Function()? onCancel;

  final List<TextButton> buttons;

  final String acceptLabel;

  final bool isDanger;

  @override
  State<EmrModalButtons> createState() => _EmrModalButtonsState();
}

class _EmrModalButtonsState extends State<EmrModalButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Theme.of(context).dividerColor,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ...widget.buttons,
            const Spacer(),
            if (widget.onCancel != null)
              ValueListenableBuilder(
                valueListenable: widget.isAccepting,
                builder: (context, value, child) => OutlinedButton(
                  onPressed: value ? null : widget.onCancel,
                  child: Text(context.l10n.cancel),
                ),
              ),
            if (widget.onAccept != null)
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter),
                child: ValueListenableBuilder(
                  valueListenable: widget.isAccepting,
                  builder: (context, value, child) => FilledButton(
                    onPressed: value ? null : widget.onAccept,
                    style: widget.isDanger
                        ? EmrButtonStyles.danger()
                        : EmrButtonStyles.cta(),
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: value ? 0 : 1,
                          child: Text(widget.acceptLabel),
                        ),
                        if (value == true)
                          const Positioned.fill(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: CircularProgressIndicator.adaptive(),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
