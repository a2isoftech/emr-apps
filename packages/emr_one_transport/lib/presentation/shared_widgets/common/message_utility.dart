import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/utilities/emr_modal.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:flutter/material.dart';

class MessageUtility {
  static void handleResult(
    BuildContext context,
    ActionResult actionResult, {
    bool canGoBack = true,
  }) {
    switch (actionResult.status) {
      case ActionStatus.apiSuccess:
        EmrModal.showMessageBar(context, context.l10n.success);
        if (canGoBack) Navigator.of(context).pop(true);

      case ActionStatus.formValidationFailed:
        break;

      case ActionStatus.apiFailure:
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(actionResult.errorMessage ?? context.l10n.error),
          ),
        );
        if (canGoBack) Navigator.of(context).pop(false);
    }
  }
}
