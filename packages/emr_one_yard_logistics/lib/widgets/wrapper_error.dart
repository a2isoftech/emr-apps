import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:flutter/material.dart';

class WrapperError extends StatelessWidget {
  const WrapperError({required this.message, super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          YlConstants.warningIcon,
          const SizedBox(height: Insets.gutter),
          Text(message),
          const SizedBox(height: Insets.gutter),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(context.l10n.back),
          ),
        ],
      ),
    );
  }
}
