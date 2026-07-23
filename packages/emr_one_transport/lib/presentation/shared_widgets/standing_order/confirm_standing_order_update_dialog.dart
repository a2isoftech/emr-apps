import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_transport/data/controllers/standing_order/standing_order_create_edit_controller.dart';
import 'package:flutter/material.dart';

class ConfirmStandingOrderUpdatePopup extends StatelessWidget {
  const ConfirmStandingOrderUpdatePopup({
    required this.standingOrderId,
    required this.controller,
    super.key,
  });

  final String standingOrderId;
  final StandingOrderCreateEditController controller;

  @override
  Widget build(BuildContext context) {
    final standingOrderNumber = standingOrderId.split('/').last;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: Insets.gutter / 2),
        Text(
          '${context.l10n.confirmSTOUpdationMsg} $standingOrderNumber ?',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: Insets.gutter),
        Row(
          children: [
            ValueListenableBuilder(
              valueListenable: controller.recreateFutureJobs,
              builder: (context, value, child) {
                return Checkbox(
                  value: value,
                  onChanged: (val) {
                    controller.recreateFutureJobs.value = val ?? false;
                  },
                );
              },
            ),
            Text(context.l10n.recreateFutureJobsLabel),
          ],
        ),
      ],
    );
  }
}
