import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';

class PaymentTermsSection extends StatelessWidget {
  const PaymentTermsSection({
    required this.model,
    required this.userInfoService,
    required this.advancesPaymentService,
    super.key,
    this.fromTicket = false,
    this.ticketId,
  });

  final AdvanceFormData model;
  final UserInfoService userInfoService;
  final IAdvancesPaymentService advancesPaymentService;
  final bool fromTicket;
  final String? ticketId;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: Insets.gutter,
            bottom: Insets.gutter,
          ),
          child: Text(
            context.l10n.paymentTerms,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Insets.gutter,
            ),
          ),
        ),
        _PaymentTermsContent(
          model: model,
          userInfoService: userInfoService,
          advancesPaymentService: advancesPaymentService,
          fromTicket: fromTicket,
          ticketId: ticketId,
        ),
      ],
    );
  }
}

class _PaymentTermsContent extends StatelessWidget {
  const _PaymentTermsContent({
    required this.model,
    required this.userInfoService,
    required this.advancesPaymentService,
    required this.fromTicket,
    this.ticketId,
  });

  final AdvanceFormData model;
  final UserInfoService userInfoService;
  final IAdvancesPaymentService advancesPaymentService;
  final bool fromTicket;
  final String? ticketId;

  @override
  Widget build(BuildContext context) {
    if (model.paymentAmount.value.currencyCode.value.isEmpty) {
      model.paymentAmount.value.currencyCode.value =
          model.currencyCode ??
          TicketsUtility.getCurrencyCodeFromLocale(context);
    }

    return ValueListenableBuilder(
      valueListenable: model.termType,
      builder: (context1, value, child) {
        final now = DateTime.now();
        final firstDate = DateTime(now.year, now.month, now.day);

        final safeBinding = createUiSafeDateBinding(
          context,
          model.paidInFullDueDate,
          firstDate,
        );
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: EmrPickerFormField<String>(
                      labelText: context.l10n.currency,
                      binding: model.paymentAmount.value.currencyCode,
                      itemTitleText: (c) => c,
                      items: (_) async => Future.value(['GBP', 'EUR', 'USD']),
                      mode: EmrPickerMode.dropdown,
                      validator: Validators.required,
                    ),
                  ),
                  const SizedBox(width: Insets.gutter / 2),
                  Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: model.paymentAmount.value.currencyCode,
                      builder: (context, currencyCode, child) =>
                          EmrTextFormField<double?>(
                            labelText: context.l10n.paymentAmount,
                            binding: model.paymentAmount.value.amount,
                            prefix: Text(
                              TicketsUtility.getCurrencySymbol(
                                context,
                                currencyCode,
                              ),
                            ),
                            validator: (value) {
                              final required = Validators.required(value);
                              if (required == null &&
                                  (num.tryParse(value ?? '') ?? 0) <= 0) {
                                return context.l10n.mustBeGreater(0);
                              }
                              return required;
                            },
                          ),
                    ),
                  ),
                  const SizedBox(width: Insets.gutter / 2),
                  Expanded(
                    child: EmrTextFormField<double?>(
                      labelText: context.l10n.exchangeRate,
                      binding: model.paymentAmount.value.exchangeRate,
                      hintText: 'eg. 1.00',
                      validator: (value) => Validators.decimal(value, min: 1),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: EmrPickerFormField<AdvanceReason>(
                      labelText: context.l10n.reason,
                      binding: model.reason,
                      items: (q) async => AdvanceReason.values,
                      itemTitleText: (r) => r.localizedLabel(context),
                      mode: EmrPickerMode.dropdown,
                      validator: Validators.required,
                    ),
                  ),
                  const SizedBox(width: Insets.gutter / 2),
                  ValueListenableBuilder(
                    valueListenable: model.payableYard,
                    builder: (context, value, child) {
                      if (value?.defaultPaymentMethod.value != null) {
                        model.paymentMethod.value =
                            value!.defaultPaymentMethod.value!;
                      }

                      return Expanded(
                        child: EmrPickerFormField<PaymentMethod>(
                          key: ValueKey(value?.id ?? 'no-yard'),
                          labelText: context.l10n.paymentMethod,
                          binding: model.paymentMethod,
                          items: (q) async => getPaymentMethods(value),
                          itemTitleText: (m) => m.localizedLabel(context),
                          mode: EmrPickerMode.dropdown,
                          validator: (value) {
                            final required = Validators.required(value);
                            if (required == null &&
                                [
                                  PaymentMethod.none.name,
                                  PaymentMethod.splitPayment.name,
                                ].contains(value)) {
                              return context.l10n.selectValidPaymentMethod;
                            }
                            return required;
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: EmrPickerFormField<UserInfo>(
                      labelText: context.l10n.arrangedBy,
                      binding: model.arrangedByUser,
                      itemTitleText: (u) => u.name,
                      items: (query) async =>
                          context.coreApi.userAccess.searchUserInfo(query),
                    ),
                  ),
                  const SizedBox(width: Insets.gutter / 2),
                  Expanded(
                    child: EmrTextFormField<String?>(
                      labelText: context.l10n.reference,
                      binding: model.reference,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: EmrDateFormField(
                      labelText: context.l10n.toBePaidInFullBy,
                      binding: safeBinding, //model.paidInFullDueDate,
                      firstDate: DateTime(now.year, now.month, now.day),
                      validator: Validators.required,
                    ),
                  ),
                  const SizedBox(width: Insets.gutter / 2),
                  Expanded(
                    child: EmrPickerFormField<AdvanceTermType>(
                      labelText: context.l10n.term,
                      binding: model.termType,
                      items: (q) async => AdvanceTermType.values,
                      itemTitleText: (term) => term.localizedLabel(context),
                      enabled: ValueNotifier(!fromTicket),
                      mode: EmrPickerMode.dropdown,
                      validator: (value) {
                        final requiredValidation = Validators.required(value);
                        if (requiredValidation == null &&
                            model.termType.value ==
                                AdvanceTermType.partialPay &&
                            model
                                .partialPayTermDetails
                                .value
                                .ticketIds
                                .value
                                .isEmpty) {
                          return context.l10n.selectAtLeastOneTicket;
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (model.termType.value == AdvanceTermType.percentage)
                    Expanded(
                      child: ValueListenableBuilder(
                        valueListenable:
                            model.percentageTermDetails.value.percentage,
                        builder: (context, percentage, child) =>
                            EmrTextFormField<double?>(
                              suffix: const Text('%'),
                              labelText: context.l10n.percentage,
                              binding:
                                  model.percentageTermDetails.value.percentage,
                              validator: (value) {
                                final required = Validators.required(value);
                                final parsed = num.tryParse(value ?? '') ?? 0;
                                if (required == null &&
                                    (parsed <= 0 || parsed > 100)) {
                                  return context.l10n
                                      .mustBeGreaterAndLessOrEqual(0, 100);
                                }
                                return required;
                              },
                            ),
                      ),
                    ),
                  if (model.termType.value == AdvanceTermType.percentage)
                    const SizedBox(width: Insets.gutter / 2),
                  if (model.termType.value == AdvanceTermType.percentage)
                    Expanded(
                      child: ValueListenableBuilder(
                        valueListenable: model.paymentAmount.value.currencyCode,
                        builder: (context, currencyCode, child) =>
                            EmrTextFormField<double?>(
                              prefix: Text(
                                TicketsUtility.getCurrencySymbol(
                                  context,
                                  currencyCode,
                                ),
                              ),
                              labelText: context.l10n.amount,
                              binding: model.percentageTermDetails.value.amount,
                              enabled: ValueNotifier(false),
                            ),
                      ),
                    ),
                  if (model.termType.value == AdvanceTermType.fixed)
                    Expanded(
                      child: ValueListenableBuilder(
                        valueListenable: model.paymentAmount.value.currencyCode,
                        builder: (context, currencyCode, child) =>
                            EmrTextFormField<double?>(
                              prefix: Text(
                                TicketsUtility.getCurrencySymbol(
                                  context,
                                  currencyCode,
                                ),
                              ),
                              labelText: context.l10n.amount,
                              binding: model.fixedTermDetails.value.amount,
                              validator: (value) {
                                final required = Validators.required(value);
                                if (required == null) {
                                  final positiveValudation =
                                      _positiveNumberValidator(context, value!);
                                  if (positiveValudation != null) {
                                    return positiveValudation;
                                  }
                                  if ((model.paymentAmount.value.amount.value ??
                                          0) <
                                      double.parse(value)) {
                                    return context.l10n.mustBeLessOrMax(
                                      model.paymentAmount.value.amount.value ??
                                          0.0,
                                    );
                                  }
                                }
                                return required;
                              },
                            ),
                      ),
                    ),
                  if (model.termType.value == AdvanceTermType.fixed)
                    Expanded(child: Container()),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: EmrSwitchFormField(
                      labelText: context.l10n.allowFlexiblePay,
                      binding: model.allowFlexiblePay,
                      enabled: ValueNotifier(!fromTicket),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  List<PaymentMethod> getPaymentMethods(YardFormData? value) {
    if (value == null) return [];
    return TicketsUtility.getPaymentModes(value.paymentMethods)
        .where(
          (m) => m != PaymentMethod.none && m != PaymentMethod.splitPayment,
        )
        .toList();
  }

  String? _positiveNumberValidator(BuildContext context, String value) {
    if ((num.tryParse(value) ?? 0) <= 0) {
      return context.l10n.mustBeGreater(0);
    }
    return null;
  }

  ValueNotifier<DateTime?> createUiSafeDateBinding(
    BuildContext context,
    ValueNotifier<DateTime?> source,
    DateTime firstDate,
  ) {
    ValueNotifier<DateTime?> uiBinding;
    if (source.value != null && source.value!.isBefore(firstDate)) {
      unawaited(
        EmrModal.showMessageBar(
          context,
          context.l10n.invalidAdvancePastDueDate,
          messageType: MessageBarTypes.error,
        ),
      );
      uiBinding = ValueNotifier<DateTime?>(null);
    } else {
      uiBinding = ValueNotifier(source.value);
    }

    // sync user changes back to original model
    uiBinding.addListener(() {
      if (uiBinding.value != source.value) {
        source.value = uiBinding.value;
      }
    });

    return uiBinding;
  }
}
