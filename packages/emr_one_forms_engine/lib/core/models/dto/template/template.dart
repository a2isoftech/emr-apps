// Root level data model for the form template

import 'components/component.dart';
import 'components/decode_components.dart';
import 'data_providers/data_provider.dart';
import 'data_providers/decode_providers.dart';
import 'section.dart';

class FormTemplateDTO {
  final int id;
  final int version;
  final String uuid;
  final String title;
  final List<TemplateComponentDTO> components;
  final List<TemplateSectionDTO> sections;
  final List<TemplateDataProviderDTO> dataProviders;

  FormTemplateDTO.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? 0,
        version = json['version'] ?? 0,
        uuid = json['uuid'] ?? '',
        title = json['title'],
        sections = (json['layout'] as Iterable<dynamic>?)
                ?.map((e) => TemplateSectionDTO.fromJson(e))
                .toList() ??
            [],
        components = json['components'] == null
            ? []
            : decodeTemplateComponents(json['components']),
        dataProviders = json['dataProviders'] == null
            ? []
            : decodeDataProviders(json['dataProviders']);
}
