import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';

class CheckboxInstanceDTO extends FormComponentInstanceDTO {
  CheckboxInstanceDTO({
    required super.componentId,
    super.answer,
    super.answeredBy,
    super.answeredByUuid,
    super.answerDate,
    super.answerDateLocal,
  }) : super(componentType: TemplateComponentTypes.checkbox);

  CheckboxInstanceDTO.fromJson(super.json) : super.fromJson();
}
