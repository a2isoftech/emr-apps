import 'package:emr_one_inform/models/form_models.dart';

class ScheduleRecord {
  ScheduleRecord({
    required this.uuid,
    required this.isDigitalSignatureRequired,
    required this.repeatInterval,
    required this.repeatFrequency,
    required this.description,
    required this.isActive,
    required this.nextSchedulerDate,
    required this.createdBy,
    required this.createdDate,
    required this.endDate,
    required this.assignedTo,
    required this.template,
    required this.depotNos,
    required this.yardCodes,
    required this.numberOfTasks,
    required this.workingDays,
    this.assignedToTeam,
  });

  ScheduleRecord.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'] as String;
    isDigitalSignatureRequired = json['isDigitalSignatureRequired'] as bool;
    repeatInterval = json['repeatInterval'] as int;
    repeatFrequency = json['repeatFrequency'] as int;
    description = json['description'] as String;
    yardCodes = (json['yardCodes'] as List<dynamic>).cast<String>();
    depotNos = (json['depotNos'] as List<dynamic>).cast<String>();
    nextSchedulerDate =
        DateTime.parse(json['nextSchedulerDate'] as String).toLocal();
    createdBy = json['createdBy'] as String;
    isActive = json['isActive'] as bool;
    numberOfTasks = json['numberOfTasks'] as int;
    workingDays = json['workingDays'] as int;
    createdDate = DateTime.parse(json['createdDate'] as String).toLocal();
    endDate = json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String).toLocal();
    assignedTo = json['assignedTo'] as String?;
    template = json['template'] != null
        ? FormTemplate.fromJson(json['template'] as Map<String, dynamic>)
        : null;
    assignedToTeam = json['assignedToTeam'] as String?;
  }

  late String uuid;
  late bool isDigitalSignatureRequired;
  late int repeatInterval;
  late int repeatFrequency;
  late String description;
  late List<String> depotNos;
  late List<String> yardCodes;
  late bool isActive;
  late int numberOfTasks;
  late int workingDays;
  late DateTime nextSchedulerDate;
  late String createdBy;
  late DateTime createdDate;
  late DateTime? endDate;
  late String? assignedTo;
  late FormTemplate? template;
  late String? assignedToTeam;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['isDigitalSignatureRequired'] = isDigitalSignatureRequired;
    data['repeatInterval'] = repeatInterval;
    data['repeatFrequency'] = repeatFrequency;
    data['description'] = description;
    data['isActive'] = isActive;
    data['nextSchedulerDate'] = nextSchedulerDate.toIso8601String();
    data['createdBy'] = createdBy;
    data['createdDate'] = createdDate.toIso8601String();
    data['endDate'] = endDate?.toIso8601String();
    data['assignedTo'] = assignedTo;
    data['depotNos'] = depotNos;
    data['yardCodes'] = yardCodes;
    data['numberOfTasks'] = numberOfTasks;
    data['workingDays'] = workingDays;
    if (template != null) {
      data['template'] = template!.toJson();
    }
    data['assignedToTeam'] = assignedToTeam;
    return data;
  }
}
