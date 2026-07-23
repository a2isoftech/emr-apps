import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/allocationFilters.graphql.dart';
import 'package:emr_one_yard_management/models/filter/filter_model.dart';
import 'package:http/http.dart';

class AllocationFiltersRepository {
  static Future<List<FilterModel>> fetchAllocationFilters(
    BaseClient httpClient,
    AppConfig config,
  ) async {
    final response = await documentNodeQueryallocationFilters.execute(
      httpClient,
      Query$allocationFilters.fromJson,
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );

    if (response.hasErrors() || response.data == null) {
      return [];
    }
    if (response.data!.allocationFilters == null) {
      return [];
    }
    return response.data!.allocationFilters!
        .map((e) => FilterModel.fromJson(e!.toJson()))
        .toList();
  }
}
