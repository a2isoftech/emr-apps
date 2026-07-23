import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_delay.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/date_with_time_widget.dart';
import 'package:flutter/material.dart';

class JobDelayWidget extends StatefulWidget {
  const JobDelayWidget({
    required this.delayReasons,
    required this.delay,
    required this.index,
    required this.onUpdate,
    required this.onRemove,
    super.key,
  });
  final List<ListDetails> delayReasons;
  final JobDelay delay;
  final int index;
  final void Function(JobDelay) onUpdate;
  final VoidCallback onRemove;
  @override
  State<JobDelayWidget> createState() => _JobDelayWidgetState();
}

class _JobDelayWidgetState extends State<JobDelayWidget> {
  late ValueNotifier<ListDetails?> selectedDelayType;
  late ValueNotifier<DateTime?> startedNotifier;
  late ValueNotifier<DateTime?> endedNotifier;
  late ValueNotifier<String?> commentsNotifier;
  @override
  void initState() {
    super.initState();
    final selectedReason = widget.delayReasons.firstWhereOrNull(
      (e) => e.code == widget.delay.selectedDelayCode,
    );
    selectedDelayType = ValueNotifier(selectedReason);
    startedNotifier = ValueNotifier(widget.delay.startedDateTime);
    endedNotifier = ValueNotifier(widget.delay.endDateTime);
    commentsNotifier = ValueNotifier(widget.delay.comment);

    // Listen for changes and update parent
    selectedDelayType.addListener(_updateEvent);
    startedNotifier.addListener(_updateEvent);
    endedNotifier.addListener(_updateEvent);
    commentsNotifier.addListener(_updateEvent);
  }

  void _updateEvent() {
    final updatedDelay = JobDelay(
      id: widget.delay.id,
      selectedDelayCode: selectedDelayType.value?.code,
      startedDateTime: startedNotifier.value,
      endDateTime: endedNotifier.value,
      comment: commentsNotifier.value,
    );
    widget.onUpdate(updatedDelay);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DateWithTimeWidget(
          dateValidator: Validators.required,
          dateTimeNotifier: startedNotifier,
          label:
              '${context.l10n.delay} '
              '${context.l10n.startDate}',
        ),
        DateWithTimeWidget(
          dateValidator: (value) => (widget.delay.isInProgress ?? false)
              ? null
              : Validators.join([
                  Validators.required(value),
                  DateHelper.validateEndDate(
                    startedNotifier.value,
                    endedNotifier.value,
                  ),
                ]),
          timeValidator: (value) => (widget.delay.isInProgress ?? false)
              ? null
              : Validators.join([
                  Validators.required(value),
                  DateHelper.validateEndDate(
                    startedNotifier.value,
                    endedNotifier.value,
                    compareTime: true,
                  ),
                ]),
          dateTimeNotifier: endedNotifier,
          label:
              '${context.l10n.delays} '
              '${context.l10n.endDate}',
        ),
        EmrPickerFormField<ListDetails>(
          labelText: '${context.l10n.delay} ${context.l10n.reason}',
          validator: Validators.required,
          items: (val) => Future.value(widget.delayReasons),
          itemTitleText: (item) => '${item.description}',
          binding: selectedDelayType,
        ),
        EmrTextFormField(
          maxLines: 2,
          keyboardType: TextInputType.multiline,
          binding: commentsNotifier,
          hintText: context.l10n.comments,
        ),
        FilledButton(
          onPressed: widget.onRemove,
          child: const Text('Remove delay'),
        ),
        const SizedBox(height: Insets.gutter),
      ],
    );
  }
}
