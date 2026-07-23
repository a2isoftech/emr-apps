import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/salesGrade.graphql.dart';
import 'package:http/http.dart';

class SalesGradeRepository {
  static Future<List<String>> fetchSalesGrade(
    String searchTerm,
    BaseClient httpClient,
    AppConfig config,
  ) async {
    final response = await documentNodeQuerysalesGrade.execute(
      httpClient,
      Query$salesGrade.fromJson,
      variables: Variables$Query$salesGrade(searchTerm: searchTerm),
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );
    if (response.hasErrors() || response.data == null) {
      return [];
    }
    return response.data!.salesGrade!.map((e) => e.toString()).toList();
  }
}
