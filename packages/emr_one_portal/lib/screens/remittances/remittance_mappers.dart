import 'package:emr_one_portal/screens/remittances/remittances.dart';
import 'package:emr_one_portal_tickets/emr_one_portal_tickets.dart';

class RemittanceMapper {
  static SupplierRemittanceModel remittanceMapper(
    Query$GetRemittances$supplierRemittances$nodes source,
  ) {
    return SupplierRemittanceModel(
      paidDate: source.remittanceDate ?? DateTime.now(),
      fileName: source.remittanceFileName,
    );
  }
}
