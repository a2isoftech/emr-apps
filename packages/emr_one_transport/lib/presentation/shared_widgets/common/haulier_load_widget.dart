import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/widgets/form_fields/emr_picker_form_field.dart';
import 'package:emr_one_transport/data/controllers/planner/schedule_plan_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/plans/schedule_plan.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/haulier_loads_row.dart';
import 'package:flutter/material.dart';

class HaulierLoadWidget extends StatefulWidget {
  const HaulierLoadWidget({
    required this.hauliers,
    required this.deleteReasons,
    required this.schedulePlanController,
    super.key,
  });
  final List<SchedulePlan> hauliers;
  final List<ListDetails> deleteReasons;
  final SchedulePlanController schedulePlanController;
  @override
  State<HaulierLoadWidget> createState() => HaulierLoadWidgetState();
}

class HaulierLoadWidgetState extends State<HaulierLoadWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmrPickerFormField<Haulier>(
          labelText: context.l10n.scheduleForHaulier,
          binding: widget.schedulePlanController.selectedhaulier,
          items: (query) => widget.schedulePlanController.searchHauliers(query),
          itemTitleText: (haulier) {
            return '${haulier.accountNo} - ${haulier.name}';
          },
          itemSubtitleText: StringHelper.getHaulierTypeForDisplay,
        ),
        const SizedBox(height: Insets.gutter),
        ListView.builder(
          shrinkWrap: true,
          reverse: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.hauliers.length,
          itemBuilder: (context, i) {
            final haulierSchedule = widget.hauliers[i];
            return HaulierScheduleWidget(
              key: ValueKey(haulierSchedule.haulierCode),
              plan: haulierSchedule,
              controller: widget.schedulePlanController,
            );
          },
        ),
      ],
    );
  }
}
