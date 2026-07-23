part of 'data_provider_bloc.dart';

class FormDataProviderState extends Equatable {
  static const String valueKey = '__value';

  final String id;
  late final Map<String, dynamic> properties;

  FormDataProviderState({required this.id, Map<String, dynamic>? properties}) {
    this.properties = properties ?? {};
  }

  @override
  List<Object?> get props => [...properties.values];

  FormDataProviderState copyWith(Map<String, dynamic> properties) {
    return FormDataProviderState(
        id: id, properties: {...this.properties, ...properties});
  }
}
