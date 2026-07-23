import 'package:psnop/models/filter_response_models/active_grade_types_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/repository_utils.dart';

class GradeTypeRepository {
  static Future<List<ActiveGradeTypesModel>> fetchGradeTypesList({
    required String filter,
    required PsnopApiHelper apiHelper,
    List<ActiveGradeTypesModel>? selected,
    List<String>? selectedGradeGroups,
    List<String>? selectedGrades,
  }) {
    final query = StringBuffer();
    if (filter.isNotEmpty) query.write(filter);

    if (selectedGradeGroups != null) {
      for (var i = 0; i < selectedGradeGroups.length; i++) {
        query.write('&SelectedGradeGroups=${selectedGradeGroups[i]}');
      }
    }

    if (selectedGrades != null) {
      for (var i = 0; i < selectedGrades.length; i++) {
        query.write('&SelectedGrades=${selectedGrades[i]}');
      }
    }
    final repositoryUtils = RepositoryUtils(apiHelper);
    return repositoryUtils.getFilter<ActiveGradeTypesModel>(
      filterName: 'SearchTerm',
      query: query.toString(),
      selected: selected,
      populate: (target, source) {
        target.gradeTypeTerritoryName ??= source.gradeTypeTerritoryName;
      },
      url: '/api/depotposition/gradetypes/listmax',
    );
  }
}
