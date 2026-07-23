import 'package:cross_file/cross_file.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/planner/plan_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ImportPlanDialog extends StatelessWidget {
  const ImportPlanDialog({
    required this.formKey,
    required this.plannerService,
    required this.fileNotifier,
    super.key,
  });
  final PlanService plannerService;
  final GlobalKey<FormState> formKey;
  final ValueNotifier<XFile?> fileNotifier;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: Insets.gutter / 2,
          children: [
            RichText(
              text: TextSpan(
                text: context.l10n.downloadTemplate,
                style: const TextStyle(
                  color: Colors.lightBlue,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    await plannerService.downloadTemplate();
                  },
              ),
            ),
            EmrFilePickerFormField(
              validator: Validators.required,
              binding: fileNotifier,
              extensions: EmrFilePickerFormFieldFileExtensions.excel,
            ),
          ],
        ),
      ),
    );
  }
}
