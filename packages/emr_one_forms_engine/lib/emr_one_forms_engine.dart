library;

import 'dart:async';
import 'dart:convert';

import 'package:emr_one_forms_engine/core/constants/constants.dart';
import 'package:emr_one_forms_engine/core/models/service/service_models.dart';

import 'core/models/dto/dto_models.dart';
import 'core/services/implementations/configuration.dart';
import 'core/services/services.dart';
import 'core/store/form_store.dart';
import 'core/store/iform_store.dart';
import 'views/form_render.dart';

export 'core/constants/constants.dart';
export 'core/models/dto/dto_models.dart';
export 'core/models/service/service_models.dart';
export 'core/services/implementations/configuration.dart';
export 'core/services/services.dart';

class FormsEngine {
  static FormsEngine? _instance;

  static bool get isInitialized => _instance != null;

  IFormStore? _store;

  IFormStore? get store => _store;

  FormsEngine._init();

  static ServiceContainer get services => ServiceContainer();

  late Completer<void> _initializationCompleter;

  Future<void> get initialize => _initializationCompleter.future;

  late Completer<void> _loadingCompleter;

  Future<void> get loadingTemplate => _loadingCompleter.future;

  bool _isPreview = false;
  bool _isDigitalSignatureRequired = false;
  bool _isAppBarRequired = false;
  List<String>? _emailsToNotify;

  bool get isPreview => _isPreview;
  bool get isDigitalSignatureRequired => _isDigitalSignatureRequired;
  bool get isAppBarRequired => _isAppBarRequired;
  List<String>? get emailsToNotify => _emailsToNotify;

  void Function(String name, Map<String, String> params)? _log;
  void Function(String name, Map<String, String> params)? get log => _log;

  factory FormsEngine() {
    if (_instance == null) {
      throw Exception(
        'Forms engine must be initialized using FormsEngine.fromConfig() first',
      );
    }
    return _instance!;
  }

  factory FormsEngine.fromConfig(FormConfiguration config) {
    _instance = FormsEngine._init();
    _instance!._initializationCompleter = Completer<void>();
    _instance!._initialize(config);
    return _instance!;
  }

  Future<void> _initialize(FormConfiguration config) async {
    ServiceContainer().clear();

    if (_store != null) {
      await _store!.dispose();
      _store = null;
    }

    _log = config.log;
    registerServices(config);

    if (config.onRegisterServices != null) {
      final future = config.onRegisterServices!(services);
      if (future != null) {
        await future;
      }
    }

    await ServiceContainer().initialize();

    _initializationCompleter.complete();
  }

  FormRenderer buildRenderer() {
    return const FormRenderer();
  }

  void dispose() {
    if (_store != null) {
      _store!.dispose();
      _store = null;
    }
    ServiceContainer().clear();
  }

  Future<void> loadTemplateFromJson(
    String templateJson,
    String scheduledItemId, {
    String? instanceJson,
    InstanceJobData? jobDetails,
    bool? isPreview,
    bool? isAppBarRequired,
    bool? isDigitalSignatureRequired,
    List<String>? emailsToNotify,
  }) async {
    _loadingCompleter = Completer();

    _isPreview = isPreview ?? false;
    _isAppBarRequired = isAppBarRequired ?? false;
    _isDigitalSignatureRequired = isDigitalSignatureRequired ?? false;
    _emailsToNotify = emailsToNotify;

    log?.call(FormsEngineTelemetry.kFormsEngine, {
      'message': 'Loading forms engine',
      'ScheduleItemId': scheduledItemId,
      'isPreview': '$isPreview',
      'isDigitalSignatureRequired': '$isDigitalSignatureRequired',
      'emailsToNotify': '${emailsToNotify?.join(', ')}',
    });

    await initialize;

    if (_store != null) {
      await _store!.dispose();
    }

    final formTemplate = FormTemplateDTO.fromJson(jsonDecode(templateJson));

    FormInstanceDTO? instance;
    if (instanceJson != null) {
      instance = FormInstanceDTO.fromJson(jsonDecode(instanceJson));
    }

    log?.call(FormsEngineTelemetry.kFormsEngine, {
      'message': 'Creating FormStore instance',
    });
    _store = await FormStore.create(
      formTemplate,
      scheduledItemId,
      instance: instance,
      jobInfo: jobDetails,
      isPreview: isPreview,
    );

    // create app state and push that into service container
    log?.call(FormsEngineTelemetry.kFormsEngine, {
      'message': 'Replacing formstore instance',
    });
    ServiceContainer().replaceSingleton<IFormStore>(_store!);

    _loadingCompleter.complete();
  }

  void setCurrentUser(String userName, String userUuid) {
    var config = ServiceContainer().tryGet<IFormConfiguration>();
    if (config is FormConfiguration) {
      config.userName = userName;
      config.userUuid = userUuid;
    }
  }

  void setInFormsVersion(String? appVersion) {
    var config = ServiceContainer().tryGet<IFormConfiguration>();
    if (config is FormConfiguration) {
      config.informsAppVersion = appVersion;
    }
  }
}
