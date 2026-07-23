import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/graphql_query_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/enums.dart';

import 'api_request_provider.dart';
import 'boolean_provider.dart';
import 'data_provider.dart';
import 'value_data_provider.dart';

List<TemplateDataProviderDTO> decodeDataProviders(
    Iterable<dynamic> jsonObjects) {
  return jsonObjects.map((e) => decodeDataProvider(e)).toList(growable: false);
}

TemplateDataProviderDTO decodeDataProvider(dynamic jsonObject) {
  switch (jsonObject['type']) {
    case TemplateDataProviderTypes.apiRequest:
      return ApiRequestDataProviderDTO.fromJson(jsonObject);
    case TemplateDataProviderTypes.values:
      return ValuesDataProviderDTO.fromJson(jsonObject);
    case TemplateDataProviderTypes.boolean:
      return BooleanDataProviderDTO.fromJson(jsonObject);
    case TemplateDataProviderTypes.graphQLQuery:
      return GraphQLQueryDataProviderDTO.fromJson(jsonObject);
    default:
      throw Exception(
          'Template Data Provider type "${jsonObject['type']}" is not supported');
  }
}
