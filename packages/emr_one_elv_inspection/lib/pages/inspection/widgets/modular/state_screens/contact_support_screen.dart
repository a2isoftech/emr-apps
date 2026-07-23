import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class InspectionContactSupportScreen extends StatelessWidget {
  const InspectionContactSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.cancel,
            color: EmrColours.secondaryRed,
            size: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(
              Insets.gutter,
            ),
            child: Text(
              '${context.l10n.failed}\n${context.l10n.pleaseContactHelpDesk}',
              textAlign: TextAlign.center,
              style: EmrOneConstants.kSmallHeadingTextStyle,
            ),
          ),
          ElevatedButton(
            onPressed: context.pop,
            child: Text(
              context.l10n.back,
            ),
          ),
        ],
      ),
    );
  }
}
