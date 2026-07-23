import 'package:emr_one_elv_core/styles/elv_button_styles.dart';
import 'package:flutter/material.dart';

class ElvMultiSelectorButton extends StatelessWidget {
  const ElvMultiSelectorButton({
    required this.enabledFunction,
    required this.selected,
    required this.buttons,
    required this.onSelected,
    this.small = true,
    super.key,
  });

  final bool Function(int i) enabledFunction;
  final Set<int?> selected;
  final List<String> buttons;
  final void Function(Set<int?>) onSelected;
  final bool small;

  @override
  Widget build(BuildContext context) {
    final buttonTextStyle = Theme.of(context).textTheme.bodySmall!;

    return SegmentedButton<int?>(
      showSelectedIcon: false,
      style: elvSegementedButtonStyle(context),
      segments: List.generate(buttons.length, (i) {
        return ButtonSegment<int>(
          value: i,
          label: SizedBox(
            width: small ? 80 : 140,
            height: small ? 40 : 60,
            child: Center(
              child: Text(
                buttons[i],
                style: buttonTextStyle.copyWith(
                  color: selected.first == i
                      ? Theme.of(context).colorScheme.onPrimary
                      : null,
                ),
              ),
            ),
          ),
          enabled: i == 0 || enabledFunction(i),
        );
      }),
      selected: selected,
      onSelectionChanged: onSelected,
    );
  }
}
