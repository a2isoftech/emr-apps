// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_posting_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentPostingTask _$PaymentPostingTaskFromJson(Map<String, dynamic> json) =>
    PaymentPostingTask(
      paymentRecordId: json['paymentRecordId'] as String,
      eventLogs: (json['eventLogs'] as List<dynamic>)
          .map((e) => EventLog.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(
        _$PaymentPostingTaskStatusEnumEnumMap,
        json['status'],
      ),
      id: json['id'] as String,
      completedDate: json['completedDate'] == null
          ? null
          : DateTime.parse(json['completedDate'] as String),
    );

Map<String, dynamic> _$PaymentPostingTaskToJson(PaymentPostingTask instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentRecordId': instance.paymentRecordId,
      'eventLogs': instance.eventLogs,
      'completedDate': instance.completedDate?.toIso8601String(),
      'status': _$PaymentPostingTaskStatusEnumEnumMap[instance.status]!,
    };

const _$PaymentPostingTaskStatusEnumEnumMap = {
  PaymentPostingTaskStatusEnum.ready: 'READY',
  PaymentPostingTaskStatusEnum.inProgress: 'IN_PROGRESS',
  PaymentPostingTaskStatusEnum.error: 'ERROR',
  PaymentPostingTaskStatusEnum.success: 'SUCCESS',
};
