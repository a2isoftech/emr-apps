import 'package:emr_one_forms_engine/core/models/dto/template/components/component.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/decode_validators.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/validator.dart';

class EmailComponentDTO extends TemplateComponentDTO {
  String? placeholder;
  DataProviderReference? placeholderProvider;
  List<ValidatorDTO>? validators;

  EmailComponentDTO(
    super.id,
    this.placeholder,
    this.placeholderProvider,
    this.validators,
  );

  factory EmailComponentDTO.fromJson(Map<String, dynamic> json) =>
      _$EmailComponentDTOFromJson(json);
}

EmailComponentDTO _$EmailComponentDTOFromJson(Map<String, dynamic> json) =>
    EmailComponentDTO(
        json['id'] as String,
        json['placeholder'] as String?,
        json['placeholderProvider'] == null
            ? null
            : DataProviderReference.fromJson(
                json['placeholderProvider'] as Map<String, dynamic>,
              ),
        json['validators'] == null
            ? null
            : decodeTemplateValidators(json['validators']),
      )
      ..title = json['title'] as String?
      ..titleProvider = json['titleProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['titleProvider'] as Map<String, dynamic>,
            )
      ..defaultValue = json['defaultValue'] as String?
      ..defaultValueProvider = json['defaultValueProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['defaultValueProvider'] as Map<String, dynamic>,
            )
      ..isRequired = json['isRequired'] as bool?;
