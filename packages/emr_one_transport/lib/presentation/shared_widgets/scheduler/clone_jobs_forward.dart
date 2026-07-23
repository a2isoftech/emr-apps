import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/form_fields/emr_date_form_field.dart';
import 'package:emr_one_core/widgets/form_fields/emr_picker_form_field.dart';
import 'package:emr_one_transport/data/controllers/common/clone_jobs_forward_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CloneJobsForwardDialog extends StatefulWidget {
  const CloneJobsForwardDialog({
    required this.sourceDate,
    this.sourceTruck,
    super.key,
    this.sourceHaulierCode,
  });
  final DateTime sourceDate;
  final SchedulerTruck? sourceTruck;
  final String? sourceHaulierCode;
  @override
  State<CloneJobsForwardDialog> createState() => _CloneJobsForwardDialogState();
}

class _CloneJobsForwardDialogState extends State<CloneJobsForwardDialog> {
  late CloneJobsForwardController _controller;
  @override
  void initState() {
    super.initState();
    _controller = Provider.of(context, listen: false);
    _controller.initialize(
      widget.sourceDate,
      widget.sourceTruck,
      widget.sourceHaulierCode,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CloneJobsForwardController>(
      builder: (context, ctrl, widget) {
        return _buildContent(context, ctrl);
      },
    );
  }

  Widget _buildContent(
    BuildContext context,
    CloneJobsForwardController controller,
  ) {
    return Form(
      key: controller.formKey,
      child: SizedBox(
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: Insets.gutter / 2,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmrPickerFormField(
              validator: Validators.required,
              labelText: context.l10n.selectTruckForAssignment,
              binding: controller.selectedTargethaulier,
              itemTitleText: StringHelper.buildTruckAndHaulierDisplay,
              items: controller.jobListService.searchTruckHaulierForUser,
              itemSubtitleText: (haulier) {
                return StringHelper.getHaulierDisplayType(haulier.haulierType!);
              },
            ),
            EmrDateFormField(
              validator: Validators.required,
              labelText: context.l10n.cloneFromDateTime,
              binding: controller.sourceDateNotifier,
            ),
            EmrDateFormField(
              validator: (val) => validateTargetDate(
                val,
                controller.sourceDateNotifier.value,
                context,
              ),
              labelText: context.l10n.cloneToDateTime,
              binding: controller.targetDateNotifier,
            ),
            EmrDateFormField(
              validator: Validators.required,
              labelText: context.l10n.dueDateLabel,
              binding: controller.targetDueDateNotifier,
            ),
          ],
        ),
      ),
    );
  }

  String? validateTargetDate(
    String? value,
    DateTime sourceDate,
    BuildContext context,
  ) {
    if (value == null || value.trim().isEmpty) {
      return 'Required';
    }

    // Get the user’s locale, e.g. “en_US” or “de_DE”
    final locale = Localizations.localeOf(context).toLanguageTag();

    // Pick the locale-specific short date pattern (M/d/yyyy, dd.MM.yyyy, etc.)
    final format = DateFormat.yMd(locale);

    DateTime targetDate;
    try {
      // Strict parsing rejects things like “31/02/2025”
      targetDate = format.parseStrict(value);
    } catch (_) {
      return 'Invalid date. Use format: ${format.pattern}';
    }

    // Only error if the target is strictly before the source.
    // If they’re equal, this check passes.
    if (targetDate.isBefore(sourceDate)) {
      return 'Date must be on or after ${format.format(sourceDate)}';
    }

    return null;
  }
}
