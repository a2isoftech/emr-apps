import 'package:emr_one_core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class MobileOnlyWarning extends StatelessWidget {
  const MobileOnlyWarning({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Icon(
          Icons.warning_outlined,
          size: 128,
          color: Colors.red,
        ),
        Text(
          '${context.l10n.mobileOnly}!',
          style: const TextStyle(fontSize: 32),
        ),
        Text(
          '${context.l10n.resizeWindowMessage}.',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
