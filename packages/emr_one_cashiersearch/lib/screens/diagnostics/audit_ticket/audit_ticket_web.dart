import 'package:emr_one_cashiersearch/screens/diagnostics/audit_ticket/audit_ticket_common.dart';
import 'package:flutter/widgets.dart';

class AuditTicketWeb extends AuditTicketCommon {
  AuditTicketWeb({required super.controller, super.key});

  @override
  State<AuditTicketWeb> createState() => _AuditTicketWebState();
}

class _AuditTicketWebState extends AuditTicketCommonState<AuditTicketWeb> {}
