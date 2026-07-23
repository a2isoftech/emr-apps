import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/parties.graphql.dart';
import 'package:emr_one_yard_management/models/parties/parties_model.dart';
import 'package:http/http.dart';

class PartiesRepository {
  static Future<List<PartiesModel>> fetchParties(
    String searchTerm,
    BaseClient httpClient,
    AppConfig config,
  ) async {
    final response = await documentNodeQueryparties.execute(
      httpClient,
      Query$parties.fromJson,
      variables: Variables$Query$parties(searchTerm: searchTerm),
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );
    if (response.hasErrors() || response.data == null) {
      return [];
    }
    if (response.data!.parties == null) {
      return [];
    }
    return response.data!.parties!
        .map((e) => PartiesModel.fromJson(e!.toJson()))
        .toList();
  }
}
