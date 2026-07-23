import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/decode_validators.dart';

class DropdownComponentDTO extends TemplateComponentDTO {
  String? placeholder;
  DataProviderReference? placeholderProvider;
  List<ValidatorDTO>? validators;
  String? hintText;
  String? selectedDropdownValue;

  DropdownComponentDTO(
    super.id,
    this.placeholder,
    this.placeholderProvider,
    this.validators,
    this.hintText,
    this.selectedDropdownValue,
  );

  factory DropdownComponentDTO.fromJson(Map<String, dynamic> json) =>
      _$DropdownComponentDTOFromJson(json);
}

DropdownComponentDTO _$DropdownComponentDTOFromJson(
  Map<String, dynamic> json,
) =>
    DropdownComponentDTO(
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
        json['hintText'] as String?,
        json['selectedDropdownValue'] as String?,
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
      ..isRequired = json['isRequired'] as bool?
      ..dropdownDataProvider = json['dropdownDataProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['dropdownDataProvider'] as Map<String, dynamic>,
            );
