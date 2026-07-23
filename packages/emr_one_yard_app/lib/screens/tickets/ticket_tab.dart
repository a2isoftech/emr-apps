import 'dart:async';

import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_yard_app/components/card_list_view.dart';
import 'package:emr_one_yard_app/controllers/ticket_controller.dart';
import 'package:emr_one_yard_app/models/model.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class TicketTab extends StatefulWidget {
  const TicketTab({
    required TicketController ticketController,
    required Signal<SortItem> sortOrder,
    required TicketListMode ticketMode,
    this.onSelect,
    super.key,
  })  : _ticketController = ticketController,
        _ticketMode = ticketMode,
        _sortOrder = sortOrder;

  final TicketListMode _ticketMode;
  final TicketController _ticketController;
  final Signal<SortItem> _sortOrder;
  final void Function(Query$SearchTickets$searchTickets$nodes? item)? onSelect;

  @override
  State<StatefulWidget> createState() {
    return _TicketTabState();
  }
}

class _TicketTabState extends State<TicketTab> {
  late Timer _timer;
  final Signal<int> _pageCount = signal(1);

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  final _tickets =
      signal<AsyncState<List<Query$SearchTickets$searchTickets$nodes>>>(
    AsyncState.loading(),
  );

  @override
  void initState() {
    super.initState();
    unawaited(_loadTickets());

    _timer = Timer.periodic(
      const Duration(seconds: 30),
      (timer) async => await _refreshIndicatorKey.currentState?.show(),
    );

    effect(() async {
      await _loadTickets();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Watch(
      (builder) => RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _loadTickets,
        child: CardListView<Query$SearchTickets$searchTickets$nodes>(
          items: _tickets,
          pageCount: _pageCount,
          onSelect: widget.onSelect,
        ),
      ),
    );
  }

  Future<void> _loadTickets() async {
    _tickets.value = await widget._ticketController.loadTickets(
      widget._ticketMode,
      widget._sortOrder.value,
      pageCount: _pageCount.value,
    );
  }
}
