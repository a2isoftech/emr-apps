import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';

List<ValidatorDTO> decodeTemplateValidators(Iterable<dynamic> jsonObjects) {
  return jsonObjects
      .map((e) => decodeTemplateValidator(e))
      .toList(growable: false);
}

ValidatorDTO decodeTemplateValidator(dynamic jsonObject) {
  switch (jsonObject['type']) {
    case TemplateValidatorTypes.text:
      return TextValidatorDTO.fromJson(jsonObject);
    case TemplateValidatorTypes.number:
      return NumberValidatorDTO.fromJson(jsonObject);
    case TemplateValidatorTypes.numberRange:
      return NumberRangeValidatorDTO.fromJson(jsonObject);
    case TemplateValidatorTypes.date:
      return DateValidatorDTO.fromJson(jsonObject);
    case TemplateValidatorTypes.singleChoice:
      return DropdownValidatorDTO.fromJson(jsonObject);
    case TemplateValidatorTypes.exitOnNo:
      return ExitOnNoValidatorDTO.fromJson(jsonObject);
    case TemplateValidatorTypes.warningOnNo:
      return WarningOnNoValidatorDTO.fromJson(jsonObject);
    case TemplateValidatorTypes.checkbox:
      return CheckboxValidatorDTO.fromJson(jsonObject);
    case TemplateValidatorTypes.email:
      return EmailValidatorDTO.fromJson(jsonObject);
    case TemplateValidatorTypes.phone:
      return PhoneNumberValidatorDTO.fromJson(jsonObject);      
          case TemplateValidatorTypes.rating:
      return RatingValidatorDTO.fromJson(jsonObject);         
    default:
      throw Exception(
          'Text input validator type "${jsonObject['type']}" is not supported');
  }
}
