import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';

class GraphQLQueryDataProviderDTO extends TemplateDataProviderDTO {
  final String? url;
  final String? query;
  final String? objectName;

  final String? idKey;
  final String? valueKey;

  final Map<String, dynamic>? defaultVariables;
  final DataProviderReference? defaultVariablesProvider;

  GraphQLQueryDataProviderDTO(
    super.id, {
    this.url,
    this.query,
    this.defaultVariables,
    this.defaultVariablesProvider,
    this.objectName,
    this.idKey,
    this.valueKey,
  });

  GraphQLQueryDataProviderDTO.fromJson(super.json)
    : url = json['url'],
      query = json['query'],
      defaultVariables = json['defaultVariables'],
      defaultVariablesProvider = json['defaultVariablesProvider'] == null
          ? null
          : DataProviderReference.fromJson(json['defaultVariablesProvider']),
      objectName = json['objectName'],
      idKey = json['idKey'],
      valueKey = json['valueKey'],
      super.fromJson();
}
