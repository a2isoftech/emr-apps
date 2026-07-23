import 'package:emr_one_inform/models/form_instance.dart';

class DiagnosticJobForm extends FormInstance {
  DiagnosticJobForm.fromLocalDB(super.currentJob, super.localJob)
      : 
        scheduledItemStatus = '',
        d365Status = '',
        super.fromLocalDB();

  DiagnosticJobForm.fromJson(super.json)
      : 
        scheduledItemStatus = json['scheduledItemStatus'] as String?,
        d365Status = json['d365Status'] as String?,
        
        super.fromJson();


  final String? scheduledItemStatus;
  final String? d365Status;

  @override
  Map<String, dynamic> toJson() => _$DiagnosticJobFormToJson(this);
}

Map<String, dynamic> _$DiagnosticJobFormToJson(DiagnosticJobForm instance) =>
    <String, dynamic>{
      'scheduledItemStatus': instance.scheduledItemStatus,
      'd365Status': instance.d365Status,
    };
