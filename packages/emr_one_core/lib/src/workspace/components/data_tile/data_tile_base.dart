import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/components/data_tile/data_tile.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';

class DataTile extends WorkspaceElementBase<DataTileWidget, DataTileFlyout,
    DirectQueryInstance, DataTileController> {
  DataTile({
    required super.type,
    required super.getController,
    required super.position,
    required super.size,
    required super.elementProperties,
    required super.customProperties,
    required super.kind,
  });

  static const kDefaultSize = Size(8, 4);

  @override
  DataTileWidget elementBuilder(
    BuildContext context,
    WorkspaceController controller,
    WorkspaceElementBase element, {
    bool isStatic = false,
  }) {
    return DataTileWidget(
      element: element,
      dragging: isStatic,
    );
  }

  @override
  DataTileFlyout editElement(
    BuildContext context,
    WorkspaceController controller,
    WorkspaceElementBase element,
  ) {
    return DataTileFlyout(
      workspaceController: controller,
      element: element,
    );
  }

  static IconData getIconData() {
    return Icons.speed;
  }

  static String getDisplayName() => 'Radial Weight';
}
