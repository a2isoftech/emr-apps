import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';

class WorkspaceElementEditor extends StatelessWidget {
  const WorkspaceElementEditor({
    required this.element,
    required this.workspaceController,
    super.key,
  });

  final WorkspaceController workspaceController;
  final WorkspaceElementBase element;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Colour',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        ColorPicker(
          pickersEnabled: const <ColorPickerType, bool>{
            ColorPickerType.wheel: true,
            ColorPickerType.accent: false,
            ColorPickerType.primary: false,
            ColorPickerType.custom: false,
          },
          color: element.elementProperties.backgroundColour.value,
          padding: const EdgeInsetsGeometry.symmetric(vertical: Insets.gutter),
          onColorChanged: (color) {
            element.elementProperties.backgroundColour.value = color;
          },
        ),
        Row(
          children: [
            Text(
              'Manage',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        const SizedBox(
          height: Insets.gutter,
        ),
        Row(
          children: [
            FilledButton(
              onPressed: () {
                workspaceController.deleteElement(
                  context: context,
                  element: element,
                );
              },
              style: EmrButtonStyles.danger(),
              child: const Text('Delete Item'),
            ),
            const SizedBox(width: Insets.gutter),
            Flexible(
              child: Text(
                'Delete this item from the workspace.\nThis '
                'action cannot be undone.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
        const SizedBox(height: Insets.gutter),
      ],
    );
  }
}
