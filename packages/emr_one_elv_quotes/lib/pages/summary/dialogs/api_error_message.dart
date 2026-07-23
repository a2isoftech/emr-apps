import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/pages/summary/summary_controller.dart';
import 'package:flutter/material.dart';

class ErrorMessaging extends StatelessWidget {
  const ErrorMessaging({
    required this.controller,
    required this.apiError,
    super.key,
  });

  final ValueNotifier<bool> apiError;
  final SummaryController controller;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: apiError,
      builder: (context, value, child) {
        if (value) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            showDialog<void>(
              barrierDismissible: false,
              context: context,
              builder: (_) => AlertDialog(
                title: Text(context.l10n.apiError),
                content: Text(controller.apiErrorMessage),
                actions: [
                  TextButton(
                    onPressed: () {
                      controller.resetApiError();
                      context.pop();
                    },
                    child: Text(context.l10n.close),
                  ),
                ],
              ),
            );
          });
        }
        return const SizedBox();
      },
    );
  }
}
