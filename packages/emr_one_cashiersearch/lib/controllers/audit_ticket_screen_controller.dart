import 'package:emr_core_api/emr_core_api.dart' hide Ticket;
import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/models/payment_posting_task.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart';
import 'package:emr_one_cashiersearch/models/ticket_service_api_response.dart';
import 'package:emr_one_cashiersearch/services/ticket_audit_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class AuditTicketScreenController extends EmrQueryLayoutController<Ticket> {
  AuditTicketScreenController({
    required super.dataSource,
    required this.ticketAuditService,
    super.filterController,
  });

  final ITicketAuditService ticketAuditService;

  final selectedPostingTask = ValueNotifier<PaymentPostingTask?>(null);
  Future<void> getPaymentPostingTask(String paymentRecordId) async {
    selectedPostingTask.value = await ticketAuditService
        .getPaymentPostingTaskByPaymentRecord(paymentRecordId);
  }

  Future<TicketServiceApiResponse<bool>> resyncTicket(String ticketId) async {
    return ticketAuditService.resyncTicket(ticketId);
  }

  Future<TicketServiceApiResponse<bool>> createWeighbridgeSyncTicketTask(
    String ticketId,
  ) async {
    return ticketAuditService.createWeighbridgeSyncTicketTask(ticketId);
  }

  Future<TicketServiceApiResponse<bool>> updatePostingTaskStatus(
    String postingTaskId,
    PaymentPostingTaskStatusEnum status,
  ) async {
    return ticketAuditService.updatePostingTaskStatus(postingTaskId, status);
  }

  Future<Ticket?> getTicketById(String ticketId) async {
    final result = await ticketAuditService.searchTickets(
      input: Input$SearchCashierTicketsInput(ticketIds: [ticketId]),
      includeAllWbSyncTasks: true,
    );

    return result.$1.firstOrNull;
  }
}
