import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/components/menu_tile/menu_tile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuTileWidget extends StatefulWidget {
  const MenuTileWidget({
    required this.element,
    required this.dragging,
    super.key,
  });

  @override
  State<MenuTileWidget> createState() => _MenuTileWidgetState();

  final WorkspaceElementBase element;
  final bool dragging;
}

class _MenuTileWidgetState extends State<MenuTileWidget> {
  @override
  void initState() {
    super.initState();
    final controller = widget.element.controller as MenuTileController;
    controller.onCommit = () {
      setState(() {});
    };
  }

  @override
  void didUpdateWidget(covariant MenuTileWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.element != widget.element) {
      final controller = widget.element.controller as MenuTileController;
      controller.onCommit = () {
        setState(() {});
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    final customProperties =
        widget.element.customProperties as MenuTileProperties;

    final uri = Uri.tryParse(customProperties.url.value);

    return ListenableBuilder(
      listenable: Listenable.merge([
        customProperties.labelText,
        customProperties.url,
      ]),
      builder: (context, child) => EOHoverTile(
        onTap: uri != null && (uri.hasAbsolutePath || uri.hasAbsolutePath)
            ? () async {
                if (uri.isAbsolute) {
                  await launchUrl(uri);
                } else {
                  context.go(customProperties.url.value);
                }
              }
            : null,
        child: EOHoverTileSimpleContent(
          icon: customProperties.iconData.value,
          label: customProperties.labelText.value,
        ),
      ),
    );
  }
}
