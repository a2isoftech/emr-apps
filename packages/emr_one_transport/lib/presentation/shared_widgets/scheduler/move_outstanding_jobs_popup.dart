import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/controllers/scheduler/move_outstanding_job_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MoveOutstandingJobsPopup extends StatefulWidget {
  const MoveOutstandingJobsPopup({
    required this.sourceTruck,
    required this.sourceDate,
    super.key,
  });
  final DateTime sourceDate;
  final SchedulerTruck sourceTruck;

  @override
  State<MoveOutstandingJobsPopup> createState() =>
      _MoveOutstandingJobsPopupState();
}

class _MoveOutstandingJobsPopupState extends State<MoveOutstandingJobsPopup> {
  late MoveOutstandingJobController controller;
  @override
  void initState() {
    super.initState();
    controller = Provider.of<MoveOutstandingJobController>(
      context,
      listen: false,
    );
    controller.initialize(widget.sourceTruck, widget.sourceDate);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MoveOutstandingJobController>(
      builder: (context, ctrl, _) {
        final vrm = widget.sourceTruck.vrm;
        final driverName = widget.sourceTruck.driverName;

        final truckinfo = driverName != null && driverName.isNotEmpty
            ? '$vrm - $driverName'
            : vrm;
        return Form(
          key: controller.formKey,
          child: SizedBox(
            width: 500,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: Insets.gutter / 2,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildColumnWithControl(
                  label: context.l10n.source,
                  isBoldLabel: true,
                  control: Text(
                    truckinfo,
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.visible,
                  ),
                ),
                EmrPickerFormField(
                  validator: Validators.required,
                  labelText: '${context.l10n.scheduleForTruckHaulier} :',
                  binding: controller.selectedHaulier,
                  itemTitleText: StringHelper.buildTruckAndHaulierDisplay,
                  items: controller.jobListService.searchTruckHaulierForUser,
                  itemSubtitleText: (haulier) {
                    return StringHelper.getHaulierDisplayType(
                      haulier.haulierType!,
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
