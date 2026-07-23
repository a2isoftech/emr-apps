import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class TicketTimeline extends StatefulWidget {
  const TicketTimeline({
    required this.initialTicket,
    required this.reloadTicket,
    required this.actionBuilder,
    super.key,
  });

  final Ticket initialTicket;
  final Future<Ticket> Function() reloadTicket;
  final Widget Function(Ticket, FlowStepType) actionBuilder;

  @override
  State<TicketTimeline> createState() => _TicketTimelineState();
}

class _TicketTimelineState extends State<TicketTimeline> {
  late Ticket ticket;
  bool loading = false;

  @override
  void initState() {
    super.initState();
    ticket = widget.initialTicket;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _header(),
        const SizedBox(height: Insets.gutter),
        TimelineNode(
          title: context.l10n.ticketCreated,
          status: resolveTicketCreatedStatus(ticket),
          dateTime: ticket.created?.at,
          child: widget.actionBuilder(ticket, FlowStepType.ticketCreated),
        ),

        TimelineNode(
          title: context.l10n.syncWeighbridgeTask,
          status: resolveSyncStatus(ticket),
          suggestion: resolveWbSyncSuggestion(ticket, context),
          dateTime: ticket.syncWeighbridgeTicketTask?.completedDate,
          child: widget.actionBuilder(ticket, FlowStepType.syncTask),
        ),

        TimelineNode(
          title: context.l10n.ticketFinished,
          status: resolveTicketFinishedStatus(ticket),
          suggestion: resolveTicketSuggestion(ticket, context),
          child: widget.actionBuilder(ticket, FlowStepType.ticketFinished),
        ),

        TimelineNode(
          title: context.l10n.paymentRecord,
          status: resolvePaymentStatus(ticket),
          suggestion: resolvePaymentSuggestion(ticket, context),
          dateTime: ticket.paymentRecord?.created.at,
          child: widget.actionBuilder(ticket, FlowStepType.paymentRecord),
        ),

        TimelineNode(
          title: context.l10n.paymentPostingTask,
          status: resolvePostingStatus(ticket),
          suggestion: resolvePostingSuggestion(ticket, context),
          showConnector: false,
          dateTime: ticket.paymentRecord?.paymentPostingTask?.completedDate,
          child: widget.actionBuilder(ticket, FlowStepType.postingTask),
        ),
      ],
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          context.l10n.ticket,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Row(
          spacing: Insets.gutter / 4,
          children: [
            IconButton(icon: const Icon(Icons.info), onPressed: _infoIconClick),
            if (loading)
              const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            else
              IconButton(icon: const Icon(Icons.refresh), onPressed: _refresh),
          ],
        ),
      ],
    );
  }

  Future<void> _refresh() async {
    setState(() {
      loading = true;
    });

    final updatedTicket = await widget.reloadTicket();

    setState(() {
      ticket = updatedTicket;
      loading = false;
    });
  }

  Future<void> _infoIconClick() async {
    await EmrDialog.modal<void>(
      context,
      dialogMode: DialogMode.compact,
      buttons: {EmrDialogButton.accept},
      titleText: 'Ticket payment Flow',
      builder: (p0) => SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.4,
        height: MediaQuery.sizeOf(context).height * 0.7,
        child: InteractiveViewer(
          child: Image.asset(
            'assets/images/ticket_payment_flow.png',
            package: 'emr_one_cashiersearch',
          ),
        ),
      ),
      onAccept: () => Navigator.maybePop(context),
      acceptLabel: context.l10n.ok,
    );
  }
}
