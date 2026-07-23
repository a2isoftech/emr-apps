import 'package:flutter/material.dart';

class LabeledSwitch extends StatefulWidget {
  const LabeledSwitch({
    required this.label,
    required this.value,
    required this.onChanged,
    this.enable,
    super.key,
  });
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;
  final ValueNotifier<bool>? enable;

  @override
  State<LabeledSwitch> createState() => _LabeledSwitchState();
}

class _LabeledSwitchState extends State<LabeledSwitch> {
  late bool isActive;
  @override
  void initState() {
    super.initState();
    isActive = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            widget.label,
            style: Theme.of(context).textTheme.titleSmall,
            softWrap: true,
          ),
        ),
        ValueListenableBuilder(
          valueListenable: widget.enable ?? ValueNotifier(true),
          builder: (context, value, child) => Switch(
            value: isActive,
            onChanged: !value
                ? null
                : (value) {
                    setState(() {
                      isActive = value;
                    });
                    widget.onChanged.call(value);
                  },
          ),
        ),
      ],
    );
  }
}
