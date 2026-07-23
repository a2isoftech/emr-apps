import 'package:emr_one_forms_engine/core/services/interfaces/idata_provider_repository.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';

class _FindDependencyResult {
  final bool hasDependency;

  bool isDependencyLoaded = false;
  dynamic initialValue;
  FormDataProviderBloc? dataProvider;
  String? propertyName;

  _FindDependencyResult({required this.hasDependency});
}

class FormDataProviderRepository implements IFormDataProviderRepository {
  final Map<String, FormDataProviderRepoEntry> _dataProviders = {};

  FormDataProviderRepository();

  @override
  FormDataProviderBloc? getProvider(String id) {
    return _dataProviders[id]?.dataProvider;
  }

  @override
  Iterable<FormDataProviderBloc> get providers => _dataProviders.values
      .where((e) => e.dataProvider != null)
      .map((e) => e.dataProvider!);

  @override
  void register(List<FormDataProviderRepoEntry> entries) {
    for (var e in entries) {
      _dataProviders[e.initialState.id] = e;
    }
  }

  @override
  void initRegistrations() {
    var lastCount = 0;

    while (true) {
      final toRegister =
          _dataProviders.values.where((e) => e.dataProvider == null);
      if (toRegister.isEmpty) {
        return;
      }

      if (lastCount == toRegister.length) {
        throw Exception(
            'There are missing/unresolvable dependencies for ids:\n${toRegister.map((e) => e.initialState.id).join('\n')}');
      }

      lastCount = toRegister.length;

      for (final entry in toRegister) {
        var missingDependencies = false;
        Map<String, dynamic> modified = {};

        for (final prop in entry.initialState.properties.entries) {
          final findRes = _findDependency(prop.value);
          if (findRes.hasDependency) {
            if (findRes.isDependencyLoaded) {
              modified[prop.key] = findRes.initialValue;
              findRes.dataProvider!.listen(findRes.propertyName!, (v) {
                entry.dataProvider!
                    .add(PropertyChanged(propertyName: prop.key, newValue: v));
              });
            } else {
              missingDependencies = true;
            }
          }
        }

        if (modified.isNotEmpty) {
          entry.initialState = entry.initialState.copyWith(modified);
        }

        if (missingDependencies) {
          continue;
        }

        entry.dataProvider = entry.createProvider(entry.initialState);
      }
    }
  }

  @override
  Future<void> dispose() async {
    final List<Future<void>> disposeCalls = [];
    for (final entry in _dataProviders.values) {
      if (entry.dataProvider != null) {
        disposeCalls.add(entry.dataProvider!.close());
      }
    }
    await Future.wait(disposeCalls);
    _dataProviders.clear();
  }

  static final _dependencyNameRegex =
      RegExp(r"^\$[a-zA-Z.]+[0-9a-zA-Z]+?(\.[A-Za-z]+[a-zA-Z0-9]+?)?");

  _FindDependencyResult _findDependency(dynamic value) {
    if (value is! String || !_dependencyNameRegex.hasMatch(value)) {
      return _FindDependencyResult(hasDependency: false);
    }

    final splitName = value.split('.');

    final providerId = splitName.first.substring(1);
    final entry = _dataProviders[providerId];
    final result = _FindDependencyResult(hasDependency: true);

    result.dataProvider = entry?.dataProvider;
    result.isDependencyLoaded = result.dataProvider != null;

    if (result.isDependencyLoaded) {
      result.propertyName = splitName.skip(1).join('.');

      if (result.propertyName!.isEmpty) {
        result.propertyName = FormDataProviderState.valueKey;
      }

      result.initialValue = entry!.initialState.properties[result.propertyName];
    }

    return result;
  }
}
