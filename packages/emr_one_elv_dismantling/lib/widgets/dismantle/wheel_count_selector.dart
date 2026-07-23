import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_dismantling/widgets/dismantle/wheel_count_button.dart';
import 'package:flutter/material.dart';

class WheelCountSelector extends StatefulWidget {
  const WheelCountSelector({
    required this.selectedWheelCount,
    required this.onWheelCountChanged,
    this.dismantledWheelCount,
    this.wheelAvailableToDismantle,
    super.key,
  });

  final int selectedWheelCount;
  final void Function(int) onWheelCountChanged;
  final int? dismantledWheelCount;
  final int? wheelAvailableToDismantle;

  @override
  State<WheelCountSelector> createState() => _WheelCountSelectorState();
}

class _WheelCountSelectorState extends State<WheelCountSelector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.wheelCount,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: Insets.gutter / 2),
        WheelCountButton(
          selected: <int>{
            if (widget.dismantledWheelCount != null &&
                widget.dismantledWheelCount! > 0)
              widget.dismantledWheelCount!
            else
              widget.selectedWheelCount,
          },
          buttons: List.generate(6, (index) => index.toString()),
          onSelected: (selectedValue) {
            widget.onWheelCountChanged(selectedValue.first);
          },
          dismantledWheelCount: widget.dismantledWheelCount,
          wheelAvailableToDismantle: widget.wheelAvailableToDismantle,
        ),
      ],
    );
  }
}
