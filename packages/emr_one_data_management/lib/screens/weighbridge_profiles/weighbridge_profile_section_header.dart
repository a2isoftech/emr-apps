import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeighbridgeProfileSectionHeader extends StatelessWidget {
  const WeighbridgeProfileSectionHeader({
    required this.iconData,
    required this.text,
    this.onDelete,
    super.key,
  });

  final FaIconData iconData;
  final String text;
  final void Function()? onDelete;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(iconData),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: Insets.gutter / 2),
            child: Text(
              text,
              style: EmrOneConstants.kSmallestHeadingTextStyle,
            ),
          ),
        ),
        if (onDelete != null)
          IconButton(
            onPressed: () => EmrDialog.noYes(
              context,
              titleText: context.l10n.areYouSure,
              onYes: onDelete,
            ),
            icon: const Icon(Icons.delete),
          ),
      ],
    );
  }
}
