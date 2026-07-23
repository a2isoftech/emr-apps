import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

extension BuildContextExtensions on BuildContext {
  static CoreApiService? _coreApiServiceInstance;

  CoreApiService get coreApi => _coreApiServiceInstance ??= CoreApiService(
        httpClient: read<CoreApiClient>(),
        appConfig: read<AppConfig>(),
      );
}
