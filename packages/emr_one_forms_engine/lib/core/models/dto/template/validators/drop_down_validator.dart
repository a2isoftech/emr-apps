import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';

class DropdownValidatorDTO extends ValidatorDTO {
  DropdownValidatorDTO() {
    message = 'Please select an option';
    type = 'String';
  }

  factory DropdownValidatorDTO.fromJson(Map<String, dynamic> json) =>
      _$DropdownValidatorDTOFromJson(json);
}

DropdownValidatorDTO _$DropdownValidatorDTOFromJson(
        Map<String, dynamic> json) =>
    DropdownValidatorDTO()
      ..message = json['message'] as String?
      ..messageProvider = json['messageProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['messageProvider'] as Map<String, dynamic>)
      ..type = json['type'] as String?;
