import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';

class RatingValidatorDTO extends ValidatorDTO {
  RatingValidatorDTO() {
    message = 'Please enter a valid rating';
    type = 'Rating';
  }

  factory RatingValidatorDTO.fromJson(Map<String, dynamic> json) =>
      _$RatingValidatorDTOFromJson(json);
}

RatingValidatorDTO _$RatingValidatorDTOFromJson(Map<String, dynamic> json) =>
    RatingValidatorDTO()
      ..message = json['message'] as String?
      ..messageProvider = json['messageProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['messageProvider'] as Map<String, dynamic>)
      ..type = json['type'] as String?;
