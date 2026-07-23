import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/components/label_tile/label_tile.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LabelTileWidget extends StatefulWidget {
  const LabelTileWidget({
    required this.element,
    required this.dragging,
    super.key,
  });

  @override
  State<LabelTileWidget> createState() => _LabelTileWidgetState();

  final WorkspaceElementBase element;
  final bool dragging;
}

class _LabelTileWidgetState extends State<LabelTileWidget> {
  @override
  void initState() {
    super.initState();
    final controller = widget.element.controller as LabelTileController;
    controller.onCommit = () {
      setState(() {});
    };
  }

  @override
  void didUpdateWidget(covariant LabelTileWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.element != widget.element) {
      final controller = widget.element.controller as LabelTileController;
      controller.onCommit = () {
        setState(() {});
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Provider.of<WorkspaceController>(context, listen: false)
            .editElementProperties(widget.element);
      },
      child: ValueListenableBuilder(
        valueListenable: widget.element.elementProperties.backgroundColour,
        builder: (context, value, child) {
          return ValueListenableBuilder(
            valueListenable:
                (widget.element.customProperties as LabelTileProperties)
                    .labelText,
            builder: (context, value, child) {
              return Text(
                value,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontSize: 14,
                      color: widget
                          .element.elementProperties.backgroundColour.value,
                    ),
              );
            },
          );
        },
      ),
    );
  }
}
