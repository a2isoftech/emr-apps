// Base data model for all Data Providers

abstract class TemplateDataProviderDTO {
  String id;

  TemplateDataProviderDTO(this.id);

  TemplateDataProviderDTO.fromJson(Map<String, dynamic> json) : id = json['id'];
}

class DataProviderReference {
  final String id;
  final String? dataValueId;
  final Map<String, String> parameters;

  DataProviderReference(
      {required this.id, this.dataValueId, this.parameters = const {}});

  DataProviderReference.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        dataValueId = json['dataValueId'],
        parameters = json['parameters'] == null
            ? const {}
            : (json['parameters'] as Map<String, dynamic>)
                .map<String, String>((k, v) => MapEntry(k, v));
}
