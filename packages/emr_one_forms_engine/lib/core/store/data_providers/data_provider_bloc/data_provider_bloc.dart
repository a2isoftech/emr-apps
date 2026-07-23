import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_keyed_value.dart';
import 'package:equatable/equatable.dart';

part 'data_provider_bloc_event.dart';
part 'data_provider_bloc_state.dart';

abstract class FormDataProviderBloc
    extends Bloc<FormDataProviderEvent, FormDataProviderState> {
  FormDataProviderBloc(super.initialState) {
    on<PropertyChanged>(_onPropertyChanged);
    on<PropertiesChanged>(_onPropertiesChanged);
  }

  final Map<String, StreamController> _streamControllers = {};

  @override
  Future<void> close() async {
    List<Future<void>> closeCalls = [super.close()];
    for (var c in _streamControllers.values) {
      closeCalls.add(c.close());
    }
    await Future.wait(closeCalls);
    _streamControllers.clear();
  }

  StreamController _getControllerForKey(String key) {
    var controller = _streamControllers[key];
    if (controller == null) {
      controller = StreamController.broadcast();
      _streamControllers[key] = controller;
    }
    return controller;
  }

  dynamic getPropertyValue(String propertyName) =>
      state.properties[propertyName];

  StreamSubscription listen(
    String propertyName,
    void Function(dynamic) onChange,
  ) {
    return _getControllerForKey(propertyName).stream.listen((value) {
      onChange(value);
    });
  }

  void _onPropertyChanged(
    PropertyChanged event,
    Emitter<FormDataProviderState> emit,
  ) {
    if (_streamControllers.containsKey(event.propertyName) &&
        event.newValue != state.properties[event.propertyName]) {
      _streamControllers[event.propertyName]!.add(event.newValue);
    }

    emit(state.copyWith({event.propertyName: event.newValue}));
  }

  void _onPropertiesChanged(
    PropertiesChanged event,
    Emitter<FormDataProviderState> emit,
  ) {
    for (var prop in event.properties.entries) {
      if (_streamControllers.containsKey(prop.key) &&
          prop.value != state.properties[prop.key]) {
        _streamControllers[prop.key]!.add(prop.value);
      }
    }

    emit(state.copyWith(event.properties));
  }
}

abstract class FormDataValueProviderBloc extends FormDataProviderBloc {
  static const String _valueKey = FormDataProviderState.valueKey;

  FormDataValueProviderBloc({
    required String id,
    String? initialValue,
    Map<String, dynamic>? properties,
  }) : super(
         generateState(
           id: id,
           initialValue: initialValue,
           properties: properties,
         ),
       ) {
    _initEventHandlers();
  }

  static FormDataProviderState generateState({
    required String id,
    String? initialValue,
    Map<String, dynamic>? properties,
  }) => FormDataProviderState(
    id: id,
    properties: {_valueKey: initialValue, ...(properties ?? {})},
  );

  FormDataValueProviderBloc.forState(super.state) {
    _initEventHandlers();
  }

  void _initEventHandlers() {
    on<ValueChanged>(_onValueChanged);
  }

  String? get value => state.properties[_valueKey];

  StreamSubscription listenToValue(void Function(String) onChange) {
    return listen(_valueKey, (v) => onChange(v));
  }

  void _onValueChanged(
    ValueChanged event,
    Emitter<FormDataProviderState> emit,
  ) {
    super._onPropertyChanged(
      PropertyChanged(propertyName: _valueKey, newValue: event.newValue),
      emit,
    );
  }
}

abstract class FormDataKeyedProviderBloc extends FormDataProviderBloc {
  static const String _valueKey = FormDataProviderState.valueKey;

  static FormDataProviderState generateState({
    required String id,
    ProviderKeyedValue? initialValue,
    List<ProviderKeyedValue>? initialValues,
  }) => FormDataProviderState(
    id: id,
    properties: {
      _valueKey: initialValue != null
          ? [initialValue]
          : initialValues ?? <ProviderKeyedValue>[],
    },
  );

  FormDataKeyedProviderBloc({
    required String id,
    ProviderKeyedValue? initialValue,
    List<ProviderKeyedValue>? initialValues,
  }) : super(
         generateState(
           id: id,
           initialValue: initialValue,
           initialValues: initialValues,
         ),
       ) {
    _initEventCallbacks();
  }

  FormDataKeyedProviderBloc.forState(super.state) {
    _initEventCallbacks();
  }

  void _initEventCallbacks() {
    on<ValueListChanged>(_onValueListChanged);
    on<KeyedValueChanged>(_onKeyedValueChanged);
  }

  StreamSubscription listenToValue({
    required void Function(ProviderKeyedValue) onChange,
    DataProviderReference? reference,
  }) {
    return listen(
      _valueKey,
      (v) => onChange(
        (v as List<ProviderKeyedValue>)
            .where((e) => reference == null || reference.dataValueId == e.id)
            .first,
      ),
    );
  }

  StreamSubscription listenToValues({
    required void Function(List<ProviderKeyedValue>) onChange,
    DataProviderReference? reference,
  }) {
    return listen(_valueKey, (v) => onChange(v));
  }

  ProviderKeyedValue? getValue({DataProviderReference? reference}) {
    Iterable<ProviderKeyedValue> list = state.properties[_valueKey];
    if (reference != null && list.isNotEmpty) {
      list = list.where((e) => e.id == reference.dataValueId);
    }

    if (list.isEmpty) {
      return null;
    }

    return list.first;
  }

  List<ProviderKeyedValue> get values => state.properties[_valueKey];

  _onValueListChanged(
    ValueListChanged event,
    Emitter<FormDataProviderState> emit,
  ) {
    super._onPropertyChanged(
      PropertyChanged(propertyName: _valueKey, newValue: event.values),
      emit,
    );
  }

  _onKeyedValueChanged(
    KeyedValueChanged event,
    Emitter<FormDataProviderState> emit,
  ) {
    super._onPropertyChanged(
      PropertyChanged(propertyName: _valueKey, newValue: [event.value]),
      emit,
    );
  }
}
