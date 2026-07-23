import 'package:emr_one_portal/shared/models/scheduled_payment_model.dart';
import 'package:emr_one_portal/shared/services/supplier_portal_service.dart';
import 'package:flutter/material.dart';

class SupplierPortalController extends ChangeNotifier {
  SupplierPortalController({
    required this.supplierPortalService,
  });

  final SupplierPortalService supplierPortalService;

  Future<List<ScheduledPayment>> getNextScheduledPayments() async {
    final scheduledPayments =
        await supplierPortalService.getNextScheduledPaymentsDetails();

    return scheduledPayments;
  }
}
