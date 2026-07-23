import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ElvBulkCostAdjustmentWidget extends StatelessWidget {
  const ElvBulkCostAdjustmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          EmrPickerFormField<String>(
            items: (search) => Future.value([]),
            itemTitleText: (value) => value,
            binding: ValueNotifier(''),
          ),
          EmrTextFormField(
            binding: ValueNotifier(''),
            labelText: context.l10n.cost,
            hintText: context.l10n.cost,
          ),
        ],
      ),
    );
  }
}
