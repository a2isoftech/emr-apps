import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:flutter/material.dart';

class YlActionPanel extends StatelessWidget {
  const YlActionPanel({required this.actions, super.key});

  final List<(String, IconData, VoidCallback?, Widget?, VoidCallback?)> actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: YlConstants.gridCrossAxisCount,
          mainAxisSpacing: Insets.gutter,
          crossAxisSpacing: Insets.gutter,
          childAspectRatio: YlConstants.gridAspectRatio,
        ),
        children: [
          for (final (label, iconData, callback, extraWidget, longPressCallback)
              in actions)
            GestureDetector(
              onLongPress: longPressCallback,
              child: YlActionButton(
                onPressed: callback,
                label: Text(
                  label,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: callback == null
                        ? Theme.of(context).disabledColor
                        : null,
                  ),
                ),
                trailing: Icon(
                  iconData,
                  color:
                      callback == null ? Theme.of(context).disabledColor : null,
                ),
                extraWidget: extraWidget,
              ),
            ),
        ],
      ),
    );
  }
}
