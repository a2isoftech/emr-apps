import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/utilities/emr_modal.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:flutter/material.dart';

class PrintDispatcherSlipWidget extends StatefulWidget {
  const PrintDispatcherSlipWidget({
    required this.isEnabled,
    required this.jobService,
    required this.job,
    super.key,
  });
  final bool isEnabled;
  final JobList? job;
  final JobListService jobService;
  @override
  State<PrintDispatcherSlipWidget> createState() =>
      _PrintDispatcherSlipWidgetState();
}

class _PrintDispatcherSlipWidgetState extends State<PrintDispatcherSlipWidget> {
  bool _isLoading = false;

  Future<void> _handlePressed() async {
    if (!widget.isEnabled || _isLoading || widget.job == null) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final response = await widget.jobService.downloadDispatchSlipForJobs([
        widget.job?.id ?? '',
      ]);
      if (!response.isSuccess && mounted) {
        await EmrModal.showMessageBar(
          context,
          response.errorMessage,
          messageType: MessageBarTypes.error,
        );
      }
    } catch (e) {
      if (mounted) {
        await EmrModal.showMessageBar(
          context,
          context.l10n.errorAndTryAgainMsg,
          messageType: MessageBarTypes.error,
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDisabled = !widget.isEnabled || _isLoading;

    return IconButton(
      icon: _isLoading
          ? const SizedBox(
              width: Constants.iconSizeSM,
              height: Constants.iconSizeSM,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : const Icon(Icons.download_sharp),
      onPressed: isDisabled ? null : _handlePressed,
    );
  }
}
