import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/sync_weighbridge_ticket_task_status.dart';
import 'package:emr_sharedtypes/models/ticket/sync_weighbridge_ticket_task.dart'
    show SyncWeighbridgeTicketTask;
import 'package:flutter/material.dart';

String? resolveTicketSuggestion(Ticket ticket, BuildContext context) {
  if (ticket.ticketStatus == TicketStatus.active) {
    return context.l10n.awaitingPayment;
  }

  return null;
}

String? resolveWbSyncSuggestion(Ticket ticket, BuildContext context) {
  final task = getValidSyncTask(ticket);

  if (task == null) return null;

  if (task.status == SyncWeighbridgeTicketTaskStatus.error) {
    return context.l10n.checkWeighbridgeSyncLogs;
  }

  return null;
}

String? resolvePostingSuggestion(Ticket ticket, BuildContext context) {
  final posting = ticket.paymentRecord?.paymentPostingTask;

  if (posting == null) return null;

  if (posting.status == PaymentPostingTaskStatusEnum.error) {
    return context.l10n.checkPaymentProcessorLogsAzure;
  }

  return null;
}

String? resolvePaymentSuggestion(Ticket ticket, BuildContext context) {
  final payment = ticket.paymentRecord;

  if (payment == null) return null;

  if (payment.status == PaymentStatus.awaitingForApproval) {
    return context.l10n.awaitingPaymentApproval;
  }

  if (payment.status == PaymentStatus.ready &&
      payment.paymentPostingTask == null) {
    return context.l10n.checkPostingDataCheckFunctionLogs;
  }

  if (payment.status == PaymentStatus.ready &&
      payment.paymentPostingTask != null) {
    return context.l10n.notPickedByPaymentProcessorCheckPostingAppsLogs;
  }

  if (payment.status == PaymentStatus.hold) {
    return context
        .l10n
        .possibleVersionMismatchCheckPostingDataAndTicketSyncLogs;
  }

  if (payment.status == PaymentStatus.pending) {
    return context.l10n.paymentPostingStartedCheckPostingAppsLogs;
  }

  return null;
}

SyncWeighbridgeTicketTask? getValidSyncTask(Ticket ticket) {
  if (ticket.syncWeighbridgeTicketTasks?.isEmpty ?? true) {
    return null;
  }

  if (ticket.syncWeighbridgeTicketTasks!.length == 1) {
    return ticket.syncWeighbridgeTicketTasks!.first;
  }

  return null;
}
