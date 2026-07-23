import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';

abstract class BaseService {
  BaseService({
    required this.resilientClient,
    required this.appConfig,
  });

  final ResilientHttpClient resilientClient;
  final AppConfig appConfig;
}
