import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/heaps.graphql.dart';
import 'package:emr_one_yard_management/models/heap/heaps_model.dart';
import 'package:http/http.dart';

class HeapsRepository {
  static Future<List<HeapsModel>> fetchHeaps(
    List<String> depotNos,
    String searchTerm,
    BaseClient httpclient,
    AppConfig config,
  ) async {
    final response = await documentNodeQueryheaps.execute(
      httpclient,
      Query$heaps.fromJson,
      variables:
          Variables$Query$heaps(depotNos: depotNos, searchTerm: searchTerm),
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );
    if (response.hasErrors() || response.data == null) {
      return [];
    }

    return response.data!.heaps!
        .map((e) => HeapsModel.fromJson(e!.toJson()))
        .toList();
  }
}
