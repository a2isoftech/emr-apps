import 'package:emr_one_forms_engine/core/services/implementations/user_preference_repository.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/iuser_preference_repository.dart';

import 'implementations/configuration.dart';
import 'implementations/connectivity.dart';
import 'implementations/data_provider_repository.dart';
import 'implementations/hive_database_manager.dart';
import 'implementations/http_service.dart';
import 'implementations/media_app_service.dart';
import 'implementations/save_form_app_service.dart';
import 'implementations/unique_id_generator.dart';
import 'interfaces/iconfiguration.dart';
import 'interfaces/iconnectivity.dart';
import 'interfaces/idata_provider_repository.dart';
import 'interfaces/idatabase_manager.dart';
import 'interfaces/ihttp_service.dart';
import 'interfaces/imedia_service.dart';
import 'interfaces/isave_form_service.dart';
import 'interfaces/iunique_id_generator.dart';
import 'service_container.dart';

export 'interfaces/iauthorization_provider.dart';
export 'interfaces/iconfiguration.dart';
export 'interfaces/iconnectivity.dart';
export 'interfaces/idata_provider_repository.dart';
export 'interfaces/idatabase_manager.dart';
export 'interfaces/ihttp_service.dart';
export 'interfaces/imedia_service.dart';
export 'interfaces/isave_form_service.dart';
export 'interfaces/iunique_id_generator.dart';
export 'service_container.dart';

void registerServices(FormConfiguration config) {
  ServiceContainer().registerSingleton<IFormConfiguration>(config);
  ServiceContainer().registerSingletonLazy<IHttpService>(() => HttpService(
      config.formsApiUrl ?? 'http://localhost:8080/',
      clientFactory: config.clientFactory));
  ServiceContainer().registerSingleton<IUniqueIdGenerator>(UUIDGenerator());
  ServiceContainer().registerSingleton<IFormDataProviderRepository>(
      FormDataProviderRepository());
  ServiceContainer().registerSingleton(config.authProvider);
  ServiceContainer().registerSingleton<IUserPreferencesRepository>(
      UserPreferencesRepository());

  ServiceContainer()
      .registerSingletonLazy<IMediaService>(() => MediaAppService());
  ServiceContainer().registerSingletonLazy<ISaveFormInstanceService>(
      () => SaveFormInstanceAppService());
  ServiceContainer().registerSingleton<IDatabaseManager>(HiveDatabaseManager());
  ServiceContainer().registerSingleton<IConnectivity>(Connectivity());
}
