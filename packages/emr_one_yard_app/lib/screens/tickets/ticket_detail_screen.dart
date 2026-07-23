import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class TicketDetailScreen extends StatefulWidget {
  const TicketDetailScreen({
    required this.detailsController,
    required this.ticketId,
    this.enableLoadOutButton = false,
    super.key,
  });

  final TicketDetailsController detailsController;
  final String ticketId;
  final bool enableLoadOutButton;

  @override
  State<StatefulWidget> createState() {
    return _TicketDetailScreenState();
  }
}

class _TicketDetailScreenState extends State<TicketDetailScreen> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    widget.detailsController.loadTicketDetails(widget.ticketId);
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      key: _refreshIndicatorKey,
      onRefresh: () =>
          widget.detailsController.loadTicketDetails(widget.ticketId),
      child: Watch((context) {
        final state = widget.detailsController.ticketDetailsSignal.value;

        if (state is AsyncLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is AsyncData<Query$GetTicketDetails$ticket>) {
          final ticket = state.value;
          return TicketDetailContent(
            yardCode:
                widget.detailsController.userInfoService.userInfo.defaultYard,
            ticket: ticket,
            enableLoadOutButton: widget.enableLoadOutButton,
            detailsController: widget.detailsController,
            mediaApiUrl: widget.detailsController.mediaController.mediaApiUrl,
            localPath: widget.detailsController.localPath,
            token: widget.detailsController.token,
          );
        }
        return Center(child: Text(context.l10n.anErrorOccurredTryAgain));
      }),
    );
  }
}
