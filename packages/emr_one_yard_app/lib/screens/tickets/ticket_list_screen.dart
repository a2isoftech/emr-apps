import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/search_sort_bar.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/controllers/ticket_controller.dart';
import 'package:emr_one_yard_app/models/search/sort_item.dart';
import 'package:emr_one_yard_app/models/ticket/ticket_list_model.dart';
import 'package:emr_one_yard_app/screens/tickets/ticket_list_search_screen.dart';
import 'package:emr_one_yard_app/screens/tickets/ticket_list_tabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signals/signals_flutter.dart';

class TicketListScreen extends StatefulWidget with AppBarExtender {
  TicketListScreen({
    required this.ticketController,
    this.moveMediaMode,
    this.onSelect,
    super.key,
  });

  final TicketController ticketController;
  final Signal<bool> searchSelected = signal(false);
  final bool? moveMediaMode;
  final void Function(Query$SearchTickets$searchTickets$nodes? ticket)?
      onSelect;
  @override
  bool hideDefaultAppBar() => true;

  @override
  State<StatefulWidget> createState() {
    return _TicketListScreenState();
  }
}

class _TicketListScreenState extends State<TicketListScreen> {
  late Computed<TicketListMode> selectedSection;
  final Signal<SortItem> sortOrder = signal(
    SortItem.createdDesc,
  );
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Watch((context) => _renderBody());
  }

  Widget _renderBody() {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const EmrBreadCrumb(),
          leading: const BackButton(),
          actions: [
            SearchSortBar(
              searchSelected: widget.searchSelected,
              sortOrder: sortOrder,
            ),
          ],
        ),
        body: widget.searchSelected.value
            ? TicketListSearchScreen(
                ticketController: widget.ticketController,
                searchSelected: widget.searchSelected,
                onSelect: _handleOnSelect,
              )
            : TicketListTabsScreen(
                ticketController: widget.ticketController,
                onSelect: _handleOnSelect,
                sortOrder: sortOrder,
              ),
      ),
    );
  }

  void _handleOnSelect(Query$SearchTickets$searchTickets$nodes? ticket) {
    if (widget.moveMediaMode ?? false) {
      widget.onSelect?.call(ticket);
    } else if (ticket != null) {
      context.pushNamed(
        YardAppNamedRoutes.yardAppTicketDetails,
        params: {'id': ticket.id},
      );
    }
  }
}
