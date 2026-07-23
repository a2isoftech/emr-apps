import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TicketBasketPaymentBreakdown extends StatefulWidget {
  const TicketBasketPaymentBreakdown({
    required this.selectedTickets,
    required this.paymentController,
    required this.basketController,
    this.onRefresh,
    this.triggerRefresh,
    this.removeFromBasketNotifier,
    super.key,
  });

  final ITicketPaymentController paymentController;
  final List<Ticket> selectedTickets;
  final PaymentBasketController<Ticket> basketController;
  final void Function(Account account, PaymentDeductions paymentDeduction)?
  onRefresh;
  final ValueNotifier<bool>? triggerRefresh;
  final ValueNotifier<Ticket?>? removeFromBasketNotifier;

  @override
  State<TicketBasketPaymentBreakdown> createState() =>
      _TicketBasketPaymentBreakdownState();
}

class _TicketBasketPaymentBreakdownState
    extends State<TicketBasketPaymentBreakdown>
    with AdvanceFlexiPayMixin {
  PaymentMethod? paymentMode;
  late SplitPaymentController splitPaymentController;

  @override
  void initState() {
    final selectedMethod = widget.basketController.selectedPaymentMethod;
    final defaultMethod =
        widget.selectedTickets.firstOrNull?.defaultPaymentMethod ??
        PaymentMethod.none;

    final paymentMode = selectedMethod != PaymentMethod.splitPayment
        ? (selectedMethod ?? defaultMethod)
        : defaultMethod;

    _setPaymentMode(paymentMode);

    if (widget.selectedTickets.isNotEmpty) {
      splitPaymentController = Provider.of<SplitPaymentController>(
        context,
        listen: false,
      );

      advanceFlexiPayController = Provider.of<AdvanceFlexiPayController>(
        context,
        listen: false,
      );

      _loadData(isFirstTime: true);
      widget.triggerRefresh?.addListener(_loadData);
      widget.removeFromBasketNotifier?.addListener(() {
        if (widget.removeFromBasketNotifier?.value != null) {
          _onDelete(widget.removeFromBasketNotifier!.value!);
        }
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    if (widget.selectedTickets.isNotEmpty) {
      splitPaymentController.dispose();
      advanceFlexiPayController.dispose();
      widget.paymentController.resetPaymentDetails();
      widget.triggerRefresh?.dispose();
    }
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant TicketBasketPaymentBreakdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedTickets.length != oldWidget.selectedTickets.length &&
        widget.selectedTickets.isNotEmpty) {
      _loadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.selectedTickets.isEmpty) {
      _updatePayNowButton();
      return _getBlankInfo();
    }
    if (isLoading) {
      return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CircularProgressIndicator()],
      );
    }
    final currency = widget.selectedTickets.firstOrNull?.currency ?? '';
    final valueDefaultStyle = Theme.of(
      context,
    ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600);

    final fees =
        paymentDeductions.totalFee -
        (paymentDeductions.encashmentValues?.commissionValue ?? 0);

    return Column(
      children: [
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Insets.gutter / 2,
                          ),
                          child: TicketPaymentOption(
                            accountDetails:
                                widget.selectedTickets.first.account.details,
                            paymentController: widget.paymentController,
                            currency: currency,
                            defaultOption: paymentMode,
                            isEnabled: true,
                            isPayable: paymentDeductions.netPaid > 0,
                            onPaymentModeChanged:
                                (mode, {required bool shouldInvokeParent}) {
                                  if (mode != null) {
                                    _setPaymentMode(mode);
                                  }
                                  if (!shouldInvokeParent) {
                                    _updatePayNowButton();
                                    return;
                                  }

                                  _loadData();
                                },
                          ),
                        ),
                        CollapsibleWidget(
                          title: context.l10n.transactionSummary,
                          children: [
                            InfoSection(
                              rows: [
                                ...widget.selectedTickets.map(
                                  (ticket) => TitleValue(
                                    label:
                                        '${ticket.yardCode} - '
                                        '${ticket.ticketNumber}',
                                    value: TicketsUtility.formatCurrency(
                                      context,
                                      currency,
                                      ticket.totalAmount,
                                    ),
                                    leading: IconButton(
                                      padding: EdgeInsets.zero,
                                      tooltip:
                                          '${context.l10n.removeButtonText} '
                                          '${ticket.yardCode} - '
                                          '${ticket.ticketNumber}',
                                      constraints: const BoxConstraints(),
                                      onPressed: () => _onDelete(ticket),
                                      icon: const Icon(
                                        Icons.delete_outline,
                                        color: EmrColours.secondaryRed,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                TitleValue(
                                  label:
                                      '''${context.l10n.netAmount} (${context.l10n.transactionCount(widget.selectedTickets.length)})''',
                                  value: TicketsUtility.formatCurrency(
                                    context,
                                    currency,
                                    paymentDeductions.grossAmount,
                                  ),
                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (paymentDeductions
                                .advanceDetails
                                ?.advanceAmountBreakup
                                .isNotEmpty ??
                            false) ...[
                          CollapsibleWidget(
                            initiallyExpanded: true,
                            title: context.l10n.advanceOffsetDetails,
                            children: [
                              if (advanceFlexiPayController.showEditAdvanceLink)
                                LinkText(
                                  label: context.l10n.editAdvanceOffsets,
                                  onTap: () async {
                                    final result = await showFlexiPayPopup();
                                    if (result) unawaited(_loadData());
                                  },
                                ),
                              ...paymentDeductions
                                  .advanceDetails!
                                  .advanceAmountBreakup
                                  .mapIndexed(
                                    (i, advanceUsage) => AdvanceUsageRow(
                                      advanceUsage: advanceUsage,
                                      currency: currency,
                                      valueDefaultStyle: valueDefaultStyle,
                                    ),
                                  ),
                              RowWithTitleValue(
                                label: context.l10n.totalAdvanceOffset,
                                value: TicketsUtility.formatCurrency(
                                  context,
                                  currency,
                                  paymentDeductions.advanceDetails!.totalOffset,
                                ),
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(fontWeight: FontWeight.w600),
                                valueStyle: Theme.of(
                                  context,
                                ).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ],
                        if (paymentMode == PaymentMethod.splitPayment &&
                            splitPaymentController.isTransactionValid)
                          SplitPaymentBreakdownSection(
                            splitPaymentController: splitPaymentController,
                            currency: currency,
                          ),
                        if (paymentDeductions.encashmentValues != null)
                          encashmentDetailsList(
                            currency,
                            paymentDeductions.encashmentValues!,
                          ),
                        if (fees != 0) ...[
                          CollapsibleWidget(
                            title: context.l10n.feesSummary,
                            showTrailingIcon: false,
                            initiallyExpanded: true,
                            enabled: false,
                            children: [
                              RowWithTitleValue(
                                label: context.l10n.handlingFee,
                                value: TicketsUtility.formatCurrency(
                                  context,
                                  currency,
                                  fees,
                                ),
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(fontWeight: FontWeight.w600),
                                valueStyle: Theme.of(
                                  context,
                                ).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Column(
          children: [
            CollapsibleWidget(
              title: context.l10n.finalReceipt,
              initiallyExpanded: true,
              enabled: false,
              showTrailingIcon: false,
              children: [
                InfoSection(
                  rows: [
                    TitleValue(
                      label:
                          '''${context.l10n.netAmount} (${context.l10n.transactionCount(widget.selectedTickets.length)})''',
                      value: TicketsUtility.formatCurrency(
                        context,
                        currency,
                        paymentDeductions.grossAmount,
                      ),
                    ),
                    if (paymentDeductions
                            .advanceDetails
                            ?.advanceAmountBreakup
                            .isNotEmpty ??
                        false)
                      TitleValue(
                        label: context.l10n.totalAdvanceOffset,
                        value: TicketsUtility.formatCurrency(
                          context,
                          currency,
                          paymentDeductions.advanceDetails!.totalOffset,
                          showNegativeSign: true,
                        ),
                      ),
                    if (paymentDeductions.totalFee != 0)
                      TitleValue(
                        label: context.l10n.handlingFee,
                        value: TicketsUtility.formatCurrency(
                          context,
                          currency,
                          paymentDeductions.totalFee,
                          showNegativeSign: true,
                        ),
                      ),
                    if (paymentDeductions.roundingAdjustmentOnFee != 0)
                      TitleValue(
                        label: context.l10n.roundingAdjustment,
                        value: TicketsUtility.formatCurrency(
                          context,
                          currency,
                          paymentDeductions.roundingAdjustmentOnFee.abs(),
                          showNegativeSign:
                              paymentDeductions.roundingAdjustmentOnFee > 0,
                        ),
                      ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Insets.gutter / 2,
              ),
              child: RowWithTitleValue(
                label: context.l10n.totalPayable,
                value: TicketsUtility.formatCurrency(
                  context,
                  currency,
                  paymentDeductions.netPaid,
                ),
                labelStyle: Theme.of(
                  context,
                ).textTheme.headlineSmall!.copyWith(fontSize: 20),
                valueStyle: Theme.of(
                  context,
                ).textTheme.headlineSmall!.copyWith(fontSize: 20),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _getBlankInfo() => InfoSection(
    title: context.l10n.finalReceipt,
    rows: [
      TitleValue(label: context.l10n.netAmount, value: '--'),
      TitleValue(label: context.l10n.subTotal, value: '--'),
    ],
  );

  Widget encashmentDetailsList(
    String currency,
    EncashmentValues encashmentValues,
  ) {
    return CollapsibleWidget(
      title: context.l10n.encashmentSummary,
      children: [
        InfoSection(
          rows: [
            TitleValue(
              label: context.l10n.mandatoryOffset,
              value: TicketsUtility.formatCurrency(context, currency, 0),
            ),
            TitleValue(
              label: context.l10n.maxOptionalOffset,
              value: TicketsUtility.formatCurrency(context, currency, 0),
            ),
            TitleValue(
              label: context.l10n.optionalOffsetToUse,
              value: TicketsUtility.formatCurrency(context, currency, 0),
            ),
            TitleValue(
              label: context.l10n.totalOffset,
              value: TicketsUtility.formatCurrency(context, currency, 0),
            ),
            TitleValue(
              label: context.l10n.handlingFee,
              value: TicketsUtility.formatCurrency(
                context,
                currency,
                encashmentValues.commissionValue,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _loadData({bool isFirstTime = false}) async {
    setState(() => isLoading = true);

    final rule = await _safeGetPaymentRule();
    paymentValidationResults = rule!.$1;
    paymentDeductions = rule.$2;
    tickets = rule.$3;

    final paymentMethods = widget.paymentController.getPaymentModes();
    paymentMethods.remove(PaymentMethod.none);
    paymentMethods.remove(PaymentMethod.splitPayment);

    setState(() {
      isLoading = false;
      if (paymentValidationResults != null) {
        widget.basketController.basketItems.value = _updateResults();
      }

      advanceFlexiPayController.initialize(
        paymentDeductions,
        reset: isFirstTime,
      );

      splitPaymentController.initialize(
        paymentDeductions.grossAmount -
            (paymentDeductions.advanceDetails?.totalOffset ?? 0),
        paymentMethods,
        reset: isFirstTime,
      );
      _updatePayNowButton();
      widget.onRefresh?.call(
        widget.basketController.basketItems.value.first.account.details!,
        paymentDeductions,
      );
    });
  }

  Future<
    (Map<String, PaymentValidationResult>, PaymentDeductions, List<Ticket>)?
  >
  _getPaymentRule() async {
    final paymentMethod = paymentMode ?? PaymentMethod.none;

    return widget.paymentController.validateTicketsWithPaymentMethod(
      paymentMethod,
      widget.selectedTickets,
      paymentMethod == PaymentMethod.splitPayment
          ? splitPaymentController.selectedItems
                .map(
                  (item) => SplitPaymentBreakup(
                    amount: item.amount.value?.toDouble() ?? 0,
                    paymentMethod: item.paymentMethod,
                  ),
                )
                .toList()
          : null,
      advanceFlexiPayController.advances
          ?.map(
            (adv) => AdvanceOffsetInfo(
              advanceId: adv.advanceId,
              amount: adv.usedAmount.value ?? 0,
            ),
          )
          .toList(),
    );
  }

  List<Ticket> _updateResults() {
    return tickets.map((ticket) {
      final validationResult = paymentValidationResults![ticket.id];
      return validationResult != null
          ? ticket.copyWith(
              changes: {'paymentValidationResult': validationResult.toJson()},
            )
          : ticket;
    }).toList();
  }

  bool isLoading = false;
  late Map<String, PaymentValidationResult>? paymentValidationResults;
  late PaymentDeductions paymentDeductions;
  Future<
    (Map<String, PaymentValidationResult>, PaymentDeductions, List<Ticket>)?
  >
  _safeGetPaymentRule() {
    return _getPaymentRule().onError((error, stackTrace) {
      if (mounted) {
        _setPaymentMode(PaymentMethod.none);
        TicketsUtility.errorDialogWidget(
          context,
          context.l10n.errorFetchingPaymentRules,
        );
      }
      return null;
    });
  }

  void _updatePayNowButton() {
    widget.basketController.canPay.value =
        context.userHasPermission(PermissionConstants.cashierPayment) &&
        (widget.basketController.basketItems.value.isNotEmpty &&
            !widget.basketController.basketItems.value.any(
              (item) => item.paymentValidationResult?.status == Status.error,
            )) &&
        (paymentMode != PaymentMethod.splitPayment ||
            (splitPaymentController.isTransactionValid &&
                paymentDeductions.netPaid > 0));
  }

  void _setPaymentMode(PaymentMethod mode) {
    paymentMode = mode;
    if (mode != PaymentMethod.none) {
      widget.basketController.selectedPaymentMethod = mode;
      widget.paymentController.setSelectedPaymentMode(mode);
    }
  }

  List<Ticket> tickets = [];

  void _onDelete(Ticket ticket) {
    widget.removeFromBasketNotifier?.value = null;
    TicketsUtility.infoDialogWidget(
      context,
      title: context.l10n.confirmation,
      message: context.l10n.removeFromBasketConfirmation(
        ticket.ticketNumber,
        ticket.yardCode,
      ),
      onAccept: () async {
        widget.basketController.removeBasketItem(ticket);
        splitPaymentController.reset();
        _setPaymentMode(
          widget.selectedTickets.firstOrNull?.defaultPaymentMethod ??
              PaymentMethod.none,
        );
      },
      isDanger: true,
      acceptLabel: context.l10n.delete,
    );
  }
}
