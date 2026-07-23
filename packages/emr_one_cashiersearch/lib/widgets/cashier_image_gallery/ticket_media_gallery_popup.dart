import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:flutter/material.dart';

class TicketMediaGalleryPopup extends StatelessWidget {
  const TicketMediaGalleryPopup({required this.ticket, super.key});
  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    ticket.lines?.sort((a, b) => a.lineNumber!.compareTo(b.lineNumber!));
    final screenWidth = MediaQuery.of(context).size.width;
    final dialogWidth = (screenWidth * 0.7).clamp(
      TicketConstants.kTicketMediaGalleryPopupMinWidth,
      TicketConstants.kTicketMediaGalleryPopupMaxWidth,
    );

    return SizedBox(
      width: dialogWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            ticket.lines?.map((line) => LineSection(line: line)).toList() ??
            const [],
      ),
    );
  }
}
