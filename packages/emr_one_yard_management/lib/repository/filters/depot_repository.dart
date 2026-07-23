import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/depots.graphql.dart';
import 'package:emr_one_yard_management/models/depot/depots_model.dart';
import 'package:http/http.dart';

class DepotRepository {
  static Future<List<DepotsModel>> fetchDepots(
    String searchTerm,
    BaseClient httpClient,
    AppConfig config,
  ) async {
    final response = await documentNodeQuerydepots.execute(
      httpClient,
      Query$depots.fromJson,
      variables: Variables$Query$depots(searchTerm: searchTerm),
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );

    if (response.hasErrors() || response.data == null) {
      return [];
    }
    if (response.data!.depots == null) {
      return [];
    }

    return response.data!.depots!
        .map((e) => DepotsModel.fromJson(e!.toJson()))
        .toList();
  }
}
