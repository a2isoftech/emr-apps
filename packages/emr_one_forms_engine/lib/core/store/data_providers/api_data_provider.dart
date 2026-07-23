import 'dart:async';

import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/services/services.dart';

import 'data_provider_bloc/data_provider_bloc.dart';
import 'data_provider_bloc/data_provider_keyed_value.dart';

class ApiRequestDataProvider extends FormDataKeyedProviderBloc {
  final String url;
  final String idKey;
  final String textKey;
  late final Map<String, String> defaultParameters;

  Map<String, String> _currentParameters = {};
  bool _isInitialized = false;

  IHttpService? __httpService;

  IHttpService get _httpService {
    __httpService ??= ServiceContainer().get<IHttpService>();
    return __httpService!;
  }

  ApiRequestDataProvider.forState(
      {required FormDataProviderState state,
      required this.url,
      this.idKey = 'id',
      this.textKey = 'text',
      Map<String, String>? defaultParameters})
      : super.forState(state) {
    this.defaultParameters = defaultParameters ?? {};
  }

  static FormDataProviderState generateState(String id) =>
      FormDataKeyedProviderBloc.generateState(id: id);

  // check if a new request is being made
  bool _isNewRequest(Map<String, String>? parameters) {
    var isNewRequest = false;

    if (!_isInitialized) {
      _isInitialized = true;
      isNewRequest = true;
    } else if (_currentParameters.isEmpty ||
        parameters == null ||
        parameters.isEmpty) {
      isNewRequest = _currentParameters.isNotEmpty ||
          (parameters != null && parameters.isNotEmpty);
    } else if (parameters.length != _currentParameters.length) {
      isNewRequest = true;
    } else {
      isNewRequest = _currentParameters.keys
          .any((k) => _currentParameters[k] != parameters[k]);
    }

    if (isNewRequest) {
      _currentParameters = parameters ?? {};
    }

    return isNewRequest;
  }

  String _getUrl() {
    // merge the parameters
    var params = defaultParameters.map((key, value) => MapEntry(key, value));
    for (var entry in _currentParameters.entries) {
      params[entry.key] = entry.value;
    }

    String query = '';
    if (params.isNotEmpty) {
      query = '?';
      for (var entry in params.entries) {
        query += '${entry.key}=${Uri.encodeComponent(entry.value)}&';
      }
      query = query.substring(0, query.length - 1);
    }

    return url + query;
  }

  ProviderKeyedValue? _mapJsonToObject(Map<String, dynamic>? jsonObject) {
    if (jsonObject == null || !jsonObject.containsKey(idKey)) {
      return null;
    }

    return ProviderKeyedValue(
        id: jsonObject[idKey],
        value: '${jsonObject[textKey] ?? ''}',
        properties: jsonObject);
  }

  Future<void> _makeRequest(Map<String, String>? parameters) async {
    // Need to make an listen to a new request
    final res = await _httpService.get(_getUrl(), (json) => json);

    if (!res.success) {
      throw Exception(res.errorMessage);
    }

    if (res.response is List<dynamic>) {
      final providedData = (res.response as List<dynamic>)
          .map((e) => _mapJsonToObject(e))
          .where((e) => e != null)
          .map((e) => e!)
          .toList();

      add(ValueListChanged(values: providedData));
    } else {
      final responseData = _mapJsonToObject(res.response);

      if (responseData != null) {
        add(KeyedValueChanged(value: responseData));
      }
    }
  }

  ProviderKeyedValue _mapToDataValue(
      ProviderKeyedValue datum, String? propertyName) {
    if (propertyName != null &&
        propertyName.isNotEmpty &&
        datum.properties != null) {
      return ProviderKeyedValue(
          id: datum.id, value: datum.properties![propertyName] ?? '');
    } else {
      return datum;
    }
  }

  @override
  StreamSubscription listenToValue(
      {required void Function(ProviderKeyedValue) onChange,
      DataProviderReference? reference}) {
    final sub = super.listenToValue(onChange: (p0) {
      onChange(_mapToDataValue(p0, reference?.dataValueId));
    });

    // don't need wait on this since listener will get called if request is made
    if (_isNewRequest(reference?.parameters)) {
      _makeRequest(reference?.parameters);
    }

    return sub;
  }

  @override
  StreamSubscription listenToValues(
      {required void Function(List<ProviderKeyedValue> p1) onChange,
      DataProviderReference? reference}) {
    final sub = super.listenToValues(onChange: (p0) {
      onChange(
          p0.map((e) => _mapToDataValue(e, reference?.dataValueId)).toList());
    });

    // don't need wait on this since listener will get called if request is made
    if (_isNewRequest(reference?.parameters)) {
      _makeRequest(reference?.parameters);
    }

    return sub;
  }
}
