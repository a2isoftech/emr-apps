import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/screens/select_yard/select_yard_common.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:flutter/material.dart';

class SelectYardWeb extends SelectYardCommon {
  SelectYardWeb({super.canNavigateBack, super.onSave, super.key});

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  Widget? pageHeader(BuildContext context) => getPageHeader(
        'Select Yard',
        actionButton: actionButton(context),
        hasBackButton: canNavigateBack,
      );

  @override
  Widget? actionButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: !controller.isSaveEnabled
          ? null
          : () {
              if (canNavigateBack) {
                context.goNamed(FormsRoutingName.inForms);
              }

              onSave?.call();
            },
      icon: const Icon(Icons.save),
      label: Text(context.l10n.saveButtonText),
    );
  }

  @override
  bool isWeb() => true;
}
