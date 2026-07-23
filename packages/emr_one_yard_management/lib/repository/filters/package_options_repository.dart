import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/packageOptions.graphql.dart';
import 'package:http/http.dart';

class PackageOptionsRepository {
  static Future<List<String>> fetchPackageOptions(
    BaseClient httpClient,
    AppConfig config,
  ) async {
    final response = await documentNodeQuerypackageOptions.execute(
      httpClient,
      Query$packageOptions.fromJson,
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );
    if (response.hasErrors() || response.data == null) {
      return [];
    }
    return response.data!.packageOptions!.map((e) => e.toString()).toList();
  }
}
