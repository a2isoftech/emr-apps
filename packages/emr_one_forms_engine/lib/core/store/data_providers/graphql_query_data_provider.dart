import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
// import 'package:emr_one_forms_engine/core/services/services.dart';
// import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_keyed_value.dart';

import 'data_provider_bloc/data_provider_bloc.dart';
// import 'value_data_provider.dart';

class GraphQLQueryDataProvider extends FormDataKeyedProviderBloc {
  final GraphQLQueryDataProviderDTO settings;

  // FormValuesDataProvider? __lazyLoadedDefaultVariableProvider;

  // FormValuesDataProvider? get _defaultVariableProvider {
  //   if (settings.defaultVariablesProvider != null) {
  //     __lazyLoadedDefaultVariableProvider ??= ServiceContainer()
  //             .get<IFormDataProviderRepository>()
  //             .getProvider(settings.defaultVariablesProvider!.id)
  //         as FormValuesDataProvider;
  //   }
  //   return __lazyLoadedDefaultVariableProvider;
  // }

  GraphQLQueryDataProvider.forState(
      {required FormDataProviderState state, required this.settings})
      : super.forState(state);

  static FormDataProviderState generateState(String id) =>
      FormDataKeyedProviderBloc.generateState(id: id);

  // ProviderKeyedValue? _mapObjectToValue(Map<String, dynamic>? json) {
  //   const defaultIdKey = 'id';
  //   const defaultValueKey = 'value';

  //   if (json == null || !json.containsKey(settings.idKey ?? defaultIdKey)) {
  //     return null;
  //   }

  //   final id = json[settings.idKey ?? defaultIdKey];
  //   final value = json[settings.valueKey ?? defaultValueKey];

  //   return ProviderKeyedValue(
  //       id: '$id', value: '${(value ?? '')}', properties: json);
  // }
}
