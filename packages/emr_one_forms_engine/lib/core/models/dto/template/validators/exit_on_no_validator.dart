import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/validator.dart';

class ExitOnNoValidatorDTO extends ValidatorDTO {
  ExitOnNoValidatorDTO() {
    message =
        'Do not proceed with this task if you do not have a suitable risk assessment in place';
    type = 'ExitOnNo';
  }

  factory ExitOnNoValidatorDTO.fromJson(Map<String, dynamic> json) =>
      _$ExitOnNoValidatorDTOFromJson(json);
}

ExitOnNoValidatorDTO _$ExitOnNoValidatorDTOFromJson(
        Map<String, dynamic> json) =>
    ExitOnNoValidatorDTO()
      ..message = json['message'] as String?
      ..messageProvider = json['messageProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['messageProvider'] as Map<String, dynamic>)
      ..type = json['type'] as String?;
