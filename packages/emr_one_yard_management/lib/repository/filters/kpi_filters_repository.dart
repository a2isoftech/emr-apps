import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/kPIFilters.graphql.dart';
import 'package:emr_one_yard_management/models/filter/filter_model.dart';
import 'package:http/http.dart';

class KpiFiltersRepository {
  static Future<List<FilterModel>> fetchKPIFIlters(
    BaseClient httpClient,
    AppConfig config,
  ) async {
    final response = await documentNodeQuerykPIFilters.execute(
      httpClient,
      Query$kPIFilters.fromJson,
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );
    if (response.hasErrors() || response.data == null) {
      return [];
    }
    if (response.data!.kPIFilters == null) {
      return [];
    }
    return response.data!.kPIFilters!
        .map((e) => FilterModel.fromJson(e!.toJson()))
        .toList();
  }
}
