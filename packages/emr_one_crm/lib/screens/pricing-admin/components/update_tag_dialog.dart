import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UpdateTagDialog extends StatefulWidget {
  const UpdateTagDialog._({required _Controller controller})
      : _controller = controller;
  final _Controller _controller;

  static Future<bool?> show({
    required BuildContext context,
    required CoreApiService coreApiService,
    required Tag tag,
    required AccountPrice accountPrice,
  }) {
    final controller = _Controller(
      coreApiService: coreApiService,
      tagId: tag.id,
      tagReason: tag.reason,
      endDate: tag.effectiveTo,
      fromDate: tag.effectiveFrom,
      accountId: accountPrice.accountId,
    );

    return showDialog<bool>(
      context: context,
      builder: (context) => UpdateTagDialog._(controller: controller),
    );
  }

  @override
  State<UpdateTagDialog> createState() => _UpdateTagDialogState();
}

class _UpdateTagDialogState extends State<UpdateTagDialog> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final baseTheme = Theme.of(context).textTheme;
    final boldStyle =
        baseTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold);
    final firstDate =
        widget._controller.startDate.add(const Duration(days: 1)).dateOnly;
    return AlertDialog(
      title: Text(context.l10n.editTag),
      actions: [
        ValueListenableBuilder(
          valueListenable: widget._controller.isLoading,
          builder: (context, isLoading, _) => TextButton(
            onPressed: isLoading ? null : () => context.pop(false),
            child: Text(context.l10n.cancel),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: widget._controller.isLoading,
          builder: (context, isLoading, _) => TextButton(
            onPressed: isLoading ? null : () => _editTag(context),
            child: Text(context.l10n.save),
          ),
        ),
      ],
      content: SizedBox(
        width: max(
          MediaQuery.sizeOf(context).width / 5,
          500,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.gutter),
              child: Container(
                width: double.infinity,
                color:
                    Theme.of(context).colorScheme.inversePrimary.withAlpha(25),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: Insets.gutter / 2,
                    bottom: Insets.gutter / 2,
                    left: Insets.gutter / 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: Insets.gutter / 4),
                        child: Text(
                          '${context.l10n.tagReason}:',
                          style: boldStyle,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: Insets.gutter / 4),
                        child: Text(
                          widget._controller.tagReason,
                          style: baseTheme.labelSmall,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: Insets.gutter / 4),
                        child: Text(
                          '${context.l10n.validFrom}:',
                          style: boldStyle,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: Insets.gutter / 4),
                        child: Text(
                          DateFormat.yMd(
                            Localizations.localeOf(context).toString(),
                          ).format(widget._controller.startDate),
                          style: baseTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: EmrDateFormField(
                labelText: context.l10n.validTo,
                binding: widget._controller.endDate,
                firstDate: firstDate,
              ),
            ),
            ValueListenableBuilder(
              valueListenable: widget._controller.errorMessage,
              builder: (context, value, _) {
                return Padding(
                  padding: const EdgeInsets.only(top: Insets.gutter),
                  child: Text(
                    value,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _editTag(BuildContext context) {
    if (_formKey.currentState?.validate() ?? true) {
      EmrDialog.busy(context, titleText: context.l10n.savingChanges);

      widget._controller.editTag().then((result) {
        if (context.mounted) {
          context.pop();
          if (!(result.$1 ?? false)) {
            if (result.$2 != null) {
              widget._controller.errorMessage.value = _getTagIntervalError(
                    context,
                    result.$2,
                    widget._controller.startDate,
                    widget._controller.tagReason,
                    widget._controller.endDate.value,
                  ) ??
                  '';
            } else {
              widget._controller.errorMessage.value =
                  context.l10n.updateTagEndDateError;
            }
          } else {
            context.pop(true);
          }
        }
      });
    }
  }

  String? _getTagIntervalError(
    BuildContext context,
    List<String?>? errors,
    DateTime startDate,
    String reason,
    DateTime endDate,
  ) {
    for (final ext in errors ?? []) {
      final errorCode = ext;

      switch (errorCode) {
        case 'TAG_END_DATE_SHOULD_GREATER_THAN_START_DATE':
          return context.l10n.updateTagEndDateRangeError.replaceFirst(
            '[startDate]',
            startDate as String,
          );
        case 'INVALID_TAG_RANGE':
          return context.l10n.tagRangeError
              .replaceFirst(
                '[tagReason]',
                reason,
              )
              .replaceFirst(
                '[EffectiveFrom]',
                DateFormat('dd/MM/yyyy').format(
                  startDate,
                ),
              )
              .replaceFirst(
                '[EffectiveTo]',
                DateFormat('dd/MM/yyyy').format(
                  endDate,
                ),
              );
        default:
          return context.l10n.updateTagEndDateError;
      }
    }
    return null;
  }
}

final class _Controller {
  _Controller({
    required this.coreApiService,
    required this.tagId,
    required DateTime endDate,
    required DateTime fromDate,
    required this.tagReason,
    required this.accountId,
  }) {
    this.endDate = ValueNotifier<DateTime>(endDate);
    startDate = fromDate;
  }

  final CoreApiService coreApiService;
  final String tagId;
  final String tagReason;
  final String accountId;
  final isLoading = ValueNotifier<bool>(false);
  late final DateTime startDate;
  late final ValueNotifier<DateTime> endDate;
  final ValueNotifier<String> errorMessage = ValueNotifier('');

  Future<(bool?, List<String?>?)> editTag() {
    try {
      isLoading.value = true;

      return coreApiService.pricingService.updateTag(
        tagId: tagId,
        newEndDate: endDate.value,
        accountId: accountId,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
