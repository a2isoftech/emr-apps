import './data_provider_bloc/data_provider_bloc.dart';
import 'data_provider_bloc/data_provider_keyed_value.dart';

class FormValuesDataProvider extends FormDataKeyedProviderBloc {
  FormValuesDataProvider.forState(super.state) : super.forState();

  static FormDataProviderState generateState(
    String id,
    List<ProviderKeyedValue> values,
  ) => FormDataKeyedProviderBloc.generateState(id: id, initialValues: values);
}
