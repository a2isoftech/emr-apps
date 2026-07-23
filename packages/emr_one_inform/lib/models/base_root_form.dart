import 'package:emr_one_forms_engine/core/models/database/hive_form_instance.dart';
import 'package:emr_one_inform/models/scheduled_job_form.dart';

abstract class BaseRootForm {
  BaseRootForm.fromLocalDB(
    ScheduledJobForm currentJob,
    HiveFormInstance localJob,
  )   : id = localJob.uuid,
        document = currentJob.template?.document;

  BaseRootForm.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        document = json['document'] as String?;
  final String? id;
  final String? document;

  Map<String, dynamic> toJson() => _$BaseRootFormToJson(this);
}

Map<String, dynamic> _$BaseRootFormToJson(BaseRootForm instance) =>
    <String, dynamic>{'id': instance.id, 'document': instance.document};
