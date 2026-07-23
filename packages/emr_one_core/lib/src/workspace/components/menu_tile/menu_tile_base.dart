import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/components/menu_tile/menu_tile.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';

class MenuTile extends WorkspaceElementBase<MenuTileWidget, MenuTileFlyout,
    MenuTileProperties, MenuTileController> {
  MenuTile({
    required super.type,
    required super.getController,
    required super.position,
    required super.size,
    required super.elementProperties,
    required super.customProperties,
    required super.kind,
  });

  static const kDefaultSize = Size.zero;

  @override
  MenuTileWidget elementBuilder(
    BuildContext context,
    WorkspaceController controller,
    WorkspaceElementBase element, {
    bool isStatic = false,
  }) {
    return MenuTileWidget(
      element: element,
      dragging: isStatic,
    );
  }

  @override
  MenuTileFlyout editElement(
    BuildContext context,
    WorkspaceController controller,
    WorkspaceElementBase element,
  ) {
    return MenuTileFlyout(
      workspaceController: controller,
      element: element,
    );
  }

  static IconData getIconData() {
    return Icons.text_fields;
  }

  static String getDisplayName() => 'Menu Tile';
}
