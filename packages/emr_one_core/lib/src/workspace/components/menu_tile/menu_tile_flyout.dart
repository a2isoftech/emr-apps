import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/components/menu_tile/menu_tile.dart';
import 'package:emr_one_core/src/workspace/editors/workspace_element_editor.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';

class MenuTileFlyout extends StatefulWidget {
  const MenuTileFlyout({
    required this.element,
    required this.workspaceController,
    super.key,
  });

  @override
  State<MenuTileFlyout> createState() => _MenuTileFlyoutState();

  final WorkspaceElementBase element;
  final WorkspaceController workspaceController;
}

class _MenuTileFlyoutState extends State<MenuTileFlyout> {
  final _formKey = GlobalKey<FormState>();
  late final MenuTileController _controller;

  @override
  void initState() {
    super.initState();

    _controller = widget.element.controller as MenuTileController;
    _controller.onValidate = () {
      if (_formKey.currentState?.validate() ?? false) {
        widget.workspaceController.hidePropertiesFlyout();
        return true;
      }
      return false;
    };
  }

  @override
  void dispose() {
    _controller.onValidate = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Title',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter / 2),
            Row(
              children: [
                Expanded(
                  child: EmrTextFormField(
                    binding:
                        (widget.element.customProperties as MenuTileProperties)
                            .labelText,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Label cannot be empty';
                      }
                      return null;
                    },
                    textAlignVertical: TextAlignVertical.top,
                  ),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter / 2),
            WorkspaceElementEditor(
              element: widget.element,
              workspaceController: widget.workspaceController,
            ),
          ],
        ),
      ),
    );
  }
}
