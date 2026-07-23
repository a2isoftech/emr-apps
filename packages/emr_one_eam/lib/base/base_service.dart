import 'package:emr_one_core/emr_one_core.dart';

abstract class BaseService {
  BaseService({required this.httpClient});

  final ResilientHttpClient httpClient;
}
