import 'package:emr_one_forms_engine/core/models/dto/template/enums.dart';

import 'component_instance.dart';

class TextInputInstanceDTO extends FormComponentInstanceDTO {
  TextInputInstanceDTO({
    required super.componentId,
    required super.answer,
    super.answeredBy,
    super.answeredByUuid,
    super.answerDate,
    super.assetCounter,
    super.answerDateLocal,
  }) : super(componentType: TemplateComponentTypes.textInput);

  TextInputInstanceDTO.fromJson(super.json) : super.fromJson();
}
