import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/planner/schedule_plan_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/plans/plan_response.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/haulier_load_widget.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuickSchedulePlanDialog extends StatefulWidget {
  const QuickSchedulePlanDialog({required this.plan, super.key});
  final PlanResponse plan;
  @override
  State<QuickSchedulePlanDialog> createState() =>
      _QuickSchedulePlanDialogState();
}

class _QuickSchedulePlanDialogState extends State<QuickSchedulePlanDialog> {
  late SchedulePlanController controller;

  @override
  void initState() {
    controller = Provider.of<SchedulePlanController>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.initialize(widget.plan.planNumber);
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.clearListeners();
    controller.resetForm();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SchedulePlanController>(
      builder: (context, ctrl, child) {
        return Stack(
          children: [
            _build(widget.plan, ctrl),
            if (ctrl.isLoading)
              const Positioned.fill(child: Center(child: LoadingIndicator())),
          ],
        );
      },
    );
  }

  Widget _build(PlanResponse plan, SchedulePlanController controller) {
    final assignedLoads = plan.haulierScheduleDetails.fold<int>(
      0,
      (sum, haulierDetail) => sum + (haulierDetail.loads ?? 0),
    );
    final unassignedLoads = plan.loads - assignedLoads;
    return Form(
      key: controller.formKey,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: Insets.gutter,
          children: [
            BuildColumnWithControl(
              label: '${context.l10n.customer} :',
              control: Text(
                '${plan.customerLocation.code} - '
                '${plan.customerLocation.name}',
                style: const TextStyle(fontSize: Insets.gutter),
                overflow: TextOverflow.visible,
              ),
              isBoldLabel: true,
            ),
            BuildColumnWithControl(
              label: '${context.l10n.startLocation} :',
              control: Text(
                StringHelper.buildAddress(plan.startLocation),
                style: const TextStyle(fontSize: Insets.gutter),
                overflow: TextOverflow.visible,
              ),
              isBoldLabel: true,
            ),
            BuildColumnWithControl(
              label: '${context.l10n.endLocation} :',
              control: Text(
                StringHelper.buildAddress(plan.endLocation),
                style: const TextStyle(fontSize: Insets.gutter),
                overflow: TextOverflow.visible,
              ),
              isBoldLabel: true,
            ),
            const SizedBox(height: Insets.gutter / 2),
            const Divider(),
            Row(
              spacing: Insets.gutter / 4,
              children: [
                Text(
                  '${context.l10n.totalLoadsDisplay} : ',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  plan.loads.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: Insets.gutter / 2),
                const Text(
                  '${StringConstants.assignedLoads} : ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  assignedLoads.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: Insets.gutter / 2),
                const Text(
                  '${StringConstants.unassignedLoads} : ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  unassignedLoads.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: Insets.gutter / 2),
                Text(
                  '${StringConstants.scheduledApiValue} '
                  '${context.l10n.jobs} : ',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  plan.jobStatusCount?[StringConstants.scheduledApiValue]
                          ?.toString() ??
                      '0',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(),
            BuildColumnWithControl(
              label: context.l10n.totalLoads,
              control: EmrStepperFormField(
                validator: (value) => Validators.join([
                  Validators.required(value),
                  controller.loadsValidator(value),
                ]),
                binding: controller.selectedLoads,
              ),
              isBoldLabel: true,
            ),
            ValueListenableBuilder(
              valueListenable: controller.schedulePlanDetail,
              builder: (context, detail, child) {
                return Column(
                  children: [
                    HaulierLoadWidget(
                      hauliers: detail,
                      schedulePlanController: controller,
                      deleteReasons: controller.deleteReasons,
                    ),
                  ],
                );
              },
            ),
            BuildColumnWithControl(
              label: '${context.l10n.planDate} :',
              control: EmrDateFormField(
                readOnly: ValueNotifier(true),
                binding: controller.selectedDate,
              ),
              isBoldLabel: true,
            ),
          ],
        ),
      ),
    );
  }
}
