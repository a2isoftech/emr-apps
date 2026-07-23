import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_forms_engine/views/form_render.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/yard.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/preview/preview_template_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class PreviewTemplateCommon
    extends BasePage<PreviewTemplateController> {
  PreviewTemplateCommon({
    required this.templateJson,
    required this.isDigitalSignatureRequiredForTemplate,
    required this.isDigitalSignatureRequiredForJob,
    super.key,
  });

  final String templateJson;
  final bool isDigitalSignatureRequiredForTemplate;
  final bool isDigitalSignatureRequiredForJob;
  late final FormRenderer widget;

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) => context.l10n.previewButtonText;

  @override
  void initState(BuildContext context) {
    final formsEngine = Provider.of<FormsEngine>(context, listen: false);
    formsEngine.loadTemplateFromJson(
      templateJson,
      '',
      isPreview: true,
      isDigitalSignatureRequired: isDigitalSignatureNeeded(),
    );
    widget = formsEngine.buildRenderer();
  }

  @override
  Widget widgetBuilder(BuildContext context) => widget;

  @override
  Widget? getBottomBar(Yard yard) => null;

  bool isDigitalSignatureNeeded() {
    if (isDigitalSignatureRequiredForJob ||
        isDigitalSignatureRequiredForTemplate) {
      return true;
    }

    if (InformJobs.preference?.isDigitalSignForWorkOrdersEnabled == null ||
        InformJobs.yardDetails?.yardCode == null) {
      return false;
    }

    return InformJobs.preference!.isDigitalSignForWorkOrdersEnabled!.getValue(
      InformJobs.yardDetails!.yardCode!,
    );
  }
}
