import 'package:emr_one_core/models/user_dashboards/direct_query_instance.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/controllers/controllers.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/direct_query_instance_editor.dart';
import 'package:emr_one_core/src/workspace/components/data_tile/data_tile.dart';
import 'package:emr_one_core/src/workspace/editors/workspace_element_editor.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';

class DataTileFlyout extends StatefulWidget {
  const DataTileFlyout({
    required this.element,
    required this.workspaceController,
    super.key,
  });

  @override
  State<DataTileFlyout> createState() => _TileFlyoutState();

  final WorkspaceElementBase element;
  final WorkspaceController workspaceController;
}

class _TileFlyoutState extends State<DataTileFlyout> {
  final _formKey = GlobalKey<FormState>();
  late final DataTileController _controller;

  @override
  void initState() {
    super.initState();

    _controller = widget.element.controller as DataTileController;
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
            DirectQueryInstanceEditor(
              directQueryService:
                  widget.workspaceController.registry.directQueryService,
              controller: DirectQueryInstanceEditorController(
                model: widget.element.customProperties as DirectQueryInstance,
              ),
            ),
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
