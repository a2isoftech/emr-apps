import 'package:emr_one_cashiersearch/screens/diagnostics/audit_ticket/audit_ticket_common.dart';
import 'package:flutter/widgets.dart';

class AuditTicketNative extends AuditTicketCommon {
  AuditTicketNative({required super.controller, super.key});

  @override
  State<AuditTicketNative> createState() => _AuditTicketNativeState();
}

class _AuditTicketNativeState
    extends AuditTicketCommonState<AuditTicketNative> {}
