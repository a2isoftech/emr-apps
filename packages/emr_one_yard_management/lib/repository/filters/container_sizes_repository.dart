import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/containerSizes.graphql.dart';
import 'package:http/http.dart';

class ContainerSizesRepository {
  static Future<List<String>> fetchContainerSizes(
    BaseClient httpClient,
    AppConfig config,
  ) async {
    final response = await documentNodeQuerycontainerSizes.execute(
      httpClient,
      Query$containerSizes.fromJson,
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );
    if (response.hasErrors() || response.data == null) {
      return [];
    }
    if (response.data!.containerSizes == null) {
      return [];
    }
    return response.data!.containerSizes!.map((e) => e.toString()).toList();
  }
}
