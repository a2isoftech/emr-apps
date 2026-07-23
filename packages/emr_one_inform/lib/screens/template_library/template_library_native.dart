import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/screens/template_library/template_library_common.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TemplateLibraryNative extends TemplateLibraryCommon {
  TemplateLibraryNative({required super.returnSelectedTemplate, super.key});

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context, listen: false);
    if (appConfig.isWeb) {
      return FloatingActionButton(
        elevation: 2,
        onPressed: controller.selectedTemplate != null
            ? () => context.pop(controller.selectedTemplate)
            : ScreenAccess().canCreateTemplate(context)
                ? () => onActionButtonPressed(context)
                : null,
        tooltip: controller.selectedTemplate != null
            ? 'Select Template'
            : context.l10n.createATemplate,
        shape: const CircleBorder(),
        backgroundColor: EmrColours.primaryGreen,
        child: controller.selectedTemplate != null
            ? Icon(Icons.done, color: FormAppColors.white)
            : Icon(Icons.add, color: FormAppColors.white),
      );
    } else {
      if (controller.selectedTemplate != null) {
        return FloatingActionButton(
          elevation: 2,
          onPressed: controller.selectedTemplate != null
              ? () => context.pop(controller.selectedTemplate)
              : ScreenAccess().canCreateTemplate(context)
                  ? () => onActionButtonPressed(context)
                  : null,
          tooltip: controller.selectedTemplate != null
              ? 'Select Template'
              : context.l10n.createATemplate,
          shape: const CircleBorder(),
          backgroundColor: EmrColours.primaryGreen,
          child: Icon(Icons.done, color: FormAppColors.white),
        );
      }
    }
    return null;
  }
}
