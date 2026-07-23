import 'package:emr_one_inform/screens/preview/preview_template_common.dart';
import 'package:flutter/material.dart';

class PreviewTemplateNative extends PreviewTemplateCommon {
  PreviewTemplateNative({
    required super.templateJson,
    required super.isDigitalSignatureRequiredForTemplate,
    required super.isDigitalSignatureRequiredForJob,
    super.key,
  });

  @override
  Widget? pageHeader(BuildContext context) => null;
}
