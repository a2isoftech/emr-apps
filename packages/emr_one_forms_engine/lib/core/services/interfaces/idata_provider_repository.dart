import 'package:emr_one_forms_engine/core/services/interfaces/idisposable.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';

class FormDataProviderRepoEntry {
  FormDataProviderState initialState;
  final FormDataProviderBloc Function(FormDataProviderState) createProvider;
  FormDataProviderBloc? dataProvider;

  FormDataProviderRepoEntry(
      {required this.initialState, required this.createProvider});
}

abstract class IFormDataProviderRepository extends IAsyncDisposable {
  void register(List<FormDataProviderRepoEntry> entries);

  void initRegistrations();

  FormDataProviderBloc? getProvider(String id);

  Iterable<FormDataProviderBloc> get providers;
}
