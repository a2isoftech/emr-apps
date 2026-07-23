import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class LockedTicketsSearch extends StatefulWidget
    with AppBarExtender, OmniSearch {
  LockedTicketsSearch({
    required this.edgeTicketsService,
    required this.userInfoService,
    required this.preferences,
    super.key,
  });

  final EdgeTicketsService edgeTicketsService;
  final UserInfoService userInfoService;
  final LockedTicketsPreferences preferences;
  @override
  State<LockedTicketsSearch> createState() => _DraftedTicketsSearch();
}

class _DraftedTicketsSearch extends State<LockedTicketsSearch> {
  late final LockedTicketsDataSource _dataSource;
  late final EmrQueryLayoutController<
      Query$SearchEdgeTickets$searchTickets$nodes> _queryLayoutController;
  late final Future<void> _initializeFuture;
  late final LockedTicketsSearchFilterController _ticketsSearchFilterController;
  late final ICashierSearchService _ticketService;

  @override
  void initState() {
    super.initState();
    _ticketService = Provider.of<ICashierSearchService>(context, listen: false);
    _initializeFuture = initialize();
  }

  @override
  void dispose() {
    _ticketsSearchFilterController.filters.removeListener(_onFilterChanged);
    _queryLayoutController.dispose();
    super.dispose();
  }

  void _onFilterChanged() {
    widget.preferences.saveFilter(_ticketsSearchFilterController.filtersAsMap);
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return FutureBuilder(
      future: _initializeFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const CircularProgressIndicator();
        }
        return EmrQueryLayout<Query$SearchEdgeTickets$searchTickets$nodes>.grid(
          queryLayoutController: _queryLayoutController,
          columns: [
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'ticketNumber',
                dataSource: _queryLayoutController.dataSource,
                child: Text(
                  context.l10n.ticketId,
                  style: headerTextStyle,
                ),
              ),
              cellBuilder: (ticket) => Text(ticket.id),
            ),
            EmrGridColumn(
              headerBuilder: () => Text(
                context.l10n.type,
                style: headerTextStyle,
              ),
              cellBuilder: (ticket) => Text(
                Enum$TicketType.INWARDS == ticket.ticketType
                    ? context.l10n.psnopTicketDirectionInwards
                    : context.l10n.psnopTicketDirectionOutwards,
              ),
            ),
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'createdDateEpoch',
                dataSource: _queryLayoutController.dataSource,
                child: Text(
                  context.l10n.createdAt,
                  style: headerTextStyle,
                ),
              ),
              cellBuilder: (ticket) => Text(
                DateFormat.yMd().add_jm().format(ticket.date.toLocal()),
              ),
            ),
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'partyAccountNo',
                dataSource: _queryLayoutController.dataSource,
                child: Text(
                  context.l10n.psnopPartyTitle,
                  style: headerTextStyle,
                ),
              ),
              cellBuilder: (ticket) => Text(ticket.account.accountNumber),
            ),
            EmrGridColumn(
              headerBuilder: () => Text(
                context.l10n.lockedBy,
                style: headerTextStyle,
              ),
              cellBuilder: (ticket) => Text(ticket.lockedBy!.split('@')[0]),
            ),
            EmrGridColumn(
              headerBuilder: () => Text(
                context.l10n.actions,
                style: headerTextStyle,
              ),
              cellBuilder: (ticket) => Align(
                alignment: Alignment.centerLeft,
                child: Tooltip(
                  message: context.l10n.clickToUnlock,
                  child: TextButton(
                    onPressed: () {
                      _unlockTicket(context, ticket.id);
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                    ),
                    child: Text(
                      context.l10n.unlock,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> initialize() async {
    _dataSource = LockedTicketsDataSource(
      ticketsService: widget.edgeTicketsService,
    );

    final savedFilters = await widget.preferences.getFilter();

    _ticketsSearchFilterController = LockedTicketsSearchFilterController(
      userInfoService: widget.userInfoService,
      ticketService: _ticketService,
      savedFilters: savedFilters,
    );
    _ticketsSearchFilterController.filters.addListener(_onFilterChanged);
    _queryLayoutController =
        EmrQueryLayoutController<Query$SearchEdgeTickets$searchTickets$nodes>(
      dataSource: _dataSource,
      filterController: _ticketsSearchFilterController,
    );
  }

  Future<void> _unlockTicket(BuildContext context, String ticketId) async {
    EmrLogger.info('Requesting to unlock the ticket $ticketId');
    final response = await context.coreApi.ticketService.unlockTicket(ticketId);
    if (!context.mounted) {
      return;
    }
    if (response.isSuccess) {
      unawaited(_dataSource.refresh());
      await EmrModal.showMessageBar(
        context,
        context.l10n.ticketUnlocked(response.ticketId),
      );
      EmrLogger.info('Ticket ${response.ticketId} is unlocked');
    } else {
      await EmrModal.showMessageBar(
        context,
        '''${context.l10n.unableToUnlock(response.ticketId)}${response.lockedBy != null ? ', ${context.l10n.lockedByName(response.lockedBy!)}' : ''}''',
        messageType: MessageBarTypes.error,
      );
      EmrLogger.error('Unable to unlock Ticket ${response.ticketId}');
    }
  }
}
