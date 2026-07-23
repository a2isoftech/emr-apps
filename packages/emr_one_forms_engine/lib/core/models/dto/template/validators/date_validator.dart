import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';

class DateValidatorDTO extends ValidatorDTO {
  DateValidatorDTO() {
    message = 'Please enter a valid date';
    type = 'Date';
  }

  factory DateValidatorDTO.fromJson(Map<String, dynamic> json) =>
      _$DateValidatorDTOFromJson(json);
}

DateValidatorDTO _$DateValidatorDTOFromJson(Map<String, dynamic> json) =>
    DateValidatorDTO()
      ..message = json['message'] as String?
      ..messageProvider = json['messageProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['messageProvider'] as Map<String, dynamic>)
      ..type = json['type'] as String?;
