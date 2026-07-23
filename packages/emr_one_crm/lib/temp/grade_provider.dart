import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/models.dart';

class GradeProvider extends EmrUtilSuggestionBaseApiProvider<Grade> {
  GradeProvider(this.grades);
  final List<Grade> grades;

  @override
  Future<List<Grade>> getSuggestions(String query) async {
    final pattern = RegExp(query, caseSensitive: false);

    return grades
        .where(
          (element) =>
              element.description.contains(pattern) ||
              element.gradeCode.contains(pattern),
        )
        .toList();
  }
}
