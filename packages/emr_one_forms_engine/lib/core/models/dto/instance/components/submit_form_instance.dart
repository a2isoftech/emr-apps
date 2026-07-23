import 'package:emr_one_forms_engine/core/models/dto/instance/components/component_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/enums.dart';

class SubmitFormInstanceDTO extends FormComponentInstanceDTO {
  SubmitFormInstanceDTO({
    required super.componentId,
    super.answeredBy,
    super.answeredByUuid,
    super.answerDate,
    super.answerDateLocal,
  }) : super(componentType: TemplateComponentTypes.submit);
}
