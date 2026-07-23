import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';

class DeclarationInstanceDTO extends FormComponentInstanceDTO {
  DeclarationInstanceDTO({
    required super.componentId,
    required bool answer,
    super.answeredBy,
    super.answeredByUuid,
    super.answerDate,
    super.answerDateLocal,
  }) : super(componentType: TemplateComponentTypes.declaration);

  DeclarationInstanceDTO.fromJson(super.json) : super.fromJson();
}
