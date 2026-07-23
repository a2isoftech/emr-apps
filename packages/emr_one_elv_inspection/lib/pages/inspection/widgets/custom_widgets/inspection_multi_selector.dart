import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_elv_core/styles/elv_button_styles.dart';
import 'package:flutter/material.dart';

class InspectionMultiSelectorButton extends StatelessWidget {
  const InspectionMultiSelectorButton({
    required this.enabledFunction,
    required this.selected,
    required this.buttons,
    required this.onSelected,
    super.key,
  });

  final bool Function(int i) enabledFunction;
  final Set<int?> selected;
  final List<String> buttons;
  final void Function(Set<int?>) onSelected;

  @override
  Widget build(BuildContext context) {
    final buttonTextStyle = Theme.of(context).textTheme.bodySmall!;
    final isSmall = MediaQuery.of(context).size.width < 700;
    return SegmentedButton<int?>(
      showSelectedIcon: false,
      style: elvSegementedButtonStyle(context),
      segments: List.generate(
        buttons.length,
        (i) {
          return ButtonSegment<int>(
            value: i,
            label: SizedBox(
              width: isSmall ? 80 : 140,
              height: isSmall ? 40 : 60,
              child: Center(
                child: Text(
                  buttons[i],
                  style: buttonTextStyle.copyWith(
                    color: selected.first == i ? EmrColours.primaryWhite : null,
                  ),
                ),
              ),
            ),
            enabled: i == 0 || enabledFunction(i),
          );
        },
      ),
      selected: selected,
      onSelectionChanged: onSelected,
    );
  }
}
