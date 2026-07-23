import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/styles/elv_button_styles.dart';
import 'package:flutter/material.dart';

class VehiclePartBoolSelector extends StatelessWidget {
  const VehiclePartBoolSelector({
    required this.enabledFunction,
    required this.selected,
    required this.onSelected,
    super.key,
  });

  final bool Function(int i) enabledFunction;
  final Set<bool?> selected;
  final void Function(Set<bool?>)? onSelected;

  @override
  Widget build(BuildContext context) {
    final buttonTextStyle = Theme.of(context).textTheme.bodySmall!;
    final isSmall = MediaQuery.of(context).size.width < 700;
    return SegmentedButton<bool?>(
      showSelectedIcon: false,
      style: elvSegementedButtonStyle(context),
      segments: <ButtonSegment<bool?>>[
        ButtonSegment<bool>(
          value: false,
          label: SizedBox(
            width: isSmall ? 80 : 140,
            height: isSmall ? 40 : 60,
            child: Center(
              child: Text(
                context.l10n.no,
                style: buttonTextStyle.copyWith(
                  color:
                      selected.first == false ? EmrColours.primaryWhite : null,
                ),
              ),
            ),
          ),
        ),
        ButtonSegment<bool>(
          value: true,
          label: SizedBox(
            width: isSmall ? 80 : 140,
            height: isSmall ? 40 : 60,
            child: Center(
              child: Text(
                context.l10n.yes,
                style: buttonTextStyle.copyWith(
                  color: (selected.first ?? false)
                      ? EmrColours.primaryWhite
                      : null,
                ),
              ),
            ),
          ),
        ),
      ],
      selected: selected,
      onSelectionChanged: onSelected,
    );
  }
}
