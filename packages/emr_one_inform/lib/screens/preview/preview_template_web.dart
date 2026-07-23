import 'package:emr_one_inform/screens/preview/preview_template_common.dart';
import 'package:flutter/material.dart';

class PreviewTemplateWeb extends PreviewTemplateCommon {
  PreviewTemplateWeb({
    required super.templateJson,
    required super.isDigitalSignatureRequiredForTemplate,
    required super.isDigitalSignatureRequiredForJob,
    super.key,
  });

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;
}
