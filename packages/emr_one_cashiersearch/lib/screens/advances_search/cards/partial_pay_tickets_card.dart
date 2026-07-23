import 'package:emr_core_api/emr_core_api.dart' hide Ticket, TicketStatus;
import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/common/utility.dart';
import 'package:emr_one_cashiersearch/extensions/string_extension.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart';
import 'package:emr_one_cashiersearch/screens/advances_search/form_data/advance_form_data.dart';
import 'package:emr_one_cashiersearch/services/advances_payment_service.dart';
import 'package:emr_one_cashiersearch/services/cashier_search_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PartialPayTicketsCard extends StatefulWidget {
  const PartialPayTicketsCard({
    required this.model,
    required this.advancesPaymentService,
    this.tickets,
    super.key,
  });

  final AdvanceFormData model;
  final IAdvancesPaymentService advancesPaymentService;
  final List<Ticket>? tickets;

  @override
  State<PartialPayTicketsCard> createState() => _PartialPayTicketsCardState();
}

class _PartialPayTicketsCardState extends State<PartialPayTicketsCard> {
  final _scroll = ScrollController();

  List<Ticket> _tickets = [];
  bool _isLoading = false;
  String? _error;
  bool fromRetailScreen = false;

  late final VoidCallback _termListener;
  late final VoidCallback _accountListener;

  @override
  void initState() {
    super.initState();
    fromRetailScreen = widget.tickets?.isNotEmpty ?? false;
    _termListener = () => _onTermChanged(widget.model.termType.value);
    widget.model.termType.addListener(_termListener);

    _accountListener = () {
      if (widget.model.termType.value == AdvanceTermType.partialPay) {
        _fetchTickets();
      }
    };
    widget.model.account.addListener(_accountListener);

    _onTermChanged(widget.model.termType.value);
  }

  @override
  void dispose() {
    widget.model.termType.removeListener(_termListener);
    widget.model.account.removeListener(_accountListener);
    _scroll.dispose();
    super.dispose();
  }

  void _onTermChanged(AdvanceTermType term) {
    if (term == AdvanceTermType.partialPay) {
      _fetchTickets();
    } else {
      setState(() {
        _tickets = [];
        _isLoading = false;
        _error = null;
      });
    }
  }

  Future<void> _fetchTickets() async {
    if (fromRetailScreen) {
      setState(() {
        _isLoading = false;
        _error = null;
        _tickets = [...widget.tickets!];
        _toggleAll(widget.tickets!.map((ticket) => ticket.id).toList(), true);
      });
      return;
    }

    setState(() {
      _isLoading = true;
      _error = null;
      _tickets = [];
    });

    try {
      final accountNumber = widget.model.account.value?.code.value;
      final input = Input$SearchTicketsInput(
        partyAccountNos: accountNumber != null ? [accountNumber] : null,
        ticketStatus: [Enum$TicketStatus.ACTIVE],
      );
      final service = Provider.of<ICashierSearchService>(
        context,
        listen: false,
      );

      final tickets = await service.searchTickets(input: input);

      if (!mounted) return;
      setState(() {
        _tickets = tickets.$1;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = 'Failed to load tickets!';
        _isLoading = false;
      });
    }
  }

  void _toggleOne(String id, bool? checked) {
    setState(() {
      if (checked ?? false) {
        widget.model.partialPayTermDetails.value.ticketIds.value = [
          ...widget.model.partialPayTermDetails.value.ticketIds.value,
          id,
        ];
      } else {
        widget.model.partialPayTermDetails.value.ticketIds.value = widget
            .model
            .partialPayTermDetails
            .value
            .ticketIds
            .value
            .where((existingId) => existingId != id)
            .toList();
      }
    });
  }

