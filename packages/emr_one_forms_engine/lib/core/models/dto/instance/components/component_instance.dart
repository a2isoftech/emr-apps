import 'package:emr_one_forms_engine/core/models/asset_counter.dart';

abstract class FormComponentInstanceDTO {
  final String componentId;
  final String componentType;
  final String? answer;
  final String? answeredBy;
  final String? answeredByUuid;
  final DateTime? answerDate;
  final AssetCounter? assetCounter;
  final DateTime? answerDateLocal;

  FormComponentInstanceDTO({
    required this.componentId,
    required this.componentType,
    this.answer,
    this.answeredBy,
    this.answeredByUuid,
    this.answerDate,
    this.assetCounter,
    this.answerDateLocal,
  });

  FormComponentInstanceDTO.fromJson(Map<String, dynamic> json)
      : componentId = json['componentId'],
        componentType = json['componentType'],
        answer = json['answer'],
        answeredBy = json['answeredBy'],
        answeredByUuid = json['answeredByUuid'],
        answerDate = json['answerDate'] == null
            ? null
            : DateTime.tryParse(json['answerDate']),
        answerDateLocal = json['answerDateLocal'] == null
            ? null
            : DateTime.tryParse(json['answerDateLocal']),
        assetCounter = json['assetCounter'] == null
            ? null
            : AssetCounter.fromJson(
                json['assetCounter'] as Map<String, dynamic>);

  Map<String, dynamic> toJson() {
    return {
      'componentId': componentId,
      'componentType': componentType,
      'answer': answer,
      'answeredBy': answeredBy,
      'answeredByUuid': answeredByUuid,
      'answerDate': answerDate?.toIso8601String(),
      'assetCounter': assetCounter,
      'answerDateLocal': answerDateLocal?.toIso8601String(),
    };
  }
}
