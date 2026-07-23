import 'package:emr_one_forms_engine/core/models/dto/instance/components/component_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/instance/components/decode_instance_components.dart';
import 'package:emr_one_forms_engine/core/models/dto/instance/components/yes_no_question_instance.dart';

class FormInstanceDTO {
  final String id;
  final int schemaVersion = 1;
  final String templateId;
  final DateTime startDate;
  final String startedBy;
  final String startedByUuid;
  final DateTime? submitDate;
  final String? submittedBy;
  final String? submittedByUuid;
  final List<FormComponentInstanceDTO> componentData;
  final DateTime startDateLocal;
  final DateTime? submitDateLocal;
  final CapturedMediaDTO? signature;
  final List<String>? emailsToNotify;

  FormInstanceDTO(
      {required this.id,
      required this.templateId,
      required this.startDate,
      required this.startedBy,
      required this.startedByUuid,
      this.submitDate,
      this.submittedBy,
      this.submittedByUuid,
      required this.componentData,
      required this.startDateLocal,
      this.submitDateLocal,
      this.signature,
      this.emailsToNotify});

  FormInstanceDTO.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        templateId = json['templateId'],
        startDate = DateTime.parse(json['startDate']),
        startedBy = json['startedBy'],
        startedByUuid =
            json['startedByUuid'] ?? '00000000-0000-0000-0000-000000000000',
        submitDate = json['submitDate'] == null
            ? null
            : DateTime.parse(json['submitDate']),
        submittedBy = json['submittedBy'],
        submittedByUuid = json['submittedByUuid'],
        componentData = decodeComponentInstances(json['componentData']),
        startDateLocal = json['startDateLocal'] == null
            ? DateTime.parse(json['startDate'])
            : DateTime.parse(json['startDateLocal']),
        submitDateLocal = json['submitDateLocal'] == null
            ? null
            : DateTime.parse(json['submitDateLocal']),
        emailsToNotify = json['emailsToNotify'] == null
            ? null
            : (json['emailsToNotify'] as List<dynamic>).cast<String>(),
        signature = json['signature'] == null
            ? null
            : CapturedMediaDTO.fromJson(json['id'], json['signature']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'templateId': templateId,
        'startDate': startDate.toIso8601String(),
        'startedBy': startedBy,
        'startedByUuid': startedByUuid,
        'submitDate': submitDate?.toIso8601String(),
        'submittedBy': submittedBy,
        'submittedByUuid': submittedByUuid,
        'componentData': componentData,
        'startDateLocal': startDateLocal.toIso8601String(),
        'submitDateLocal': submitDateLocal?.toIso8601String(),
        'signature': signature,
        'emailsToNotify': emailsToNotify,
      };
}
