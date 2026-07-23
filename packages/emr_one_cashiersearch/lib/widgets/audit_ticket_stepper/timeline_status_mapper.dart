import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';

TimelineStatus resolveTicketCreatedStatus(Ticket ticket) {
  return TimelineStatus.success;
}

TimelineStatus resolveTicketFinishedStatus(Ticket ticket) {
  if (ticket.ticketStatus == TicketStatus.draft) {
    return TimelineStatus.notStarted;
  }

  final error =
      ticket.metadata['OppraToTradeSyncErrorMessage']?.toString() ?? '';

  if (error.isNotEmpty) return TimelineStatus.error;

  return TimelineStatus.success;
}

TimelineStatus resolveSyncStatus(Ticket ticket) {
  if ((ticket.syncWeighbridgeTicketTasks?.length ?? 0) > 1) {
    return TimelineStatus.error;
  }

  final task = getValidSyncTask(ticket);

  if (task == null) return TimelineStatus.notStarted;

  if (task.completedDate == null) return TimelineStatus.pending;

  return TimelineStatus.success;
}

TimelineStatus resolvePaymentStatus(Ticket ticket) {
  final payment = ticket.paymentRecord;

  if (payment == null) return TimelineStatus.notStarted;

  if (payment.status == PaymentStatus.hold ||
      payment.status == PaymentStatus.pending) {
    return TimelineStatus.warning;
  }

  return TimelineStatus.success;
}

TimelineStatus resolvePostingStatus(Ticket ticket) {
  final posting = ticket.paymentRecord?.paymentPostingTask;

  if (posting == null) return TimelineStatus.notStarted;

  if (posting.status == PaymentPostingTaskStatusEnum.error) {
    return TimelineStatus.error;
  }

  if (posting.status == PaymentPostingTaskStatusEnum.inProgress) {
    return TimelineStatus.pending;
  }

  return TimelineStatus.success;
}
