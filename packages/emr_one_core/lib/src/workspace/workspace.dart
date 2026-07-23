import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/layouts/workspace_wrap_layout.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Workspace extends StatefulWidget {
  const Workspace({
    required this.controller,
    super.key,
  });

  final WorkspaceController controller;

  @override
  State<Workspace> createState() => _WorkspaceState();
}

class _WorkspaceState extends State<Workspace> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
          ChangeNotifierProvider<WorkspaceController>.value(
        value: widget.controller,
        child: Consumer<WorkspaceController>(
          builder: (context, controller, child) =>
              _buildCore(context, constraints, controller),
        ),
      ),
    );
  }

  Widget _buildCore(
    BuildContext context,
    BoxConstraints constraints,
    WorkspaceController controller,
  ) {
    // Generate any flyouts which are active
    final flyouts = <Widget>[];
    if (controller.showingPropertiesFlyout) {
      flyouts.add(
        _rightFlyoutBuilder(constraints, controller.propertiesFlyoutElement!),
      );
    }
    if (controller.showingComponentFlyout) {
      flyouts.add(_componentPaletteBuilder(constraints, controller));
    }

    return switch (widget.controller.layout.layoutType) {
      LayoutType.grid => _buildScreen(
          flyouts,
          WorkspaceGridLayout(
            screenLayout: widget.controller.layout,
            workspaceController: widget.controller,
          ),
          editing: true,
        ),
      LayoutType.wrap => _buildScreen(
          flyouts,
          WorkspaceWrapLayout(
            screenLayout: widget.controller.layout,
            workspaceController: widget.controller,
          ),
          // editing: true,
        ),
      _ => throw Exception(
          'Unsupported layout type: ${widget.controller.layout.layoutType}',
        ),
    };
  }

  Widget _buildScreen(
    List<Widget> flyouts,
    Widget child, {
    bool editing = false,
  }) {
    return editing
        ? Scaffold(
            floatingActionButton: !(widget.controller.showingComponentFlyout ||
                    widget.controller.showingPropertiesFlyout)
                ? FloatingActionButton(
                    onPressed: widget.controller.showComponentFlyout,
                    backgroundColor: Colors.green,
                    child: const Icon(Icons.add),
                  )
                : null,
            body: Stack(
              children: [
                Positioned.fill(
                  child: child,
                ),
                ...flyouts,
              ],
            ),
          )
        : child;
  }

  Widget _rightFlyoutBuilder(
    BoxConstraints constraits,
    WorkspaceElementBase element,
  ) {
    return Positioned(
      right: 0,
      top: 0,
      child: SizedBox(
        width: kFlyoutWidth,
        height: constraits.maxHeight,
        child: FlyoutShim(
          child: Column(
            children: [
              Expanded(
                child: element.editElement(context, widget.controller, element),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      widget.controller
                          .hidePropertiesFlyout(cancelChanges: true);
                    },
                    child: Text(context.l10n.cancel),
                  ),
                  const SizedBox(width: Insets.gutter),
                  FilledButton(
                    onPressed: () {
                      final elementController = element.controller;
                      if (elementController.onValidatePropertyChanges()) {
                        widget.controller.hidePropertiesFlyout();
                      }
                    },
                    style: EmrButtonStyles.cta(),
                    child: Text(context.l10n.apply),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _componentPaletteBuilder(
    BoxConstraints constraints,
    WorkspaceController controller,
  ) {
    return Positioned(
      right: 0,
      top: 0,
      child: SizedBox(
        width: kFlyoutWidth,
        height: constraints.maxHeight,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ComponentPalette(
            controller: controller,
          ),
        ),
      ),
    );
  }
}
