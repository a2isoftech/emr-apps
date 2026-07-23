import 'package:emr_one_forms_engine/core/models/dto/template/components/component.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/decode_validators.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/validator.dart';

class DatePickerComponentDTO extends TemplateComponentDTO {
  String? placeholder;
  DataProviderReference? placeholderProvider;
  List<ValidatorDTO>? validators;

  DatePickerComponentDTO(
    super.id,
    this.placeholder,
    this.placeholderProvider,
    this.validators,
  );

  factory DatePickerComponentDTO.fromJson(Map<String, dynamic> json) =>
      _$DatePickerComponentDTOFromJson(json);
}

DatePickerComponentDTO _$DatePickerComponentDTOFromJson(
  Map<String, dynamic> json,
) =>
    DatePickerComponentDTO(
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
