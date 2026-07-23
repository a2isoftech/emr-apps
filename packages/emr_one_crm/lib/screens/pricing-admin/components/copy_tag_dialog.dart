import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CopyTagDialog extends StatefulWidget {
  const CopyTagDialog._({
    required this.accountPrice,
    required _Controller controller,
  }) : _controller = controller;

  final AccountPrice accountPrice;
  final _Controller _controller;

  static Future<bool?> show({
    required BuildContext context,
    required AccountPrice accountPrice,
    required CoreApiService coreApiService,
    required Tag tag,
  }) {
    final formData = _FormModel(
      tagReason: tag.reason,
      rate: tag.rate,
      startDate: tag.effectiveTo.add(const Duration(days: 1)).dateOnly,
      endDate: null,
    );
    final controller = _Controller(
      formData: formData,
      coreApiService: coreApiService,
      templateId: tag.templateId,
      accountPrice: accountPrice,
    );

    return showDialog<bool>(
      context: context,
      builder: (context) {
        return CopyTagDialog._(
          controller: controller,
          accountPrice: accountPrice,
        );
      },
    );
  }

  @override
  State<CopyTagDialog> createState() => _CopyTagDialogState();
}

class _CopyTagDialogState extends State<CopyTagDialog> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final baseTheme = Theme.of(context).textTheme;
    final boldStyle =
        baseTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold);
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Builder(
      builder: (context) {
        return AlertDialog(
          title: Text(context.l10n.copyTag),
          alignment: Alignment.center,
          actions: [
            ValueListenableBuilder(
              valueListenable: widget._controller.formData.isLoading,
              builder: (context, isLoading, _) => TextButton(
                onPressed: isLoading ? null : () => context.pop(false),
                child: Text(context.l10n.cancel),
              ),
            ),
            ValueListenableBuilder<bool>(
              valueListenable: widget._controller.formData.isLoading,
              builder: (context, isLoading, _) => TextButton(
                onPressed: isLoading
                    ? null
                    : () {
                        if (_formKey.currentState?.validate() ?? false) {
                          EmrDialog.busy(
                            context,
                            titleText: context.l10n.addingTags,
                          );

                          widget._controller.copyTag().then((successful) {
                            if (context.mounted) {
                              context.pop();
                              if (successful.$1) {
                                context.pop(true);
                              } else {
                                widget._controller
                                    ._getTagRangeError(context, successful.$2);
                              }
                            }
                          });
                        }
                      },
                child: Text(context.l10n.save),
              ),
            ),
          ],
          content: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: max(screenWidth / 3, 400),
              maxWidth: min(max(screenWidth / 4, 800), screenWidth * 0.9),
            ),
            child: Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: Insets.gutter),
                      child: Container(
                        width: double.infinity,
                        color: Theme.of(context)
                            .colorScheme
                            .inversePrimary
                            .withAlpha(25),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: Insets.gutter / 2,
                            bottom: Insets.gutter / 2,
                            left: Insets.gutter / 4,
                          ),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '${context.l10n.selectedProduct}: ',
                                  style: boldStyle?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                TextSpan(
                                  text: '${widget.accountPrice.product} | ',
                                ),
                                TextSpan(
                                  text: '${context.l10n.accountCode}: ',
                                  style: boldStyle,
                                ),
                                TextSpan(
                                  text: '${widget.accountPrice.accountCode}, ',
                                ),
                                TextSpan(
                                  text: '${context.l10n.yard}: ',
                                  style: boldStyle,
                                ),
                                TextSpan(
                                  text: '${widget.accountPrice.yardCode}, ',
                                ),
                                TextSpan(
                                  text: '${context.l10n.publication}: ',
                                  style: boldStyle,
                                ),
                                TextSpan(
                                  text: widget.accountPrice.publicationName,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: Insets.gutter / 2),
                            child: EmrTextFormField<String>(
                              binding: widget._controller.formData.tagReason,
                              readOnly:
                                  widget._controller.formData.tagReasonReadOnly,
                              labelText: context.l10n.tagReason,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: Insets.gutter / 2),
                            child: EmrUomFormField(
                              binding: widget._controller.formData.rate,
                              allowNegative: true,
                              labelText: context.l10n.rate,
                              readOnlyUnit: ValueNotifier(true),
                              priceableElement: EmrUomPriceableElement.costRate,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: Insets.gutter / 2),
                            child: EmrDateFormField(
                              binding: widget._controller.formData.startDate,
                              labelText: context.l10n.validFrom,
                              firstDate:
                                  widget._controller.formData.startDate.value,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: Insets.gutter / 2),
                            child: ValueListenableBuilder(
                              valueListenable:
                                  widget._controller.formData.startDate,
                              builder: (context, value, _) {
                                final validFromDate = DateTime(
                                  value.year,
                                  value.month,
                                  value.day,
                                );
                                final nextDay =
                                    validFromDate.add(const Duration(days: 1));

                                final now = DateTime.now();
                                final nowDate =
                                    DateTime(now.year, now.month, now.day);

                                final firstDate = nextDay.isBefore(nowDate)
                                    ? nowDate
                                    : nextDay;

                                return EmrDateFormField(
                                  labelText: context.l10n.validTo,
                                  binding: widget._controller.formData.endDate,
                                  firstDate: firstDate,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
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
            ),
          ),
        );
      },
    );
  }
}

