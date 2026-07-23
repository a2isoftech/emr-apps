import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/screens/template_library/template_library_common.dart';
import 'package:flutter/material.dart';

class TemplateLibraryWeb extends TemplateLibraryCommon {
  TemplateLibraryWeb({required super.returnSelectedTemplate, super.key});

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    return controller.selectedTemplate != null
        ? ElevatedButton.icon(
            onPressed: () => context.pop(controller.selectedTemplate),
            icon: const Icon(Icons.done),
            label: Text(context.l10n.done),
          )
        : ElevatedButton.icon(
            onPressed: ScreenAccess().canCreateTemplate(context)
                ? () {
                    onActionButtonPressed(context);
                  }
                : null,
            label: const Text('Create Template'),
            icon: Icon(
              Icons.add,
              color: FormAppColors.white,
            ),
          );
  }
}
