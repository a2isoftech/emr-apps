import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_create_edit_controller.dart';
import 'package:emr_one_transport/data/helpers/navigation_helper.dart';
import 'package:emr_one_transport/data/models/jobs/transport_job_response.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class JobHistory extends StatefulWidget {
  const JobHistory({
    required this.latestJobs,
    required this.assetNumber,
    required this.jobListService,
    required this.jobCreateEditController,
    super.key,
  });

  final JobListService jobListService;
  final JobCreateEditController jobCreateEditController;
  final List<TransportJobResponse> latestJobs;
  final String assetNumber;

  @override
  State<JobHistory> createState() => _JobHistoryState();
}

class _JobHistoryState extends State<JobHistory> {
  late final EmrGridController<dynamic> controller;

  @override
  void initState() {
    super.initState();

    controller = EmrGridController<dynamic>(
      data: ValueNotifier(widget.latestJobs),
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        height: 500,
        width: MediaQuery.sizeOf(context).width / 2,
        child: SelectionArea(
          child: EmrGrid(
            alternateBackgroundRowColour: true,
            pinnedRowCount: 1,
            controller: controller,
            columns: [
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.jobNumber,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                cellBuilder: (container) {
                  final data = container! as TransportJobResponse;
                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        final url = context.namedLocation(
                          RoutingPathName.jobTracking,
                          params: {StringConstants.jobid: '${data.jobNumber}'},
                        );
                        NavigationHelper.openInNewTab(url);
                      },
                      child: Text(
                        data.jobNumber.toString(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    ),
                  );
                },
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.jobType,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                cellBuilder: (container) {
                  final data = container! as TransportJobResponse;
                  return Text(data.jobType.toString());
                },
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.jobStatus,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                cellBuilder: (container) {
                  final data = container! as TransportJobResponse;
                  return Text(data.jobStatus.toString());
                },
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.createdDate,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                cellBuilder: (container) {
                  final data = container! as TransportJobResponse;
                  final scheduled = data.scheduledDate;
                  return Text(
                    scheduled != null
                        ? DateFormat(
                            StringConstants.ymdTimeFormat,
                          ).format(scheduled)
                        : '-',
                  );
                },
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.dueDateLabel,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                cellBuilder: (container) {
                  final data = container! as TransportJobResponse;
                  final due = data.scheduledDate;
                  return Text(
                    due != null
                        ? DateFormat(StringConstants.ymdTimeFormat).format(due)
                        : '-',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
