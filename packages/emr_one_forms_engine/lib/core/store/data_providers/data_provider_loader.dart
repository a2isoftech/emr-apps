import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/services/services.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/graphql_query_data_provider.dart';

import 'api_data_provider.dart';
import 'boolean_data_provider.dart';
import 'data_provider_bloc/data_provider_keyed_value.dart';
import 'value_data_provider.dart';

List<FormDataProviderRepoEntry> loadDataProviders(
    Iterable<TemplateDataProviderDTO> providers) {
  return providers.map((e) {
    if (e is ApiRequestDataProviderDTO) {
      return FormDataProviderRepoEntry(
          initialState: ApiRequestDataProvider.generateState(e.id),
          createProvider: (state) => ApiRequestDataProvider.forState(
              state: state,
              url: e.url,
              idKey: e.resultKey,
              textKey: e.resultText,
              defaultParameters: e.defaultParameters));
    } else if (e is ValuesDataProviderDTO) {
      return FormDataProviderRepoEntry(
          initialState: FormValuesDataProvider.generateState(
              e.id,
              e.values.entries
                  .map((v) => ProviderKeyedValue(
                      id: v.key,
                      value: v.value.value ?? '',
                      properties: v.value.properties))
                  .toList()),
          createProvider: (state) => FormValuesDataProvider.forState(state));
    } else if (e is BooleanDataProviderDTO) {
      return FormDataProviderRepoEntry(
          initialState: BooleanValueDataProvider.generateState(e.id, e.value),
          createProvider: (state) => BooleanValueDataProvider.forState(state,
              lengthGreaterThan: e.lengthGreaterThan,
              lengthOf: e.lengthOf,
              equalTo: e.equalTo,
              lengthLessThan: e.lengthLessThan));
    } else if (e is GraphQLQueryDataProviderDTO) {
      return FormDataProviderRepoEntry(
          initialState: GraphQLQueryDataProvider.generateState(e.id),
          createProvider: (state) =>
              GraphQLQueryDataProvider.forState(state: state, settings: e));
    } else {
      throw Exception(
          'DTO object of type ${e.runtimeType.toString()} is not mapped to a FormDataProvider');
    }
  }).toList();
}
