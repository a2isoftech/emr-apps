import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_elv_core/styles/elv_button_styles.dart';
import 'package:flutter/material.dart';

class WheelCountButton extends StatefulWidget {
  const WheelCountButton({
    required this.selected,
    required this.buttons,
    required this.onSelected,
    this.dismantledWheelCount,
    this.wheelAvailableToDismantle,
    super.key,
  });

  final Set<int> selected;
  final List<String> buttons;
  final void Function(Set<int>) onSelected;
  final int? dismantledWheelCount;
  final int? wheelAvailableToDismantle;

  @override
  State<WheelCountButton> createState() => _WheelCountButtonState();
}

class _WheelCountButtonState extends State<WheelCountButton> {
  @override
  Widget build(BuildContext context) {
    final buttonTextStyle = Theme.of(context).textTheme.bodySmall!;
    final isSmall = MediaQuery.of(context).size.width < 700;
    return SegmentedButton<int>(
      showSelectedIcon: false,
      style: elvSegementedButtonStyle(context),
      segments: List.generate(
        widget.buttons.length,
        (i) {
          return ButtonSegment<int>(
            value: i,
            enabled: widget.dismantledWheelCount != null &&
                    widget.dismantledWheelCount! > 0
                ? i == widget.dismantledWheelCount
                : i <= (widget.wheelAvailableToDismantle ?? 5),
            label: SizedBox(
              width: isSmall ? 60 : 140,
              height: 60,
              child: Center(
                child: Text(
                  widget.buttons[i],
                  style: buttonTextStyle.copyWith(
                    color: widget.selected.first == i
                        ? EmrColours.primaryWhite
                        : null,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      selected: widget.selected,
      onSelectionChanged: widget.onSelected,
    );
  }
}
