import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/lifecycleStatus.graphql.dart';
import 'package:http/http.dart';

class LifecycleStatusRepository {
  static Future<List<String>> fetchLifecycleStatuses(
    BaseClient httpClient,
    AppConfig config,
  ) async {
    final response = await documentNodeQuerylifecycleStatus.execute(
      httpClient,
      Query$lifecycleStatus.fromJson,
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );
    if (response.hasErrors() || response.data == null) {
      return [];
    }
    return response.data!.lifecycleStatus!.map((e) => e.toString()).toList();
  }
}
