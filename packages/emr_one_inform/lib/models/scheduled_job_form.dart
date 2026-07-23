import 'package:emr_one_inform/models/form_template.dart';
import 'package:emr_one_inform/models/work_order_info.dart';

class ScheduledJobForm {
  ScheduledJobForm({this.job, this.template, this.scheduledItemId});

  factory ScheduledJobForm.fromJson(Map<String, dynamic> json) =>
      _$ScheduledJobFormFromJson(json);
  final WorkOrderInfo? job;
  final FormTemplate? template;
  final String? scheduledItemId;

  Map<String, dynamic> toJson() => _$ScheduledJobFormToJson(this);
}

ScheduledJobForm _$ScheduledJobFormFromJson(Map<String, dynamic> json) =>
    ScheduledJobForm(
      job: json['job'] == null
          ? null
          : WorkOrderInfo.fromJson(json['job'] as Map<String, dynamic>),
      template: json['template'] == null
          ? null
          : FormTemplate.fromJson(json['template'] as Map<String, dynamic>),
      scheduledItemId: json['scheduledItemId'] as String,
    );

Map<String, dynamic> _$ScheduledJobFormToJson(ScheduledJobForm instance) =>
    <String, dynamic>{
      'job': instance.job,
      'template': instance.template,
    };
