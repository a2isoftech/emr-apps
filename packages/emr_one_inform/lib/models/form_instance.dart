import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/models/base_root_form.dart';
import 'package:emr_one_inform/models/form_instance_status_log.dart';
import 'package:emr_one_inform/models/form_template.dart';

class FormInstance extends BaseRootForm {
  FormInstance.fromLocalDB(super.currentJob, super.localJob)
      : templateVersionId = currentJob.template?.id,
        status = 'In Progress',
        depotNo = currentJob.job?.asset?.depotNo,
        yardCode = currentJob.job?.asset?.yardCode,
        workOrderId = currentJob.job?.workOrderId,
        assetCode = currentJob.job?.asset?.assetCode,
        assetName = currentJob.job?.asset?.name,
        companyCode = null,
        jobType = currentJob.job?.jobType,
        scheduleItemType = currentJob.job?.scheduleItemType,
        jobTypeVariant = currentJob.job?.jobTypeVariant,
        startedBy = UserInfoService.instance!.userInfo.name,
        startedDate = currentJob.job?.expectedStartDate,
        submittedBy = '',
        submittedDate = null,
        template = FormTemplate.fromLocalDB(currentJob, localJob),
        scheduledItemId = currentJob.scheduledItemId,
        workOrderDescription = currentJob.job?.workOrderDescription,
        originalDescription = currentJob.job?.originalDescription,
        jobTrade = currentJob.job?.jobTrade,
        assignedToTeam = currentJob.job?.assignedToTeam,
        assignedToTeamId = currentJob.job?.assignedToTeamId,
        assignedTo = currentJob.job?.assignedTo ??
            UserInfoService.instance!.userInfo.name,
        isDigitalSignatureRequired = currentJob.job?.isDigitalSignatureRequired,
        category = currentJob.job?.category,
        jobPriority = currentJob.job?.jobPriority,
        notes = currentJob.job?.notes,
        d365Error = '',
        reProcessedStatus = '',
        logs = [],
        capturedMediaCount = null,
        super.fromLocalDB();

  FormInstance.fromJson(super.json)
      : templateVersionId = json['templateVersionId'] as String?,
        status = json['status'] as String?,
        depotNo = json['depotNo'] as String?,
        yardCode = json['yardCode'] as String?,
        workOrderId = json['workOrderId'] as String?,
        assetCode = json['assetCode'] as String?,
        assetName = json['assetName'] as String?,
        companyCode = json['companyCode'] as String?,
        jobType = json['jobType'] as String?,
        scheduleItemType = json['scheduleItemType'] as String?,
        jobTypeVariant = json['jobTypeVariant'] as String?,
        startedBy = json['startedBy'] as String?,
        startedDate = json['startedDate'] == null
            ? null
            : DateTime.parse(json['startedDate'] as String),
        submittedBy = json['submittedBy'] as String?,
        submittedDate = json['submittedDate'] == null
            ? null
            : DateTime.parse(json['submittedDate'] as String),
        template = json['template'] == null
            ? null
            : FormTemplate.fromJson(json['template'] as Map<String, dynamic>),
        scheduledItemId = json['scheduledItemId'] as String?,
        workOrderDescription = json['workOrderDescription'] as String?,
        originalDescription = json['originalDescription'] as String?,
        jobTrade = json['jobTrade'] as String?,
        assignedTo = json['assignedTo'] as String?,
        assignedToTeam = json['assignedToTeam'] as String?,
        assignedToTeamId = json['assignedToTeamId'] as String?,
        isDigitalSignatureRequired =
            json['isDigitalSignatureRequired'] as bool?,
        category = json['category'] as String?,
        jobPriority = json['jobPriority'] as String?,
        notes = json['notes'] as String?,
        d365Error = json['d365Error'] as String?,
        reProcessedStatus = json['reProcessedStatus'] as String?,
        capturedMediaCount = json['capturedMediaCount'] as int?,
        super.fromJson();

  final String? templateVersionId;
  final String? status;
  final String? depotNo;
  final String? yardCode;
  final String? workOrderId;
  final String? assetCode;
  final String? assetName;
  final String? companyCode;
  final String? jobType;
  final String? jobTypeVariant;
  final String? startedBy;
  final DateTime? startedDate;
  final String? submittedBy;
  final DateTime? submittedDate;
  final FormTemplate? template;
  final String? scheduledItemId;
  final String? workOrderDescription;
  final String? originalDescription;
  final String? jobTrade;
  final String? assignedTo;
  final String? assignedToTeam;
  final String? assignedToTeamId;
  final String? scheduleItemType;
  final bool? isDigitalSignatureRequired;
  final String? category;
  final String? jobPriority;
  final String? notes;
  final String? d365Error;
  final String? reProcessedStatus;
  final int? capturedMediaCount;
  List<FormInstanceStatusLog>? logs;

  @override
  Map<String, dynamic> toJson() => _$FormInstanceToJson(this);
}

Map<String, dynamic> _$FormInstanceToJson(FormInstance instance) =>
    <String, dynamic>{
      'templateVersionId': instance.templateVersionId,
      'status': instance.status,
      'depotNo': instance.depotNo,
      'workOrderId': instance.workOrderId,
      'assetCode': instance.assetCode,
      'assetName': instance.assetName,
      'jobType': instance.jobType,
      'jobTypeVariant': instance.jobTypeVariant,
      'startedBy': instance.startedBy,
      'startedDate': instance.startedDate?.toIso8601String(),
      'submittedBy': instance.submittedBy,
      'submittedDate': instance.submittedDate?.toIso8601String(),
      'template': instance.template,
      'workOrderDescription': instance.workOrderDescription,
      'originalDescription': instance.originalDescription,
      'jobTrade': instance.jobTrade,
      'assignedTo': instance.assignedTo,
      'assignedToTeam': instance.assignedToTeam,
      'assignedToTeamId': instance.assignedToTeamId,
      'yardCode': instance.yardCode,
      'scheduleItemType': instance.scheduleItemType,
      'isDigitalSignatureRequired': instance.isDigitalSignatureRequired,
      'category': instance.category,
      'jobPriority': instance.jobPriority,
      'notes': instance.notes,
    };
