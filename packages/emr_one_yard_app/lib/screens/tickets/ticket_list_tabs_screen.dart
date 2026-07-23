import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_yard_app/controllers/ticket_controller.dart';
import 'package:emr_one_yard_app/models/search/sort_item.dart';
import 'package:emr_one_yard_app/models/ticket/ticket_list_model.dart';
import 'package:emr_one_yard_app/screens/tickets/ticket_tab.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class TicketListTabsScreen extends StatefulWidget {
  const TicketListTabsScreen({
    required TicketController ticketController,
    required Signal<SortItem> sortOrder,
    this.onSelect,
    super.key,
  })  : _ticketController = ticketController,
        _sortOrder = sortOrder;

  final TicketController _ticketController;
  final Signal<SortItem> _sortOrder;

  final void Function(Query$SearchTickets$searchTickets$nodes? item)? onSelect;

  @override
  State<StatefulWidget> createState() {
    return _TicketListTabsScreenState();
  }
}

class _TicketListTabsScreenState extends State<TicketListTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Watch(
      (context) => DefaultTabController(
        length: 3,
        child: _tabSection(),
      ),
    );
  }

  Widget _tabSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.gutter,
            vertical: Insets.gutter / 2,
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Insets.gutter * 2),
            ),
            elevation: 1,
            child: TabBar(
              tabs: [
                Tab(text: context.l10n.inProgress),
                Tab(text: context.l10n.today),
                Tab(text: context.l10n.sevenDay),
              ],
              indicator: BoxDecoration(
                color: Theme.of(context).colorScheme.onSurface,
                borderRadius: BorderRadius.circular(Insets.gutter * 2),
              ),
              labelColor: Theme.of(context).colorScheme.surface,
              unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerHeight: 0,
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            children: [
              _getTab(TicketListMode.inProgress),
              _getTab(TicketListMode.today),
              _getTab(TicketListMode.sevenDay),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getTab(TicketListMode mode) {
    return TicketTab(
      ticketController: widget._ticketController,
      sortOrder: widget._sortOrder,
      ticketMode: mode,
      onSelect: widget.onSelect,
    );
  }
}
