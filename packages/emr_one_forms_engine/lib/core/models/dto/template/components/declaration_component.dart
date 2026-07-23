import 'package:emr_one_forms_engine/core/models/dto/template/components/component.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';

class DeclarationComponentDTO extends TemplateComponentDTO {
  final String? message;

  DeclarationComponentDTO(super.id, this.message);

  factory DeclarationComponentDTO.fromJson(Map<String, dynamic> json) =>
      _$DeclarationComponentDTOFromJson(json);
}

DeclarationComponentDTO _$DeclarationComponentDTOFromJson(
  Map<String, dynamic> json,
) => DeclarationComponentDTO(json['id'] as String, json['message'] as String?)
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
