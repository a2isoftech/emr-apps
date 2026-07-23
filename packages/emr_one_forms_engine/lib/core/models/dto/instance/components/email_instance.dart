import 'package:emr_one_forms_engine/core/models/dto/instance/components/component_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/enums.dart';

class EmailInstanceDTO extends FormComponentInstanceDTO {
  EmailInstanceDTO({
    required super.componentId,
    super.answer,
    super.answerDate,
    super.answeredBy,
    super.answeredByUuid,
    super.answerDateLocal,
  }) : super(componentType: TemplateComponentTypes.email);

  EmailInstanceDTO.fromJson(super.json) : super.fromJson();
}
