import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/workspace/element_container.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class ComponentListItem extends StatelessWidget {
  const ComponentListItem({
    required this.label,
    required this.createKey,
    required this.icon,
    required this.backgroundColour,
    required this.foregroundColour,
    this.subTitle = 'Drag to workspace',
    this.onEdit,
    this.onDelete,
    this.dragging = false,
    this.canDelete = true,
    this.canEdit = true,
    super.key,
  });

  final String label;
  final String subTitle;
  final String createKey;
  final IconData icon;
  final Color backgroundColour;
  final Color foregroundColour; // Default foreground colour
  final void Function(String)? onEdit;
  final void Function(String)? onDelete;
  final bool dragging;
  final bool canDelete;
  final bool canEdit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: ElementContainer(
        backgroundColour: backgroundColour,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 32,
                  color: foregroundColour,
                ),
                const SizedBox(width: Insets.gutter / 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        label,
                        overflow: TextOverflow.ellipsis,
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontSize: 16,
                                  color: foregroundColour,
                                ),
                      ),
                    ),
                    Text(
                      subTitle,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: foregroundColour,
                          ),
                    ),
                  ],
                ),
                if (!dragging) ...[
                  const Spacer(),
                  Column(
                    children: [
                      Wrap(
                        spacing: Insets.gutter / 2,
                        children: [
                          Visibility(
                            visible: canDelete,
                            child: IconButton(
                              onPressed: () => onDelete?.call(createKey),
                              icon: Icon(
                                Icons.delete_outline,
                                color: foregroundColour,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: canEdit,
                            child: IconButton(
                              onPressed: () => onEdit?.call(createKey),
                              icon: Icon(
                                Icons.edit,
                                color: foregroundColour,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
