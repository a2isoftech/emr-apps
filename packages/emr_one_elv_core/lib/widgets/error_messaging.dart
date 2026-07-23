import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ErrorMessaging extends StatelessWidget {
  const ErrorMessaging({
    required this.apiError,
    required this.contentBody,
    required this.then,
    super.key,
  });

  final ValueNotifier<bool> apiError;
  final String contentBody;
  final void Function() then;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: apiError,
      builder: (context, value, child) {
        if (value && context.mounted) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            EmrDialog.ok(
              context,
              titleText: context.l10n.apiError,
              contentText: contentBody,
            ).then(
              (value) => then(),
            );
          });
        }
        return const SizedBox();
      },
    );
  }
}
