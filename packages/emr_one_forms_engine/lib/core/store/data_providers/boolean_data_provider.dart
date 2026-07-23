import 'dart:async';

import './data_provider_bloc/data_provider_bloc.dart';

class BooleanValueDataProvider extends FormDataValueProviderBloc {
  static const bool _defaultValue = false;
  static const String _rawValueKey = 'raw-value';

  final dynamic equalTo;
  final int? lengthGreaterThan;
  final int? lengthOf;
  final int? lengthLessThan;

  dynamic _lastRawValue;
  bool _currValue = _defaultValue;
  late final bool Function(dynamic) _rawValueToBoolean;

  void _onRawValueChanged(dynamic rawValue) {
    if (rawValue != _lastRawValue) {
      bool booleanResult = false;
      _lastRawValue = rawValue;

      if (rawValue != null) {
        booleanResult = _rawValueToBoolean(rawValue);
      }

      if (_currValue != booleanResult) {
        add(ValueChanged(newValue: booleanResult.toString()));
        _currValue = booleanResult;
      }
    }
  }

  BooleanValueDataProvider.forState(FormDataProviderState state,
      {this.lengthGreaterThan,
      this.lengthOf,
      this.lengthLessThan,
      this.equalTo})
      : super.forState(state) {
    _rawValueToBoolean = _pickComparisonMethod();
    listen(_rawValueKey, _onRawValueChanged);
    _onRawValueChanged(state.properties[_rawValueKey]);
  }

  bool get boolValue => value != null && value == true.toString();

  StreamSubscription listenForBool(void Function(bool) onChange) {
    return listenToValue((v) => onChange(v == true.toString()));
  }

  static FormDataProviderState generateState(String id, String initialValue) =>
      FormDataValueProviderBloc.generateState(
          id: id,
          initialValue: _defaultValue.toString(),
          properties: {_rawValueKey: initialValue});

  bool Function(dynamic) _pickComparisonMethod() {
    if (lengthGreaterThan != null) {
      return (v) => v.length > lengthGreaterThan;
    }
    if (lengthOf != null) {
      return (v) => v.length == lengthOf;
    }
    if (lengthLessThan != null) {
      return (v) => v.length < lengthLessThan;
    }
    return (v) => v == equalTo;
  }
}
