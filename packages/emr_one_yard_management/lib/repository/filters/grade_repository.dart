import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/graphql/queries/gradeGroup.graphql.dart';
import 'package:emr_one_yard_management/graphql/queries/grades.graphql.dart';
import 'package:http/http.dart';

class GradeRepository {
  static Future<List<String>> fetchGrades(
    String searchTerm,
    BaseClient httpClient,
    AppConfig config,
  ) async {
    final response = await documentNodeQuerygrades.execute(
      httpClient,
      Query$grades.fromJson,
      variables: Variables$Query$grades(searchTerm: searchTerm),
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );

    if (response.hasErrors() || response.data == null) {
      return [];
    }
    return response.data!.grades!.map((e) => e.toString()).toList();
  }

  static Future<List<String>> fetchGradeGroup(
    String searchTerm,
    BaseClient httpClient,
    AppConfig config,
  ) async {
    final response = await documentNodeQuerygradeGroup.execute(
      httpClient,
      Query$gradeGroup.fromJson,
      variables: Variables$Query$gradeGroup(searchTerm: searchTerm),
      url: Uri.parse(config.yardManagementGraphqlUrl),
    );
    if (response.hasErrors() || response.data == null) {
      return [];
    }
    return response.data!.gradeGroup!.map((e) => e.toString()).toList();
  }
}
