import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/extensions/actions_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EmrQueryLayoutDefaultActionsPanel<T> extends StatelessWidget {
  const EmrQueryLayoutDefaultActionsPanel({
    required this.controller,
    super.key,
    this.actions = const {},
    this.isHybrid = false,
  });

  final Map<Type, EmrAction<Intent>> actions;
  final EmrQueryLayoutController<T> controller;
  final bool isHybrid;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            // Original actions panel for backwards compatibility
            controller.actionsBuilder?.call(context) ?? const SizedBox.shrink(),

            /// Primary actions
            ...actions.primaryActions.entries.map(
              (entry) => ValueListenableBuilder<bool>(
                valueListenable: entry.value.actionEnabled,
                builder: (context, enabled, child) {
                  final controlType = kIsWeb
                      ? entry.value.controlType
                      : EmrActionControlType.iconButton;

                  return switch (controlType) {
                    EmrActionControlType.button => FilledButton(
                        onPressed: enabled == false
                            ? null
                            : () {
                                Actions.invoke(
                                  context,
                                  entry.value.createIntent(context),
                                );
                              },
                        child: Text(entry.value.label),
                      ),
                    EmrActionControlType.iconButton => IconButton(
                        icon: Icon(entry.value.icon),
                        onPressed: enabled == false
                            ? null
                            : () {
                                Actions.invoke(
                                  context,
                                  entry.value.createIntent(context),
                                );
                              },
                      ),
                  };
                },
              ),
            ),

            /// View Mode Toggle Button
            if (isHybrid && controller.supportedViewModes.length > 1)
              IconButton(
                icon: ValueListenableBuilder<EmrQueryLayoutViewMode>(
                  valueListenable: controller.viewMode,
                  builder: (context, viewMode, child) {
                    return viewMode == EmrQueryLayoutViewMode.card
                        ? const Icon(Icons.list)
                        : const Icon(Icons.style_outlined);
                  },
                ),
                onPressed: () {
                  if (controller.viewMode.value ==
                      EmrQueryLayoutViewMode.card) {
                    controller.viewMode.value = EmrQueryLayoutViewMode.grid;
                  } else {
                    controller.viewMode.value = EmrQueryLayoutViewMode.card;
                  }
                },
              ),

            /// Select All Checkbox - for Card View with Multiple Selection
            if (isHybrid &&
                controller.supportedViewModes
                    .contains(EmrQueryLayoutViewMode.card) &&
                controller.dataSource.selectionMode ==
                    RowSelectionMode.multiple)
              ValueListenableBuilder<List<T>>(
                valueListenable: controller.dataSource.selection,
                builder: (context, selection, child) {
                  return Checkbox(
                    tristate: true,
                    value: selection.isEmpty
                        ? false
                        : selection.length ==
                                controller.dataSource.data.value.length
                            ? true
                            : null,
                    onChanged: (value) {
                      if (value ?? false) {
                        controller.dataSource.selectAll();
                      } else {
                        controller.dataSource.clearSelection();
                      }
                    },
                  );
                },
              ),

            /// This is the secondary actions button - it only appears if there
            /// is exactly 1 secondary action defined.
            if (isHybrid && actions.secondaryActions.length == 1)
              ValueListenableBuilder(
                valueListenable:
                    actions.secondaryActions.values.first.actionEnabled,
                builder: (_, actionEnabled, child) => IconButton(
                  icon: Icon(actions.secondaryActions.values.first.icon),
                  onPressed: actionEnabled
                      ? () {
                          Actions.invoke(
                            context,
                            actions.secondaryActions.values.first
                                .createIntent(context),
                          );
                        }
                      : null,
                  tooltip: actions.secondaryActions.values.first.label,
                ),
              ),

            /// this is the secondary actions menu - any action which is not
            /// the primary action and is not a contextual action is shown
            /// via a pop-up menu
            if (isHybrid && actions.secondaryActions.length > 1)
              MenuAnchor(
                alignmentOffset: const Offset(-80, 0),
                menuChildren: [
                  for (final action in actions.secondaryActions.entries)
                    ValueListenableBuilder(
                      valueListenable: action.value.actionEnabled,
                      builder: (_, actionEnabled, child) {
                        return MenuItemButton(
                          onPressed: actionEnabled
                              ? () {
                                  Actions.invoke(
                                    context,
                                    action.value.createIntent(context),
                                  );
                                }
                              : null,
                          leadingIcon: Icon(
                            action.value.icon,
                          ),
                          child: Text(
                            action.value.label,
                          ),
                        );
                      },
                    ),
                ],
                builder: (
                  BuildContext context,
                  MenuController controller,
                  Widget? child,
                ) {
                  return IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {
                      if (controller.isOpen) {
                        controller.close();
                      } else {
                        controller.open();
                      }
                    },
                    tooltip: 'More actions...',
                  );
                },
              ),
          ],
        ),
      );
}
