import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/common/utility.dart';
import 'package:emr_one_cashiersearch/models/advance.dart';
import 'package:emr_one_cashiersearch/screens/advances_search/form_data/account_form_data.dart';
import 'package:emr_one_cashiersearch/screens/advances_search/form_data/advance_form_data.dart';
import 'package:emr_one_cashiersearch/services/advances_payment_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class AccountAdvancesSection extends StatefulWidget {
  const AccountAdvancesSection({
    required this.model,
    required this.advancesPaymentService,
    super.key,
  });

  final AdvanceFormData model;
  final IAdvancesPaymentService advancesPaymentService;

  @override
  State<AccountAdvancesSection> createState() => _AccountAdvancesSectionState();
}

class _AccountAdvancesSectionState extends State<AccountAdvancesSection> {
  List<Advance> _advances = [];
  bool _isLoading = false;
  late final VoidCallback _accountListener;

  @override
  void initState() {
    super.initState();
    _accountListener = () => _onAccountChanged(widget.model.account.value);
    widget.model.account.addListener(_accountListener);

    final current = widget.model.account.value;
    if (current != null) {
      _onAccountChanged(current);
    }
  }

  @override
  void dispose() {
    widget.model.account.removeListener(_accountListener);
    super.dispose();
  }

  Future<void> _onAccountChanged(AccountFormData? account) async {
    if (!mounted) return;

    if (account == null) {
      setState(() {
        _advances = [];
        _isLoading = false;
      });
      return;
    }

    setState(() => _isLoading = true);

    try {
      final input = Input$AdvancesSearchInput(accountIds: [account.id.value]);
      final result = await widget.advancesPaymentService.searchAdvances(
        input: input,
        first: 500,
      );

      if (!mounted) return;
      setState(() {
        _advances = result.$1;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _advances = [];
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final account = widget.model.account.value;
    final count = _advances.length;

    if (_isLoading) {
      return const Column(
        children: [
          SizedBox(height: Insets.gutter),
          Center(child: CircularProgressIndicator()),
        ],
      );
    }

    if (count == 0) {
      return Center(
        child: SizedBox(
          height: 100,
          child: Column(
            children: [
              const SizedBox(height: Insets.gutter),
              Text(context.l10n.noAdvancesToShow),
              const SizedBox(height: Insets.gutter),
              if (account == null) Text(context.l10n.performASearch),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: Insets.gutter),
        Text(
          context.l10n.advances,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        _AccountAdvances(theme: theme, advances: _advances),
      ],
    );
  }
}

class _AccountAdvances extends StatelessWidget {
  const _AccountAdvances({required this.theme, required List<Advance> advances})
    : _advances = advances;

  final ThemeData theme;
  final List<Advance> _advances;

  @override
  Widget build(BuildContext context) {
    final currencyCode = _advances.isNotEmpty
        ? _advances.first.paymentAmount.currencyCode
        : 'GBP';

    final totalAmount = _advances.fold<double>(
      0,
      (sum, a) => sum + a.paymentAmount.amount,
    );

    final totalRemaining = _advances.fold<double>(
      0,
      (sum, a) => sum + a.paymentInfo.outstandingBalance,
    );

    final totalAmountStr = TicketsUtility.formatCurrency(
      context,
      currencyCode,
      totalAmount,
    );

    final totalRemainingStr = TicketsUtility.formatCurrency(
      context,
      currencyCode,
      totalRemaining,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: theme.dividerColor),
          ),
          child: Column(
            children: [
              ColoredBox(
                color: theme.dividerColor.withAlpha(25),
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(),
                    1: FlexColumnWidth(1.2),
                    2: FlexColumnWidth(1.3),
                    3: FlexColumnWidth(1.3),
                    4: FlexColumnWidth(1.3),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      children: [
                        _TableHeaderCell(context.l10n.yard),
                        _TableHeaderCell(context.l10n.status),
                        _TableHeaderCell(
                          context.l10n.amount,
                          textAlignment: TextAlign.end,
                        ),
                        _TableHeaderCell(
                          context.l10n.paidToDate,
                          textAlignment: TextAlign.end,
                        ),
                        _TableHeaderCell(
                          context.l10n.remaining,
                          textAlignment: TextAlign.end,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 300),
                child: SingleChildScrollView(
                  child: Table(
                    columnWidths: const {
                      0: FlexColumnWidth(),
                      1: FlexColumnWidth(1.2),
                      2: FlexColumnWidth(1.3),
                      3: FlexColumnWidth(1.3),
                      4: FlexColumnWidth(1.3),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        children: List.generate(
                          5,
                          (_) => const Divider(height: 1, thickness: 1),
                        ),
                      ),
                      ..._advances.asMap().entries.map((entry) {
                        final index = entry.key;
                        final adv = entry.value;
                        return TableRow(
                          decoration: BoxDecoration(
                            color: index.isOdd
                                ? theme.dividerColor.withAlpha(12)
                                : Colors.transparent,
                          ),
                          children: [
                            _TableCell(adv.handlingYard?.yardCode ?? ''),
                            _TableCell(
                              '',
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(_statusText(context, adv.status)),
                              ),
                            ),
                            _TableCell(
                              '',
                              child: Text(
                                TicketsUtility.formatCurrency(
                                  context,
                                  adv.paymentAmount.currencyCode,
                                  adv.paymentAmount.amount,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            _TableCell(
                              '',
                              child: Text(
                                TicketsUtility.formatCurrency(
                                  context,
                                  adv.paymentAmount.currencyCode,
                                  adv.paymentAmount.amount -
                                      adv.paymentInfo.outstandingBalance,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            _TableCell(
                              '',
                              child: Text(
                                TicketsUtility.formatCurrency(
                                  context,
                                  adv.paymentAmount.currencyCode,
                                  adv.paymentInfo.outstandingBalance,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: Insets.gutter / 2),
        _TotalsBar(
          totalAmountLabel: context.l10n.totalAmount,
          totalAmount: totalAmountStr,
          totalRemainingLabel: context.l10n.totalRemaining,
          totalRemaining: totalRemainingStr,
        ),
      ],
    );
  }

  String _statusText(BuildContext context, AdvanceStatus? status) {
    if (status != null) {
      switch (status) {
        case AdvanceStatus.cancelled:
          return context.l10n.cancelled;
        case AdvanceStatus.draft:
          return context.l10n.drafted;
        case AdvanceStatus.authorised:
          return context.l10n.authorized;
        case AdvanceStatus.paid:
          return context.l10n.paid;
        case AdvanceStatus.recalled:
          return context.l10n.recalled;
        case AdvanceStatus.posted:
          return context.l10n.posted;
      }
    }
    return '';
  }
}

class _TotalsBar extends StatelessWidget {
  const _TotalsBar({
    required this.totalAmountLabel,
    required this.totalAmount,
    required this.totalRemainingLabel,
    required this.totalRemaining,
  });

  final String totalAmountLabel;
  final String totalAmount;
  final String totalRemainingLabel;
  final String totalRemaining;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.dividerColor),
      ),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(),
          1: FlexColumnWidth(1.2),
          2: FlexColumnWidth(1.3),
          3: FlexColumnWidth(1.3),
          4: FlexColumnWidth(1.3),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
            children: [
              const _TableHeaderCell(''),
              _TableHeaderCell(
                '$totalAmountLabel:',
                textAlignment: TextAlign.right,
              ),
              _TableCell(
                '',
                child: Text(totalAmount, textAlign: TextAlign.end),
              ),
              _TableHeaderCell(
                '$totalRemainingLabel:',
                textAlignment: TextAlign.right,
              ),
              _TableCell(
                '',
                child: Text(totalRemaining, textAlign: TextAlign.end),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TableHeaderCell extends StatelessWidget {
  const _TableHeaderCell(this.text, {this.textAlignment});
  final String text;
  final TextAlign? textAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
        textAlign: textAlignment ?? TextAlign.left,
      ),
    );
  }
}

class _TableCell extends StatelessWidget {
  const _TableCell(this.text, {this.child});
  final String? text;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: child ?? Text(text ?? '', textAlign: TextAlign.left),
    );
  }
}
