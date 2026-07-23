import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:flutter/material.dart';

class QueryLayoutFab extends StatelessWidget {
  const QueryLayoutFab({required this.contextualActions, super.key});

  final Map<Type, Action<Intent>> contextualActions;

  @override
  Widget build(BuildContext context) {
    if (contextualActions.entries.length == 1) {
      // If there's only one contextual action, we can use a simple button
      final action = contextualActions.entries.first.value;
      return ValueListenableBuilder(
        valueListenable: (action as EmrAction<Intent>).actionEnabled,
        builder: (_, actionEnabled, child) {
          return FloatingActionButton(
            foregroundColor: Theme.of(context).colorScheme.primaryContainer,
            backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
            onPressed: actionEnabled
                ? () {
                    Actions.invoke(
                      context,
                      action.createIntent(context),
                    );
                  }
                : null,
            tooltip: action.label,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(action.icon),
          );
        },
      );
    }

    return MenuAnchor(
      // The dx offset is a hack to force the menu off the right hand side of
      // the screen, but it is not correct because '80' only works for a
      // a specific menu width, if the menu text is shorter or longer the
      // offset will be wrong.
      alignmentOffset: const Offset(-80, Insets.gutter),
      menuChildren: [
        for (final action in contextualActions.entries)
          ValueListenableBuilder(
            valueListenable: (action.value as EmrAction<Intent>).actionEnabled,
            builder: (_, actionEnabled, child) {
              return MenuItemButton(
                onPressed: actionEnabled
                    ? () {
                        Actions.invoke(
                          context,
                          (action.value as EmrAction<Intent>)
                              .createIntent(context),
                        );
                      }
                    : null,
                leadingIcon: Icon(
                  (action.value as EmrAction<Intent>).icon,
                ),
                child: Text(
                  (action.value as EmrAction<Intent>).label,
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
        return FloatingActionButton(
          foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          tooltip: 'More options...',
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.tips_and_updates_outlined),
        );
      },
    );
  }
}
