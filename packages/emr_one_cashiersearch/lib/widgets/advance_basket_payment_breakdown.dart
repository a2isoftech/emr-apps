import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvanceBasketPaymentBreakdown extends StatefulWidget {
  const AdvanceBasketPaymentBreakdown({
    required this.advances,
    required this.paymentController,
    required this.basketController,
    this.onRefresh,
    super.key,
  });

  final ITicketPaymentController paymentController;
  final List<Advance> advances;
  final PaymentBasketController<Advance> basketController;
  final void Function(Account account, PaymentDeductions paymentDeduction)?
  onRefresh;

  @override
  State<AdvanceBasketPaymentBreakdown> createState() =>
      _AdvanceBasketPaymentBreakdownState();
}

class _AdvanceBasketPaymentBreakdownState
    extends State<AdvanceBasketPaymentBreakdown> {
  PaymentMethod? paymentMode;
  late SplitPaymentController splitPaymentController;

  @override
  void initState() {
    if (widget.advances.isNotEmpty) {
      final selectedMethod = widget.basketController.selectedPaymentMethod;
      final defaultMethod = widget.advances.first.paymentMethod;

      final paymentMode = selectedMethod != PaymentMethod.splitPayment
          ? (selectedMethod ?? defaultMethod)
          : defaultMethod;
      _setPaymentMode(paymentMode);
      splitPaymentController = Provider.of<SplitPaymentController>(
        context,
        listen: false,
      );
      _loadData(isFirstTime: true);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AdvanceBasketPaymentBreakdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.advances.length != oldWidget.advances.length &&
        widget.advances.isNotEmpty) {
      _loadData();
    }
  }

  @override
  void dispose() {
    if (widget.advances.isNotEmpty) {
      splitPaymentController.dispose();
      widget.paymentController.resetPaymentDetails();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.advances.isEmpty) {
      return _getBlankInfo();
    }
    if (isLoading) {
      return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CircularProgressIndicator()],
      );
    }
    final currency = widget.advances.first.paymentAmount.currencyCode;
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
                            accountDetails: widget.advances.first.account,
                            paymentController: widget.paymentController,
                            currency: currency,
                            defaultOption: paymentMode,
                            isEnabled: true,
                            isPayable: paymentDeductions.netPaid > 0,
                            onPaymentModeChanged:
                                (mode, {required bool shouldInvokeParent}) {
                                  if (!shouldInvokeParent) {
                                    _updatePayNowButton();
                                    return;
                                  }

                                  if (mode != null) {
                                    _setPaymentMode(mode);
                                    _loadData();
                                  }
                                },
                          ),
                        ),
                        CollapsibleWidget(
                          title: context.l10n.transactionSummary,
                          children: [
                            InfoSection(
                              rows: [
                                ...widget.advances.map(
                                  (advance) => TitleValue(
                                    label: _getAdvanceNumber(advance),
                                    value: TicketsUtility.formatCurrency(
                                      context,
                                      currency,
                                      advance.paymentAmount.amount,
                                    ),
                                    leading: IconButton(
                                      padding: EdgeInsets.zero,
                                      constraints: const BoxConstraints(),
                                      tooltip:
                                          '${context.l10n.removeButtonText} '
                                          '${_getAdvanceNumber(advance)}',
                                      onPressed: () {
                                        TicketsUtility.infoDialogWidget(
                                          context,
                                          title: context.l10n.confirmation,
                                          message: context.l10n
                                              .removeFromBasketConfirmation(
                                                advance.account!.code,
                                                advance.payableYard?.yardCode ??
                                                    '',
                                              ),
                                          onAccept: () async {
                                            widget.basketController
                                                .removeBasketItem(advance);
                                            splitPaymentController.reset();
                                            _updatePayNowButton();
                                          },
                                          isDanger: true,
                                          acceptLabel: context.l10n.delete,
                                        );
                                      },
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
                                      '${context.l10n.netAmount} '
                                      '''(${context.l10n.transactionCount(widget.advances.length)})''',
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
              initiallyExpanded: true,
              title: context.l10n.finalReceipt,
              enabled: false,
              showTrailingIcon: false,
              children: [
                InfoSection(
                  rows: [
                    TitleValue(
                      label:
                          '${context.l10n.netAmount} '
                          '''(${context.l10n.transactionCount(widget.advances.length)})''',
                      value: TicketsUtility.formatCurrency(
                        context,
                        currency,
                        paymentDeductions.grossAmount,
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

  String _getAdvanceNumber(Advance advance) {
    return '${advance.payableYard?.yardCode ?? ''}'
        ' - '
        '${advance.account!.code}';
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

    final (rule, acc) = await (_safeGetPaymentRule(), _safeGetAccount()).wait;
    paymentValidationResult = rule!.$1;
    paymentDeductions = rule.$2;
    account = acc;

    final paymentMethods = widget.paymentController.getPaymentModes();
    paymentMethods.remove(PaymentMethod.none);
    paymentMethods.remove(PaymentMethod.splitPayment);

    setState(() {
      isLoading = false;
      if (account != null || paymentValidationResult != null) {
        widget.basketController.basketItems.value = _updateResults();
      }
      splitPaymentController.initialize(
        paymentDeductions.grossAmount -
            (paymentDeductions.advanceDetails?.totalOffset ?? 0),
        paymentMethods,
        reset: isFirstTime,
      );
      _updatePayNowButton();
      widget.onRefresh?.call(account!, paymentDeductions);
    });
  }

  List<Advance> _updateResults() {
    return widget.basketController.basketItems.value.map((advance) {
      return account != null
          ? advance.copyAdvance(account, paymentValidationResult)
          : advance;
    }).toList();
  }

  void _setPaymentMode(PaymentMethod mode) {
    paymentMode = mode;
    if (mode != PaymentMethod.none) {
      widget.basketController.selectedPaymentMethod = mode;
      widget.paymentController.setSelectedPaymentMode(mode);
    }
  }

  Future<(PaymentValidationResult?, PaymentDeductions)?> _safeGetPaymentRule() {
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

  Future<(PaymentValidationResult?, PaymentDeductions)?>
  _getPaymentRule() async {
    final paymentMethod = paymentMode ?? PaymentMethod.none;
    return widget.paymentController.validateAdvanceWithPaymentMethod(
      paymentMethod,
      widget.advances.first,
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
    );
  }

  Future<Account?> _safeGetAccount() {
    return _getAccount().onError((error, stackTrace) {
      if (mounted) {
        _setPaymentMode(PaymentMethod.none);
        TicketsUtility.errorDialogWidget(
          context,
          context.l10n.errorFetchingEncashmentValues,
        );
      }
      return null;
    });
  }

  Future<Account?> _getAccount() async {
    return widget.paymentController.getAccount(widget.advances.first.accountId);
  }

  void _updatePayNowButton() {
    widget.basketController.canPay.value =
        context.userHasPermission(PermissionConstants.advancePayment) &&
        (widget.basketController.basketItems.value.isNotEmpty &&
            !widget.basketController.basketItems.value.any(
              (item) => item.paymentValidationResult?.status == Status.error,
            )) &&
        (paymentMode != PaymentMethod.splitPayment ||
            splitPaymentController.isTransactionValid);
  }

  bool isLoading = false;
  late PaymentValidationResult? paymentValidationResult;
  late PaymentDeductions paymentDeductions;
  late Account? account;
}
