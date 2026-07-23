import 'package:http/http.dart';

abstract class BaseService {
  BaseService({required this.httpClient});

  final BaseClient httpClient;
}
