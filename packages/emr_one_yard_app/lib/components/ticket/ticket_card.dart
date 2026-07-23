import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/card_base.dart';
import 'package:emr_one_yard_app/components/text_line.dart';
import 'package:emr_one_yard_app/components/ticket/ticket_heading_row.dart';
import 'package:emr_one_yard_app/extensions/ticket_extensions.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    required Query$SearchTickets$searchTickets$nodes ticket,
    super.key,
  }) : _ticket = ticket;

  final Query$SearchTickets$searchTickets$nodes _ticket;

  @override
  Widget build(BuildContext context) {
    final headerMedia = _ticket.inspectionMedia;
    final lineMedia = _ticket.activeLines
        .map((line) => line.inspectionDetails?.inspectionMedia ?? [])
        .expand((media) => media)
        .toList();
    final total = headerMedia.length + lineMedia.length;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
      child: CardBase(
        header: TicketHeadingRow(
          ticketNumber: _ticket.ticketNumber.toString(),
          yardCode: _ticket.yardCode,
          type: _ticket.ticketType,
          totalMedia: total,
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextLine(
              header: context.l10n.createdDate,
              content: _ticket.created.at.asyMMdtime(
                Localizations.localeOf(context),
              ),
            ),
            TextLine(
              header: context.l10n.vehicle,
              content: _ticket.transportDetails.vehicleReg,
            ),
            TextLine(
              header: context.l10n.product,
              content: _ticket.activeLines.isEmpty
                  ? context.l10n.none
                  : _ticket.activeLines
                        .map((s) => s.product?.code ?? 'NA')
                        .join(','),
            ),
            TextLine(
              header: context.l10n.account,
              content:
                  '${_ticket.account.accountNumber}: '
                  '${_ticket.account.name}',
            ),
            TextLine(
              header: context.l10n.primaryManager,
              content: _ticket.account.details?.primaryManager.name ?? '',
            ),
          ],
        ),
      ),
    );
  }
}
