import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';

class NumberValidatorDTO extends ValidatorDTO {
  NumberValidatorDTO() {
    message = 'Please enter a valid number';
    type = 'Number';
  }

  factory NumberValidatorDTO.fromJson(Map<String, dynamic> json) =>
      _$NumberValidatorDTOFromJson(json);
}

NumberValidatorDTO _$NumberValidatorDTOFromJson(Map<String, dynamic> json) =>
    NumberValidatorDTO()
      ..message = json['message'] as String?
      ..messageProvider = json['messageProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['messageProvider'] as Map<String, dynamic>)
      ..type = json['type'] as String?;
