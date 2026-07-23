import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EOHoverTileSimpleContent extends StatelessWidget {
  const EOHoverTileSimpleContent({
    required this.icon,
    required this.label,
    super.key,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: SizedBox(
        width: 116,
        height: 116,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmrIcon(
              icon,
              size: 38,
              color: Theme.of(context).colorScheme.primary,
            ),
            Divider(
              thickness: 2,
              color: Theme.of(context).colorScheme.secondary,
            ),
            Flexible(
              child: Text(
                label,
                maxLines: 3,
                textAlign: TextAlign.left,
                overflow: TextOverflow.fade,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
