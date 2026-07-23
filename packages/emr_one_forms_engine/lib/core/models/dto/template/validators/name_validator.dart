import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';

class TextValidatorDTO extends ValidatorDTO {
  TextValidatorDTO() {
    message = 'Please enter a valid name';
    type = 'Text';
  }

  factory TextValidatorDTO.fromJson(Map<String, dynamic> json) =>
      _$TextValidatorDTOFromJson(json);
}

TextValidatorDTO _$TextValidatorDTOFromJson(Map<String, dynamic> json) =>
    TextValidatorDTO()
      ..message = json['message'] as String?
      ..messageProvider = json['messageProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['messageProvider'] as Map<String, dynamic>)
      ..type = json['type'] as String?;
