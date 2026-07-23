import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:flutter/material.dart';

/// A reusable bottom sheet for selecting a date/time range.
class DateTimeRangeBottomSheet extends StatelessWidget {
  const DateTimeRangeBottomSheet({
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.onApply,
    required this.buttonText,
    required this.errorNotifier,
    this.subtitle,
    this.maxDays,
    this.loadingNotifier,
    super.key,
  });

  /// The title displayed at the top of the bottom sheet.
  final String title;

  /// Optional subtitle (e.g., "Max X days").
  final String? subtitle;

  /// ValueNotifier for the start date/time.
  final ValueNotifier<DateTime?> startDate;

  /// ValueNotifier for the end date/time.
  final ValueNotifier<DateTime?> endDate;

  /// Callback when the apply/track button is pressed.
  final Future<void> Function(DateTime from, DateTime to) onApply;

  /// Text for the primary action button.
  final String buttonText;

  /// Optional maximum number of days allowed in the range.
  final int? maxDays;

  /// Notifier for displaying error messages inline.
  final ValueNotifier<String?> errorNotifier;

  /// Optional notifier for loading state.
  final ValueNotifier<bool>? loadingNotifier;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {},
      onLongPress: () {},
      onDoubleTap: () {},
      onScaleStart: (_) {},
      onScaleUpdate: (_) {},
      onScaleEnd: (_) {},
      child: Container(
        padding: EdgeInsets.only(
          left: Insets.gutter,
          right: Insets.gutter,
          top: Insets.gutter,
          bottom: MediaQuery.of(context).viewInsets.bottom + Insets.gutter,
        ),
        decoration: BoxDecoration(
          color: TransportAppColors.whiteTextColor,
          borderRadius: 
            const BorderRadius.vertical(top: Radius.circular(Insets.gutter)),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),

              // Subtitle (optional)
              if (subtitle != null) ...[
                const SizedBox(height: 8),
                Text(
                  subtitle!,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: TransportAppColors.displayGreyColor,
                  ),
                ),
              ],
              const SizedBox(height: 16),

              // Start date/time
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: ValueListenableBuilder<DateTime?>(
                      valueListenable: startDate,
                      builder: (context, value, _) => EmrDateFormField(
                        labelText: context.l10n.startDate,
                        binding: startDate,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: Validators.required,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ValueListenableBuilder<DateTime?>(
                      valueListenable: startDate,
                      builder: (context, value, _) => Localizations.override(
                        context: context,
                        locale: const Locale('de', 'DE'),
                        child: EmrTimeFormField(
                          hintText: '',
                          labelText: context.l10n.time,
                          binding: startDate,
                          validator: Validators.required,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // End date/time
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: ValueListenableBuilder<DateTime?>(
                      valueListenable: endDate,
                      builder: (context, value, _) => EmrDateFormField(
                        labelText: context.l10n.endDate,
                        binding: endDate,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) => Validators.join([
                          Validators.required(value),
                          DateHelper.validateEndDate(
                            startDate.value,
                            endDate.value,
                          ),
                          if (maxDays != null)
                            DateHelper.validateDateRangeMaxDays(
                              start: startDate.value,
                              end: endDate.value,
                              maxDays: maxDays!,
                            ),
                        ]),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ValueListenableBuilder<DateTime?>(
                      valueListenable: endDate,
                      builder: (context, value, _) => Localizations.override(
                        context: context,
                        locale: const Locale('de', 'DE'),
                        child: EmrTimeFormField(
                          labelText: context.l10n.time,
                          hintText: '',
                          binding: endDate,
                          validator: (value) => Validators.join([
                            Validators.required(value),
                            DateHelper.validateEndDate(
                              startDate.value,
                              endDate.value,
                              compareTime: true,
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Error message (always shown inline)
              ValueListenableBuilder<String?>(
                valueListenable: errorNotifier,
                builder: (context, errorMessage, _) {
                  if (errorMessage == null || errorMessage.isEmpty) {
                    return const SizedBox(height: 24);
                  }

                  return Padding(
                    padding: 
                      const EdgeInsets
                              .only(top: Insets.gutter, bottom: Insets.gutter),
                    child: Text(
                      errorMessage,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: TransportAppColors.errorDisplayColor,
                      ),
                    ),
                  );
                },
              ),

              // Action button with optional loading state
              if (loadingNotifier != null)
                ValueListenableBuilder<bool>(
                  valueListenable: loadingNotifier!,
                  builder: (context, isLoading, _) {
                    return _buildActionButton(context, isLoading: isLoading);
                  },
                )
              else
                _buildActionButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(BuildContext context, {bool isLoading = false}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isLoading ? null : () => unawaited(_onApplyPressed(context)),
        style: ElevatedButton.styleFrom(
          backgroundColor: TransportAppColors.yardStatBgColor,
          padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
        ),
        child: isLoading
            ? SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    TransportAppColors.whiteTextColor,
                  ),
                ),
              )
            : Text(
                buttonText,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }

  Future<void> _onApplyPressed(BuildContext context) async {
    // Clear previous error
    errorNotifier.value = null;

    // Validate dates
    if (startDate.value == null) {
      errorNotifier.value = context.l10n.startDateRequired;
      return;
    }

    if (endDate.value == null) {
      errorNotifier.value = context.l10n.endDateRequired;
      return;
    }

    // Validate end date is after start date
    final endDateError = DateHelper.validateEndDate(
      startDate.value,
      endDate.value,
      compareTime: true,
    );

    if (endDateError != null) {
      errorNotifier.value = endDateError;
      return;
    }

    // Validate max days if specified
    if (maxDays != null) {
      final maxDaysError = DateHelper.validateDateRangeMaxDays(
        maxDays: maxDays!,
        start: startDate.value,
        end: endDate.value,
      );
      if (maxDaysError != null) {
        errorNotifier.value = maxDaysError;
        return;
      }
    }

    await onApply(startDate.value!, endDate.value!);
  }
}
