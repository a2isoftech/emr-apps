import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/components/label_tile/label_tile.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';

class LabelTile extends WorkspaceElementBase<LabelTileWidget, LabelTileFlyout,
    LabelTileProperties, LabelTileController> {
  LabelTile({
    required super.type,
    required super.getController,
    required super.position,
    required super.size,
    required super.elementProperties,
    required super.customProperties,
    required super.kind,
  });

  static const kDefaultSize = Size(10, 1);

  @override
  LabelTileWidget elementBuilder(
    BuildContext context,
    WorkspaceController controller,
    WorkspaceElementBase element, {
    bool isStatic = false,
  }) {
    return LabelTileWidget(
      element: element,
      dragging: isStatic,
    );
  }

  @override
  LabelTileFlyout editElement(
    BuildContext context,
    WorkspaceController controller,
    WorkspaceElementBase element,
  ) {
    return LabelTileFlyout(
      workspaceController: controller,
      element: element,
    );
  }

  static IconData getIconData() {
    return Icons.text_fields;
  }

  static String getDisplayName() => 'Text Label';
}
