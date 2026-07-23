import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/validator.dart';

class WarningOnNoValidatorDTO extends ValidatorDTO {
  WarningOnNoValidatorDTO() {
    message = 'Please enter a valid number';
    type = 'Number';
  }

  factory WarningOnNoValidatorDTO.fromJson(Map<String, dynamic> json) =>
      _$WarningOnNoValidatorDTOFromJson(json);
}

WarningOnNoValidatorDTO _$WarningOnNoValidatorDTOFromJson(
        Map<String, dynamic> json) =>
    WarningOnNoValidatorDTO()
      ..message = json['message'] as String?
      ..messageProvider = json['messageProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['messageProvider'] as Map<String, dynamic>)
      ..type = json['type'] as String?;
