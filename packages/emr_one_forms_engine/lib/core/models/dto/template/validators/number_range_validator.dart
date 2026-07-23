import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';

class NumberRangeValidatorDTO extends ValidatorDTO {
  late dynamic minValue;
  late dynamic maxValue;
  late String? name;

  NumberRangeValidatorDTO() {
    message = 'Please enter a valid number between 0 and 100';
    type = 'NumberRange';
  }

  factory NumberRangeValidatorDTO.fromJson(Map<String, dynamic> json) =>
      _$NumberRangeValidatorDTOFromJson(json);
}

NumberRangeValidatorDTO _$NumberRangeValidatorDTOFromJson(
        Map<String, dynamic> json) =>
    NumberRangeValidatorDTO()
      ..message = json['message'] as String?
      ..messageProvider = json['messageProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['messageProvider'] as Map<String, dynamic>)
      ..type = json['type'] as String?
      ..name = json['name'] as String?
      ..minValue = json['minValue'] as dynamic
      ..maxValue = json['maxValue'] as dynamic;
