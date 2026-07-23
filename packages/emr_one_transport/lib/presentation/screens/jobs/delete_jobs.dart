import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/controllers/jobs/delete_job_controller.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:flutter/material.dart';

class DeleteJobsDialog extends StatefulWidget {
  const DeleteJobsDialog({
    required this.jobNumbers,
    required this.deleteReasons,
    required this.queryLayoutController,
    required this.controller,
    super.key,
  });

  final List<int> jobNumbers;
  final List<ListDetails> deleteReasons;
  final DeleteJobController controller;

  final EmrQueryLayoutController<JobList> queryLayoutController;

  @override
  State<DeleteJobsDialog> createState() => _DeleteJobsDialogState();
}

class _DeleteJobsDialogState extends State<DeleteJobsDialog> {
  @override
  void initState() {
    widget.controller.initialize(widget.jobNumbers);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deletereasonentries = widget.deleteReasons
        .where((x) => (x.active ?? false) == true)
        .map((e) {
          return e.description ?? '';
        })
        .toList();

    final scrollController = ScrollController();
    final jobstotal = widget.jobNumbers.length;
    return Form(
      key: widget.key,
      child: SizedBox(
        width: 800,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter / 2),
                  child: SizedBox(
                    width: 106,
                    child: Text(
                      context.l10n.jobNumber,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Text(
                    context.l10n.deleteReason,
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 216),
                  child: Text(
                    context.l10n.deleteComments,
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 9),
            SizedBox(
              height: jobstotal == 1
                  ? 86
                  : jobstotal == 2
                  ? 175
                  : 260,
              width: 1000,
              child: Scrollbar(
                controller: scrollController,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: widget.controller.deleteJobsList.map((job) {
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: Insets.gutter * 2,
                              right: Insets.gutter * 3,
                            ),
                            child: Text(
                              '${job.jobNumber}',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 300),
                            child: EmrPickerFormField(
                              items: (_) => Future.value(deletereasonentries),
                              itemTitleText: (item) => item,
                              binding: widget.controller.deleteJobsList
                                  .where((e) => e.jobNumber == job.jobNumber)
                                  .first
                                  .deleteReasonDescription,
                              validator: Validators.required,
                            ),
                          ),
                          const SizedBox(width: Insets.gutter),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: Insets.gutter,
                              ),
                              child: EmrTextFormField(
                                maxLines: 2,
                                keyboardType: TextInputType.multiline,
                                binding: widget.controller.deleteJobsList
                                    .where((e) => e.jobNumber == job.jobNumber)
                                    .first
                                    .deleteComments,
                                validator: (value) => widget.controller
                                    .isCommentRequired(job.jobNumber),
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
