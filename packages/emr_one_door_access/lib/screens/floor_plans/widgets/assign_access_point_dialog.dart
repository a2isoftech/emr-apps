import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class AssignAccessPointDialog extends StatelessWidget {
  const AssignAccessPointDialog({
    required this.controller,
    required this.hotspot,
    super.key,
  });

  final FloorPlanController controller;
  final Hotspot hotspot;

  @override
  Widget build(BuildContext context) {
    const defaultId = (key: '', value: '');

    final selectedId = ValueNotifier<KeyValuePair<String, String>>(defaultId);

    return AlertDialog(
      title: const Text('Assign Access Point'),
      content: EmrPickerFormField(
        labelText: 'Access Point',
        items: controller.accessPointsList,
        itemTitleText: (item) => item.value,
        binding: selectedId,
        validator: Validators.required,
      ),
      actions: [
        TextButton(
          onPressed: () {
            controller.attachAccessPoint(hotspot.id, selectedId.value.key);
            Navigator.pop(context);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
