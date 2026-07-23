import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/graphql/queries/get_paid_tickets.graphql.dart';

class TicketMappers {
  static TicketModel ticketMapper(
    Query$GetpaidTickets$tickets$nodes source,
  ) {
    return TicketModel(
      date: source.ticketDate,
      currency: source.currency.getCurrencySymbol(),
      yardName: source.yardName,
      paidAmount: double.parse(source.amount?.toString() ?? '0'),
      ticketNumber: source.ticketNumber.toString(),
      fileName: source.fileName,
    );
  }
}
