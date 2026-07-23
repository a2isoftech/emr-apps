// Base JSON model for all Components
import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';

abstract class TemplateComponentDTO {
  String id;
  String? title;
  DataProviderReference? titleProvider;
  String? defaultValue;
  DataProviderReference? defaultValueProvider;
  bool? isRequired;
  bool? isSRRequired;
  DataProviderReference? visibilityProvider;
  DataProviderReference? dropdownDataProvider;
  DataProviderReference? mroDataProvider;

  TemplateComponentDTO(this.id);

  TemplateComponentDTO.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        titleProvider = json['titleProvider'] == null
            ? null
            : DataProviderReference.fromJson(json['titleProvider']),
        defaultValue = json['defaultValue'],
        defaultValueProvider = json['defaultValueProvider'] == null
            ? null
            : DataProviderReference.fromJson(json['defaultValueProvider']),
        isRequired = json['isRequired'],
        isSRRequired = json['isSRRequired'],
        visibilityProvider = json['visibilityProvider'] == null
            ? null
            : DataProviderReference.fromJson(json['visibilityProvider']),
        dropdownDataProvider = json['dropdownDataProvider'] == null
            ? null
            : DataProviderReference.fromJson(json['dropdownDataProvider']),
        mroDataProvider = json['mroDataProvider'] == null
            ? null
            : DataProviderReference.fromJson(json['mroDataProvider']);
}
