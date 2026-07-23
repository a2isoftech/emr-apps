import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';

List<FormComponentInstanceDTO> decodeComponentInstances(
        Iterable<dynamic> componentInstances) =>
    componentInstances.map((jsonData) {
      switch (jsonData['componentType']) {
        case TemplateComponentTypes.yesNoQuestion:
          return YesNoQuestionInstanceDTO.fromJson(jsonData);
        case TemplateComponentTypes.textInput:
          return TextInputInstanceDTO.fromJson(jsonData);
        case TemplateComponentTypes.datePicker:
          return DatePickerInstanceDTO.fromJson(jsonData);
        case TemplateComponentTypes.singleChoiceQuestion:
          return DropdownInstanceDTO.fromJson(jsonData);
        case TemplateComponentTypes.declaration:
          return DeclarationInstanceDTO.fromJson(jsonData);
        case TemplateComponentTypes.checkbox:
          return CheckboxInstanceDTO.fromJson(jsonData);
        case TemplateComponentTypes.email:
          return EmailInstanceDTO.fromJson(jsonData);
        case TemplateComponentTypes.phone:
          return PhoneInstanceDTO.fromJson(jsonData);
        case TemplateComponentTypes.rating:
          return RatingInstanceDTO.fromJson(jsonData);
        default:
          throw Exception(
              'Component type ${jsonData['componentType']} is not supported in loaded instance data');
      }
    }).toList();
