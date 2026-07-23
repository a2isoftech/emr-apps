import 'data_provider.dart';

class ProvidedValue {
  String? value;
  Map<String, String> properties = {};

  ProvidedValue(this.value);

  ProvidedValue.fromJson(Map<String, dynamic> json)
    : value = json['value'],
      properties = json['properties'] ?? {};
}

class ValuesDataProviderDTO extends TemplateDataProviderDTO {
  Map<String, ProvidedValue> values;

  ValuesDataProviderDTO(super.id, this.values);

  ValuesDataProviderDTO.fromJson(super.json)
    : values = {
        for (var e in json['values'] as Iterable<dynamic>)
          e['id']: ProvidedValue.fromJson(e),
      },
      super.fromJson();
}
