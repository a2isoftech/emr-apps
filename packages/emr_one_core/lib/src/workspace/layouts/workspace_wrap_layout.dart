import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/workspace/workspace_layout.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/widgets.dart';

class WorkspaceWrapLayout extends StatelessWidget {
  const WorkspaceWrapLayout({
    required this.screenLayout,
    required this.workspaceController,
    super.key,
  });

  final WorkspaceLayout screenLayout;
  final WorkspaceController workspaceController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Wrap(
          spacing: Insets.gutter,
          runSpacing: Insets.gutter,
          children: screenLayout.elements
              .map(
                (element) => element.elementBuilder(
                  context,
                  workspaceController,
                  element,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
