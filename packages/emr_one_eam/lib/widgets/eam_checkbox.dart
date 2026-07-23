import 'package:flutter/material.dart';

class EAMCheckBox extends StatefulWidget {
  const EAMCheckBox({
    required this.onChanged,
    super.key,
  });

  final void Function({bool? value}) onChanged;

  @override
  State<EAMCheckBox> createState() => _EAMCheckBoxState();
}

class _EAMCheckBoxState extends State<EAMCheckBox> {
  ValueNotifier<bool?> isChecked = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isChecked,
      builder: (context, value, child) {
        return Checkbox(
          value: value ?? false,
          onChanged: (value) {
            isChecked.value = value;
            widget.onChanged.call(value: value);
          },
        );
      },
    );
  }
}
