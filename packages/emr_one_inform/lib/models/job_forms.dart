import 'package:emr_one_inform/models/form_instance.dart';
import 'package:emr_one_inform/models/scheduled_job_form.dart';

class JobForms {
  JobForms({
    this.yardCode,
    this.startDate,
    this.endDate,
    this.filteredForUser,
    this.inProgress,
    this.scheduled,
    this.assetCode,
  });

  factory JobForms.fromJson(Map<String, dynamic> json) =>
      _$JobFormsFromJson(json);

  final String? yardCode;
  final DateTime? startDate;
  final DateTime? endDate;
  List<ScheduledJobForm>? filteredForUser;
  List<FormInstance>? inProgress;
  List<ScheduledJobForm>? scheduled;
  final String? assetCode;

  Map<String, dynamic> toJson() => _$JobFormsToJson(this);
}

JobForms _$JobFormsFromJson(Map<String, dynamic> json) => JobForms(
      yardCode: json['yardCode'] as String?,
      assetCode: json['assetCode'] as String?,
    );

Map<String, dynamic> _$JobFormsToJson(JobForms instance) => <String, dynamic>{
      'yardCode': instance.yardCode,
      'filteredForUser': instance.filteredForUser,
      'inProgress': instance.inProgress,
      'scheduled': instance.scheduled,
      'assetCode': instance.assetCode,
    };