class _Controller {
  _Controller({
    required this.formData,
    required this.coreApiService,
    required this.templateId,
    required this.accountPrice,
  });

  final _FormModel formData;
  final CoreApiService coreApiService;
  final String templateId;
  final AccountPrice accountPrice;
  final ValueNotifier<String> errorMessage = ValueNotifier('');

  Future<(bool, List<String?>?)> copyTag() async {
    try {
      formData.isLoading.value = false;
      if (formData.rate.value?.value == null ||
          formData.rate.value?.value == 0) {
        return (false, ['INVALID_RATE']);
      }
      return await coreApiService.pricingService.createTags(
        tagTemplateId: templateId,
        input: [accountPrice],
        tagRate: formData.rate.value,
        validFrom: formData.startDate.value,
        validTo: formData.endDate.value,
      );
    } finally {
      formData.isLoading.value = false;
    }
  }

  void _getTagRangeError(BuildContext context, List<String?>? errors) {
    final messages = <String>[];
    for (final ext in errors!) {
      final errorCode = ext;
      switch (errorCode) {
        case 'INVALID_TAG_RANGE':
          messages.add(
            context.l10n.copyTagRangeError
                .replaceFirst(
                  '[tagReason]',
                  formData.tagReason.value,
                )
                .replaceFirst(
                  '[EffectiveFrom]',
                  DateFormat('dd/MM/yyyy').format(
                    formData.startDate.value,
                  ),
                )
                .replaceFirst(
                  '[EffectiveTo]',
                  DateFormat('dd/MM/yyyy').format(
                    formData.endDate.value!,
                  ),
                ),
          );
        case 'INVALID_RATE':
          messages.add(context.l10n.errMsgRateRequired);
        default:
          messages.add(context.l10n.createTagError);
      }
    }
    errorMessage.value = messages.join('\n');
  }
}

class _FormModel {
  _FormModel({
    required String tagReason,
    required DateTime startDate,
    required DateTime? endDate,
    UomValue? rate,
  }) {
    this.tagReason = ValueNotifier<String>(tagReason);
    this.rate = ValueNotifier<UomValue?>(rate);
    this.startDate = ValueNotifier<DateTime>(startDate);
    this.endDate = ValueNotifier<DateTime?>(endDate);
  }

  late final ValueNotifier<String> tagReason;
  final tagReasonReadOnly = ValueNotifier<bool>(true);
  late final ValueNotifier<UomValue?> rate;
  late final ValueNotifier<DateTime> startDate;
  late final ValueNotifier<DateTime?> endDate;
  final isLoading = ValueNotifier<bool>(false);
}