  void _toggleAll(List<String> ids, bool? checked) {
    setState(() {
      if (checked ?? false) {
        widget.model.partialPayTermDetails.value.ticketIds.value = [...ids];
      } else {
        widget.model.partialPayTermDetails.value.ticketIds.value = widget
            .model
            .partialPayTermDetails
            .value
            .ticketIds
            .value
            .where((existingId) => !ids.contains(existingId))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.model.termType.value != AdvanceTermType.partialPay) {
      return const SizedBox.shrink();
    }

    final theme = Theme.of(context);

    if (_isLoading) {
      return const Padding(
        padding: EdgeInsets.only(top: Insets.gutter),
        child: Center(child: CircularProgressIndicator()),
      );
    }

    if (_error != null) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
        child: Text(_error!, style: TextStyle(color: theme.colorScheme.error)),
      );
    }

    if (_tickets.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
        child: Center(child: Text(context.l10n.noTicketsToShow)),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: Insets.gutter, bottom: 8),
          child: Text(
            context.l10n.targetTickets(
              widget.model.partialPayTermDetails.value.ticketIds.value.length,
            ),
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
                  child: Table(
                    columnWidths: const {
                      0: FixedColumnWidth(48),
                      2: FlexColumnWidth(),
                      1: FlexColumnWidth(),
                      4: FlexColumnWidth(1.2),
                      6: FlexColumnWidth(1.4),
                      5: FlexColumnWidth(1.2),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        children: [
                          const _TableHeaderCell(''),
                          _TableHeaderCell(context.l10n.yard),
                          _TableHeaderCell(context.l10n.ticket),
                          _TableHeaderCell(context.l10n.status),
                          _TableHeaderCell(context.l10n.created),
                          _TableHeaderCell(
                            context.l10n.amount,
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 300),
                child: SingleChildScrollView(
                  controller: _scroll,
                  child: Table(
                    columnWidths: const {
                      0: FixedColumnWidth(48),
                      2: FlexColumnWidth(),
                      1: FlexColumnWidth(),
                      4: FlexColumnWidth(1.2),
                      6: FlexColumnWidth(1.4),
                      5: FlexColumnWidth(1.2),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        children: List.generate(
                          6,
                          (_) => const Divider(height: 1, thickness: 1),
                        ),
                      ),
                      ..._tickets.asMap().entries.map((entry) {
                        final i = entry.key;
                        final t = entry.value;
                        final locale = Localizations.localeOf(
                          context,
                        ).toString();
                        final createdText = t.created != null
                            ? DateFormat.yMd(locale).format(t.created!.at)
                            : '';
                        final priceText = TicketsUtility.formatCurrency(
                          context,
                          t.currency ?? 'EUR',
                          t.price ?? 0.0,
                        );

                        final rowBg = i.isOdd
                            ? theme.dividerColor.withAlpha(12)
                            : Colors.transparent;

                        return TableRow(
                          decoration: BoxDecoration(color: rowBg),
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Checkbox(
                                value: widget
                                    .model
                                    .partialPayTermDetails
                                    .value
                                    .ticketIds
                                    .value
                                    .contains(t.id),
                                onChanged: (v) => fromRetailScreen
                                    ? null
                                    : _toggleOne(t.id, v),
                              ),
                            ),
                            _TableCell(t.yardCode),
                            _TableCell('${t.ticketNumber}'),
                            _TableCell(_ticketStatusText(t.ticketStatus)),
                            _TableCell(createdText, textAlign: TextAlign.start),
                            _TableCell(priceText, textAlign: TextAlign.end),
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
      ],
    );
  }

  String _ticketStatusText(TicketStatus status) {
    return status.name.toCapitalized();
  }
}

class _TableHeaderCell extends StatelessWidget {
  const _TableHeaderCell(this.text, {this.textAlign});
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
        textAlign: textAlign ?? TextAlign.left,
      ),
    );
  }
}

class _TableCell extends StatelessWidget {
  const _TableCell(this.text, {this.textAlign});
  final String? text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(text ?? '', textAlign: textAlign ?? TextAlign.left),
    );
  }
}
