part of 'data_provider_bloc.dart';

abstract class FormDataProviderEvent extends Equatable {
  const FormDataProviderEvent();

  @override
  List<Object?> get props => [];
}

class ValueChanged extends FormDataProviderEvent {
  final String newValue;

  const ValueChanged({required this.newValue});

  @override
  List<Object?> get props => [newValue];
}

class PropertyChanged extends FormDataProviderEvent {
  final String propertyName;
  final dynamic newValue;

  const PropertyChanged({required this.propertyName, this.newValue});

  @override
  List<Object?> get props => [propertyName, newValue];
}

class PropertiesChanged extends FormDataProviderEvent {
  final Map<String, dynamic> properties;

  const PropertiesChanged(this.properties);

  @override
  List<Object?> get props => [...properties.keys, ...properties.values];
}

class ValueListChanged extends FormDataProviderEvent {
  final List<ProviderKeyedValue> values;

  const ValueListChanged({required this.values});

  @override
  List<Object?> get props => values.cast<Object>();
}

class KeyedValueChanged extends FormDataProviderEvent {
  final ProviderKeyedValue value;

  const KeyedValueChanged({required this.value});

  @override
  List<Object?> get props => [value];
}
