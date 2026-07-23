import 'package:emr_one_portal_tickets/emr_one_portal_tickets.dart';

extension StatementStatusExtension on Enum$InvoiceStatus? {
  String getStatementStatus() {
    if (this == Enum$InvoiceStatus.SCHEDULED_FOR_PAYMENT) {
      return 'Scheduled For Payment';
    } else if(this == Enum$InvoiceStatus.IN_REVIEW){
      return 'In Review';
    } else if(this == Enum$InvoiceStatus.PAID){
      return 'Paid';
    } 
    return 'Unknown';
  }
}
