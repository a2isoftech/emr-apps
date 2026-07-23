import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:flutter/material.dart';

class ChangeYardDialog extends StatefulWidget {
  const ChangeYardDialog({
    required this.currentYard,
    required this.yards,
    super.key,
  });

  final String? currentYard;
  final List<DispatchYards> yards;

  @override
  State<ChangeYardDialog> createState() => ChangeYardDialogState();
}

class ChangeYardDialogState extends State<ChangeYardDialog> {
  ValueNotifier<String?> selectedYardCode = ValueNotifier('');

  @override
  void initState() {
    super.initState();
    selectedYardCode.value = widget.currentYard;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmrPickerFormField(
          labelText: context.l10n.yard,
          items: (_) =>
              Future.value(widget.yards.map((e) => e.yardCode!).toList()),
          itemTitleText: (item) => item,
          binding: selectedYardCode,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(context.l10n.cancel),
            ),
            FilledButton(
              onPressed: () =>
                  Navigator.of(context).pop(selectedYardCode.value),
              child: Text(context.l10n.save),
            ),
          ],
        ),
      ],
    );
  }
}
