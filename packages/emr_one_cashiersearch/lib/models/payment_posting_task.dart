import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_sharedtypes/models/ticket/event_log.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_posting_task.g.dart';

@JsonSerializable()
class PaymentPostingTask {
  PaymentPostingTask({
    required this.paymentRecordId,
    required this.eventLogs,
    required this.status,
    required this.id,
    this.completedDate,
  });

  factory PaymentPostingTask.fromJson(Map<String, dynamic> json) =>
      _$PaymentPostingTaskFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentPostingTaskToJson(this);

  final String id;
  final String paymentRecordId;
  final List<EventLog> eventLogs;
  final DateTime? completedDate;
  final PaymentPostingTaskStatusEnum status;
}
