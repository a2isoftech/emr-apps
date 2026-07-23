import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/widgets/form_fields/emr_button_group_form_field.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/haulier_report_widget.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/open_jobs_report_widget.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/yard_report_widget.dart';
import 'package:flutter/material.dart';

class ReportModal extends StatefulWidget {
  const ReportModal({
    required this.selectedReport,
    this.truckInfo,
    super.key,
    this.yard,
  });
  final ValueNotifier<List<String>> selectedReport;
  final TruckInfo? truckInfo;
  final DispatchYards? yard;

  @override
  State<ReportModal> createState() => _ReportModalState();
}

class _ReportModalState extends State<ReportModal> {
  final ValueNotifier<Map<String, String>> reportTypes = ValueNotifier(
    Map.fromEntries(
      ReportType.values.map((e) => MapEntry(e.toString(), e.toString())),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 570,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EmrButtonGroupFormField<String>(
            labelText: context.l10n.reportType,
            binding: widget.selectedReport,
            options: reportTypes,
          ),
          ValueListenableBuilder(
            valueListenable: widget.selectedReport,
            builder: (context, val, child) {
              if (val.first == ReportType.haulier.toString()) {
                return HaulierReportWidget(truckInfo: widget.truckInfo);
              } else if (val.first == ReportType.yard.toString()) {
                return YardReportWidget(yard: widget.yard);
              } else if (val.first == ReportType.openjobs.toString()) {
                return OpenJobsReportWidget(truckInfo: widget.truckInfo);
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
