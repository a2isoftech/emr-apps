import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EmrQueryLayoutDefaultMenuPanel<T> extends StatelessWidget {
  const EmrQueryLayoutDefaultMenuPanel({required this.controller, super.key});

  final EmrQueryLayoutController<T> controller;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: Insets.gutter),
        child: MenuAnchor(
          builder: (
            BuildContext context,
            MenuController menuController,
            Widget? child,
          ) {
            return IconButton(
              onPressed: () {
                if (menuController.isOpen) {
                  menuController.close();
                } else {
                  menuController.open();
                }
              },
              icon: const Icon(Icons.more_vert),
              tooltip: context.l10n.showActions,
            );
          },
          menuChildren: controller.menuChildrenBuilder(context),
        ),
      );
}
