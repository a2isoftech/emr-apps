import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/widgets/form_fields/emr_picker_form_field.dart';
import 'package:emr_one_core/widgets/form_fields/emr_text_form_field.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:flutter/material.dart';

class ConfirmStandingOrderDeletionDialog extends StatelessWidget {
  ConfirmStandingOrderDeletionDialog({
    required this.standingOrder,
    required this.deleteReasons,
    required this.formkey,
    required this.selectedReasonNotifier,
    required this.commentNotifier,
    super.key,
  });
  final GlobalKey<FormState> formkey;
  final StandingOrder standingOrder;
  final List<String> deleteReasons;
  final ValueNotifier<bool> deletePendingJobs = ValueNotifier<bool>(false);
  final ValueNotifier<String?> selectedReasonNotifier;

  final ValueNotifier<String?> commentNotifier;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: SizedBox(
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Insets.gutter / 2),
            Text(
              '${context.l10n.confirmSTODeletionMsg} '
              '${standingOrder.standingOrderNumber} ?',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: Insets.gutter),
            Row(
              children: [
                ValueListenableBuilder(
                  valueListenable: deletePendingJobs,
                  builder: (context, value, child) {
                    return Checkbox(
                      value: value,
                      onChanged: (val) {
                        deletePendingJobs.value = val ?? false;
                      },
                    );
                  },
                ),
                Text(context.l10n.deletePendingAndScheduledJobs),
              ],
            ),
            ValueListenableBuilder(
              valueListenable: deletePendingJobs,
              builder: (context, value, child) {
                if (!value) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.only(top: Insets.gutter),
                  child: Column(
                    spacing: Insets.gutter,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BuildColumnWithControl(
                        label: context.l10n.deleteReason,
                        control: EmrPickerFormField(
                          validator: validateReason,
                          items: (_) => Future.value(deleteReasons),
                          itemTitleText: (item) => item,
                          binding: selectedReasonNotifier,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: EmrTextFormField(
                              validator: validateComment,
                              maxLines: 2,
                              keyboardType: TextInputType.multiline,
                              hintText: context.l10n.comments,
                              binding: commentNotifier,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  String? validateComment(String? comment) {
    final reason = selectedReasonNotifier.value;

    if (reason == StringConstants.other &&
        (comment == null || comment.isEmpty)) {
      return StringConstants.required;
    }
    return null;
  }

  String? validateReason(String? value) {
    if (value == null || value.isEmpty) {
      return StringConstants.required;
    }
    return null;
  }
}
