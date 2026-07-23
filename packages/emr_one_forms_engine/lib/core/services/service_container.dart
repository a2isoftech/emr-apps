import 'package:emr_one_forms_engine/core/services/interfaces/iinitializable.dart';

import 'interfaces/idisposable.dart';

class _ServiceDescription<T> {
  T? instance;
  T Function()? factory;
  bool isSingleton;

  _ServiceDescription(this.isSingleton, {this.instance, this.factory});
}

class ServiceContainer {
  static final ServiceContainer _instance = ServiceContainer._init();

  factory ServiceContainer() => _instance;

  ServiceContainer._init();

  final Map<Type, List<_ServiceDescription>> _container = {};

  void _registerService(Type t, _ServiceDescription description) {
    var services = _container[t];
    if (services == null) {
      services = [description];
      _container[t] = services;
    } else {
      services.add(description);
    }
  }

  void registerSingleton<T>(T instance) {
    _registerService(T, _ServiceDescription(true, instance: instance));
  }

  void registerSingletonLazy<T>(T Function() lazyLoader) {
    _registerService(T, _ServiceDescription(true, factory: lazyLoader));
  }

  void registerTransient<T>(T Function() factory) {
    _registerService(T, _ServiceDescription(false, factory: factory));
  }

  void replaceSingleton<T>(T instance) {
    _container[T] = [_ServiceDescription(true, instance: instance)];
  }

  List<_ServiceDescription> _getServicesForType<T>() {
    final services = _container[T];
    if (services == null || services.isEmpty) {
      throw Exception('No service for type ${T.toString()} is registered');
    }
    return services;
  }

  T _getService<T>(_ServiceDescription desc) {
    if (desc.isSingleton) {
      if (desc.instance == null && desc.factory != null) {
        desc.instance = desc.factory!();
      }
      return desc.instance;
    } else if (desc.factory != null) {
      return desc.factory!();
    }

    throw Exception('Invalid service registered for type ${T.toString()}');
  }

  T get<T>() {
    final services = _getServicesForType<T>();
    return _getService(services.last);
  }

  T? tryGet<T>() {
    final services = _getServicesForType<T>();
    return (services.isEmpty) ? null : _getService(services.last);
  }

  List<T> getAll<T>() {
    final services = _getServicesForType<T>();
    return services.map<T>((e) => _getService(e)).toList();
  }

  /// Removes all registered services from the container
  void clear() {
    for (var servicesForType in _container.values) {
      for (var service in servicesForType) {
        if (service.instance != null) {
          if (service.instance is IDisposable) {
            service.instance.dispose();
          } else if (service.instance is IAsyncDisposable) {
            service.instance.dispose();
          }
        }
      }
    }

    _container.clear();
    _initializer = null;
  }

  Future<void>? _initializer;

  Future<void> initialize() {
    _initializer ??= _initialize();
    return _initializer!;
  }

  Future<void> _initialize() async {
    for (var servicesForType in _container.values) {
      for (var serviceDesc in servicesForType) {
        final service = _getService(serviceDesc);
        if (service is IInitializable) {
          await service.initialize();
        }
      }
    }
  }
}
