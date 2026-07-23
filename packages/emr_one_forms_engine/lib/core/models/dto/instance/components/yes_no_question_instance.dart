import 'package:emr_one_forms_engine/core/models/dto/template/enums.dart';

import 'component_instance.dart';

class CapturedMediaDTO {
  final String path;
  final String type;
  final String componentId;
  final String uuid;
  final String? attachedBy;
  final DateTime? attachedDate;

  CapturedMediaDTO(
      {required this.path,
      required this.type,
      required this.componentId,
      required this.uuid,
      this.attachedBy,
      this.attachedDate});

  CapturedMediaDTO.fromJson(this.componentId, Map<String, dynamic> json)
      : path = json['path'],
        type = json['type'],
        uuid = json['uuid'],
        attachedBy = json['attachedBy'],
        attachedDate = json['attachedDate'] == null
            ? null
            : DateTime.parse(json['attachedDate']);

  Map<String, dynamic> toJson() => {
        'path': path,
        'type': type,
        'uuid': uuid,
        'attachedBy': attachedBy,
        'attachedDate': attachedDate?.toIso8601String()
      };
}

class YesNoQuestionInstanceDTO extends FormComponentInstanceDTO {
  final String? notes;
  late List<CapturedMediaDTO> capturedMedia;

  YesNoQuestionInstanceDTO({
    required super.componentId,
    super.answer,
    super.answeredBy,
    super.answeredByUuid,
    super.answerDate,
    this.notes,
    List<CapturedMediaDTO>? capturedMedia,
    super.answerDateLocal,
  }) : super(
          componentType: TemplateComponentTypes.yesNoQuestion,
        ) {
    this.capturedMedia = capturedMedia ?? [];
  }

  YesNoQuestionInstanceDTO.fromJson(super.json)
      : notes = json['notes'],
        capturedMedia = json['capturedMedia'] == null
            ? []
            : (json['capturedMedia'] as List<dynamic>)
                .map((e) => CapturedMediaDTO.fromJson(json['componentId'], e))
                .toList(),
        super.fromJson();

  @override
  Map<String, dynamic> toJson() {
    final m = {'notes': notes, 'capturedMedia': capturedMedia}
      ..addAll(super.toJson());

    return m..removeWhere((key, value) => value == null);
  }
}
