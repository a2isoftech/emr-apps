import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/text_line.dart';
import 'package:emr_one_yard_app/controllers/ticket_details_controller.dart';
import 'package:emr_one_yard_app/extensions/ticket_extensions.dart';
import 'package:flutter/material.dart';

class TicketHeaderDetails extends StatelessWidget {
  const TicketHeaderDetails({
    required this.ticket,
    required this.detailsController,
    super.key,
  });
  final Query$GetTicketDetails$ticket ticket;
  final TicketDetailsController detailsController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextLine(
                    header: context.l10n.ticket,
                    content: '${ticket.yardCode} - ${ticket.ticketNumber}',
                    primaryTextTheme: true,
                  ),
                ),
                Text(
                  ticket.ticketType.getTicketTypeName(context),
                  style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            TextLine(
              header: context.l10n.createdDate,
              content: ticket.created.at.asyMMdtime(
                Localizations.localeOf(context),
              ),
              primaryTextTheme: true,
            ),
            TextLine(
              header: context.l10n.vehicleReg,
              content: ticket.transportDetails.vehicleReg ?? '',
              primaryTextTheme: true,
            ),
            TextLine(
              header: context.l10n.account,
              content:
                  '${ticket.account.accountNumber} : ${ticket.account.name}',
              primaryTextTheme: true,
            ),
            TextLine(
              header: context.l10n.primaryManager,
              content: ticket.account.details?.primaryManager.name ?? '',
              primaryTextTheme: true,
            ),
          ],
        ),
      ),
    );
  }
}
