import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';

class CheckboxValidatorDTO extends ValidatorDTO {
  CheckboxValidatorDTO() {
    message = 'Please tick to continue';
    type = 'Checkbox';
  }

  factory CheckboxValidatorDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckboxValidatorDTOFromJson(json);
}

CheckboxValidatorDTO _$CheckboxValidatorDTOFromJson(
        Map<String, dynamic> json) =>
    CheckboxValidatorDTO()
      ..message = json['message'] as String?
      ..messageProvider = json['messageProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['messageProvider'] as Map<String, dynamic>)
      ..type = json['type'] as String?;
