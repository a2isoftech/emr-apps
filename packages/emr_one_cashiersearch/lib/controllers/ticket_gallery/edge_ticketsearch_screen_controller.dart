import 'dart:async';

import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';

class EdgeTicketScreenController {
  EdgeTicketScreenController({required this.ticketsService});

  final EdgeTicketsService ticketsService;

  Future<String> createTicketGallery(
    String name,
    List<String> ticketIds,
  ) async {
    final result = await ticketsService.createTicketGallery(name, ticketIds);

    return result.createEdgeTicketGallery.id;
  }
}
