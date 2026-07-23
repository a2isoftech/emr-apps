import 'package:psnop/models/filter_response_models/active_grade_groups_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/repository_utils.dart';

class GradeGroupRepository {
  static Future<List<ActiveGradeGroupsModel>> fetchGradeGroupsList({
    required String filter,
    required PsnopApiHelper apiHelper,
    List<ActiveGradeGroupsModel>? selected,
    List<String>? selectedGradeTypes,
    List<String>? selectedGrades,
  }) {
    final query = StringBuffer();
    if (filter.isNotEmpty) query.write(filter);

    if (selectedGradeTypes != null) {
      for (var i = 0; i < selectedGradeTypes.length; i++) {
        query.write('&SelectedGradeTypes=${selectedGradeTypes[i]}');
      }
    }

    if (selectedGrades != null) {
      for (var i = 0; i < selectedGrades.length; i++) {
        query.write('&SelectedGrades=${selectedGrades[i]}');
      }
    }

    final repositoryUtils = RepositoryUtils(apiHelper);

    return repositoryUtils.getFilter<ActiveGradeGroupsModel>(
      filterName: 'SearchTerm',
      query: query.toString(),
      selected: selected,
      populate: (target, source) {
        target.gradeGroupTerritoryName ??= source.gradeGroupTerritoryName;
      },
      url: '/api/depotposition/gradegroups/listmax',
    );
  }
}
