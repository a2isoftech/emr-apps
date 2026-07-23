import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';

List<TemplateComponentDTO> decodeTemplateComponents(
    Iterable<dynamic> jsonObject) {
  return jsonObject
      .map((e) => decodeTemplateComponent(e))
      .toList(growable: false);
}

TemplateComponentDTO decodeTemplateComponent(dynamic jsonObject) {
  switch (jsonObject['type']) {
    case TemplateComponentTypes.textInput:
      return TextInputComponentDTO.fromJson(jsonObject);
    case TemplateComponentTypes.yesNoQuestion:
      return YesNoQuestionComponentDTO.fromJson(jsonObject);
    case TemplateComponentTypes.label:
      return StaticLabelComponentDTO.fromJson(jsonObject);
    case TemplateComponentTypes.datePicker:
      return DatePickerComponentDTO.fromJson(jsonObject);
    case TemplateComponentTypes.singleChoiceQuestion:
      return DropdownComponentDTO.fromJson(jsonObject);
    case TemplateComponentTypes.declaration:
      return DeclarationComponentDTO.fromJson(jsonObject);
    case TemplateComponentTypes.checkbox:
      return CheckboxComponentDTO.fromJson(jsonObject);
    case TemplateComponentTypes.url:
      return UrlComponentDTO.fromJson(jsonObject);
    case TemplateComponentTypes.email:
      return EmailComponentDTO.fromJson(jsonObject);
    case TemplateComponentTypes.phone:
      return PhoneComponentDTO.fromJson(jsonObject);
    case TemplateComponentTypes.rating:
      return RatingComponentDTO.fromJson(jsonObject);
    default:
      throw Exception(
          'Template component type "${jsonObject['type']}" is not a supported component');
  }
}
