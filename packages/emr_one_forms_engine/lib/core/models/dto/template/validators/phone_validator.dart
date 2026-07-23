import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';

class PhoneNumberValidatorDTO extends ValidatorDTO {
  PhoneNumberValidatorDTO() {
    message = 'Please enter a valid phone number';
    type = 'Phone';
  }

  factory PhoneNumberValidatorDTO.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberValidatorDTOFromJson(json);
}

PhoneNumberValidatorDTO _$PhoneNumberValidatorDTOFromJson(
        Map<String, dynamic> json) =>
    PhoneNumberValidatorDTO()
      ..message = json['message'] as String?
      ..messageProvider = json['messageProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['messageProvider'] as Map<String, dynamic>)
      ..type = json['type'] as String?;
