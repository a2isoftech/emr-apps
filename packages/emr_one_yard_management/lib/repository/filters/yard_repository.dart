import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/yards.graphql.dart';
import 'package:emr_one_yard_management/models/yard/yards_model.dart';
import 'package:http/http.dart';

class YardRepository {
  static Future<List<YardsModel>> fetchYards(
    String searchTerm,
    BaseClient httpClient,
    AppConfig config,
  ) async {
    final response = await documentNodeQueryyards.execute(
      httpClient,
      Query$yards.fromJson,
      variables: Variables$Query$yards(searchTerm: searchTerm),
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );
    if (response.hasErrors() || response.data == null) {
      return [];
    }
    if (response.data!.yards == null) {
      return [];
    }
    return response.data!.yards!
        .map((e) => YardsModel.fromJson(e!.toJson()))
        .toList();
  }
}
