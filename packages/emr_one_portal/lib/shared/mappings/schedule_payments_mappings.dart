import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/emr_one_portal_tickets.dart';

class ScheduledPaymentMapper {
  static ScheduledPayment scheduledPaymentMapper(
    Query$GetStatements$supplierStatements$nodes source,
  ) {
    return ScheduledPayment(
      amount: source.amount ?? 0,
      releaseDate: getNextThursday(source.supplierInvoiceDueDate),
      currency: source.currency ?? '',
    );
  }

  static DateTime getNextThursday(DateTime? date) {
    if (date == null) return _findNextThursday(DateTime.now());

    final today = DateTime.now();
    if (date.isBefore(today)) {
      return _findNextThursday(today);
    } else if (date.weekday == DateTime.thursday) {
      return date;
    }
    return _findNextThursday(date);
  }

  static DateTime _findNextThursday(DateTime date) {
    final daysUntilNextThursday = (DateTime.thursday - date.weekday + 7) % 7;
    return date.add(Duration(days: daysUntilNextThursday));
  }
}
