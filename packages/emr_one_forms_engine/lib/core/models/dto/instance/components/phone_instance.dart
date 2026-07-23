import 'package:emr_one_forms_engine/core/models/dto/instance/components/component_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/enums.dart';

class PhoneInstanceDTO extends FormComponentInstanceDTO {
  PhoneInstanceDTO({
    required super.componentId,
    super.answer,
    super.answerDate,
    super.answeredBy,
    super.answeredByUuid,
    super.answerDateLocal,
  }) : super(
          componentType: TemplateComponentTypes.phone,
        );

  PhoneInstanceDTO.fromJson(super.json) : super.fromJson();
}
