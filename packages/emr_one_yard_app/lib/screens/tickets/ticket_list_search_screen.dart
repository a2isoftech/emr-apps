import 'dart:async';

import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/card_list_view.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/controllers/ticket_controller.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class TicketListSearchScreen extends StatefulWidget {
  const TicketListSearchScreen({
    required TicketController ticketController,
    required Signal<bool> searchSelected,
    this.onSelect,
    super.key,
  })  : _searchSelected = searchSelected,
        _ticketController = ticketController;

  final TicketController _ticketController;
  final Signal<bool> _searchSelected;
  final void Function(Query$SearchTickets$searchTickets$nodes? item)? onSelect;

  @override
  State<StatefulWidget> createState() {
    return _TicketListSearchScreenState();
  }
}

class _TicketListSearchScreenState extends State<TicketListSearchScreen> {
  final Signal<int> _pageCount = signal(1);
  final Signal<String> _searchQuery = signal('');

  final _tickets =
      Signal<AsyncState<List<Query$SearchTickets$searchTickets$nodes>>>(
    const AsyncData([]),
  );
  final GlobalKey _searchFieldKey = GlobalKey(debugLabel: 'searchFieldKey');
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    unawaited(_loadTickets());
    effect(() async {
      await _loadTickets();
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: LayoutConstants.appSearchBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: Insets.gutter,
                  ),
                  child: TextField(
                    autofocus: true,
                    onChanged: (text) {
                      if (_debounce?.isActive ?? false) {
                        _debounce?.cancel();
                      }
                      _debounce = Timer(
                        const Duration(milliseconds: 500),
                        () => _searchQuery.value = text,
                      );
                    },
                    key: _searchFieldKey,
                    maxLength: 255,
                    decoration: const InputDecoration(counterText: ''),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: Insets.gutter / 2),
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => widget._searchSelected.value =
                      !widget._searchSelected.value,
                  iconSize: 30,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Watch(
            (context) => RefreshIndicator(
              onRefresh: _loadTickets,
              child: CardListView<Query$SearchTickets$searchTickets$nodes>(
                items: _tickets,
                pageCount: _pageCount,
                onSelect: widget.onSelect,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _loadTickets() async {
    _tickets.value = await widget._ticketController
        .searchTickets(_searchQuery.value, _pageCount.value);
  }
}
