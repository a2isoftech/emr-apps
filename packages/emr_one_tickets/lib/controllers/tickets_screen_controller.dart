import 'dart:async';

import 'package:emr_one_tickets/services/tickets_service.dart';

class TicketsScreenController {
  TicketsScreenController({required this.ticketsService});

  final TicketsService ticketsService;

  Future<String> createTicketGallery(
    String name,
    List<String> ticketIds,
  ) async {
    final result = await ticketsService.createTicketGallery(name, ticketIds);

    return result.createTicketGallery.id!;
  }
}
