import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/repository_utils.dart';

class GradeRepository {
  static Future<List<String>> fetchGradesList({
    required String filter,
    required PsnopApiHelper apiHelper,
    List<String>? selected,
    List<String>? selectedGradeTypes,
    List<String>? selectedGradeGroups,
  }) {
    final query = StringBuffer();
    if (filter.isNotEmpty) query.write(filter);

    if (selectedGradeTypes != null) {
      for (var i = 0; i < selectedGradeTypes.length; i++) {
        query.write('&SelectedGradeTypes=${selectedGradeTypes[i]}');
      }
    }

    if (selectedGradeGroups != null) {
      for (var i = 0; i < selectedGradeGroups.length; i++) {
        query.write('&SelectedGradeGroups=${selectedGradeGroups[i]}');
      }
    }

    final repositoryUtils = RepositoryUtils(apiHelper);

    return repositoryUtils.getFilter<String>(
      filterName: 'SearchTerm',
      query: query.toString(),
      selected: selected,
      url: '/api/depotposition/grades/listmax',
    );
  }
}
