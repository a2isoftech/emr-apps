import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';

class EmailValidatorDTO extends ValidatorDTO {
  EmailValidatorDTO() {
    message = 'Please enter a valid email address';
    type = 'Email';
  }

  factory EmailValidatorDTO.fromJson(Map<String, dynamic> json) =>
      _$EmailValidatorDTOFromJson(json);
}

EmailValidatorDTO _$EmailValidatorDTOFromJson(Map<String, dynamic> json) =>
    EmailValidatorDTO()
      ..message = json['message'] as String?
      ..messageProvider = json['messageProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['messageProvider'] as Map<String, dynamic>)
      ..type = json['type'] as String?;
