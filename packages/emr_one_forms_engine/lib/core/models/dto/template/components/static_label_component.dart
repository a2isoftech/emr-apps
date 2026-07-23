import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';

class StaticLabelComponentDTO extends TemplateComponentDTO {
  final bool? isHTML;
  final String? message;
  final LabelTypes? messageType;

  StaticLabelComponentDTO(
    super.id,
    this.isHTML,
    this.message,
    this.messageType,
  );

  StaticLabelComponentDTO.fromJson(super.json)
    : isHTML = json['isHTML'],
      message = json['message'],
      messageType = _$LabelTypesEnumMap[json['messageType']?.toLowerCase()],
      super.fromJson();
}

const Map<String?, LabelTypes> _$LabelTypesEnumMap = {
  'error': LabelTypes.error,
  'information': LabelTypes.information,
  'warning': LabelTypes.warning,
};
