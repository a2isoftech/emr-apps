import 'package:emr_one_forms_engine/core/models/asset_counter.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/components/component.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/decode_validators.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/validator.dart';

class TextInputComponentDTO extends TemplateComponentDTO {
  String? placeholder;
  DataProviderReference? placeholderProvider;
  bool? isMultiline;
  List<ValidatorDTO>? validators;
  AssetCounter? assetCounter;

  TextInputComponentDTO(
    super.id,
    this.isMultiline,
    this.placeholder,
    this.placeholderProvider,
    this.validators,
    this.assetCounter,
  );

  factory TextInputComponentDTO.fromJson(Map<String, dynamic> json) =>
      _$TextInputComponentDTOFromJson(json);
}

TextInputComponentDTO _$TextInputComponentDTOFromJson(
  Map<String, dynamic> json,
) =>
    TextInputComponentDTO(
        json['id'] as String,
        json['isMultiline'] as bool?,
        json['placeholder'] as String?,
        json['placeholderProvider'] == null
            ? null
            : DataProviderReference.fromJson(
                json['placeholderProvider'] as Map<String, dynamic>,
              ),
        json['validators'] == null
            ? null
            : decodeTemplateValidators(json['validators']),
        json['assetCounter'] == null
            ? null
            : AssetCounter.fromJson(
                json['assetCounter'] as Map<String, dynamic>,
              ),
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
      ..mroDataProvider = json['mroDataProvider'] == null
          ? null
          : DataProviderReference.fromJson(
              json['mroDataProvider'] as Map<String, dynamic>,
            );
