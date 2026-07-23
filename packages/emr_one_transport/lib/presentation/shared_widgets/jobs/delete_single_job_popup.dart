import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/jobs/delete_job_request.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/shared_widgets/app_modal.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:flutter/material.dart';

class DeleteJobPopup extends StatelessWidget {
  DeleteJobPopup({
    required this.jobNumber,
    required this.deleteReasons,
    required this.jobListService,
    super.key,
  });

  final int jobNumber;
  final List<ListDetails> deleteReasons;
  final JobListService jobListService;

  final ValueNotifier<String> selectedReason = ValueNotifier('');
  final ValueNotifier<String> selectedComment = ValueNotifier('');

  @override
  Widget build(BuildContext context) {
    final deleteReasonEntries = deleteReasons
        .where((x) => (x.active ?? false) == true)
        .map((e) {
          return e.description ?? '';
        })
        .toList();

    return AppModal(
      height: 292,
      width: 1000,
      title: '${context.l10n.deleteJob} :',
      content: Column(
        children: [
          const SizedBox(height: Insets.gutter / 2),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter / 2),
                child: SizedBox(
                  width: 106,
                  child: Text(
                    context.l10n.jobNumber,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 2),
                child: Text(
                  context.l10n.deleteReason,
                  textAlign: TextAlign.start,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 13),
                child: Text(
                  context.l10n.deleteComments,
                  textAlign: TextAlign.start,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const Divider(),
          const SizedBox(height: Insets.gutter),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: Insets.gutter,
                  right: Insets.gutter * 4,
                ),
                child: Text('$jobNumber', textAlign: TextAlign.center),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 300),
                child: EmrPickerFormField(
                  items: (_) => Future.value(deleteReasonEntries),
                  itemTitleText: (item) => item,
                  binding: selectedReason,
                ),
              ),
              const SizedBox(width: Insets.gutter),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: Insets.gutter),
                  child: EmrTextFormField(
                    maxLines: 2,
                    keyboardType: TextInputType.multiline,
                    binding: selectedComment,
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          const SizedBox(height: Insets.gutter / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(context.l10n.cancel),
              ),
              const SizedBox(width: Insets.gutter / 4),
              ListenableBuilder(
                listenable: Listenable.merge([selectedReason, selectedComment]),
                builder: (_, __) {
                  return FilledButton(
                    onPressed: _isButtonEnabled()
                        ? () async {
                            final result = await proceedforDeletion();
                            if (context.mounted) {
                              if (result.isSuccess) {
                                await SuccessAlertWidget.showSuccessMessage(
                                  context,
                                  context.l10n.jobsDeletedSuccessfully,
                                );
                                if (context.mounted) {
                                  Navigator.of(context).pop();
                                }
                              } else {
                                await ErrorAlertWidget.showErrorMessage(
                                  context,
                                  result.errorMessage.isNotEmpty
                                      ? result.errorMessage
                                      : context.l10n.errorAndTryAgainMsg,
                                );
                              }
                            }
                          }
                        : null,
                    child: Text(context.l10n.delete),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<ApiResponse<DeleteJobRequest>> proceedforDeletion() async {
    final deleteJobsRequestModel = [
      DeleteJobRequest(jobNumber, selectedReason.value, selectedComment.value),
    ];
    final result = await jobListService.deleteJobs(deleteJobsRequestModel);
    return result;
  }

  bool _isButtonEnabled() {
    if (selectedReason.value == '') {
      return false;
    } else if (selectedReason.value == StringConstants.other &&
        selectedComment.value == '') {
      return false;
    }
    return true;
  }
}
