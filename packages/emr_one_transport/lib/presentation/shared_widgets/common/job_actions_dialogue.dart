import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/common/job_action_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JobActionsDialogue extends StatefulWidget {
  const JobActionsDialogue({
    required this.job,
    required this.action,
    super.key,
  });
  final SchedulerJob job;
  final JobContextMenuOptions action;
  @override
  State<JobActionsDialogue> createState() => _JobActionsDialogueState();
}

class _JobActionsDialogueState extends State<JobActionsDialogue> {
  late final JobActionController controller;
  @override
  void initState() {
    super.initState();

    controller = Provider.of<JobActionController>(context, listen: false);
    controller.initialize(widget.action);
  }

  @override
  void dispose() {
    controller.reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<JobActionController>(
      builder: (context, ctrl, child) {
        return SizedBox(
          width: 400,
          child: Stack(
            children: [
              Form(
                key: controller.formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.jobNumber,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(widget.job.jobNumber.toString()),
                    const SizedBox(height: Insets.gutter),
                    Text(
                      context.l10n.chooseReason,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ValueListenableBuilder<List<ListDetails>>(
                            valueListenable: controller.actionReasons,
                            builder: (context, value, child) {
                              return EmrPickerFormField<ListDetails>(
                                validator: Validators.required,
                                items: (val) => Future.value(value),
                                itemTitleText: (item) => item.description ?? '',
                                binding: controller.selectedReason,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    ValueListenableBuilder<ListDetails?>(
                      valueListenable: controller.selectedReason,
                      builder: (context, selectedReason, child) {
                        final isOtherSelected = selectedReason?.code ==
                            StringConstants.otherReasonCode;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.l10n.comments,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            EmrTextFormField<String>(
                              key: ValueKey(isOtherSelected),
                              maxLines: 3,
                              keyboardType: TextInputType.multiline,
                              binding: controller.actionComment,
                              validator: isOtherSelected
                                  ? Validators.required
                                  : Validators.none,
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              if (ctrl.isLoading)
                const Positioned.fill(child: Center(child: LoadingIndicator())),
            ],
          ),
        );
      },
    );
  }
}
